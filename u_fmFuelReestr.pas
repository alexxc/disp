unit u_fmFuelReestr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, cxGridDBTableView, cxGrid,
  dxLayoutContainer, dxNavBar, dxNavBarCollns, dxNavBarBase, cxGridCardView,
  cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxTextEdit, cxImageComboBox, cxDropDownEdit, cxDBLookupComboBox,
  cxContainer, cxCurrencyEdit, FIBQuery, pFIBQuery, dxmdaset, FIBDataSet,
  pFIBDataSet, dxBarExtItems, Vcl.ExtCtrls, cxCustomPivotGrid, cxDBPivotGrid,
  Vcl.StdCtrls, cxButtons, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxPC, FIBDatabase, pFIBDatabase,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarBuiltInMenu;

type
  TfmFuelReestr = class(TfmMDIChild)
    dataFUEL: TpFIBDataSet;
    dsDATA: TDataSource;
    panelList: TPanel;
    qInput: TpFIBDataSet;
    dsInput: TDataSource;
    viewInputFuel: TcxGridDBTableView;
    GridInputLevel1: TcxGridLevel;
    GridInput: TcxGrid;
    viewInputFuelQTY: TcxGridDBColumn;
    viewInputFuelNAME: TcxGridDBColumn;
    viewInputFuelCARD_NUMBER: TcxGridDBColumn;
    BMBar1: TdxBar;
    dxBarDockControl2: TdxBarDockControl;
    bbEditSave: TdxBarButton;
    bbEditClose: TdxBarButton;
    bbEditNew: TdxBarButton;
    bbEditDelete: TdxBarButton;
    bbDate: TdxBarDateCombo;
    bbLeft: TdxBarButton;
    bbRight: TdxBarButton;
    REF_DRIVERS: TpFIBDataSet;
    dsDrivers: TDataSource;
    REF_FUEL_CARD: TpFIBDataSet;
    dsFuelCard: TDataSource;
    bbFuel: TdxBarButton;
    bbKM: TdxBarButton;
    Pages: TcxPageControl;
    tabData: TcxTabSheet;
    tabReport: TcxTabSheet;
    gridData: TcxGrid;
    viewFuel: TcxGridDBBandedTableView;
    viewFuel_AUTO_ID: TcxGridDBBandedColumn;
    viewFuel_PRODUCTON_NAME: TcxGridDBBandedColumn;
    viewFuel_AUTO_GOS_NOMER: TcxGridDBBandedColumn;
    viewFuel_AUTO_MODEL: TcxGridDBBandedColumn;
    viewFuel_FUEL_TYPE: TcxGridDBBandedColumn;
    viewFuel_1: TcxGridDBBandedColumn;
    viewFuel_2: TcxGridDBBandedColumn;
    viewFuel_3: TcxGridDBBandedColumn;
    viewFuel_4: TcxGridDBBandedColumn;
    viewFuel_5: TcxGridDBBandedColumn;
    viewFuel_6: TcxGridDBBandedColumn;
    viewFuel_7: TcxGridDBBandedColumn;
    viewFuel_ALL: TcxGridDBBandedColumn;
    viewKM: TcxGridDBBandedTableView;
    viewKM_AUTO_ID: TcxGridDBBandedColumn;
    viewKM_PRODUCTON_NAME: TcxGridDBBandedColumn;
    viewKM_AUTO_GOS_NOMER: TcxGridDBBandedColumn;
    viewKM_AUTO_MODEL: TcxGridDBBandedColumn;
    viewKM_1: TcxGridDBBandedColumn;
    viewKM_2: TcxGridDBBandedColumn;
    viewKM_3: TcxGridDBBandedColumn;
    viewKM_4: TcxGridDBBandedColumn;
    viewKM_5: TcxGridDBBandedColumn;
    viewKM_6: TcxGridDBBandedColumn;
    viewKM_7: TcxGridDBBandedColumn;
    viewKM_ALL: TcxGridDBBandedColumn;
    gridDataLevel1: TcxGridLevel;
    ReportCube: TcxDBPivotGrid;
    dockReport: TdxBarDockControl;
    dockData: TdxBarDockControl;
    REPORT: TpFIBDataSet;
    dsREPORT: TDataSource;
    cxDBPivotGrid1DOC_DATE: TcxDBPivotGridField;
    cxDBPivotGrid1KM: TcxDBPivotGridField;
    BMBar2: TdxBar;
    bbReportRefresh: TdxBarButton;
    bbReportStartDate: TdxBarDateCombo;
    bbReportEndDate: TdxBarDateCombo;
    cxDBPivotGrid1PRODUCTION_ID: TcxDBPivotGridField;
    cxDBPivotGrid1QTY_0: TcxDBPivotGridField;
    cxDBPivotGrid1QTY_1: TcxDBPivotGridField;
    cxDBPivotGrid1ROUTE_COUNT: TcxDBPivotGridField;
    cxDBPivotGrid1ADDRESS_COUNT: TcxDBPivotGridField;
    cxDBPivotGrid1MAT_SQUARE: TcxDBPivotGridField;
    Dialog: TOpenDialog;
    IMPORT: TdxMemData;
    IMPORTAUTO_ID: TIntegerField;
    IMPORTGPS_ID: TIntegerField;
    IMPORTGOS_NOMER: TStringField;
    IMPORTREP_DATE: TDateField;
    IMPORTREP_VALUE: TCurrencyField;
    IMPORTDB_VALUE: TCurrencyField;
    dsImport: TDataSource;
    panelResource: TcxGroupBox;
    editResource: TcxCurrencyEdit;
    btnResourceSave: TcxButton;
    bbResources: TdxBarButton;
    dataResource: TpFIBDataSet;
    dataKM: TpFIBDataSet;
    viewResources: TcxGridDBBandedTableView;
    dsResource: TDataSource;
    viewResourcesRESOURCE_NAME: TcxGridDBBandedColumn;
    viewResourcesRESOURCE_TYPE: TcxGridDBBandedColumn;
    viewResourcesPRODUCTON_ID: TcxGridDBBandedColumn;
    viewResourcesPRODUCTON_NAME: TcxGridDBBandedColumn;
    viewResourcesDAY_1: TcxGridDBBandedColumn;
    viewResourcesDAY_2: TcxGridDBBandedColumn;
    viewResourcesDAY_3: TcxGridDBBandedColumn;
    viewResourcesDAY_4: TcxGridDBBandedColumn;
    viewResourcesDAY_5: TcxGridDBBandedColumn;
    viewResourcesDAY_6: TcxGridDBBandedColumn;
    viewResourcesDAY_7: TcxGridDBBandedColumn;
    viewResourcesDAY_ALL: TcxGridDBBandedColumn;
    viewKMFUEL_TYPE: TcxGridDBBandedColumn;
    bbExportData: TdxBarButton;
    bbExportReport: TdxBarButton;
    viewInputFuelKM: TcxGridDBColumn;
    viewInputFuelQTY_REMAIN: TcxGridDBColumn;
    ReportCubeFUEL_TYPE: TcxDBPivotGridField;
    ReportCubeQTY: TcxDBPivotGridField;
    bbReport: TdxBarButton;
    dataRoutes: TpFIBDataSet;
    bbRoutes: TdxBarButton;
    dsRoutes: TDataSource;
    QW: TpFIBQuery;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbDateChange(Sender: TObject);
    procedure bbLeftClick(Sender: TObject);
    procedure bbRightClick(Sender: TObject);
    procedure TableViewDAY_2PropertiesInitPopup(Sender: TObject);
    procedure bbDateCurChange(Sender: TObject);
    procedure bbEditCloseClick(Sender: TObject);
    procedure bbEditNewClick(Sender: TObject);
    procedure bbEditDeleteClick(Sender: TObject);
    procedure bbEditSaveClick(Sender: TObject);
    procedure bbFuelClick(Sender: TObject);
    procedure bbKMClick(Sender: TObject);
    procedure qInputAfterInsert(DataSet: TDataSet);
    procedure qInputBeforePost(DataSet: TDataSet);
    procedure bbReportRefreshClick(Sender: TObject);
    procedure PagesChange(Sender: TObject);
    procedure bbReportStartDateCloseUp(Sender: TObject);
    procedure btnResourceSaveClick(Sender: TObject);
    procedure bbResourcesClick(Sender: TObject);
    procedure bbExportDataClick(Sender: TObject);
    procedure bbExportReportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbReportClick(Sender: TObject);
    procedure bbRoutesClick(Sender: TObject);
  private
  public
    procedure SetColumns();
    procedure ApplyRights; override;
  end;

var
  fmFuelReestr: TfmFuelReestr;
  CurrentPopupEditor: TcxPopupEdit;
  currentEditorDate : TDate;
  currentEditorProductionID : integer;
  currentEditorResourceType : integer;

implementation
uses DateUtils, StrUtils, u_DM;
{$R *.dfm}

procedure TfmFuelReestr.ApplyRights;
begin
  inherited;
  if (User.isOwner or user.isAdmin or User.isDirector or user.isProdDirector) then begin
    bbReport.Visible := ivAlways;
  end;

end;

procedure TfmFuelReestr.bbDateChange(Sender: TObject);
begin
  inherited;
//  if DayOfWeek(bbDate.Date)<>6 then
//    bbDate.Date := IncDay(bbDate.Date, 0-DayOfWeek(bbDate.Date)-1);
  bbRight.enabled :=  bbDate.Date < IncDay(Date(), 7);

  bbRefresh.Click();
end;

procedure TfmFuelReestr.bbDateCurChange(Sender: TObject);
begin
  inherited;
  bbDate.Date := bbDate.CurDate;
end;

procedure TfmFuelReestr.bbLeftClick(Sender: TObject);
begin
  inherited;
  bbDate.Date := IncWeek(bbDate.Date, -1);
end;

procedure TfmFuelReestr.bbRefreshClick(Sender: TObject);
var
  _dt : TDateTime;
  function DateToName(D: TDate): string;
  begin
    result := '';
    case DateUtils.DayOfTheWeek(D) of
      1: result := 'Пн';
      2: result := 'Вт';
      3: result := 'Ср';
      4: result := 'Чт';
      5: result := 'Пт';
      6: result := 'Сб';
      7: result := 'Вс';
    end;
    result := result + ' ' + dateToStr(D);
  end;

begin
  inherited;
  dataFUEL.DisableControls;
  dataKM.DisableControls;
  dataResource.DisableControls;
  dataRoutes.DisableControls;
  try
    if bbResources.Down then begin
      dataResource.ParamByName('DATE_START').Value := bbDate.Date;
      dataResource.CloseOpen(TRUE);
    end else if bbRoutes.Down then begin
      dataRoutes.ParamByName('DATE_START').Value := bbDate.Date;
      dataRoutes.CloseOpen(TRUE);
    end else if bbFuel.Down then begin
      dsDATA.DataSet := dataFUEL;
      dataFUEL.ParamByName('DATE_START').Value := bbDate.Date;
      dataFUEL.CloseOpen(TRUE);
    end else if bbKM.Down then begin
      dsDATA.DataSet := dataFUEL;
      dataKM.ParamByName('DATE_START').Value := bbDate.Date;
      dataKM.CloseOpen(TRUE);
    end;
//    DecodeDate(bbdate.Date, _y, _m, _d);
//    _week := DateUtils.DayOfTheWeek(bbdate.Date);
//    _dt := IncDay(EncodeDate(_y, _m, _d), 0-(_week-1)-2);
    _dt := bbdate.Date;
    dateStart := _dt;
    viewFuel_1.Caption := dateToName(_dt);
    viewFuel_2.Caption := dateToName(IncDay(_dt, 1));
    viewFuel_3.Caption := dateToName(IncDay(_dt, 2));
    viewFuel_4.Caption := dateToName(IncDay(_dt, 3));
    viewFuel_5.Caption := dateToName(IncDay(_dt, 4));
    viewFuel_6.Caption := dateToName(IncDay(_dt, 5));
    viewFuel_7.Caption := dateToName(IncDay(_dt, 6));

    viewKM_1.Caption := viewFuel_1.Caption;
    viewKM_2.Caption := viewFuel_2.Caption;
    viewKM_3.Caption := viewFuel_3.Caption;
    viewKM_4.Caption := viewFuel_4.Caption;
    viewKM_5.Caption := viewFuel_5.Caption;
    viewKM_6.Caption := viewFuel_6.Caption;
    viewKM_7.Caption := viewFuel_7.Caption;

    viewResourcesDAY_1.Caption := viewFuel_1.Caption;
    viewResourcesDAY_2.Caption := viewFuel_2.Caption;
    viewResourcesDAY_3.Caption := viewFuel_3.Caption;
    viewResourcesDAY_4.Caption := viewFuel_4.Caption;
    viewResourcesDAY_5.Caption := viewFuel_5.Caption;
    viewResourcesDAY_6.Caption := viewFuel_6.Caption;
    viewResourcesDAY_7.Caption := viewFuel_7.Caption;

    SetColumns;
  finally
    dataFUEL.EnableControls;
    dataKM.EnableControls;
    dataResource.EnableControls;
    dataRoutes.EnableControls;
  end;
end;

procedure TfmFuelReestr.bbReportClick(Sender: TObject);
begin
  inherited;
  DM.LoadReport('AUTOFUEL', False, False);
  DM.Report.Variables.Variables['DATE_START'] := ''''+DateToStr(bbReportStartDate.Date)+'''';
  DM.Report.Variables.Variables['DATE_END'] := ''''+DateToStr(bbReportEndDate.Date)+'''';
  DM.Report.ShowReport();
end;

procedure TfmFuelReestr.bbReportRefreshClick(Sender: TObject);
begin
  inherited;
  if not bbReportRefresh.Enabled then
    exit;
  bbReportRefresh.Enabled := false;
  try
    Wait(1);
    try
      Report.DisableControls;
//      Report.Close;
      if bbReportStartDate.Text<>'' then
        Report.ParamByName('DATE_START').AsDate := bbReportStartDate.CurDate
      else
        Report.ParamByName('DATE_START').value := null;
      if bbReportEndDate.Text<>'' then
        Report.ParamByName('DATE_END').AsDate := bbReportEndDate.CurDate
      else
        Report.ParamByName('DATE_END').Value := null;
      Report.CloseOpen(true);
    finally
      Report.EnableControls;
    bbReportRefresh.Enabled := true;
      Wait(0);
    end;
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;

end;

procedure TfmFuelReestr.bbReportStartDateCloseUp(Sender: TObject);
begin
  inherited;
  bbRefresh.Click;
end;

procedure TfmFuelReestr.bbResourcesClick(Sender: TObject);
begin
  inherited;
  bbFuel.Down := false;
  bbKM.Down := false;
  bbResources.Down := true;
  bbRoutes.Down := false;
  SetColumns;
  bbRefresh.Click();
end;

procedure TfmFuelReestr.bbRightClick(Sender: TObject);
begin
  inherited;
  bbDate.Date := IncWeek(bbDate.Date, 1);
end;

procedure TfmFuelReestr.bbRoutesClick(Sender: TObject);
begin
  inherited;
  bbFuel.Down := false;
  bbKM.Down := false;
  bbResources.Down := false;
  bbRoutes.Down := true;
  SetColumns;
  bbRefresh.Click();

end;

procedure TfmFuelReestr.btnResourceSaveClick(Sender: TObject);
begin
  inherited;
  try
    QW.Close;
    if ((editResource.EditingValue<>0) and (editResource.EditingText<>'')) then begin
      QW.SQl.text := 'update or insert into RESOURCE_REESTR (PRODUCTION_ID, DOC_DATE, RESOURCE_TYPE, QTY) values (:PRODUCTION_ID, :DOC_DATE, :RESOURCE_TYPE, :QTY) matching (PRODUCTION_ID, DOC_DATE, RESOURCE_TYPE)';
      QW.ParamByName('QTY').Value := editResource.EditingValue;
    end else begin
      QW.SQl.text := 'delete from RESOURCE_REESTR where PRODUCTION_ID = :PRODUCTION_ID and DOC_DATE = :DOC_DATE and RESOURCE_TYPE = :RESOURCE_TYPE';
    end;
    QW.ParamByName('PRODUCTION_ID').Value := viewResources.DataController.DataSource.DataSet.FieldByName('PRODUCTON_ID').Value;
    QW.ParamByName('RESOURCE_TYPE').Value := viewResources.DataController.DataSource.DataSet.FieldByName('RESOURCE_TYPE').Value;
    QW.ParamByName('DOC_DATE').Value := currentEditorDate;
    QW.ExecQuery;
    QW.Transaction.Commit;
    CurrentPopupEditor.DroppedDown := false;
    viewResources.DataController.DataSource.DataSet.DisableControls;
    try
      viewResources.DataController.DataSource.DataSet.Refresh;
    finally
      viewResources.DataController.DataSource.DataSet.EnableControls;
    end;
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfmFuelReestr.qInputAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if qInput.FieldByName('DRIVER_ID').Value=null then begin
    qInput.FieldByName('DRIVER_ID').Value := DM.FB.QueryValue('select MAIN_DRIVER from AUTOMOBILE A where A.ID='+qInput.ParamByName('AUTO_ID').AsString, 0);
    if qInput.FieldByName('DRIVER_ID').Value=null then
      qInput.FieldByName('DRIVER_ID').Value := DM.FB.QueryValue('select first 1 DRIVER_ID from FUEL_REESTR R where R.AUTO_ID='+qInput.ParamByName('AUTO_ID').AsString+' order by ID DESC', 0);
    if qInput.FieldByName('DRIVER_ID').Value<>null then
      qInput.FieldByName('CARD_ID').Value := DM.FB.QueryValue('select FUEL_CARD_ID from AUTO_DRIVER D where D.ID='+qInput.FieldByName('DRIVER_ID').AsString, 0)

  end;
end;

procedure TfmFuelReestr.qInputBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qInput.FieldByName('DRIVER_ID').Value=null then
    raise Exception.Create('Не указан водитель!');
  if ((qInput.FieldByName('QTY').Value=null) or (qInput.FieldByName('QTY').Value=0)) and
  ((qInput.FieldByName('KM').Value=null) or (qInput.FieldByName('KM').Value=0)) then
    raise Exception.Create('Необходимо указать количество топлива или пробег!');
//  if ((qInput.FieldByName('QTY').Value=null) or (qInput.FieldByName('QTY').Value=0)) and bbFuel.Down then
//    raise Exception.Create('Необходимо указать количество топлива!');
//  if ((qInput.FieldByName('KM').Value=null) or (qInput.FieldByName('KM').Value=0)) and bbFuel.Down then
//    raise Exception.Create('Необходимо указать пробег!');
end;

procedure TfmFuelReestr.bbEditCloseClick(Sender: TObject);
begin
  inherited;
  CurrentPopupEditor.DroppedDown := false;
  dsDATA.DataSet.Refresh;
end;

procedure TfmFuelReestr.bbEditDeleteClick(Sender: TObject);
begin
  inherited;
  dsInput.DataSet.Delete;
end;

procedure TfmFuelReestr.bbEditNewClick(Sender: TObject);
begin
  inherited;
  dsInput.DataSet.Append();
end;

procedure TfmFuelReestr.bbEditSaveClick(Sender: TObject);
begin
  inherited;
  if dsInput.DataSet.State in [dsEdit, dsInsert] then
    dsInput.DataSet.Post;
  if TpFibDataSet(dsInput.DataSet).UpdateTransaction.InTransaction then
    TpFibDataSet(dsInput.DataSet).UpdateTransaction.Commit;
  bbEditClose.Click;
end;

procedure TfmFuelReestr.bbExportDataClick(Sender: TObject);
begin
  inherited;
  ExportGrid(gridData);
end;

procedure TfmFuelReestr.bbExportReportClick(Sender: TObject);
begin
  inherited;
  ExportCube(ReportCube);
end;

procedure TfmFuelReestr.bbFuelClick(Sender: TObject);
begin
  inherited;
  bbFuel.Down := true;
  bbKM.Down := false;
  bbResources.Down := false;
  bbRoutes.Down := false;
  bbRefresh.Click;
  SetColumns;
end;

procedure TfmFuelReestr.bbKMClick(Sender: TObject);
begin
  inherited;
  bbFuel.Down := false;
  bbKM.Down := true;
  bbResources.Down := false;
  bbRoutes.Down := false;
  SetColumns;
  bbRefresh.Click();
end;

procedure TfmFuelReestr.FormCreate(Sender: TObject);
begin
  inherited;
  bbDate.Date := IncDay(Now(), 0-DateUtils.DayOfTheWeek(Now())-1-7);
end;

procedure TfmFuelReestr.FormShow(Sender: TObject);
begin
  inherited;
  try
    Pages.ActivePage := tabData;
//    bbDate.MaxDate := Date();
    bbFuel.Click;
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
end;


procedure TfmFuelReestr.PagesChange(Sender: TObject);
begin
  inherited;
  if Pages.ActivePage = tabData then
    bbRefresh.Click
  else if Pages.ActivePage = tabReport then
    bbReportRefresh.Click
end;

procedure TfmFuelReestr.SetColumns;
begin
  if bbFuel.Down then begin
    self.Caption := 'Учет заправок автотранспорта';
    gridDataLevel1.GridView := viewFuel;
    dsData.DataSet := dataFUEL;
  end else if bbKM.Down then begin
    self.Caption := 'Учет пробега автотранспорта';
    gridDataLevel1.GridView := viewKM;
    dsData.DataSet := dataKM;
  end else if bbResources.Down then begin
    self.Caption := 'Учет потребления ресурсов';
    viewResources.DataController.DataSource := dsResource;
    gridDataLevel1.GridView := viewResources;
  end else if bbRoutes.Down then begin
    self.Caption := 'Учет маршрутов';
    viewResources.DataController.DataSource := dsRoutes;
    gridDataLevel1.GridView := viewResources;
  end;
end;

procedure TfmFuelReestr.TableViewDAY_2PropertiesInitPopup(Sender: TObject);
var
  _day : integer;
begin
  inherited;
  if Sender is TcxPopupEdit then begin
    try
      Wait(1);
      REF_DRIVERS.DisableControls();
      REF_FUEL_CARD.DisableControls();
      qInput.DisableControls();

      REF_DRIVERS.Close();
      REF_FUEL_CARD.Close();
      CurrentPopupEditor := TcxPopupEdit(Sender);
      _day := TcxGridDBBandedTableView(gridDataLevel1.GridView).Controller.FocusedColumn.Tag;
      currentEditorDate := IncDay(dateStart, _day-1);
      if (bbFuel.Down) then begin
        // Авто
        CurrentPopupEditor.Properties.PopupControl := panelList;
        CurrentPopupEditor.Properties.PopupSizeable := true;
        CurrentPopupEditor.Properties.PopupSysPanelStyle := false;

        REF_DRIVERS.ParamByName('PRODUCTION_ID').Value := DM.FB.QueryValue('select PRODUCTION_ID from AUTOMOBILE where ID='+dataFuel.FieldByname('AUTO_ID').AsString, 0);
        REF_FUEL_CARD.ParamByName('PRODUCTION_ID').Value := DM.FB.QueryValue('select PRODUCTION_ID from AUTOMOBILE where ID='+dataFuel.FieldByname('AUTO_ID').AsString, 0);

        TpFIBDataSet(dsInput.DataSet).ParamByName('AUTO_ID').Value := dataFuel.FieldByname('AUTO_ID').Value;
        TpFIBDataSet(dsInput.DataSet).ParamByName('D').Value := currentEditorDate;

        REF_DRIVERS.CloseOpen(TRUE);
        REF_FUEL_CARD.CloseOpen(TRUE);
        qInput.CloseOpen(TRUE);
      end else if (bbKM.Down) then begin
        // Пробег и остаток топлива
        (Sender as TcxPopupEdit).Properties.PopupControl := panelList;
        CurrentPopupEditor.Properties.PopupSizeable := true;
        currentPopupEditor.Properties.PopupSysPanelStyle := false;

        qInput.ParamByName('AUTO_ID').Value := dataKM.FieldByname('AUTO_ID').Value;
        qInput.ParamByName('D').Value := currentEditorDate;
        REF_DRIVERS.ParamByName('PRODUCTION_ID').Value := DM.FB.QueryValue('select PRODUCTION_ID from AUTOMOBILE where ID='+dataKM.FieldByname('AUTO_ID').AsString, 0);
        REF_FUEL_CARD.ParamByName('PRODUCTION_ID').Value := DM.FB.QueryValue('select PRODUCTION_ID from AUTOMOBILE where ID='+dataFuel.FieldByname('AUTO_ID').AsString, 0);

        REF_DRIVERS.CloseOpen(TRUE);
        REF_FUEL_CARD.CloseOpen(TRUE);
        qInput.CloseOpen(TRUE);

      end else if ((bbResources.Down) or (bbRoutes.Down)) then begin
        if (viewResources.DataController.DataSource.DataSet.FieldByName('RESOURCE_TYPE').AsInteger = 11) then
          panelResource.Caption := 'Расход холодной воды, M³'
        else if (viewResources.DataController.DataSource.DataSet.FieldByName('RESOURCE_TYPE').AsInteger = 10) then
          panelResource.Caption := 'Расход горячей воды, M³'
        else if (viewResources.DataController.DataSource.DataSet.FieldByName('RESOURCE_TYPE').AsInteger = 12) then
          panelResource.Caption := 'Расход электричества, кВт'
        else if (viewResources.DataController.DataSource.DataSet.FieldByName('RESOURCE_TYPE').AsInteger = 21) then
          panelResource.Caption := 'Количество дневных маршрутов'
        else if (viewResources.DataController.DataSource.DataSet.FieldByName('RESOURCE_TYPE').AsInteger = 22) then
          panelResource.Caption := 'Количество ночных маршрутов'
        else
          panelResource.Caption := 'Расход';
        (Sender as TcxPopupEdit).Properties.PopupControl := panelResource;
        CurrentPopupEditor.Properties.PopupSizeable := false;
        currentPopupEditor.Properties.PopupSysPanelStyle := false;
        editResource.EditValue := CurrentPopupEditor.EditValue;
      end;

    finally
      REF_DRIVERS.EnableControls();
      REF_FUEL_CARD.EnableControls();
      qInput.EnableControls();
      Wait(0);
    end;
  end;
end;


end.
