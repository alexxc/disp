unit u_fmUserPlan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_fmMDIChild, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, dxBar, cxClasses,
  FIBDatabase, pFIBDatabase, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxEdit, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerAgendaView, cxSchedulerDateNavigator,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView,
  cxSchedulerRecurrence, dxBarBuiltInMenu, cxSchedulerTreeListBrowser,
  cxSchedulerRibbonStyleEventEditor, Data.DB, FIBDataSet, pFIBDataSet,
  cxSchedulerDBStorage, U_DM, Vcl.StdCtrls, cxButtons, cxContainer, cxGroupBox,
  cxCheckBox, cxBarEditItem, cxSchedulerAggregateStorage, Vcl.Grids, Vcl.DBGrids,
  dxNavBarCollns, dxNavBarBase, dxNavBar, Vcl.ExtCtrls, cxRadioGroup,
  cxCheckGroup, FIBQuery, pFIBQuery;

type
  TfmUserPlan = class(TfmMDIChild)
    Scheduler: TcxScheduler;
    bbAddEvent: TdxBarButton;
    Storage: TcxSchedulerStorage;
    dxBarSubItem1: TdxBarSubItem;
    DATA: TpFIBDataSet;
    bbEdit: TdxBarButton;
    bbDelete: TdxBarButton;
    bbViewGantt: TdxBarButton;
    NavBar: TdxNavBar;
    nbgView: TdxNavBarGroup;
    nbgFilter: TdxNavBarGroup;
    nbgViewControl: TdxNavBarGroupControl;
    bDay: TcxButton;
    nbgFilterControl: TdxNavBarGroupControl;
    bWeeks: TcxButton;
    bWeek: TcxButton;
    bYear: TcxButton;
    nbgPeriod: TdxNavBarGroup;
    nbgPeriodControl: TdxNavBarGroupControl;
    bQuarter: TcxButton;
    bDateToday: TcxButton;
    bDateWeek: TcxButton;
    cbOnlyMy: TcxCheckBox;
    cgResourceFilter: TcxCheckGroup;
    QR: TpFIBQuery;
    procedure bbRefreshClick(Sender: TObject);
    procedure SchedulerEventSelectionChanged(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent);
    procedure SchedulerDblClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
    procedure DATAAfterPost(DataSet: TDataSet);
    procedure SchedulerGetEventModernStyleHintInfo(Sender: TObject;
      AEvent: TcxSchedulerControlEvent;
      AInfo: TcxSchedulerEventModernStyleHintInfo);
    procedure bbAddEventClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbDeleteClick(Sender: TObject);
    procedure SchedulerViewTypeChanged(Sender: TObject; APrevView,
      ANewView: TcxSchedulerCustomView);
    procedure SchedulerGetEventDisplayText(Sender: TObject;
      AEvent: TcxSchedulerControlEvent; var AText: string);
    procedure bbViewGanttClick(Sender: TObject);
    procedure bbPeriodTodayClick(Sender: TObject);
    procedure bWeekClick(Sender: TObject);
    procedure bWeeksClick(Sender: TObject);
    procedure bQuarterClick(Sender: TObject);
    procedure bDayClick(Sender: TObject);
    procedure bYearClick(Sender: TObject);
    procedure bDateTodayClick(Sender: TObject);
    procedure bDateWeekClick(Sender: TObject);
    procedure DATABeforeDelete(DataSet: TDataSet);
    procedure cbOnlyMyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cgResourceFilterPropertiesChange(Sender: TObject);
  private
    FSelectedID: Integer;
    procedure SetSelectedID(const Value: Integer);
    { Private declarations }
  public
    property SelectedID: Integer read FSelectedID write SetSelectedID;
    procedure setEventDataFromDB(AID:Integer);
  end;

var
  fmUserPlan: TfmUserPlan;

implementation

{$R *.dfm}

uses u_fmPlanEdit, DateUtils;

procedure TfmUserPlan.bbAddEventClick(Sender: TObject);
begin
  inherited;
  DATA.Append;
  DATA.Post;
  fmPlanEdit := TfmPlanEdit.Create(self);
  fmPlanEdit.isNew := true;
  fmPlanEdit.USER_ID.Enabled := cbOnlyMy.Enabled;
  try
    fmPlanEdit.DataChanged := true;
    fmPlanEdit.ShowModal;
//    bbRefresh.Click();
  finally
    FreeAndNil(fmPlanEdit);
  end;
end;

procedure TfmUserPlan.bbDeleteClick(Sender: TObject);
var
  E : TcxSchedulerEvent;
begin
  inherited;
  if SelectedID>0 then begin

  end

end;

procedure TfmUserPlan.bbEditClick(Sender: TObject);
begin
  inherited;
  if (Scheduler.SelectedEventCount>0) then begin
    SelectedID := Scheduler.SelectedEvents[0].ID;

    if DATA.FieldByName('ID').AsInteger <> SelectedID then begin
      DATA.First;
      DATA.Locate('ID', SelectedID, []);
    end;
      fmPlanEdit := TfmPlanEdit.Create(self);
      fmPlanEdit.USER_ID.Enabled := cbOnlyMy.Enabled;
      try
        fmPlanEdit.DataChanged := false;
        fmPlanEdit.ShowModal;
      finally
        FreeAndNil(fmPlanEdit);
      end;
  end;

end;

procedure TfmUserPlan.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Storage.BeginUpdate;
  try
    if cbOnlyMy.Checked then
      DATA.ParamByName('USER_ID').Value := User.ID
    else
      DATA.ParamByName('USER_ID').Value := NULL;
    DATA.CloseOpen(True);
    Storage.Clear;
    Wait(1);
    while not DATA.EOF do begin
      setEventDataFromDB(DATA.FBN('ID').Value);
      DATA.Next;
    end;
  finally
    Storage.EndUpdate;
    Wait(0);
  end;
end;

procedure TfmUserPlan.bbViewGanttClick(Sender: TObject);
begin
  inherited;
  Scheduler.ViewGantt.Active := true;
end;

procedure TfmUserPlan.cbOnlyMyClick(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

procedure TfmUserPlan.cgResourceFilterPropertiesChange(Sender: TObject);
var
  _i : integer;
  _val, _tag : integer;
begin
  inherited;
  _val := cgResourceFilter.EditValue;
  for _i := 0 to cgResourceFilter.Properties.Items.Count-1 do begin
    _tag := cgResourceFilter.Properties.Items[_i].Tag;
    Storage.Resources.Items[_i].Visible := (_val AND 1) >0;
    _val := _val SHR 1;

  end;

end;

procedure TfmUserPlan.bDateWeekClick(Sender: TObject);
var
  DS : TDateTime;
begin
  inherited;
  DS := DateUtils.IncDay(Scheduler.SelStart, 0-DayOfTheWeek(Scheduler.SelStart)+1);
  Scheduler.SelectDays(DS, IncDay(DS, 7), true);

end;

procedure TfmUserPlan.bQuarterClick(Sender: TObject);
begin
  inherited;
  Scheduler.ViewYear.Active := true;
  Scheduler.ViewYear.Scale := 3;
  SchedulerViewTypeChanged(Scheduler, Scheduler.CurrentView, Scheduler.CurrentView);
end;

procedure TfmUserPlan.bDateTodayClick(Sender: TObject);
begin
  inherited;
  Scheduler.SelectDays(Date, Date, True);

end;

procedure TfmUserPlan.bWeeksClick(Sender: TObject);
begin
  inherited;
  Scheduler.SelectDays(
    EncodeDate(YearOf(Scheduler.SelStart), MonthOf(Scheduler.SelStart), 1),
    EncodeDate(YearOf(Scheduler.SelStart), MonthOf(Scheduler.SelStart), DaysInMonth(Scheduler.SelStart)),
    true);
  Scheduler.ViewWeeks.Active := true;
end;

procedure TfmUserPlan.bYearClick(Sender: TObject);
begin
  inherited;
  Scheduler.ViewYear.Active := true;
  Scheduler.ViewYear.Scale := 12;
  SchedulerViewTypeChanged(Scheduler, Scheduler.CurrentView, Scheduler.CurrentView);
end;

procedure TfmUserPlan.bDayClick(Sender: TObject);
begin
  inherited;
  if (Scheduler.SelectedEventCount>0) then
    Scheduler.SelectDays(Scheduler.SelectedEvents[0].Start, Scheduler.SelectedEvents[0].Start, True)
  else
    Scheduler.SelectDays(Scheduler.SelStart, Scheduler.SelStart, True);

  Scheduler.ViewDay.Active := true;
end;

procedure TfmUserPlan.bWeekClick(Sender: TObject);
begin
  inherited;
  Scheduler.ViewWeek.Active := true;
end;

procedure TfmUserPlan.DATAAfterPost(DataSet: TDataSet);
begin
  inherited;
  setEventDataFromDB(DATA.FBN('ID').AsInteger);
end;

procedure TfmUserPlan.DATABeforeDelete(DataSet: TDataSet);
begin
  inherited;
  Storage.GetEventByID(DATA.FBN('ID').AsInteger).Delete;
end;

procedure TfmUserPlan.bbPeriodTodayClick(Sender: TObject);
begin
  inherited;
  Scheduler.SelectWorkDays(Date());
end;

procedure TfmUserPlan.FormCreate(Sender: TObject);
var
  R : TcxSchedulerStorageResourceItem;
  I : TcxCheckGroupItem;
begin
  inherited;
  Storage.Resources.Items.Clear;
  cgResourceFilter.Properties.Items.ClearAndResetID;
  QR.Close;
  QR.SQL.Text := 'select * from (select R.ID, R.NAME, R.DESCRIPTION COLOR from REFBOOK R where R.PID=175 order by R.ITEM_ORDER) '+
    'union all '+
    'select -1, ''Журнал'', ''clSilver'' COLOR from rdb$database';
  QR.ExecQuery;
  Storage.Resources.Items.BeginUpdate;
  while not QR.EOF  do begin
    R := Storage.Resources.Items.Add;
    R.Name := QR.FieldByName('NAME').AsString;
    R.ResourceID := QR.FieldByName('ID').AsString;
    R.Color := StringToColor(QR.FieldByName('COLOR').AsString);
    R.Visible := true;
    I := cgResourceFilter.Properties.Items.Add;
    I.Caption := QR.FieldByName('NAME').AsString;
    I.TAG := QR.FieldByName('ID').AsInteger;
    QR.Next;
  end;
  cgResourceFilter.EditValue := 255;
  Storage.Resources.Items.EndUpdate;
  QR.Close;

end;

procedure TfmUserPlan.FormShow(Sender: TObject);
begin
  inherited;
  cbOnlyMy.Enabled := not User.isManager;
  bDateWeek.Click();
  bWeek.Click();
  bbRefresh.Click();
end;

procedure TfmUserPlan.SchedulerDblClick(Sender: TObject);
begin
  inherited;
  if bbEdit.Enabled then
    bbEdit.Click();
end;

procedure TfmUserPlan.SchedulerEventSelectionChanged(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent);
begin
  inherited;
  if Assigned(AEvent) then
    SelectedID := AEvent.ID
  else
    SelectedID := 0;
end;

procedure TfmUserPlan.SchedulerGetEventDisplayText(Sender: TObject;
  AEvent: TcxSchedulerControlEvent; var AText: string);
var
  _s : string;
begin
  inherited;
  _s := AEvent.Caption+' '+AEvent.Message;
  AText := StringReplace(_s, #10, ' ', [rfReplaceAll]);
end;

procedure TfmUserPlan.SchedulerGetEventModernStyleHintInfo(Sender: TObject;
  AEvent: TcxSchedulerControlEvent;
  AInfo: TcxSchedulerEventModernStyleHintInfo);
var Res : Variant;
begin
  inherited;
  AInfo.ShowLocation := false;
  AInfo.ShowReminder:= false;
  AInfo.ShowTaskComplete := false;
  Res := DATA.Lookup('ID', AEvent.ID, 'JOURNAL_ID;IS_ALL_DAY');
  AInfo.Caption := AEvent.Caption+' '+AEvent.Message;
end;

procedure TfmUserPlan.SchedulerViewTypeChanged(Sender: TObject; APrevView,
  ANewView: TcxSchedulerCustomView);
begin
  inherited;
  bDay.OptionsImage.ImageIndex := IIF(Scheduler.ViewDay.Active, 19, -1);
  bWeek.OptionsImage.ImageIndex := IIF(Scheduler.ViewWeek.Active, 19, -1);
  bWeeks.OptionsImage.ImageIndex := IIF(Scheduler.ViewWeeks.Active, 19, -1);
  bQuarter.OptionsImage.ImageIndex := IIF(Scheduler.ViewYear.Active and (Scheduler.ViewYear.Scale = 3), 19, -1);
  bYear.OptionsImage.ImageIndex := IIF(Scheduler.ViewYear.Active and (Scheduler.ViewYear.Scale = 12), 19, -1);

end;

procedure TfmUserPlan.setEventDataFromDB(AID: Integer);
var
  E : TcxSchedulerEvent;
  s : string;
begin
  if DATA.FBN('ID').AsInteger<>AID then begin
    DATA.First;
    if DATA.Locate('ID', AID, []) then
      Abort;
  end;
  E := Storage.getEventByID(AID);
  if E<>nil then begin
    E.Delete;
  end;
  E := Storage.createEvent();
  E.BeginEditing;

//  E.EventType := etCustom;
  E.ID := AID;
  E.ResourceID := DATA.FBN('ACTION_ID').AsInteger;
  E.Start := DATA.FBN('START_DT').Value;
  if DATA.FBN('END_DT').Value<>Null then
    E.Finish := DATA.FBN('END_DT').Value
  else
    E.Finish := DATA.FBN('START_DT').Value;
//  if DATA.FBN('IS_ALL_DAY').AsBoolean then begin
//    E.Finish := DATA.FBN('START_DT').Value +1;
//    E.AllDayEvent := True;
//  end;


  s := DATA.FBN('USER_NAME').AsString + #10+DATA.FBN('ACTION_NAME').AsString;
  E.Caption := S;

  S:='';
  if DATA.FBN('REQUEST_ID').Value<>Null then
    s := S+#10'Заявка №'+DATA.FBN('REQUEST_ID').ASString+' от '+DATA.FBN('REQUEST_DT').AsString;
  if DATA.FBN('CONTRAGENT_ID').Value<>Null then
    s := S+#10+'Контрагент: '+DATA.FBN('CONTRAGENT_NAME').AsString;
  if DATA.FBN('DESCRIPTION').Value<>Null then
    s := S+#10+DATA.FBN('DESCRIPTION').AsString;
  E.Message := S;
  E.LabelColor := StringToColor(DATA.FBN('ACTION_COLOR').AsString);
  E.EndEditing;
  E.Post;
end;

procedure TfmUserPlan.SetSelectedID(const Value: Integer);
begin
  if Value<>NULL then begin
    FSelectedID := Value;
  end else begin
    FSelectedID := 0;
  end;
//  bbEdit.Enabled := FSelectedID>0;
end;

end.
