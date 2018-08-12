unit u_fmContragents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, u_DM, DB, FIBDataSet, pFIBDataSet, dxBar, cxClasses,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxCustomData, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu,
  dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxImageComboBox, cxTextEdit, cxLabel, cxCalendar, cxCurrencyEdit,
  cxCheckBox, cxMemo, dxBarBuiltInMenu, FIBQuery, pFIBQuery, dxBarExtItems,
  cxBarEditItem, u_frameJournal, cxPC, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid,
  cxInplaceContainer, cxDBTL, cxTLData, Vcl.ExtCtrls, cxSplitter, FIBDatabase,
  pFIBDatabase, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmContragents = class(TfmMDIChild)
    Contragents: TpFIBDataSet;
    dsContragents: TDataSource;
    bbDetail: TdxBarButton;
    DetailSplitter: TcxSplitter;
    BMBar1: TdxBar;
    moneyDateStart: TcxBarEditItem;
    moneyDateEnd: TcxBarEditItem;
    BalanceDocuments: TpFIBDataSet;
    dsBalanceDocuments: TDataSource;
    bbBalanceDocumentsRefresh: TdxBarButton;
    bbTree: TdxBarButton;
    Tree: TpFIBDataSet;
    dsTree: TDataSource;
    PanelTOP: TPanel;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1NAME: TcxDBTreeListColumn;
    TreeSplitter: TcxSplitter;
    gridContragents: TcxGrid;
    gridContragentsTable: TcxGridDBTableView;
    gridContragentsTableID: TcxGridDBColumn;
    gridContragentsTableCODE: TcxGridDBColumn;
    gridContragentsTableIS_FOLDER: TcxGridDBColumn;
    gridContragentsTableNAME: TcxGridDBColumn;
    gridContragentsTableINN: TcxGridDBColumn;
    gridContragentsTableDESCRIPTION: TcxGridDBColumn;
    gridContragentsTableCURRENT_DOLG: TcxGridDBColumn;
    gridContragentsLevel1: TcxGridLevel;
    gridContragentsTableSERVICE_STATE: TcxGridDBColumn;
    gridContragentsTableLAST_INVOICE_DT: TcxGridDBColumn;
    gridContragentsTableLAST_PAYMENT_DT: TcxGridDBColumn;
    gridContragentsTablePARENT1: TcxGridDBColumn;
    gridContragentsTablePARENT2: TcxGridDBColumn;
    gridContragentsTableMANAGER_NAME: TcxGridDBColumn;
    bbEdit: TdxBarButton;
    gridContragentsTableDEBTOR_TYPE: TcxGridDBColumn;
    gridContragentsTableCLIENT_TYPE: TcxGridDBColumn;
    bbExportList: TdxBarButton;
    gridContragentsTableGROUP_NAME: TcxGridDBColumn;
    gridContragentsTableINCOICE_ACTIVE_COUNT: TcxGridDBColumn;
    bbResetSettings: TdxBarButton;
    Pages: TcxPageControl;
    tabBalance: TcxTabSheet;
    dockBalance: TdxBarDockControl;
    GridDocuments: TcxGrid;
    GridDocumentsDBTableView1: TcxGridDBTableView;
    GridDocumentsDBTableView1STATUS: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_DATE: TcxGridDBColumn;
    GridDocumentsDBTableView1DELIVERY_DATE: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_NUM: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_TYPE: TcxGridDBColumn;
    GridDocumentsDBTableView1AMOUNT_IN: TcxGridDBColumn;
    GridDocumentsDBTableView1AMOUNT_OUT: TcxGridDBColumn;
    GridDocumentsDBTableView1AMOUNT_DOLG: TcxGridDBColumn;
    GridDocumentsDBTableView1DESCRIPTION: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_DESCRIPTION: TcxGridDBColumn;
    GridDocumentsLevel1: TcxGridLevel;
    tabJournal: TcxTabSheet;
    tabDocuments: TcxTabSheet;
    BMBar3: TdxBar;
    dockDocuments: TdxBarDockControl;
    bbDocumentsAdd: TdxBarButton;
    Documents: TpFIBDataSet;
    dsDocuments: TDataSource;
    bbDocumentsRefresh: TdxBarButton;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1DOCUMENT_TYPE: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid2DBTableView1FILENAME: TcxGridDBColumn;
    cxGrid2DBTableView1FILESIZE: TcxGridDBColumn;
    cxGrid2DBTableView1DATA: TcxGridDBColumn;
    cxGrid2DBTableView1CREATED_BY_USER_ID: TcxGridDBColumn;
    cxGrid2DBTableView1CREATED_DT: TcxGridDBColumn;
    bbDocumentView: TdxBarButton;
    GridDocumentsDBTableView1IN_CONTROL: TcxGridDBColumn;
    bbInvoiceControl: TdxBarButton;
    gridContragentsTableORGANIZATION_NAME: TcxGridDBColumn;
    bbBalance: TdxBarButton;
    gridContragentsTableIN_CONTROL: TcxGridDBColumn;
    gridContragentsTableIS_CLEANING: TcxGridDBColumn;
    gridContragentsTableIS_GK: TcxGridDBColumn;
    gridContragentsTableIS_VIP: TcxGridDBColumn;
    tabMAT: TcxTabSheet;
    ContractAddress: TpFIBDataSet;
    dsContractAddress: TDataSource;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1IS_ACTIVE: TcxGridDBColumn;
    cxGrid3DBTableView1ADDRESS: TcxGridDBColumn;
    cxGrid3DBTableView1CONTACT_NAME: TcxGridDBColumn;
    cxGrid3DBTableView1PHONE: TcxGridDBColumn;
    cxGrid3DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid3DBTableView1QTY_MAT: TcxGridDBColumn;
    cxGrid3DBTableView1WEEKS: TcxGridDBColumn;
    cxGrid3DBTableView1DAYS: TcxGridDBColumn;
    cxGrid3DBTableView1MAT_NAME: TcxGridDBColumn;
    cxGrid3DBTableView1REGION_NAME: TcxGridDBColumn;
    cxGrid3DBTableView1SQUARE: TcxGridDBColumn;
    cxGrid3DBTableView1PRICE_REPLACE_SQUARE: TcxGridDBColumn;
    gridContragentsTableIS_ACTIVE_MAT: TcxGridDBColumn;
    gridContragentsTableMAT_SQUARE: TcxGridDBColumn;
    gridContragentsTableMAT_QTY: TcxGridDBColumn;
    gridContragentsTableIS_DOG_EXISTS: TcxGridDBColumn;
    bbMakeDog: TdxBarButton;
    gridContragentsTableOBESPECH_ACTIVE: TcxGridDBColumn;
    gridContragentsTableOBESPECH_ACTIVE_OUTDATED: TcxGridDBColumn;
    gridContragentsTableLAST_DELIVERTY_DATE: TcxGridDBColumn;
    gridContragentsTableLAST_INVOICE_ACCEPTED: TcxGridDBColumn;
    bbDogAdd: TdxBarButton;
    bbDocumentEdit: TdxBarButton;
    gridContragentsTableDOG_MAX_DATE: TcxGridDBColumn;
    tabDocDog: TcxTabSheet;
    Grid: TcxGrid;
    gridDocDog: TcxGridDBTableView;
    gridDocDogNAME: TcxGridDBColumn;
    gridDocDogNOMER_DOG: TcxGridDBColumn;
    gridDocDogDATE_START: TcxGridDBColumn;
    gridDocDogDATE_END: TcxGridDBColumn;
    gridDocDogSUMMER_DATE: TcxGridDBColumn;
    gridDocDogWINTER_DATE: TcxGridDBColumn;
    gridDocDogDOG_TYPE: TcxGridDBColumn;
    gridDocDogDESCRIPTION: TcxGridDBColumn;
    gridDocDogEXT: TcxGridDBColumn;
    gridDocDogCREATED_BY_USER_ID: TcxGridDBColumn;
    gridDocDogDOC_DT: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    DocDog: TpFIBDataSet;
    dsDocDog: TDataSource;
    dockDocDog: TdxBarDockControl;
    BMBar4: TdxBar;
    bbDocDogRefresh: TdxBarButton;
    bbDocDogDocView: TdxBarButton;
    bbDocDogDocEdit: TdxBarButton;
    gridContragentsTableMAT_QTY_DOC: TcxGridDBColumn;
    gridContragentsTableMAT_QTY_DELTA: TcxGridDBColumn;
    bbAct2016: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    gridContragentsTableIS_ACT_2016_EXISTS: TcxGridDBColumn;
    gridContragentsTableCREATED_DT: TcxGridDBColumn;
    gridContragentsTableDESCRIPTION_MODIFY_BY: TcxGridDBColumn;
    gridContragentsTableDESCRIPTION_MODIFY_DT: TcxGridDBColumn;
    gridContragentsTableCOOPERATION_STATUS: TcxGridDBColumn;
    gridContragentsTableIS_COMPETITOR: TcxGridDBColumn;
    gridContragentsTableCOMPETITOR_NAME: TcxGridDBColumn;
    cxGrid3DBTableView1IS_MAT_FILTER: TcxGridDBColumn;
    frameJournal: TframeJournal;
    gridContragentsTableREQUEST_SOURCE: TcxGridDBColumn;
    gridContragentsTablePAYMENT_DALAY_DAYS: TcxGridDBColumn;
    gridContragentsTableINVOICE_AMOUNT_REMAIN: TcxGridDBColumn;
    gridContragentsTableINVOICE_CONTROL_COUNT: TcxGridDBColumn;
    gridContragentsTableINVOICE_AMOUNT_REMAIN_CONTROL: TcxGridDBColumn;
    dxBarButton2: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    gridContragentsTableLAST_ACT_IN_DT: TcxGridDBColumn;
    bbRepSverka: TdxBarButton;
    gridContragentsTableMANAGER_DESCRIPTION: TcxGridDBColumn;
    bbEditDescription: TdxBarButton;
    QW: TpFIBQuery;
    bbSetManagerControl: TdxBarButton;
    gridContragentsTableREGION_CODE: TcxGridDBColumn;
    GridDocumentsDBTableView1PERIOD_DATE: TcxGridDBColumn;
    bbDocsOnlyAccepted: TdxBarButton;
    BMBar2: TdxBar;
    dockService: TdxBarDockControl;
    bbServiceSeport: TdxBarButton;
    gridContragentsTableIS_DOC_TO_EMAIL: TcxGridDBColumn;
    gridContragentsTablePAYMENT_TYPE: TcxGridDBColumn;
    gridContragentsTableLAW_IS_RESHENIE: TcxGridDBColumn;
    gridContragentsTableINVOICE_CATEGORY: TcxGridDBColumn;
    procedure bbRefreshClick(Sender: TObject);
    procedure DetailSplitterAfterClose(Sender: TObject);
    procedure DetailSplitterAfterOpen(Sender: TObject);
    procedure bbDetailClick(Sender: TObject);
    procedure bbBalanceDocumentsRefreshClick(Sender: TObject);
    procedure cxGrid1DBTableView1CURRENT_DOLGStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure TreeAfterScroll(DataSet: TDataSet);
    procedure bbTreeClick(Sender: TObject);
    procedure TreeSplitterAfterClose(Sender: TObject);
    procedure TreeSplitterAfterOpen(Sender: TObject);
    procedure gridContragentsTableDblClick(Sender: TObject);
    procedure GridDocumentsDBTableView1AMOUNT_DOLGStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure bbEditClick(Sender: TObject);
    procedure bbExportListClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbResetSettingsClick(Sender: TObject);
    procedure bbDocumentsAddClick(Sender: TObject);
    procedure bbDocumentsRefreshClick(Sender: TObject);
    procedure bbDocumentViewClick(Sender: TObject);
    procedure dsDocumentsDataChange(Sender: TObject; Field: TField);
    procedure dsBalanceDocumentsDataChange(Sender: TObject; Field: TField);
    procedure bbInvoiceControlClick(Sender: TObject);
    procedure bbBalanceClick(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PagesChange(Sender: TObject);
    procedure ContragentsAfterScroll(DataSet: TDataSet);
    procedure gridContragentsTableStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure bbMakeDogClick(Sender: TObject);
    procedure bbDogAddClick(Sender: TObject);
    procedure bbDocumentEditClick(Sender: TObject);
    procedure bbDocDogDocViewClick(Sender: TObject);
    procedure dsDocDogDataChange(Sender: TObject; Field: TField);
    procedure bbDocDogDocEditClick(Sender: TObject);
    procedure bbAct2016Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure bbRepSverkaClick(Sender: TObject);
    procedure bbEditDescriptionClick(Sender: TObject);
    procedure bbSetManagerControlClick(Sender: TObject);
    procedure GridDocumentsDBTableView1PERIOD_DATEGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
      var AText: string);
    procedure bbDocsOnlyAcceptedClick(Sender: TObject);
    procedure bbServiceSeportClick(Sender: TObject);
  private
    GridSettingToSave : boolean;
  public
    procedure ApplyRights; override;
  end;

var
  fmContragents: TfmContragents;

implementation
uses DateUtils, u_fmMain, u_fmJournalRecord, u_fmDocumentUpload, u_fmDogUpload,
  u_fmCooperationEdit, u_fmContragentActAnalyze, u_fmTextEdit;
{$R *.dfm}

procedure TfmContragents.ApplyRights;
begin
  inherited;
  if (User.isDirector or User.isOwner or User.isHManager or User.isDispatcher or User.isManager or User.isAdmin) then
    bbEdit.Visible := ivAlways
  else
    bbEdit.Visible := ivNever;

  if user.isManager then begin
    TreeSplitter.Visible := false;
    bbTree.Visible := ivNever;
  end;

  if not (User.isAdmin or User.isManager or User.isOwner or User.isDirector) then begin
    gridContragentsTableDESCRIPTION.Visible := false;
    gridContragentsTableDESCRIPTION.VisibleForCustomization := false;
  end;


  if not (user.isAdmin or user.isOwner or user.isDirector) then begin
    bbInvoiceControl.Visible := ivNever;
    bbExportList.Visible := ivNever;
    bbDocumentEdit.Caption := 'Открыть реквизиты';
    bbDocumentEdit.Tag := 1;
    bbDocDogDocEdit.Caption := 'Открыть реквизиты';
    bbDocDogDocEdit.Tag := 1;
  end;

  if User.ID=26 then
    bbExportList.Visible := ivAlways;

  if not (User.isAccount or User.isAdmin or user.isDirector or user.isOwner) then
    bbBalance.Visible := ivNever;
  if (user.isAdmin or User.isSysAdmin) then
    bbMakeDog.Visible := ivAlways;

end;

procedure TfmContragents.bbDetailClick(Sender: TObject);
begin
  inherited;
  if bbDetail.Down then
    DetailSplitter.OpenSplitter
  else
    DetailSplitter.CloseSplitter;
  ContragentsAfterScroll(Contragents);
end;

procedure TfmContragents.bbDocumentEditClick(Sender: TObject);
begin
  inherited;
  fmDogUpload := TfmDogUpload.Create(Application);
  try
    fmDogUpload.ContragentID := Contragents.FieldByName('ID').Value;
    fmDogUpload.ID := DOCUMENTS.FieldByName('ID').Value;
    if bbDocumentEdit.tag = 1 then
      fmDogUpload.isReadOnly := true;
    if fmDogUpload.ShowModal = mrOK then begin
      try
        Documents.DisableControls;
        Documents.CloseOpen(true);
        if not Documents.Locate('ID', fmDogUpload.ID, []) then
          Documents.First;
      finally
        Documents.EnableControls;
      end;
    end;
  finally
    FreeAndNil(fmDogUpload);
    Contragents.Refresh;
  end;
end;

procedure TfmContragents.bbDocumentsAddClick(Sender: TObject);
begin
  inherited;
  fmDocumentUpload := TfmDocumentUpload.Create(Application);
  try
    fmDocumentUpload.ContragentID := Contragents.FieldByName('ID').Value;
    if fmDocumentUpload.ShowModal = mrOK then begin

      try
        Documents.DisableControls;
        Documents.CloseOpen(true);
        if not Documents.Locate('ID', fmDocumentUpload.ID, []) then
          Documents.First;
      finally
        Documents.EnableControls;
      end;
    end;
  finally
    FreeAndNil(fmDocumentUpload);
  end;
end;

procedure TfmContragents.bbDocumentsRefreshClick(Sender: TObject);
begin
  inherited;
  if not bbDocumentsRefresh.Enabled then
    exit;

  bbDocumentsRefresh.Enabled := false;
  try
    Documents.DisableControls;
    Documents.ReopenLocate('ID');
  finally
    Documents.EnableControls;
    bbDocumentsRefresh.Enabled := true;
  end;

end;

procedure TfmContragents.bbDocumentViewClick(Sender: TObject);
begin
  inherited;
  try
    DM.ViewDoc(Documents.FieldByName('ID').Value);
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfmContragents.bbDogAddClick(Sender: TObject);
var
  DS : TpFIBDataSet;
begin
  inherited;
  fmDogUpload := TfmDogUpload.Create(Application);
  if (Pages.ActivePage = tabDocuments) then
    DS := Documents
  else
    DS := DocDog;

  try
    fmDogUpload.ContragentID := Contragents.FieldByName('ID').Value;
    fmDogUpload.isReadOnly := false;
    if fmDogUpload.ShowModal = mrOK then begin

      try
        DS.DisableControls;
        DS.CloseOpen(true);
        if not DS.Locate('ID', fmDogUpload.ID, []) then
          DS.First;
        if Pages.ActivePage <> tabDocDog then begin
          Pages.ActivePage := tabDocDog;
          DocDog.DisableControls;
          DocDog.CloseOpen(true);
          DocDog.Locate('ID', Documents.FieldByName('ID').AsInteger, []);
          DocDog.EnableControls;
        end;

      finally
        DS.EnableControls;
      end;
    end;
  finally
    FreeAndNil(fmDogUpload);
    Contragents.Refresh;
  end;
end;

procedure TfmContragents.bbAct2016Click(Sender: TObject);
var
  _id, _i : integer;
  _need_to_clear: boolean;
begin
  inherited;
  DM.LoadReport('АктСверкиИюль2016', False);
  _need_to_clear := true;
  for _i := 0 to gridContragentsTable.DataController.FilteredRecordCount-1 do begin
    _id := gridContragentsTable.DataController.Values[gridContragentsTable.DataController.FilteredRecordIndex[_i], gridContragentsTableID.Index];
    dm.Report.Variables.Variables['CONTRAGENT_ID'] := _id;
    dm.Report.PrepareReport(_need_to_clear);
    _need_to_clear := false;
  end;
  dm.Report.ShowPreparedReport;
end;

procedure TfmContragents.bbBalanceClick(Sender: TObject);
begin
  inherited;
  DM.LoadReport('Акт взаиморасчетов', false);
  DM.Report.Variables.Variables['CONTRAGENT_ID'] := Contragents.FieldByname('ID').AsInteger;
  DM.Report.ShowReport();
end;

procedure TfmContragents.bbBalanceDocumentsRefreshClick(Sender: TObject);
begin
  inherited;
    try
      BalanceDocuments.DisableControls;
      BalanceDocuments.Close;
      BalanceDocuments.ParamByName('CONTRAGENT_ID').Value := Contragents.FieldByName('ID').Value;
      BalanceDocuments.ParamByName('DATE_START').Value := moneyDateStart.EditValue;
      BalanceDocuments.ParamByName('DATE_END').Value := moneyDateEnd.EditValue;
      if bbDocsOnlyAccepted.Down then
        BalanceDocuments.ParamByName('ONLY_ACCEPTED').Value := 1
      else
        BalanceDocuments.ParamByName('ONLY_ACCEPTED').Value := 0;

      BalanceDocuments.Open;
      BalanceDocuments.Last;
    finally
      BalanceDocuments.EnableControls;
    end;
end;

procedure TfmContragents.bbEditClick(Sender: TObject);
begin
  inherited;
  DM.EditContragent(Contragents.FieldByName('ID').Value);
  Contragents.refresh();
end;

procedure TfmContragents.bbEditDescriptionClick(Sender: TObject);
begin
  inherited;
  if not Contragents.isEmpty then begin
    fmTextEdit := TfmTextEdit.Create(self);
    try
      fmTextEdit.MEMO.Lines.Text := Contragents.FBN('MANAGER_DESCRIPTION').AsString;
      if fmTextEdit.ShowModal = mrOK then begin
        QW.Close;
        QW.SQL.Text := 'update CONTRAGENTS set MANAGER_DESCRIPTION=:TXT where ID=:ID';
        QW.ParamByName('TXT').AsString := fmTextEdit.MEMO.Lines.Text;
        QW.ParamByName('ID').AsInteger := Contragents.FBN('ID').AsInteger;
        QW.ExecQuery;
        QW.Transaction.Commit;
        Contragents.Refresh;
      end;
    finally
      FreeAndNil(fmTextEdit);
    end;

  end;
end;

procedure TfmContragents.bbInvoiceControlClick(Sender: TObject);
begin
  inherited;
  //
  QW.Close;
  Wait(1);
  try
    BalanceDocuments.DisableControls;
    QW.SQL.text := 'update INVOICE set IN_CONTROL = :IN_CONTROL where ID=:ID';
    QW.ParamByName('ID').Value := BalanceDocuments.FieldByName('ID').Value;
    if BalanceDocuments.FieldByName('IN_CONTROL').AsInteger = 0 then begin
      QW.ParamByName('IN_CONTROL').Value := 1;
    end else begin
      QW.ParamByName('IN_CONTROL').Value := 0;
    end;
    QW.ExecQuery;
    QW.Transaction.Commit;
  finally
    BalanceDocuments.ReopenLocate('ID');
    BalanceDocuments.EnableControls;
    Wait(0);
  end;
end;

procedure TfmContragents.bbMakeDogClick(Sender: TObject);
begin
  inherited;
  DM.LoadReport('Договор', false);
  DM.Report.Variables.Variables['CONTRAGENT_ID'] := Contragents.FieldByName('ID').AsInteger;
  DM.Report.ShowReport();
end;

procedure TfmContragents.bbRefreshClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  if not bbRefresh.Enabled then
    exit;
  try
    bbrefresh.Enabled := false;
    if (Contragents.IsEmpty) then
      _id := 0
    else
      _id := Contragents.FBN('ID').AsInteger;
    Wait(1);
    Contragents.DisableControls;
    Contragents.CloseOpen(false);
    if _id>0 then begin
      if not Contragents.Locate('ID', _id, []) then
        Contragents.First;
    end;
    Contragents.EnableControls;
    if bbTree.Down then
      Tree.ReopenLocate('ID');
  finally
    Wait(0);
    bbrefresh.Enabled := true;
  end;
end;

procedure TfmContragents.bbRepSverkaClick(Sender: TObject);
begin
  inherited;
  DM.LoadReport('Сверка по коврам', False);
  DM.Report.Variables.Variables['CONTRAGENT_ID'] := Contragents.FieldByName('ID').AsInteger;
  DM.Report.ShowReport();
end;

procedure TfmContragents.bbResetSettingsClick(Sender: TObject);
var
  fn : string;
begin
  inherited;
  if (MessageBox(0, 'Сбросить настройки колонок?', 'Подтвердите', MB_ICONQUESTION or MB_YESNO) = idYes) then begin
    fn := ChangeFileExt(Application.ExeName, '.contragents.ini');
    if FileExists(fn) then
      DeleteFile(fn);
      GridSettingToSave := false;
      MessageBox(0, 'Для завершения откройте окно заново', 'Настройки колонок', MB_ICONINFORMATION or MB_OK);
  end;
end;

procedure TfmContragents.bbServiceSeportClick(Sender: TObject);
begin
  inherited;
  DM.LoadReport('Обслуживание за период', FALSE);
  DM.Report.Variables.Variables['ID'] := Contragents.FBN('ID').AsInteger;
  DM.Report.ShowReport();
end;

procedure TfmContragents.bbSetManagerControlClick(Sender: TObject);
begin
  inherited;
  try
    QW.Close;
    QW.SQL.text := 'update CONTRAGENTS set DEBTOR_TYPE=:T where ID=:ID';
    QW.ParamByName('ID').Value := Contragents.FBN('ID').AsInteger;
    if Contragents.FBN('DEBTOR_TYPE').AsInteger=0 then begin
      QW.ParamByName('T').Value := 5;
      QW.ExecQuery;
    end else if Contragents.FBN('DEBTOR_TYPE').AsInteger=5 then begin
      QW.ParamByName('T').Value := null;
      QW.ExecQuery;
    end;
    if QW.Transaction.InTransaction then
     QW.Transaction.Commit;
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
  Contragents.Refresh();
  ContragentsAfterScroll(Contragents);
end;

procedure TfmContragents.bbTreeClick(Sender: TObject);
begin
  inherited;
  if bbTree.Down then begin
    Tree.Open;
    TreeSplitter.OpenSplitter;
  end else begin
    Tree.Close;
    TreeSplitter.CloseSplitter;
  end;
end;

procedure TfmContragents.ContragentsAfterScroll(DataSet: TDataSet);
var
  _id : integer;
begin
  inherited;

  bbEdit.Enabled := (NOT Contragents.FieldByName('IS_FOLDER').AsBoolean);
//  if not bbDetail.Down then
//    exit;
  if not Contragents.ControlsDisabled then begin
//    wait(1);
//    try
      _id := Contragents.FieldByname('ID').Value;

      if ((User.LoginName='NETSAEV') or (User.isAdmin) or (User.isOwner)) then begin // Нечаев
        bbSetManagerControl.Visible := ivAlways;
        if Contragents.FBN('DEBTOR_TYPE').AsInteger=0 then begin
          bbSetManagerControl.Enabled := true;
          bbSetManagerControl.Caption := 'Поставить на контроль';
          bbSetManagerControl.Hint := 'Поставить клиента на контроль менеджера';
        end else if Contragents.FBN('DEBTOR_TYPE').AsInteger=5 then begin
          bbSetManagerControl.Enabled := true;
          bbSetManagerControl.Caption := 'Снять с контроля';
          bbSetManagerControl.Hint := 'Снять клиента с контроля менеджера';
        end else
          bbSetManagerControl.Enabled := false;
      end else
        bbSetManagerControl.Visible := ivNever;

      if Pages.ActivePage = tabBalance then begin
        if (NOT Contragents.FieldByName('IS_FOLDER').AsBoolean) then
          bbBalanceDocumentsRefresh.Click()
        else
          BalanceDocuments.Close;
      end else if Pages.ActivePage = tabJournal then begin
        frameJournal.ContragentID := Contragents.FBN('ID').Value;
      end else if Pages.ActivePage = tabDocuments then begin
        try
          Documents.DisableControls;
          Documents.Close;
          Documents.ParamByName('CONTRAGENT_ID').Value := _ID;
          Documents.Open;
        finally
          Documents.EnableControls;
        end;
      end else if Pages.ActivePage = tabDocDog then begin
        try
          DocDog.DisableControls;
          DocDog.Close;
          DocDog.ParamByName('CONTRAGENT_ID').Value := _ID;
          DocDog.Open;
        finally
          DocDog.EnableControls;
        end;
      end else if Pages.ActivePage = tabMAT then begin
        try
          ContractAddress.DisableControls;
          ContractAddress.Close;
          ContractAddress.ParamByName('CONTRAGENT_ID').Value := _ID;
          ContractAddress.Open;
        finally
          ContractAddress.EnableControls;
        end;
      end;

//    finally
//      wait(0);
//    end;
  end;
end;

procedure TfmContragents.cxGrid1DBTableView1CURRENT_DOLGStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if ARecord.Values[gridContragentsTableCURRENT_DOLG.Index]>0 then begin
    AStyle := DM.cxStyleRed;
  end else begin
    AStyle := DM.cxStyleBlue;
  end;
end;

procedure TfmContragents.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if (bbDocumentView.Enabled) then
    bbDocumentView.Click();
end;

procedure TfmContragents.gridContragentsTableDblClick(Sender: TObject);
begin
  inherited;
  if Contragents.FieldByName('IS_FOLDER').AsBoolean then begin
    if not bbTree.Down then
      exit;
    Tree.DisableControls;
    try
      Tree.Locate('ID', Contragents.FieldByName('ID').AsInteger, []);
    finally
      Tree.EnableControls;
      TreeAfterScroll(Tree);
    end;
  end else begin
    if (bbEdit.Enabled and (bbEdit.Visible=ivAlways)) then
      bbEdit.Click();
  end;

end;

procedure TfmContragents.gridContragentsTableStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  InControl : integer;
  DebtType : integer;
begin
  inherited;
  if (gridContragentsTable.DataController.Values[ARecord.RecordIndex, gridContragentsTableIN_CONTROL.Index]<>null) then
    InControl := gridContragentsTable.DataController.Values[ARecord.RecordIndex, gridContragentsTableIN_CONTROL.Index]
  else
    inControl := 0;
  if gridContragentsTable.DataController.Values[ARecord.RecordIndex, gridContragentsTableDEBTOR_TYPE.Index]<>null then
    DebtType := gridContragentsTable.DataController.Values[ARecord.RecordIndex, gridContragentsTableDEBTOR_TYPE.Index]
  else
    DebtType := 0;
  if ((inControl=1) or (DebtType=5)) then begin
    AStyle := DM.cxStyleRed;
  end else begin
    AStyle := DM.cxStyleNormal;
  end;
end;

procedure TfmContragents.dsBalanceDocumentsDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if BalanceDocuments.FieldByName('DOC_TYPE').AsInteger = 1 then begin
    bbInvoiceControl.Enabled := true;
    if (BalanceDocuments.FieldByName('IN_CONTROL').AsInteger = 1) then begin
      bbInvoiceControl.Caption := 'Снять с контроля';
      bbInvoiceControl.ImageIndex := 30;
    end else begin
      bbInvoiceControl.Caption := 'На контроль';
      bbInvoiceControl.ImageIndex := 32;
    end;
  end else begin
      bbInvoiceControl.Enabled := false;
      bbInvoiceControl.Caption := 'Контроль';
      bbInvoiceControl.ImageIndex := 32;
  end;
end;

procedure TfmContragents.dsDocDogDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  bbDocDogDocView.Enabled := not DocDog.IsEmpty;
  bbDocDogDocEdit.Enabled := not DocDog.IsEmpty;

end;

procedure TfmContragents.dsDocumentsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  bbDocumentView.Enabled := not Documents.IsEmpty;
  bbDocumentEdit.Enabled := not Documents.IsEmpty and (Documents.FieldByName('DOCUMENT_TYPE').AsInteger = 2);
end;

procedure TfmContragents.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  DM.LoadReport('АктСверкиИюль2016', False);
  dm.Report.Variables.Variables['CONTRAGENT_ID'] := Contragents.FieldByName('ID').AsInteger;
  dm.Report.PrepareReport();
  dm.Report.ShowPreparedReport;
end;

procedure TfmContragents.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  fmMain.CreateChildWindow(fmContragentActAnalyze, TfmContragentActAnalyze, false);
  try
    fmContragentActAnalyze.Caption := 'Анализ количества ковров по контрагенту '+Contragents.FieldByName('NAME').AsString;
    fmContragentActAnalyze.ContragentID := Contragents.FieldByName('ID').AsInteger;
  finally
  end;
end;

procedure TfmContragents.bbDocDogDocEditClick(Sender: TObject);
begin
  inherited;
  fmDogUpload := TfmDogUpload.Create(Application);
  try
    fmDogUpload.ContragentID := Contragents.FieldByName('ID').Value;
    fmDogUpload.ID := DocDog.FieldByName('ID').Value;
    if bbDocDogDocEdit.tag = 1 then
      fmDogUpload.isReadOnly := true;
    if fmDogUpload.ShowModal = mrOK then begin
      try
        DocDog.DisableControls;
        DocDog.CloseOpen(true);
        if not DocDog.Locate('ID', fmDogUpload.ID, []) then
          DocDog.First;
      finally
        DocDog.EnableControls;
      end;
    end;
  finally
    FreeAndNil(fmDogUpload);
    Contragents.Refresh;
  end;
end;

procedure TfmContragents.bbDocDogDocViewClick(Sender: TObject);
begin
  inherited;
  try
    DM.ViewDoc(DocDog.FieldByName('ID').Value);
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfmContragents.bbDocsOnlyAcceptedClick(Sender: TObject);
begin
  inherited;
  bbBalanceDocumentsRefresh.Click();
end;

procedure TfmContragents.bbExportListClick(Sender: TObject);
begin
  inherited;
  ExportGrid(gridContragents);
end;

procedure TfmContragents.TreeSplitterAfterClose(Sender: TObject);
begin
  inherited;
  bbTree.Down := false;
  TreeAfterScroll(Tree);
end;

procedure TfmContragents.TreeSplitterAfterOpen(Sender: TObject);
begin
  inherited;
  bbTree.Down := true;
  TreeAfterScroll(Tree);
end;

procedure TfmContragents.DetailSplitterAfterClose(Sender: TObject);
begin
  inherited;
  bbDetail.Down := false;
end;

procedure TfmContragents.DetailSplitterAfterOpen(Sender: TObject);
begin
  inherited;
  bbDetail.Down := true;
end;

procedure TfmContragents.TreeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Tree.ControlsDisabled then
    exit;
  Contragents.DisableControls;
  try
    Contragents.Close;
    if bbTree.Down then
      Contragents.ParamByName('PID').Value := Tree.FieldByName('ID').Value
    else
      Contragents.ParamByName('PID').Value := -1;
    Contragents.Open;
  finally
    Contragents.EnableControls;
  end;

end;

procedure TfmContragents.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if GridSettingToSave then
    gridContragentsTable.StoreToIniFile(ChangeFileExt(Application.ExeName, '.contragents.ini'));
end;

procedure TfmContragents.FormShow(Sender: TObject);
begin
  inherited;
  gridContragentsTable.RestoreFromIniFile(ChangeFileExt(Application.ExeName, '.contragents.ini'));
  GridSettingToSave := true;
  TreeSplitter.CloseSplitter;
  Pages.Properties.ActivePage := tabBalance;
  bbRefreshClick(self);
  Wait(0);
end;

procedure TfmContragents.GridDocumentsDBTableView1AMOUNT_DOLGStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if ARecord.Values[GridDocumentsDBTableView1AMOUNT_DOLG.Index]>0 then begin
    AStyle := DM.cxStyleRed;
  end else begin
    AStyle := DM.cxStyleBlue;
  end;
end;

procedure TfmContragents.GridDocumentsDBTableView1PERIOD_DATEGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: string);
var
  D : TDate;

begin
  inherited;
  if AText<>'' then begin
    try
      D := StrToDate(AText);
      if MonthOf(D)< 10 then
        AText := IntToStr(YearOf(D))+'.0'+IntToStr(MonthOf(D))
      else
        AText := IntToStr(YearOf(D))+'.'+IntToStr(MonthOf(D));
    except
    end;
  end;
end;

procedure TfmContragents.PagesChange(Sender: TObject);
begin
  inherited;
  ContragentsAfterScroll(Contragents);
end;

end.
