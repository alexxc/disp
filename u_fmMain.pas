unit u_fmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxBar, dxBarApplicationMenu, cxClasses, ImgList,
  dxStatusBar, cxPC, cxPCdxBarPopupMenu, dxTabbedMDI,
  cxContainer, cxEdit, cxProgressBar, u_fmMDIChild, ExtCtrls,
  dxGDIPlusClasses, StdCtrls, cxButtons, cxLabel,
  dxBarBuiltInMenu, dxCustomTileControl, dxTileControl, dxSkinsCore,
  System.ImageList, dxSkinCoffee,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinOffice2010Silver, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsDefaultPainters,
  FIBDatabase, pFIBDatabase,
  FIBQuery, pFIBQuery, cxImage;

type
  TfmMain = class(TForm)
    BM: TdxBarManager;
    MDIManager: TdxTabbedMDIManager;
    dxBarDockControl1: TdxBarDockControl;
    StatusBar: TdxStatusBar;
    dxStatusBar1Container0: TdxStatusBarContainerControl;
    ProgressBar: TcxProgressBar;
    BarMain: TdxBar;
    bbAdmin: TdxBarSubItem;
    bbUsers: TdxBarButton;
    bbUpgradeEXE: TdxBarButton;
    bbPaymentList: TdxBarButton;
    bbCube1: TdxBarButton;
    bbExit: TdxBarButton;
    bbContragents: TdxBarButton;
    bbMatXChangeReestr: TdxBarButton;
    TimerAlerts: TTimer;
    bbReports: TdxBarButton;
    bbDirectory: TdxBarSubItem;
    bbDirAutomibile: TdxBarButton;
    bbDirAutoDriver: TdxBarButton;
    bbJournal: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    bbDogScan: TdxBarButton;
    bbSysTask: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    bbDocActInOutReestr: TdxBarButton;
    Images: TImageList;
    bbMatReestr: TdxBarButton;
    bbfmDocRouteCardReestr: TdxBarButton;
    bbFuelReestr: TdxBarButton;
    bbFuelCardReestr: TdxBarButton;
    bbInvoiceReestr: TdxBarButton;
    bbMatDayReport: TdxBarButton;
    StatusBarContainer3: TdxStatusBarContainerControl;
    btnNotifications: TcxButton;
    bbRequestReestr: TdxBarButton;
    bbAdmSQLMonitor: TdxBarButton;
    TimerVer: TTimer;
    StatusBarContainer: TdxStatusBarContainerControl;
    PanelVer: TPanel;
    labelVER: TcxLabel;
    bbReportList: TdxBarSubItem;
    bbreportsAct: TdxBarButton;
    bbRefProductions: TdxBarButton;
    bbRouteCardChangeReestr: TdxBarButton;
    bbDolgReestr: TdxBarButton;
    bbInvoiceAnalize: TdxBarButton;
    bbCooperation: TdxBarButton;
    bbSettings: TdxBarSubItem;
    bbSettingsSkin: TdxBarListItem;
    dxBarSubItem3: TdxBarSubItem;
    bbDebitorReport: TdxBarButton;
    QR: TpFIBQuery;
    trRead: TpFIBTransaction;
    bbManagerReport: TdxBarButton;
    StatusBarContainer4: TdxStatusBarContainerControl;
    lblRequestManager: TcxLabel;
    cxImage1: TcxImage;
    bbManagersCalendar: TdxBarButton;
    bbReportResource: TdxBarButton;
    bbActTemplates: TdxBarButton;
    bbMatQTYReport: TdxBarButton;
    bbClientReports: TdxBarSubItem;
    bbClientActItems: TdxBarListItem;
    bbUserPlan: TdxBarButton;
    bbDocInOut: TdxBarButton;
    bbRequestNew: TdxBarButton;
    bbObespechReestr: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    bbAutoJournal: TdxBarButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbUsersClick(Sender: TObject);
    procedure bbUpgradeEXEClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbPaymentListClick(Sender: TObject);
    procedure bbMatXChangeReestrClick(Sender: TObject);
    procedure bbExitClick(Sender: TObject);
    procedure bbContragentsClick(Sender: TObject);
    procedure bbCube1Click(Sender: TObject);
    procedure TimerAlertsTimer(Sender: TObject);
    procedure bbReportsClick(Sender: TObject);
    procedure bbDirAutomibileClick(Sender: TObject);
    procedure bbDirAutoDriverClick(Sender: TObject);
    procedure bbJournalClick(Sender: TObject);
    procedure bbDogScanClick(Sender: TObject);
    procedure bbSysTaskClick(Sender: TObject);
    procedure bbMatReestrClick(Sender: TObject);
    procedure bbDocActInOutReestrClick(Sender: TObject);
    procedure bbfmDocRouteCardReestrClick(Sender: TObject);
    procedure bbFuelReestrClick(Sender: TObject);
    procedure bbFuelCardReestrClick(Sender: TObject);
    procedure bbInvoiceReestrClick(Sender: TObject);
    procedure btnNotificationsClick(Sender: TObject);
    procedure bbRequestReestrClick(Sender: TObject);
    procedure bbAdmSQLMonitorClick(Sender: TObject);
    procedure TimerVerTimer(Sender: TObject);
    procedure bbreportsActClick(Sender: TObject);
    procedure bbRefProductionsClick(Sender: TObject);
    procedure bbRouteCardChangeReestrClick(Sender: TObject);
    procedure bbDolgReestrClick(Sender: TObject);
    procedure bbInvoiceAnalizeClick(Sender: TObject);
    procedure bbCooperationClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSettingsSkinClick(Sender: TObject);
    procedure bbDebitorReportClick(Sender: TObject);
    procedure bbManagerReportClick(Sender: TObject);
    procedure bbManagersCalendarClick(Sender: TObject);
    procedure bbReportResourceClick(Sender: TObject);
    procedure bbActTemplatesClick(Sender: TObject);
    procedure bbMatQTYReportClick(Sender: TObject);
    procedure bbClientActItemsClick(Sender: TObject);
    procedure bbClientReportsPopup(Sender: TObject);
    procedure bbUserPlanClick(Sender: TObject);
    procedure bbDocInOutClick(Sender: TObject);
    procedure bbInterfaceClassicClick(Sender: TObject);
    procedure bbInterfaceRibbonClick(Sender: TObject);
    procedure bbObespechReestrClick(Sender: TObject);
    procedure bbAutoJournalClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateChildWindow(var FormChild; FormClass: TFormClass; ACanMany: boolean);
    procedure ShowLogWindow();
    procedure Log(AText:string; AShow: boolean = true);
    procedure ApplyGrants;
    procedure CheckAlerts;
  end;

var
  fmMain: TfmMain;
  procedure FAN(var Obj); forward;

implementation
uses u_fmContragents, u_fmLog, u_DM, u_fmBalance, u_user,
  u_fmUsers, u_fmUpgradeEXE, u_fmPaymentsList, u_fmMATReestr, u_fmConfirmAlers,
  u_fmReports, u_fmAutomobile, u_fmAutoDrivers, u_fmJournal, u_fmScanDogReestr,
  u_fmSysTask, u_fmMATXChangeReestr, u_fmDocActInOutReestr,
  u_fmDocRouteCardReestr, u_fmFuelReestr, u_fmFuelCardReestr, u_fmInvoiceReestr,
  u_fmNotifycations, u_fmRequestReestr, u_fmSQLMonitor,
  u_fmReportAct, u_fmRefProductions, u_fmRouteCardChangesReestr, u_fmDolgReestr,
  u_fmInvoiceAnalize, u_fmContragentCooperation, u_fmLogin,
  u_fmDebitorReport, DateUtils, u_fmManagersCalendar, u_fmActTemplates,
  u_fmMatQTYReport, u_fmUserPlan, u_fmDocInOut, u_fmObespechReestr,
  u_fmAutoJournal;
{$R *.dfm}

procedure FAN(var Obj);
begin
  FreeAndNil(Obj);
  TObject(Obj) := nil;
end;

procedure TfmMain.ApplyGrants;
begin

  if (User.isAccount or USER.isDispatcher) then begin
    bbInvoiceReestr.Visible := ivAlways;
    bbInvoiceAnalize.Visible := ivAlways;
    bbPaymentList.Visible := ivAlways;
  end;

  if (User.isOwner or user.isAdmin or User.isDirector or user.isManager or User.isDispatcher or User.isHManager or User.isProdDirector) then begin
    bbMatReestr.Visible := ivAlways;
    bbMatXChangeReestr.Visible := ivAlways;
  end;

  if (User.isProdDirector) then begin
    bbFuelReestr.Visible := ivAlways;
  end;

  if (User.isOwner or user.isAdmin or User.isDirector or User.isDispatcher) then begin
    bbActTemplates.Visible := ivAlways;
    bbMatQTYReport.Visible := ivAlways;
  end;

  if (User.isOwner or user.isAdmin or User.isDirector) then begin
    bbObespechReestr.Visible := ivAlways;
    bbDocInOut.Visible := ivAlways;
    bbUserPlan.Visible := ivAlways;
    bbDolgReestr.Visible := ivAlways;
    bbCube1.Visible := ivAlways;
    bbPaymentList.Visible := ivAlways;
    bbInvoiceReestr.Visible := ivAlways;
    bbAdmin.Visible := ivAlways;
    bbDirectory.Visible := ivAlways;
    bbDirAutomibile.Visible := ivAlways;
    bbDirAutoDriver.Visible := ivAlways;
    bbSysTask.Visible := ivAlways;
    bbDocActInOutReestr.Visible := ivAlways;
    bbFuelReestr.Visible := ivAlways;
    bbFuelCardReestr.Visible := ivAlways;
    bbMatDayReport.Visible := ivAlways;
    bbRefProductions.Visible := ivAlways;
    bbInvoiceAnalize.Visible := ivAlways;
    bbDebitorReport.Visible := ivAlways;
    bbManagersCalendar.Visible := ivAlways;
    bbReportResource.Visible := ivAlways;
  end;

  if user.refAuto>0 then begin
    bbDirAutomibile.Visible := ivAlways;
    bbDirectory.Visible := ivAlways;
  end;
  if user.refAutoDriver>0 then begin
    bbDirAutoDriver.Visible := ivAlways;
    bbDirectory.Visible := ivAlways;
  end;

  if user.isManager then begin
    bbInvoiceAnalize.Visible := ivAlways;
    bbDebitorReport.Visible := ivAlways;
  end;

  if User.SysJournal then begin
    bbAdmin.Visible := ivAlways;
    bbJournal.Visible := ivAlways;
  end;


  if (User.LoginName='BNN') then
    bbDocActInOutReestr.Visible := ivAlways;

  if (User.LoginName='NETSAEV') then begin
    bbDebitorReport.Visible := ivAlways;
  end;


  if User.isHManager then
    bbPaymentList.Visible := ivAlways;


  if (User.isSysAdmin or User.isSysAdmin) then begin
    bbUsers.Visible := ivAlways;
    bbReports.Visible := ivAlways;
    bbUpgradeEXE.Visible := ivAlways;
    bbDirAutomibile.Visible := ivAlways;
    bbAdmSQLMonitor.Visible := ivAlways;
  end;

  if (User.isProdDirector) or (User.isHManager)  then begin
    bbDirectory.Visible := ivAlways;
    bbDirAutomibile.Visible := ivAlways;
    bbFuelReestr.Visible := ivAlways;
  end;


  bbReportsAct.Visible := bbDocActInOutReestr.Visible;

  if ((User.isManager) or (User.isAdmin) or (User.isDirector) or (User.isDispatcher) or (User.isOwner) or (User.isProdDirector)) then begin
    bbRouteCardChangeReestr.Visible:= ivAlways;
    bbReportList.Visible:= ivAlways;
  end;

  if ((bbreportsAct.Visible = ivAlways) or (bbRouteCardChangeReestr.Visible=ivAlways)) then begin
    bbReportList.Visible := ivAlways;
  end;

  if (User.LoginName='VEDENEVA') then begin
    bbManagersCalendar.Visible := ivAlways;
    bbAdmin.Visible := ivAlways;
  end

end;

procedure TfmMain.CheckAlerts;
begin
  QR.Close;
  QR.SQl.text := 'Select count(1) C from CONTRAGENT_JOURNAL J where J.CONTROL_DATE <= current_date and j.USER_ID = '+IntTOStr(User.ID)+' and j.COMPLETE_DT is null';
  QR.ExecQuery;
  if QR.FieldByName('C').Value>0 then begin
    btnNotifications.Caption :=  'Напоминаний: '+QR.FieldByName('C').AsString;
    btnNotifications.PaintStyle := bpsDefault;
    btnNotifications.Tag := QR.FieldByName('C').Value;
  end else begin
    btnNotifications.Caption :=  'Нет напоминаний';
    btnNotifications.PaintStyle := bpsCaption;
    btnNotifications.Tag := 0;
  end;
  if QR.Transaction.InTransaction then
    QR.Transaction.Rollback;
end;


procedure TfmMain.CreateChildWindow(var FormChild; FormClass: TFormClass;
  ACanMany: boolean);
var
  F : TForm;
  _i : integer;
begin
  F := nil;
  Wait(1);
  try
    if (ACanMany) then
      Application.CreateForm(FormClass, FormChild)
    else begin
      for _i := 0 to fmMain.MDIChildCount-1 do begin
        if ((fmMain.MDIChildren[_i]) is FormClass) then begin
          F := TForm(fmMain.MDIChildren[_i]);
          fmMain.MDIChildren[_i].Show;
          fmMain.MDIChildren[_i].SetFocus;
        end;
      end;
      if F = nil then
        Application.CreateForm(FormClass, FormChild)
    end;
  finally
    Wait(0);
  end;

end;


procedure TfmMain.bbObespechReestrClick(Sender: TObject);
begin
  CreateChildWindow(fmObespechReestr, TfmObespechReestr, false);
end;

procedure TfmMain.bbDocInOutClick(Sender: TObject);
begin
  CreateChildWindow(fmDocInOut, TfmDocInOut, false);
end;

procedure TfmMain.bbDolgReestrClick(Sender: TObject);
begin
  CreateChildWindow(fmDolgReestr, TfmDolgReestr, false);
end;

procedure TfmMain.bbRouteCardChangeReestrClick(Sender: TObject);
begin
  CreateChildWindow(fmRouteCardChangesReestr, TfmRouteCardChangesReestr, false);
end;

procedure TfmMain.bbFuelCardReestrClick(Sender: TObject);
begin
  CreateChildWindow(fmFuelCardReestr, TfmFuelCardReestr, false);
end;

procedure TfmMain.bbFuelReestrClick(Sender: TObject);
begin
  CreateChildWindow(fmFuelReestr, TfmFuelReestr, false);
end;

procedure TfmMain.bbInterfaceClassicClick(Sender: TObject);
begin
  User.GuiType := 0;
end;

procedure TfmMain.bbInterfaceRibbonClick(Sender: TObject);
begin
  User.GuiType := 1;

end;

procedure TfmMain.bbInvoiceAnalizeClick(Sender: TObject);
begin
  CreateChildWindow(fmInvoiceAnalize, TfmInvoiceAnalize, false);
end;

procedure TfmMain.bbInvoiceReestrClick(Sender: TObject);
begin
  CreateChildWindow(fmInvoiceReestr, TfmInvoiceReestr, false);

end;

procedure TfmMain.bbPaymentListClick(Sender: TObject);
begin
  CreateChildWindow(fmPaymentsList, TfmPaymentsList, false);
end;

procedure TfmMain.bbRefProductionsClick(Sender: TObject);
begin
  CreateChildWindow(fmRefProductions, TfmRefProductions, false);
end;

procedure TfmMain.bbReportResourceClick(Sender: TObject);
var
  DateSTart, DateEnd : TDate;
begin
  DM.LoadReport('AUTOFUEL', False, False);
  DateStart :=  IncDay(Date(), 0-(DayOfTheWeek(Date())-1)-9);
  DateEnd := IncDay(DateStart, 6);

  DM.Report.Variables.Variables['DATE_START'] := ''''+DateToStr(DateStart)+'''';
  DM.Report.Variables.Variables['DATE_END'] := ''''+DateToStr(DateEnd)+'''';
  DM.Report.ShowReport();
end;

procedure TfmMain.bbreportsActClick(Sender: TObject);
begin
  CreateChildWindow(fmReportAct, TfmReportAct, false);
end;

procedure TfmMain.bbReportsClick(Sender: TObject);
begin
  CreateChildWindow(fmReports, TfmReports, false);
end;

procedure TfmMain.bbRequestReestrClick(Sender: TObject);
begin
  CreateChildWindow(fmRequestReestr, TfmRequestReestr, false);
end;

procedure TfmMain.bbCube1Click(Sender: TObject);
begin
  CreateChildWindow(fmBalance, TfmBalance, false);
end;

procedure TfmMain.bbDebitorReportClick(Sender: TObject);
begin
  CreateChildWindow(fmDebitorReport, TfmDebitorReport, false);
end;

procedure TfmMain.bbDirAutoDriverClick(Sender: TObject);
begin
  CreateChildWindow(fmAutoDrivers, TfmAutoDrivers, false);
end;

procedure TfmMain.bbDirAutomibileClick(Sender: TObject);
begin
  CreateChildWindow(fmAutomobile, TfmAutomobile, false);
end;

procedure TfmMain.bbDocActInOutReestrClick(Sender: TObject);
begin
  CreateChildWindow(fmDocActInOutReestr, TfmDocActInOutReestr, false);
end;

procedure TfmMain.bbDogScanClick(Sender: TObject);
begin
  Wait(1);
  CreateChildWindow(fmScanDogReestr, TfmScanDogReestr, false);
end;

procedure TfmMain.bbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.bbfmDocRouteCardReestrClick(Sender: TObject);
begin
  CreateChildWindow(fmDocRouteCardReestr, TfmDocRouteCardReestr, false);
end;

procedure TfmMain.bbActTemplatesClick(Sender: TObject);
begin
  CreateChildWindow(fmActTemplates, TfmActTemplates, false);
end;

procedure TfmMain.bbAdmSQLMonitorClick(Sender: TObject);
begin
  CreateChildWindow(fmSQLMonitor, TfmSQLMonitor, false);
end;

procedure TfmMain.bbAutoJournalClick(Sender: TObject);
begin
  CreateChildWindow(fmAutoJournal, TfmAutoJournal, false);

end;

procedure TfmMain.bbClientActItemsClick(Sender: TObject);
begin
  DM.LoadReport(bbClientActItems.Items[bbClientActItems.ItemIndex]);
end;

procedure TfmMain.bbClientReportsPopup(Sender: TObject);
begin
  bbClientActItems.Items.Clear;
  bbClientActItems.ItemIndex := -1;
  QR.Close;
  QR.SQL.Text := 'select R.ID, R.NAME from REPORTS R where R.IS_ACT=1 order by R.NAME';
  QR.ExecQuery;
  while not QR.EOF do begin
    bbClientActItems.Items.Add(QR.FieldByname('NAME').AsString);
    QR.Next;
  end;
  QR.Close;
end;

procedure TfmMain.bbContragentsClick(Sender: TObject);
begin
  Wait(1);
  CreateChildWindow(fmContragents, TfmContragents, false);
end;

procedure TfmMain.bbCooperationClick(Sender: TObject);
begin
  CreateChildWindow(fmContragentCooperation, TfmContragentCooperation, false);

end;

procedure TfmMain.bbManagerReportClick(Sender: TObject);
begin
  DM.LoadReport('Отчет менеджера', False);
  DM.Report.Variables.Variables['DATE_START'] := ''''+DateToStr(IncDay(Date(), -7))+'''';
  DM.Report.Variables.Variables['DATE_END'] := ''''+DateToStr(date())+'''';
  DM.Report.ShowReport();
end;

procedure TfmMain.bbManagersCalendarClick(Sender: TObject);
begin
  CreateChildWindow(fmManagersCalendar, TfmManagersCalendar, false);
end;

procedure TfmMain.bbMatQTYReportClick(Sender: TObject);
begin
  CreateChildWindow(fmMatQTYReport, TfmMatQTYReport, false);

end;

procedure TfmMain.bbMatReestrClick(Sender: TObject);
begin
  CreateChildWindow(fmMATReestr, TfmMATReestr, false);
end;

procedure TfmMain.bbMatXChangeReestrClick(Sender: TObject);
begin
  CreateChildWindow(fmMATXChangeReestr, TfmMATXChangeReestr, false);
end;

procedure TfmMain.bbSettingsSkinClick(Sender: TObject);
begin
  User.GuiTheme := bbSettingsSkin.Items[bbSettingsSkin.ItemIndex];
end;

procedure TfmMain.bbSysTaskClick(Sender: TObject);
begin
  CreateChildWindow(fmSysTask, TfmSysTask, false);
end;

procedure TfmMain.bbUpgradeEXEClick(Sender: TObject);
begin
  fmUpgradeEXE := TfmUpgradeEXE.Create(Application);
  try
    fmUpgradeEXE.ShowModal();
  finally
    FreeAndNil(fmUpgradeEXE);
  end;
end;

procedure TfmMain.bbUserPlanClick(Sender: TObject);
begin
  CreateChildWindow(fmUserPlan, TfmUserPlan, false);
end;

procedure TfmMain.bbUsersClick(Sender: TObject);
begin
  CreateChildWindow(fmUsers, TfmUsers, false);
end;

procedure TfmMain.btnNotificationsClick(Sender: TObject);
begin
  CreateChildWindow(fmNotifycations, TfmNotifycations, false);
end;

procedure TfmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := (MessageBox(0, 'Закрыть программу?', 'Подтверждение', MB_ICONINFORMATION or MB_YESNO or MB_DEFBUTTON1) = idYes);
end;

procedure TfmMain.FormCreate(Sender: TObject);
var
  i: integer;
begin
  bbSettingsSkin.Items.Clear;
  bbSettingsSkin.ItemIndex := -1;
  for i := 0 to cxLookAndFeelPaintersManager.Count-1 do
    bbSettingsSkin.Items.Add(cxLookAndFeelPaintersManager.Items[i].LookAndFeelName);
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
  inherited;
  StatusBar.Panels[0].Text := User.Name;
  labelVER.Caption := 'v'+IntToStr(Ver);
  if DM.isTEST then
    labelVER.Caption := labelVER.Caption + ' ТЕСТ';
    if (DM.isSaransk) then begin
      PanelVer.Width := 150;
      labelVER.Caption := labelVER.Caption + ' САРАНСК';
    end;

  ApplyGrants;
  DM.getOptions;
  TimerVer.Enabled := TRUE;
  TimerAlerts.Enabled := true;
end;

procedure TfmMain.Log(AText: string; AShow: boolean = true);
begin
  if AShow then begin
    ShowLogWindow();
    fmLog.memo.Lines.Add(FormatDateTime('dd.mm.yyyy hh:mm:ss.zzz', Now())+'   '+AText);
    Application.ProcessMessages();
  end;
end;

procedure TfmMain.bbJournalClick(Sender: TObject);
begin
  CreateChildWindow(fmJournal, TfmJournal, false);
end;

procedure TfmMain.ShowLogWindow;
begin
  CreateChildWindow(fmLog, TfmLog, false);
end;

procedure TfmMain.TimerAlertsTimer(Sender: TObject);
begin
  TimerAlerts.Enabled := false;
  try
    CheckAlerts();
    if btnNotifications.Tag >0 then
      btnNotifications.Click;
  finally
//    TimerAlerts.Enabled := true;
  end;
end;

procedure TfmMain.TimerVerTimer(Sender: TObject);
begin
  if not DM.FB.Connected then
    exit;
  TimerVer.Enabled := FALSE;
  try
    DM.getOptions;
  finally
    TimerVer.Enabled := TRUE;
  end;
end;

end.
