unit u_frameObespech;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin,
  dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxClasses, dxBar, DB, FIBDataSet, pFIBDataSet,
  u_DM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxImageComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, FIBDatabase, pFIBDatabase,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TframeObespech = class(TFrame)
    OBESPECH: TpFIBDataSet;
    dsOBESPECH: TDataSource;
    BMobespech: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    BMobespechBar1: TdxBar;
    bbRefresh: TdxBarButton;
    bbAdd: TdxBarButton;
    bbEdit: TdxBarButton;
    bbStatus: TdxBarSubItem;
    bbObespechStatus0: TdxBarButton;
    bbObespechStatus1: TdxBarButton;
    bbObespechStatus2: TdxBarButton;
    bbObespechStatus3: TdxBarButton;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridDBTableView1ID: TcxGridDBColumn;
    GridDBTableView1CONTRAGENT_ID: TcxGridDBColumn;
    GridDBTableView1LOCK_DATE: TcxGridDBColumn;
    GridDBTableView1UNLOCK_DATE: TcxGridDBColumn;
    GridDBTableView1USER_ID: TcxGridDBColumn;
    GridDBTableView1AMOUNT: TcxGridDBColumn;
    GridDBTableView1STATUS: TcxGridDBColumn;
    GridDBTableView1DESCRIPTION: TcxGridDBColumn;
    GridDBTableView1CREATED_BY: TcxGridDBColumn;
    GridDBTableView1CREATED_DT: TcxGridDBColumn;
    GridDBTableView1MODIFY_BY: TcxGridDBColumn;
    GridDBTableView1MODIFY_DT: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    trRObespech: TpFIBTransaction;
    trWObespech: TpFIBTransaction;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbAddClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
    procedure bbObespechStatus0Click(Sender: TObject);
    procedure dsOBESPECHDataChange(Sender: TObject; Field: TField);
  private
    FRequestID: Integer;
    FContragentID: Integer;
    procedure setContragentID(const Value: Integer);
    procedure setRequest(const Value: Integer);
    { Private declarations }
  public
    property RequestID : Integer read FRequestID write setRequest default 0;
    property ContragentID : Integer read FContragentID write setContragentID default 0;
  end;

implementation

uses u_fmObespechEdit;

{$R *.dfm}

procedure TframeObespech.bbAddClick(Sender: TObject);
begin
  if not bbAdd.Enabled then
    exit;
  bbAdd.Enabled := false;
  fmObespechEdit := TfmObespechEdit.Create(Application);
  fmObespechEdit.dsOBESPECH.DataSet := OBESPECH;
  try
    OBESPECH.Append;
    OBESPECH.FieldByname('CONTRAGENT_ID').Value := ContragentID;
    OBESPECH.FieldByname('REQUEST_ID').Value := RequestID;
    OBESPECH.Post;
    OBESPECH.Refresh;
    if fmObespechEdit.ShowModal = mrOK then begin
      if OBESPECH.UpdateTransaction.InTransaction then
        OBESPECH.UpdateTransaction.Commit;
    end else begin
      if OBESPECH.UpdateTransaction.InTransaction then
        OBESPECH.UpdateTransaction.Rollback;
    end;
    bbRefresh.Click;
  finally
    FreeAndNil(fmObespechEdit);
    bbAdd.Enabled := true;
  end;
end;

procedure TframeObespech.bbEditClick(Sender: TObject);
begin
  if not bbEdit.Enabled then
    exit;
  bbEdit.Enabled := false;
  fmObespechEdit := TfmObespechEdit.Create(Application);
  fmObespechEdit.dsOBESPECH.DataSet := OBESPECH;
  try
    if fmObespechEdit.ShowModal = mrOK then begin
      if OBESPECH.UpdateTransaction.InTransaction then
        OBESPECH.UpdateTransaction.Commit;
    end else begin
      if OBESPECH.UpdateTransaction.InTransaction then
        OBESPECH.UpdateTransaction.Rollback;
    end;
    bbRefresh.Click;
  finally
    FreeAndNil(fmObespechEdit);
    bbEdit.Enabled := true;
  end;
end;

procedure TframeObespech.bbRefreshClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  Wait(1);
  Obespech.DisableControls;
  _id := 0;
  try
    if (OBESPECH.Active and (not OBESPECH.EOF)) then
      _id := Obespech.FieldByName('ID').AsInteger;
    Obespech.Close;
    Obespech.ParamByName('CONTRAGENT_ID').Value := ContragentID;
    Obespech.ParamByName('REQUEST_ID').Value := RequestID;
    Obespech.Open;
    if _id > 0 then begin
      if not Obespech.Locate('ID', _id, []) then
        Obespech.First;
    end;
  finally
    Obespech.EnableControls;
    Wait(0);
  end;
end;

procedure TframeObespech.dsOBESPECHDataChange(Sender: TObject;
  Field: TField);
begin
  if not OBESPECH.EOF then begin
    bbEdit.Enabled := Obespech.FieldByname('STATUS').AsInteger = 0;
    bbObespechStatus0.Enabled := Obespech.FieldByname('STATUS').AsInteger = 3;
    bbObespechStatus1.Enabled := Obespech.FieldByname('STATUS').AsInteger = 0;
    bbObespechStatus2.Enabled := Obespech.FieldByname('STATUS').AsInteger = 1;
    bbObespechStatus3.Enabled := Obespech.FieldByname('STATUS').AsInteger = 0;
    bbStatus.Enabled := true;
  end else begin
    bbEdit.Enabled := false;
    bbStatus.Enabled := false;
  end;
end;

procedure TframeObespech.bbObespechStatus0Click(Sender: TObject);
begin
  if TdxBarButton(Sender).Tag = 1 then begin
    if Application.MessageBox('Поменять статус на "Заблокировано"?' + #13#10 +'После изменения статуса редактирование будет невозможно', 'Внимание',MB_YESNO + MB_ICONQUESTION) = mrYes then begin
      Obespech.Edit;
      Obespech.FieldByName('STATUS').AsInteger := 1;
      Obespech.Post;
    end;
  end else if TdxBarButton(Sender).Tag = 2 then begin
    if Application.MessageBox('Поменять статус на "Разблокировано"?', 'Внимание',MB_YESNO + MB_ICONQUESTION) = mrYes then begin
      Obespech.Edit;
      Obespech.FieldByName('STATUS').AsInteger := 2;
      Obespech.Post;
    end;
  end else if TdxBarButton(Sender).Tag = 0 then begin
    if Application.MessageBox('Поменять статус на "Черновик"?', 'Внимание',MB_YESNO + MB_ICONQUESTION) = mrYes then begin
      Obespech.Edit;
      Obespech.FieldByName('STATUS').AsInteger := 0;
      Obespech.Post;
    end;
  end else if TdxBarButton(Sender).Tag = 3 then begin
    if Application.MessageBox('Поменять статус на "Архив"?' + #13#10 +'После изменения статуса редактирование будет невозможно', 'Внимание',MB_YESNO + MB_ICONQUESTION) = mrYes then begin
      Obespech.Edit;
      Obespech.FieldByName('STATUS').AsInteger := 3;
      Obespech.Post;
    end;
  end;
  if Obespech.UpdateTransaction.InTransaction then
    Obespech.UpdateTransaction.Commit;
  Obespech.ReopenLocate('ID');
end;

procedure TframeObespech.setContragentID(const Value: Integer);
begin
  FContragentID := Value;
  bbRefresh.Click();
end;

procedure TframeObespech.setRequest(const Value: Integer);
begin
  FRequestID := Value;
  bbRefresh.Click();
end;

end.
