unit u_fmRouteCardChangesReestr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, u_DM, DB, FIBDataSet, pFIBDataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar,
  cxImageComboBox, cxTextEdit, DateUtils, cxCurrencyEdit, dxBarExtItems,
  cxContainer, cxGroupBox, cxLabel, cxDBLabel, cxMemo, cxDBEdit,
  cxPCdxBarPopupMenu, cxPC, u_frameJournal, cxNavigator, dxBarBuiltInMenu,
  FIBQuery, pFIBQuery, FIBDatabase,
  pFIBDatabase, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmRouteCardChangesReestr = class(TfmMDIChild)
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    GridView: TcxGridDBBandedTableView;
    DOC_DT: TcxGridDBBandedColumn;
    DOC_NUM: TcxGridDBBandedColumn;
    CONTRAGENT_NAME: TcxGridDBBandedColumn;
    SERVICE_NAME: TcxGridDBBandedColumn;
    MAT_NAME: TcxGridDBBandedColumn;
    ADDRESS_NAME: TcxGridDBBandedColumn;
    FACT_STATUS: TcxGridDBBandedColumn;
    COUNT_PLAN: TcxGridDBBandedColumn;
    COUNT_FACT_IN: TcxGridDBBandedColumn;
    COUNT_FACT_OUT: TcxGridDBBandedColumn;
    DESCRIPTION: TcxGridDBBandedColumn;
    GridViewID: TcxGridDBBandedColumn;
    bbEdit: TdxBarButton;
    GridViewROUTE_NAME: TcxGridDBBandedColumn;
    bbPeriod: TdxBarSubItem;
    bbPeriod1: TdxBarButton;
    bbPeriod2: TdxBarButton;
    bbPeriod3: TdxBarButton;
    bbPeriod4: TdxBarButton;
    bbPeriod6: TdxBarButton;
    bbPeriod5: TdxBarButton;
    bbExport: TdxBarButton;
    GridViewPRODUCTION_NAME: TcxGridDBBandedColumn;
    GridViewMANAGER_NAME: TcxGridDBBandedColumn;
    bbPeriod7: TdxBarButton;
    DRIVER_ID: TcxGridDBBandedColumn;
    GridViewMANAGE_STATUS_NAME: TcxGridDBBandedColumn;
    GridViewIS_CLOSED: TcxGridDBBandedColumn;
    bbFilterNew: TdxBarButton;
    bbFilterProcess: TdxBarButton;
    bbFilterClosed: TdxBarButton;
    cxPageControl1: TcxPageControl;
    tabInfo: TcxTabSheet;
    tabJournal: TcxTabSheet;
    cxLabel1: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxLabel2: TcxLabel;
    cxDBLabel2: TcxDBLabel;
    cxLabel3: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxLabel4: TcxLabel;
    cxDBLabel3: TcxDBLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    frameJournal: TframeJournal;
    bbRestart: TdxBarButton;
    QW: TpFIBQuery;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
    procedure GridViewDblClick(Sender: TObject);
    procedure dsDATADataChange(Sender: TObject; Field: TField);
    procedure bbPeriod1Click(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
    procedure bbFilterStatusChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbFilterNewClick(Sender: TObject);
    procedure bbRestartClick(Sender: TObject);
  private
    FPeriod: integer;
    procedure SetPeriod(const Value: integer);
    { Private declarations }
  public
    property Period: integer read FPeriod write SetPeriod;
  end;

var
  fmRouteCardChangesReestr: TfmRouteCardChangesReestr;

implementation

uses
  u_fmRouteCardChanges, u_fmInputDate, u_fmInputDateRange;

{$R *.dfm}

procedure TfmRouteCardChangesReestr.bbEditClick(Sender: TObject);
begin
  inherited;
  if (DATA.FBN('ROUTE_CARD_T_ID').Value = NULL) then
    exit;
  bbEdit.Enabled := FALSE;
  fmRouteCardChanges := TfmRouteCardChanges.Create(self);
  try
    fmRouteCardChanges.ID := DATA.FBN('ROUTE_CARD_T_ID').Value;
    fmRouteCardChanges.EditMode := true;
    fmRouteCardChanges.ShowModal;
    DATA.Refresh;
  finally
    FreeAndNil(fmRouteCardChanges);
  end;
end;

procedure TfmRouteCardChangesReestr.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(Grid);
end;

procedure TfmRouteCardChangesReestr.bbFilterNewClick(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

procedure TfmRouteCardChangesReestr.bbFilterStatusChange(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

procedure TfmRouteCardChangesReestr.bbPeriod1Click(Sender: TObject);
begin
  inherited;
  Period := (Sender as TdxBarButton).Tag;
end;

procedure TfmRouteCardChangesReestr.bbRefreshClick(Sender: TObject);
begin
  inherited;
  if (not bbRefresh.Enabled) then
    exit;
  Wait(1);
  DATA.DisableControls;
  try
    DATA.ParamByName('DATE_START').Value := DateStart;
    DATA.ParamByName('DATE_END').Value := DateEnd;
    if bbFilterNew.Down then
      DATA.ParamByName('STATUS_NEW').Value := 1
    else
      DATA.ParamByName('STATUS_NEW').Value := 0;
    if bbFilterProcess.Down then
      DATA.ParamByName('STATUS_PROCESS').Value := 1
    else
      DATA.ParamByName('STATUS_PROCESS').Value := 0;
    if bbFilterClosed.Down then
      DATA.ParamByName('STATUS_CLOSED').Value := 1
    else
      DATA.ParamByName('STATUS_CLOSED').Value := 0;


    DM.WriteIniBool('ROUTE_CHANGES', 'ISNEW', bbFilterNew.Down);
    DM.WriteIniBool('ROUTE_CHANGES', 'ISPROCESS', bbFilterProcess.Down);
    DM.WriteIniBool('ROUTE_CHANGES', 'ISCLOSED', bbFilterClosed.Down);
    DATA.ReopenLocate('ID');
  finally
    DATA.EnableControls;
    Wait(0);
  end;
end;

procedure TfmRouteCardChangesReestr.bbRestartClick(Sender: TObject);
begin
  inherited;
  if MessageBox(0, 'Запустить обработку заново?', 'Подтверждение', MB_ICONQUESTION or MB_YESNO)=mrYES then begin
    QW.Close;
    QW.SQL.Text := 'update DOC_ROUTE_CARD_CHANGES C set C.MANAGE_STATUS=C.STATUS where C.ID=:ID';
    QW.ParamByName('ID').Value := DATA.FBN('ID').Value;
    QW.ExecQuery;
    QW.Transaction.Commit;
    DATA.refresh;
  end;
end;

procedure TfmRouteCardChangesReestr.GridViewDblClick(Sender: TObject);
begin
  inherited;
  if (bbEdit.Enabled and (bBEdit.Visible = ivAlways)) then
    bbEdit.Click();
end;

procedure TfmRouteCardChangesReestr.SetPeriod(const Value: integer);
begin
  bbPeriod.Caption := 'Период:';
  if Value = 1 then begin  // Вчера
    DateStart := IncDay(Today(), -1);
    DateEnd := Today();
    bbPeriod.Caption := bbPeriod.Caption + ' Вчера';
  end else if Value = 2 then begin // Сегодня
    DateStart := Today();
    DateEnd := DateStart;
    bbPeriod.Caption := bbPeriod.Caption + ' Сегодня';
  end else if Value = 3 then begin // С начала недели
    DateStart := StartOfTheWeek(Today());
    DateEnd := Today();
    bbPeriod.Caption := bbPeriod.Caption + ' Неделя';
  end else if Value = 4 then begin // С начала месяца
    DateStart := StartOfTheMonth(Today());
    DateEnd := Today();
    bbPeriod.Caption := bbPeriod.Caption + ' Месяц';
  end else if Value = 5 then begin // С начала месяца
    DateStart := StartOfTheYear(Today());
    DateEnd := Today();
    bbPeriod.Caption := bbPeriod.Caption + ' Год';
  end else if Value = 6 then begin // Произвольная дата
    fmInputDate := TfmInputDate.Create(self);
    try
      fmInputDate.eDate.Date := DateStart;
      if fmInputDate.ShowModal = mrOK then begin
        bbPeriod.Caption := bbPeriod.Caption + ' Дата';
        DateStart := fmInputDate.eDate.Date;
        DateEnd := DateStart;
      end;
    finally
      FreeAndNil(fmInputDate);
    end;
  end else if Value = 7 then begin // Произвольный период
    fmInputDateRange := TfmInputDateRange.Create(self);
    try
      fmInputDateRange.eDateStart.Date := DateStart;
      fmInputDateRange.eDateEnd.Date := DateEnd;
      if fmInputDateRange.ShowModal = mrOK then begin
        bbPeriod.Caption := bbPeriod.Caption + ' Диапазон дат ';
        DateStart := fmInputDateRange.eDateStart.Date;
        DateEnd := fmInputDateRange.eDateEnd.Date;
      end;
    finally
      FreeAndNil(fmInputDate);
    end;
  end;

  bbPeriod.Caption := bbPeriod.Caption + ' (' + DateToStr(DateStart) + ' по ' + DateToStr(DateEnd) + ')';
  FPeriod := Value;
  bbRefresh.Click();
end;

procedure TfmRouteCardChangesReestr.dsDATADataChange(Sender: TObject; Field: TField);
begin
  inherited;
  bbEdit.Enabled := not DATA.Eof;
  if ((not DATA.Eof) and (DATA.FBN('ID').Value<>null)) then begin
    frameJournal.RouteCardChangeID := DATA.FBN('ID').Value;
    frameJournal.bbAdd.Enabled := true;
    frameJournal.bbCooperation.Enabled := true;
    frameJournal.bbRefresh.Enabled := true;
    bbRestart.Enabled :=  (DATA.FBN('MANAGE_STATUS').Value=2) or User.isAdmin or User.isDirector or User.isOwner;
  end else begin
    bbRestart.Enabled := false;
    frameJournal.bbAdd.Enabled := false;
    frameJournal.bbCooperation.Enabled := false;
    frameJournal.bbRefresh.Enabled := false;
    frameJournal.RouteCardChangeID := 0;
  end;
end;

procedure TfmRouteCardChangesReestr.FormShow(Sender: TObject);
begin
  inherited;
  if (User.isAdmin or user.isDirector or User.isOwner or user.isSysAdmin) then
    bbRestart.Visible := ivAlways;
  DM.LoadEditRepoImageCombo(TcxImageComboBoxProperties(FACT_STATUS.Properties), 62);
  bbRefresh.Enabled := false;
  try
    bbFilterNew.Down     := DM.ReadIniBool('ROUTE_CHANGES', 'ISNEW', TRUE);
    bbFilterProcess.Down := DM.ReadIniBool('ROUTE_CHANGES', 'ISPROCESS', TRUE);
    bbFilterClosed.Down  := DM.ReadIniBool('ROUTE_CHANGES', 'ISCLOSED', FALSE);
    Period := 1;
  finally
    bbRefresh.Enabled := true;
    bbrefresh.Click();
  end;
end;

end.

