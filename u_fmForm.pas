unit u_fmForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGrid, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxPC,
  cxGridCustomView, FIBDatabase, pFIBDatabase, cxEdit, cxCalendar;

type
  TfmForm = class(TForm)
    trRead: TpFIBTransaction;
    trWrite: TpFIBTransaction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure GridViewColumnPosChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure GridBandedViewChanged(Sender: TcxGridBandedTableView; ABand: TcxGridBand);
  private
    FGridChanged: boolean;
    FisHasError: boolean;
  public
    property isHasError : boolean read FisHasError write FisHasError default false;
    procedure ProcessGrids(Action: string);
    procedure SetupGrid(AGrid: TcxGrid);
    procedure SaveGridLayout(AGrid: TcxGrid; AName:string);
    procedure RestoreGridLayout(AGrid: TcxGrid; AName:string);
    property GridChanged : boolean read FGridChanged write FGridChanged;
    procedure CheckEditData( AControl: TcxCustomEdit;  ValidExpression : boolean = false);
  end;

var
  fmForm: TfmForm;

implementation

uses u_DM;

{$R *.dfm}

procedure TfmForm.CheckEditData(AControl: TcxCustomEdit; ValidExpression: boolean);
begin
  try
    if not ValidExpression then
      AControl.Style.StyleController := DM.StyleControllerError
    else
      AControl.Style.StyleController := nil;
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
  if not ValidExpression then
    isHasError := true;
end;

procedure TfmForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if GridChanged then
    ProcessGrids('SAVE');
  if Assigned(trRead) and trRead.InTransaction then
    trRead.Rollback;
  if Assigned(trWrite) and trWrite.InTransaction then
    trWrite.Rollback;
end;

procedure TfmForm.FormShow(Sender: TObject);
begin
  ProcessGrids('RESTORE');
  ProcessGrids('SETUP');
  GridChanged := false;
end;


procedure TfmForm.ProcessGrids(Action: string);
var
  _i : integer;

  procedure ProcessControl(AControl : TWinControl; AName: string);
  var
    _i, _y : integer;
  begin
    for _i := 0 to AControl.ControlCount - 1 do begin
      if (AControl.Controls[_i] is TcxGrid) then begin
        if Action = 'SAVE' then
          SaveGridLayout((AControl.Controls[_i] as TcxGrid), AName+'.'+AControl.Name)
        else if Action = 'RESTORE' then
          RestoreGridLayout((AControl.Controls[_i] as TcxGrid), AName+'.'+AControl.Name)
        else if Action = 'SETUP' then begin
          SetupGrid((AControl.Controls[_i] as TcxGrid));
        end;
      end else if (AControl.Controls[_i] is TcxPageControl) then begin
        for _y := 0 to (AControl.Controls[_i] as TcxPageControl).PageCount - 1 do begin
          ProcessControl((AControl.Controls[_i] as TcxPageControl).Pages[_y], AName+'.'+(AControl.Controls[_i] as TcxPageControl).Pages[_y].Name);
        end
      end else if AControl.Controls[_i] is TWinControl then begin
        if ((AControl.Controls[_i] as TWinControl).ControlCount>0) then
          ProcessControl((AControl.Controls[_i] as TWinControl), AName+'.'+AControl.Controls[_i].Name);
      end;
    end;
  end;

begin
  for _i := 0 to self.ControlCount - 1 do begin
    if (self.Controls[_i] is TWinControl) then begin
      ProcessControl(TWinControl(self.Controls[_i]), self.Controls[_i].Name);
    end;
    if (self.Controls[_i].ClassNameIs('TcxGrid')) then begin
      if Action = 'SAVE' then
        SaveGridLayout((self.Controls[_i] as TcxGrid), self.Controls[_i].Name)
      else if Action = 'RESTORE' then
        RestoreGridLayout((self.Controls[_i] as TcxGrid), self.Controls[_i].Name)
      else if Action = 'SETUP' then
        SetupGrid((self.Controls[_i] as TcxGrid));
    end;
  end;
end;


procedure TfmForm.SaveGridLayout(AGrid: TcxGrid; AName:string);
var
  _i : integer;
  MS : TMemoryStream;
begin
  DM.qSettings.Close;
  DM.qSettings.SQL.Text := 'execute block(FORM_NAME T_FIELDNAME = :FORM_NAME, CONTROL_NAME T_NAME=:CONTROL_NAME, DATA T_BIN = :DATA)'+
    'as begin '+
      'if (not exists(select ID from USER_GRID_SETTINGS S where S.USER_ID=RDB$GET_CONTEXT(''USER_SESSION'', ''USER_ID'') and upper(S.FORM_NAME)=upper(:FORM_NAME) and upper(S.CONTROL_NAME)=upper(:CONTROL_NAME))) then begin '+
      '  insert into USER_GRID_SETTINGS(USER_ID, FORM_NAME, CONTROL_NAME, DATA) values (RDB$GET_CONTEXT(''USER_SESSION'', ''USER_ID''), :FORM_NAME, :CONTROL_NAME, :DATA); '+
      'end else begin '+
      '  update USER_GRID_SETTINGS S set DATA = :DATA where S.USER_ID=RDB$GET_CONTEXT(''USER_SESSION'', ''USER_ID'') and S.FORM_NAME=:FORM_NAME and S.CONTROL_NAME=:CONTROL_NAME; '+
      'end '+
    'end';

  DM.qSettings.Prepare;
  DM.qSettings.ParamByName('FORM_NAME').Value := self.name;
  MS := TMemoryStream.Create;
  try
    for _i := 0 to AGrid.ViewCount-1 do begin
      MS.Clear;
      AGrid.Views[_i].StoreToStream(MS);
      DM.qSettings.ParamByName('CONTROL_NAME').Value := AName+'.'+AGrid.Views[_i].Name;
      MS.Position := 0;
      DM.qSettings.ParamByName('DATA').LoadFromStream(MS);
      DM.qSettings.ExecQuery;
    end;
    if DM.qSettings.Transaction.InTransaction then
      DM.qSettings.Transaction.Commit;
  finally
    FreeAndNil(MS);
  end;
end;

procedure TfmForm.RestoreGridLayout(AGrid: TcxGrid; AName:string);
var
  _i : integer;
  MS : TMemoryStream;
  _footer : boolean;
  _grouping : boolean;
begin
  DM.qSettings.Close;
  DM.qSettings.SQL.text := 'select DATA from USER_GRID_SETTINGS S where S.USER_ID=RDB$GET_CONTEXT(''USER_SESSION'', ''USER_ID'') and upper(S.FORM_NAME)=upper(:FORM_NAME) and upper(S.CONTROL_NAME)=upper(:CONTROL_NAME)';
  DM.qSettings.Prepare;
  DM.qSettings.ParamByName('FORM_NAME').Value := self.name;
  MS := TMemoryStream.Create;
  try
    AGrid.BeginUpdate();
    for _i := 0 to AGrid.ViewCount-1 do begin
      DM.qSettings.Close;
      DM.qSettings.ParamByName('CONTROL_NAME').Value := AName+'.'+AGrid.Views[_i].Name;
      DM.qSettings.ExecQuery;
      if not DM.qSettings.Eof then begin
        MS.Clear;
        DM.qSettings.FieldByName('DATA').SaveToStream(MS);
        MS.Position := 0;
        if (AGrid.Views[_i] is TcxGridDBTableView) then begin
          _footer := (AGrid.Views[_i] as TcxGridDBTableView).OptionsView.Footer;
          _grouping := (AGrid.Views[_i] as TcxGridDBTableView).OptionsView.GroupByBox;
          AGrid.Views[_i].RestoreFromStream(MS);
          (AGrid.Views[_i] as TcxGridDBTableView).OptionsView.Footer := _footer;
          (AGrid.Views[_i] as TcxGridDBTableView).OptionsView.GroupByBox := _grouping;
          (AGrid.Views[_i] as TcxGridDBTableView).OptionsCustomize.ColumnHiding := false;
        end else if (AGrid.Views[_i] is TcxGridDBBandedTableView) then begin
          _footer := (AGrid.Views[_i] as TcxGridDBBandedTableView).OptionsView.Footer;
          _grouping := (AGrid.Views[_i] as TcxGridDBBandedTableView).OptionsView.GroupByBox;
          AGrid.Views[_i].RestoreFromStream(MS);
          (AGrid.Views[_i] as TcxGridDBBandedTableView).OptionsView.Footer := _footer;
          (AGrid.Views[_i] as TcxGridDBBandedTableView).OptionsView.GroupByBox := _grouping;
          (AGrid.Views[_i] as TcxGridDBBandedTableView).OptionsCustomize.ColumnHiding := false;
        end;
      end;
    end;
  finally
    AGrid.EndUpdate();
    FreeAndNil(MS);
    DM.qSettings.Close;
    if DM.qSettings.Transaction.InTransaction then
      DM.qSettings.Transaction.Rollback;
  end;
end;

procedure TfmForm.SetupGrid(AGrid: TcxGrid);
var
  _i : integer;
begin
  for _i := 0 to AGrid.ViewCount-1 do begin
    if (AGrid.Views[_i] is TcxGridDBTableView) then begin
      (AGrid.Views[_i] as TcxGridDBTableView).onColumnPosChanged := GridViewColumnPosChanged;
      (AGrid.Views[_i] as TcxGridDBTableView).OnColumnSizeChanged := GridViewColumnPosChanged;
    end else if (AGrid.Views[_i] is TcxGridDBBandedTableView) then begin
      (AGrid.Views[_i] as TcxGridDBBandedTableView).onColumnPosChanged := GridViewColumnPosChanged;
      (AGrid.Views[_i] as TcxGridDBBandedTableView).OnColumnSizeChanged := GridViewColumnPosChanged;
      (AGrid.Views[_i] as TcxGridDBBandedTableView).OnBandPosChanged := GridBandedViewChanged;
      (AGrid.Views[_i] as TcxGridDBBandedTableView).OnBandSizeChanged := GridBandedViewChanged;
    end;

  end;
end;

procedure TfmForm.GridBandedViewChanged(Sender: TcxGridBandedTableView;
  ABand: TcxGridBand);
begin
  GridChanged := true;
end;

procedure TfmForm.GridViewColumnPosChanged(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  inherited;
  GridChanged := true;
end;



end.
