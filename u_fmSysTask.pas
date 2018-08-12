unit u_fmSysTask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, DB, FIBDataSet, pFIBDataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, u_DM, cxImageComboBox, cxMemo, FIBDatabase, pFIBDatabase, cxCalendar,
  cxTextEdit, ExtCtrls, FIBQuery, pFIBQuery, cxDropDownEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarExtItems;

type
  TfmSysTask = class(TfmMDIChild)
    dsTask: TDataSource;
    SysTask: TpFIBDataSet;
    GridView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    GridViewID: TcxGridDBColumn;
    GridViewPLAN_DT: TcxGridDBColumn;
    GridViewFACT_DT: TcxGridDBColumn;
    GridViewCREATED_BY: TcxGridDBColumn;
    GridViewCREATED_DT: TcxGridDBColumn;
    GridViewCMD: TcxGridDBColumn;
    GridViewRES: TcxGridDBColumn;
    GridViewRES_TEXT: TcxGridDBColumn;
    bbDelete: TdxBarButton;
    bbNew: TdxBarButton;
    GridViewSTART_DT: TcxGridDBColumn;
    Timer: TTimer;
    RefreshQuery: TpFIBQuery;
    dxBarSubItem1: TdxBarSubItem;
    bbPeriodToday: TdxBarButton;
    bbPeriod3Days: TdxBarButton;
    bbPeriodAll: TdxBarButton;
    procedure dsTaskStateChange(Sender: TObject);
    procedure bbDeleteClick(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SysTaskAfterScroll(DataSet: TDataSet);
    procedure bbNewClick(Sender: TObject);
    procedure GridViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure GridViewRES_TEXTGetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure TimerTimer(Sender: TObject);
    procedure SysTaskAfterOpen(DataSet: TDataSet);
    procedure bbPeriodTodayClick(Sender: TObject);
    procedure bbPeriod3DaysClick(Sender: TObject);
    procedure bbPeriodAllClick(Sender: TObject);
  private
    FDataChanged : boolean;
  public
    DT : TDateTime;
    procedure SetDataChanged(const Value: boolean); virtual;
  end;

var
  fmSysTask: TfmSysTask;

implementation
uses DateUtils;
{$R *.dfm}

procedure TfmSysTask.bbDeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Удалить запись?', 'Внимание', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
    exit;
  SysTask.Delete;
  SysTask.UpdateTransaction.Commit;
  bbRefresh.Click();
end;

procedure TfmSysTask.bbNewClick(Sender: TObject);
begin
  inherited;
  SysTask.Append;
  SysTask.FieldByName('PLAN_DT').AsDateTime := DateUtils.IncMinute(Now, 5);
  SysTask.FieldByName('CMD').AsString := 'PARTIAL SYNC';
  SysTask.Post;
  bbSave.Click();
end;

procedure TfmSysTask.bbRefreshClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  if DataChanged then begin
    if Application.MessageBox('Обновление приведет к отмене изменений.' + #13#10 +'Продолжить?', 'Данные не сохранены', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
      exit;
  end;
  Timer.Enabled := false;
  Wait(1);
  SysTask.DisableControls;
  try
    if not SysTask.IsEmpty then
      _id := SysTask.FieldByName('ID').AsInteger
    else
      _id := 0;
    SysTask.CloseOpen(false);
    if not SysTask.Locate('id', _id, []) then
      SysTask.First;
  finally
    SysTask.EnableControls;
    DataChanged := FALSE;
    Timer.Enabled := True;
    Wait(0);
  end;
end;

procedure TfmSysTask.bbSaveClick(Sender: TObject);
begin
  inherited;
  if SysTask.State in [dsEdit, dsInsert] then
    SysTask.Post;
  if SysTask.UpdateTransaction.InTransaction then
    SysTask.UpdateTransaction.Commit;
  DataChanged := FALSE;
end;

procedure TfmSysTask.dsTaskStateChange(Sender: TObject);
begin
  inherited;
  if SysTask.State in [dsInsert, dsEdit] then
    dataChanged := TRUE;
end;

procedure TfmSysTask.bbPeriod3DaysClick(Sender: TObject);
begin
  inherited;
  SysTask.paramByname('DATE_START').value := dateUtils.IncDay(Date(), -2);
  SysTask.paramByname('DATE_END').value := Date();
  bbRefresh.Click;

end;

procedure TfmSysTask.bbPeriodAllClick(Sender: TObject);
begin
  inherited;
  SysTask.paramByname('DATE_START').value := EncodeDate(2000, 1, 1);
  SysTask.paramByname('DATE_END').value := null;
  bbRefresh.Click;
end;

procedure TfmSysTask.bbPeriodTodayClick(Sender: TObject);
begin
  inherited;
  SysTask.paramByname('DATE_START').value := null;
  SysTask.paramByname('DATE_END').value := null;
  bbRefresh.Click;
end;

procedure TfmSysTask.FormCreate(Sender: TObject);
begin
  inherited;
  bbRefresh.Click;
end;

procedure TfmSysTask.GridViewRES_TEXTGetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  inherited;
  if ARecord.Values[GridViewRES_TEXT.Index]<>null then
    AHintText := ARecord.Values[GridViewRES_TEXT.Index];
end;

procedure TfmSysTask.GridViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if ARecord.Values[GridViewRES.Index] = 0 then       // Wait
    AStyle := nil
  else if ARecord.Values[GridViewRES.Index] = 1 then  // Run
    AStyle := nil
  else if ARecord.Values[GridViewRES.Index] = 2 then  // OK
    AStyle := DM.cxStyleGreenBgnd
  else if ARecord.Values[GridViewRES.Index] = 3 then  // Error
    AStyle := DM.cxStyleRedBgnd;
end;

procedure TfmSysTask.SetDataChanged(const Value: boolean);
begin
  inherited;
  bbRefresh.Enabled := not VALUE;
  bbSave.Enabled := VALUE;
  FDataChanged := Value;
end;

procedure TfmSysTask.SysTaskAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DT := Now();
end;

procedure TfmSysTask.SysTaskAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not SysTask.IsEmpty then begin
    GridView.OptionsData.Editing := SysTask.FieldByName('RES').AsInteger = 0;
    bbDelete.Enabled := SysTask.FieldByName('RES').AsInteger = 0;
  end else begin
    bbDelete.Enabled := false;
  end;
end;

procedure TfmSysTask.TimerTimer(Sender: TObject);
begin
  inherited;
  Timer.Enabled := FALSE;
  if ((SysTask.State in [dsInsert, dsEdit]) or (GridViewPLAN_DT.Editing) or (GridViewCMD.Editing)) then
    exit;
  try
    RefreshQuery.Close;
    RefreshQuery.ParamByName('DT').AsDateTime := DT;
    RefreshQuery.ExecQuery;
    SysTask.RefreshFromQuery(RefreshQuery, 'id');
    DT := Now();
  finally
    Timer.Enabled := TRUE;
  end;
end;

end.
