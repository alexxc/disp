unit u_fmManagersCalendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxContainer, cxEdit, cxStyles, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxImageComboBox, cxDBLookupComboBox,
  Vcl.Menus, FIBQuery, pFIBQuery, FIBDataSet, pFIBDataSet, Vcl.StdCtrls,
  cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxRadioGroup, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxDateNavigator, cxGroupBox, cxPC, dxBar, FIBDatabase, pFIBDatabase;

type
  TDayInfo = record
    dayType : integer;
    manager_id : integer;
  end;

  TfmManagersCalendar = class(TfmMDIChild)
    Pages: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    Days: TpFIBDataSet;
    dsDays: TDataSource;
    gbDateNavigator: TcxGroupBox;
    DateNavigator: TcxDateNavigator;
    qCheckDay: TpFIBQuery;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    gbDateType: TcxGroupBox;
    cxGrid1DBTableView1DDAY: TcxGridDBColumn;
    Users: TpFIBDataSet;
    dsUsers: TDataSource;
    Holidays: TpFIBDataSet;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1USER_ID: TcxGridDBColumn;
    DATE_TYPE_1: TcxRadioButton;
    DATE_TYPE_2: TcxRadioButton;
    DATE_TYPE_3: TcxRadioButton;
    DATE_TYPE_0: TcxRadioButton;
    MANAGER_ID: TcxLookupComboBox;
    bbToday: TdxBarButton;
    cxLabel1: TcxLabel;
    btnClearManager: TcxButton;
    cxGroupBox2: TcxGroupBox;
    CURRENT_MANAGER: TcxLookupComboBox;
    QW: TpFIBQuery;
    btnChangeManager: TcxButton;
    procedure DateNavigatorSelectionChanged(Sender: TObject; const AStart,
      AFinish: TDateTime);
    procedure bbRefreshClick(Sender: TObject);
    procedure DateNavigatorCustomDrawDayNumber(Sender: TObject;
      ACanvas: TcxCanvas;
      AViewInfo: TcxSchedulerDateNavigatorDayNumberViewInfo;
      var ADone: Boolean);
    procedure DaysAfterPost(DataSet: TDataSet);
    procedure bbSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DATE_TYPE_0Click(Sender: TObject);
    procedure bbTodayClick(Sender: TObject);
    procedure MANAGER_IDPropertiesCloseUp(Sender: TObject);
    procedure btnClearManagerClick(Sender: TObject);
    procedure CURRENT_MANAGERPropertiesChange(Sender: TObject);
    procedure btnChangeManagerClick(Sender: TObject);
  private
    { Private declarations }
  public
    function getDayInfo(ADate : TDate) : TDayInfo;
    function setDayInfo(ADate : TDate; AType: TDayInfo):boolean;

  end;

var
  fmManagersCalendar: TfmManagersCalendar;

implementation
uses DateUtils, u_DM;
{$R *.dfm}

procedure TfmManagersCalendar.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Users.CloseOpen(TRUE);
  Days.CloseOpen(TRUE);
  Holidays.CloseOpen(TRUE);
  gbDateType.Enabled := false;
  if (DateNavigator.SelectedDays.Count=0) then begin
    DateNavigator.Date := Date();
  end;
  DateNavigatorSelectionChanged(DateNavigator, DateNavigator.Date, DateNavigator.Date);
  CURRENT_MANAGER.EditValue := DM.FB.QueryValue('select P.VAL_INT from PARAMS P where P.NAME=''REQUEST_MANAGER''', 0);
  btnChangeManager.Enabled := false;
  DataChanged := false;
end;

procedure TfmManagersCalendar.bbSaveClick(Sender: TObject);
begin
  inherited;
  if (trWrite.InTransaction) then
    trWrite.Commit;
  bbRefresh.Click();
end;

procedure TfmManagersCalendar.btnChangeManagerClick(Sender: TObject);
begin
  inherited;
  QW.Close;
  QW.SQL.Text := 'update PARAMS set VAL_INT = :ID where NAME=''REQUEST_MANAGER''';
  QW.ParamByName('ID').AsInteger := CURRENT_MANAGER.EditValue;
  try
    QW.ExecQuery;
    QW.Transaction.Commit;
    bbRefresh.Click();
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfmManagersCalendar.btnClearManagerClick(Sender: TObject);
begin
  inherited;
  MANAGER_ID.EditValue := 0;
  MANAGER_IDPropertiesCloseUp(MANAGER_ID);
end;

procedure TfmManagersCalendar.CURRENT_MANAGERPropertiesChange(Sender: TObject);
begin
  inherited;
  btnChangeManager.Enabled := true;
end;

procedure TfmManagersCalendar.DateNavigatorCustomDrawDayNumber(
  Sender: TObject; ACanvas: TcxCanvas;
  AViewInfo: TcxSchedulerDateNavigatorDayNumberViewInfo;
  var ADone: Boolean);
var
  dayType : TDayInfo;
begin
  inherited;
  DayType := getDayInfo(AViewInfo.Date);
  case DayType.dayType of
    0: // Обычный день
      if DayOfTheWeek(AViewInfo.Date) in [6, 7] then begin
        ACanvas.Font.Color := DateNavigator.HolidayColor;
      end;
    1: begin
      // Праздник
      ACanvas.Font.Color := DateNavigator.HolidayColor;
      ACanvas.Font.Style := [fsBold]
      end;
    2: begin
      // Выходной
      ACanvas.Font.Color := DateNavigator.HolidayColor;
      ACanvas.Font.Style := [fsBold]
      end;
    3: begin
      // Рабочий
      ACanvas.Font.Style := [fsBold];
      ACanvas.Font.Color := clBlue;
      end;
  end;
  if DayType.manager_id>0 then
      ACanvas.Font.Style := ACanvas.Font.Style + [fsUnderline];
  ADone := FALSE;
end;

procedure TfmManagersCalendar.DateNavigatorSelectionChanged(
  Sender: TObject; const AStart, AFinish: TDateTime);
var
  _type : TDayInfo;
begin
  inherited;
  gbDateType.Enabled := true;
  gbDateType.Caption := 'Дата: '+DateToStr(AStart);
  _type :=  getDayInfo(AStart);
  DATE_TYPE_0.Enabled := (_type.dayType=0) or  (_type.dayType=2) or (_type.dayType=3);
  DATE_TYPE_2.Enabled := DATE_TYPE_0.Enabled;
  DATE_TYPE_3.Enabled := DATE_TYPE_0.Enabled;
  DATE_TYPE_0.Checked := _type.dayType = 0;
  DATE_TYPE_1.Checked := _type.dayType = 1;
  DATE_TYPE_2.Checked := _type.dayType = 2;
  DATE_TYPE_3.Checked := _type.dayType = 3;
  if (_type.manager_id>0) then
    MANAGER_ID.EditValue := _type.manager_id
  else
    MANAGER_ID.EditValue := null;
end;

procedure TfmManagersCalendar.DATE_TYPE_0Click(Sender: TObject);
var
  T : TDayInfo;
begin
  inherited;
  if (sender is TcxRadioButton) then begin
    T.dayType := (sender as TcxRadioButton).Tag;
    if setDayInfo(DateNavigator.Date,  T) then begin
      if Holidays.UpdateTransaction.InTransaction then begin
        Holidays.UpdateTransaction.Commit;
        DateNavigator.Refresh;
        DataChanged := false;
      end;
    end;
  end;
  DateNavigatorSelectionChanged(DateNavigator, DateNavigator.Date, DateNavigator.Date);
end;

procedure TfmManagersCalendar.DaysAfterPost(DataSet: TDataSet);
begin
  inherited;
  DataChanged := True;
end;

procedure TfmManagersCalendar.bbTodayClick(Sender: TObject);
begin
  inherited;
  DateNavigator.Date := Date();
  DateNavigator.FirstDate :=Date();
  DateNavigatorSelectionChanged(DateNavigator, DateNavigator.Date, DateNavigator.Date);
end;

procedure TfmManagersCalendar.FormShow(Sender: TObject);
begin
  inherited;
  DataChanged := false;
  bbRefresh.Click();
end;

function TfmManagersCalendar.getDayInfo(ADate: TDate): TDayInfo;
begin
  result.dayType := 0;
  result.manager_id := 0;
  try
    Holidays.First;
    if (Holidays.Locate('Y;M;D', VarArrayOf([0, MonthOf(ADate), DayOf(ADate)]), [])) then
      result.dayType := Holidays.FBN('date_type').Value;

    if (Holidays.Locate('Y;M;D', VarArrayOf([YearOf(ADate), MonthOf(ADate), DayOf(ADate)]), [])) then begin
      if (result.dayType=0) then
        result.dayType := Holidays.FBN('date_type').Value;
      result.manager_id := Holidays.FBN('manager_id').Value;
    end;
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfmManagersCalendar.MANAGER_IDPropertiesCloseUp(Sender: TObject);
var
  T : TDayInfo;
begin
  inherited;
  T := getDayInfo(DateNavigator.Date);
  if T.manager_id<>MANAGER_ID.EditValue then begin
    T.manager_id := MANAGER_ID.EditValue;
    if setDayInfo(DateNavigator.Date,  T) then begin
      if Holidays.UpdateTransaction.InTransaction then begin
        Holidays.UpdateTransaction.Commit;
        DateNavigator.Refresh;
        DataChanged := false;
      end;
    end;
  end;
  DateNavigatorSelectionChanged(DateNavigator, DateNavigator.Date, DateNavigator.Date);
end;

function TfmManagersCalendar.setDayInfo(ADate: TDate; AType: TDayInfo) : boolean;
var
  _old_type : TDayInfo;
begin
  result := false;
  _old_type := getDayInfo(Adate);
  if ((_old_type.dayType<>AType.dayType) or (_old_type.manager_id<>AType.manager_id)) then begin
    if MessageDlg('Поменять тип дня?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then begin
      Holidays.First;
      if (Holidays.Locate('Y;M;D', VarArrayOf([YearOf(ADate), MonthOf(ADate), DayOf(ADate)]), [])) then begin
        if (AType.dayType=0) and (AType.manager_id=0) then
          Holidays.Delete()
        else begin
          Holidays.Edit;
          Holidays.FBN('date_type').Value := AType.dayType;
          Holidays.FBN('manager_id').Value := AType.manager_id;
          Holidays.Post();
        end;
      end else begin
        if (AType.dayType<>0) or (AType.manager_id<>0) then begin
          Holidays.Append;
          Holidays.FBN('D').Value := DayOf(ADate);
          Holidays.FBN('M').Value := MonthOf(ADate);
          Holidays.FBN('Y').Value := YearOf(ADate);
          Holidays.FBN('date_type').Value := AType.dayType;
          Holidays.FBN('manager_id').Value := AType.manager_id;
          Holidays.Post;
        end;
      end;
      result := true;
    end;
  end;
end;

end.
