unit u_fmContragentEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, u_DM, DB, FIBDataSet, pFIBDataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxLabel,
  cxTextEdit, cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGroupBox, Menus, StdCtrls, cxButtons, cxCheckBox, cxDBLabel,
  cxPCdxBarPopupMenu, cxPC, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckGroup, cxDBCheckGroup,
  dxBarBuiltInMenu, cxNavigator,
  cxCurrencyEdit, FIBQuery, pFIBQuery, u_frameObespech, dxCheckGroupBox,
  dxDBCheckGroupBox, cxCalendar, FIBDatabase, pFIBDatabase, frxClass, frxDesgn,
  cxSplitter, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxBarExtItems;

type
  TfmContragentEdit = class(TfmMDIChild)
    CONTRAGENT: TpFIBDataSet;
    dsContragent: TDataSource;
    GROUPS: TpFIBDataSet;
    dsGROUPS: TDataSource;
    bbBalance: TdxBarButton;
    Pages: TcxPageControl;
    tabMain: TcxTabSheet;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    SERVICE_STATE: TcxDBImageComboBox;
    cxLabel5: TcxLabel;
    MANAGER_ID: TcxDBLookupComboBox;
    cxLabel7: TcxLabel;
    labelREWARD_PERCENT: TcxLabel;
    REWARD_PERCENT: TcxDBTextEdit;
    INVOICE_DESCRIPTION: TcxDBMemo;
    cxLabel6: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    DEBTOR_TYPE: TcxDBImageComboBox;
    labelDEBTOR_TYPE: TcxLabel;
    CLIENT_TYPE: TcxDBImageComboBox;
    labelCLIENT_TYPE: TcxLabel;
    labelMASTER_PID: TcxLabel;
    MASTER_PID: TcxDBLookupComboBox;
    labelDESCRIPTION: TcxLabel;
    DESCRIPTION: TcxDBMemo;
    buttonMASTER_PID: TcxButton;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    BUSINES_DESCRIPTION: TcxDBMemo;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel18: TcxLabel;
    CONTACTS: TcxDBMemo;
    tabAttr: TcxTabSheet;
    ATTR: TpFIBDataSet;
    dsATTR: TDataSource;
    cxLabel23: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel28: TcxLabel;
    cxDBMemo4: TcxDBMemo;
    ATTR_NAME: TcxDBTextEdit;
    cxLabel19: TcxLabel;
    cxLabel29: TcxLabel;
    attr_FULLNAME: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxDBImageComboBox3: TcxDBImageComboBox;
    tabDOG: TcxTabSheet;
    BMBar1: TdxBar;
    dockDOG: TdxBarDockControl;
    bbDogRefresh: TdxBarButton;
    bbDogEdit: TdxBarButton;
    bbDogCreate: TdxBarButton;
    gridContractsDBTableView1: TcxGridDBTableView;
    gridContractsLevel1: TcxGridLevel;
    gridContracts: TcxGrid;
    gridServicesDBTableView1: TcxGridDBTableView;
    gridServicesLevel1: TcxGridLevel;
    gridServices: TcxGrid;
    dockDogDetail: TdxBarDockControl;
    BMBar2: TdxBar;
    bbDogDetailRefresh: TdxBarButton;
    CONTRACTS: TpFIBDataSet;
    dsCONTRACTS: TDataSource;
    gridContractsDBTableView1ID: TcxGridDBColumn;
    gridContractsDBTableView1DOG_NUM: TcxGridDBColumn;
    gridContractsDBTableView1DOG_DATE_START: TcxGridDBColumn;
    gridContractsDBTableView1DOG_DATE_END: TcxGridDBColumn;
    gridContractsDBTableView1ORGANIZATION_ID: TcxGridDBColumn;
    gridContractsDBTableView1ADDRESS_COUNT: TcxGridDBColumn;
    tabObespech: TcxTabSheet;
    OBESPECH: TpFIBDataSet;
    dsOBESPECH: TDataSource;
    cxDBTextEdit10: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    IS_SERVICE_PRINT_DOG: TcxDBCheckBox;
    IS_SERVICE_PRINT_PERIOD: TcxDBCheckBox;
    IS_SERVICE_PRINT_ADDRESS: TcxDBCheckBox;
    cxLabel32: TcxLabel;
    PAYMENT_DELAY_DAYS: TcxDBTextEdit;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    MANAGER_DESCRIPTION: TcxDBMemo;
    tabRequest: TcxTabSheet;
    Request: TpFIBDataSet;
    dsRequest: TDataSource;
    RequestDetail: TpFIBDataSet;
    dsRequestDetail: TDataSource;
    cxLabel35: TcxLabel;
    REQUEST_DT: TcxDBDateEdit;
    cxLabel36: TcxLabel;
    SOURCE: TcxDBImageComboBox;
    cxLabel37: TcxLabel;
    CONTACT: TcxDBTextEdit;
    cxLabel38: TcxLabel;
    REQEST_MANAGER_ID: TcxDBLookupComboBox;
    cxLabel39: TcxLabel;
    PHONE: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1MAT_TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGES: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    EMAIL: TcxDBTextEdit;
    cxLabel42: TcxLabel;
    IS_CLEANING: TcxDBCheckBox;
    cxLabel44: TcxLabel;
    INN: TcxDBTextEdit;
    COMPANY_NAME: TcxDBTextEdit;
    cxLabel45: TcxLabel;
    cxLabel47: TcxLabel;
    SOURCE_DESCRIPTION: TcxDBTextEdit;
    cxLabel48: TcxLabel;
    STATUS: TcxDBImageComboBox;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel49: TcxLabel;
    QR: TpFIBQuery;
    frameObespech: TframeObespech;
    IS_INVOICE_LAST_DAY: TcxDBCheckBox;
    IS_SF_LAST_DAY: TcxDBCheckBox;
    IS_ONE_ADDRESS: TdxDBCheckGroupBox;
    ONE_ADDRESS: TcxDBMemo;
    cxGroupBox3: TcxGroupBox;
    BUSINESS_DESCRIPTION: TcxDBMemo;
    cxGroupBox4: TcxGroupBox;
    cxDBMemo2: TcxDBMemo;
    cxGroupBox5: TcxGroupBox;
    ATTR_UR_ADDRESS: TcxDBMemo;
    cxGroupBox6: TcxGroupBox;
    ATTR_POST_ADDRESS: TcxDBMemo;
    cxLabel21: TcxLabel;
    REGION_CODE: TcxDBLookupComboBox;
    cxLabel22: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel40: TcxLabel;
    PODPISANT: TcxDBTextEdit;
    IS_ACT_TEMPLATE_ACTIVE: TcxDBCheckBox;
    btnACT_TEMPLATE: TcxButton;
    FR: TfrxReport;
    FRDesigner: TfrxDesigner;
    SD: TFileSaveDialog;
    SERVICES: TpFIBDataSet;
    dsSERVICES: TDataSource;
    gridServicesDBTableView1ADDRESS_NAME: TcxGridDBColumn;
    gridServicesDBTableView1QTY_MAT: TcxGridDBColumn;
    gridServicesDBTableView1QTY_REPLACE: TcxGridDBColumn;
    gridServicesDBTableView1PRICE_REPLACE: TcxGridDBColumn;
    gridServicesDBTableView1PRICE_PERIOD: TcxGridDBColumn;
    gridServicesDBTableView1SERVICE_DESCRIPTION: TcxGridDBColumn;
    gridServicesDBTableView1DOC_DESCRIPTION: TcxGridDBColumn;
    gridServicesDBTableView1MAT_NAME: TcxGridDBColumn;
    bbEditService: TdxBarButton;
    cxSplitter1: TcxSplitter;
    bbServiceReport: TdxBarButton;
    qTEMPLATE: TpFIBDataSet;
    cxDBCheckBox4: TcxDBCheckBox;
    tabLAW: TcxTabSheet;
    LAW_IS_RESHENIE: TcxDBCheckBox;
    LAW_IS_DOC_OUT: TcxDBCheckBox;
    LAW_IS_ISK: TcxDBCheckBox;
    LAW_RESHENIE_DATE: TcxDBDateEdit;
    LAW_DOC_OUT_DATE: TcxDBDateEdit;
    LAW_ISK_DATE: TcxDBDateEdit;
    cxGroupBox7: TcxGroupBox;
    LAW_DESCRIPTION: TcxDBMemo;
    cxLabel41: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel43: TcxLabel;
    cxLabel46: TcxLabel;
    cxDBImageComboBox4: TcxDBImageComboBox;
    NAME: TcxDBTextEdit;
    FULLNAME: TcxDBTextEdit;
    UR_ADDRESS: TcxDBMemo;
    POST_ADDRESS: TcxDBMemo;
    cxLabel50: TcxLabel;
    KPP: TcxDBTextEdit;
    PHONES: TcxDBTextEdit;
    DIRECTOR_NAME: TcxDBTextEdit;
    ACCOUNTANT_NAME: TcxDBTextEdit;
    PERSON_NAME: TcxDBTextEdit;
    DEFAULT_CONTRACT: TcxDBTextEdit;
    cxLabel51: TcxLabel;
    ORGANIZATION_ID: TcxDBLookupComboBox;
    procedure dsContragentStateChange(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure dsContragentDataChange(Sender: TObject; Field: TField);
    procedure cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
    procedure buttonMASTER_PIDClick(Sender: TObject);
    procedure bbBalanceClick(Sender: TObject);
    procedure tabObespechEnter(Sender: TObject);
    procedure PagesChange(Sender: TObject);
    procedure btnACT_TEMPLATEClick(Sender: TObject);
    function FRDesignerSaveReport(Report: TfrxReport; SaveAs: Boolean): Boolean;
    procedure bbEditServiceClick(Sender: TObject);
    procedure SERVICESAfterScroll(DataSet: TDataSet);
    procedure gridServicesDBTableView1DblClick(Sender: TObject);
    procedure bbServiceReportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function getID: integer;
    procedure SetID(const Value: integer);
    var FID : integer;
  public
    property ID : integer read getID write SetID;
    procedure ApplyRights(); override;
  end;

var
  fmContragentEdit: TfmContragentEdit;

implementation
uses u_fmObespechEdit, u_fmAddressServiceEdit;
{$R *.dfm}

{ TfmContragentEdit }

procedure TfmContragentEdit.ApplyRights;
begin
  inherited;
  REWARD_PERCENT.Visible := (User.isAdmin or user.isDirector or User.isOwner or (User.isManager and (User.ID=CONTRAGENT.FBN('MANAGER_ID').AsInteger)));
  labelREWARD_PERCENT.Visible := REWARD_PERCENT.Visible;

  REWARD_PERCENT.Enabled := User.isAdmin or user.isDirector or User.isOwner;

  buttonMASTER_PID.Visible := User.isAccount or User.isAdmin or user.isDirector or user.isDispatcher or user.isHManager or user.isOwner or User.isManager;
  if not (User.isAdmin or User.isManager or User.isOwner or User.isDirector) then begin
    DESCRIPTION.Visible := false;
    labelDESCRIPTION.Visible := false;
  end;
  if not (User.isAdmin or user.isDirector or user.isOwner or User.isManager) then begin
    LAW_IS_RESHENIE.Enabled := FALSE;
    LAW_RESHENIE_DATE.Enabled := FALSE;
    LAW_IS_DOC_OUT.Enabled := FALSE;
    LAW_DOC_OUT_DATE.Enabled := FALSE;
    LAW_IS_ISK.Enabled := FALSE;
    LAW_ISK_DATE.Enabled := FALSE;
    LAW_DESCRIPTION.Enabled := FALSE;
  end;
  if not (User.isAdmin or user.isDirector or user.isOwner) then begin
    DEBTOR_TYPE.Visible := false;
    labelDEBTOR_TYPE.Visible := false;
    frameObespech.bbStatus.Visible := ivNever;
  end else begin
    PAYMENT_DELAY_DAYS.Enabled := True;
  end;

  if not (User.isAccount or User.isAdmin or user.isDirector or user.isOwner) then
    bbBalance.Visible := ivNever;
end;

procedure TfmContragentEdit.bbBalanceClick(Sender: TObject);
begin
  inherited;
  DM.LoadReport('Акт взаиморасчетов', false);
  DM.Report.Variables.Variables['CONTRAGENT_ID'] := ID;
  DM.Report.ShowReport();
end;

procedure TfmContragentEdit.bbEditServiceClick(Sender: TObject);
begin
  inherited;
  fmAddressServiceEdit := TfmAddressServiceEdit.Create(Self);
  try
    fmAddressServiceEdit.ID := Services.FBN('ID').Value;
    if fmAddressServiceEdit.ShowModal=mrOK then begin
      Services.Refresh;
    end

  finally
    FreeAndNil(fmAddressServiceEdit);
  end;
end;

procedure TfmContragentEdit.bbRefreshClick(Sender: TObject);
begin
  inherited;
  ID := ID;
end;

procedure TfmContragentEdit.bbSaveClick(Sender: TObject);
begin
  inherited;
  if (Contragent.FBN('LAW_IS_DOC_OUT').AsInteger=1) or (Contragent.FBN('LAW_IS_ISK').AsInteger=1) then begin
    if Contragent.FBN('LAW_IS_RESHENIE').AsInteger=0 then begin
      MessageDlg('Не установлен признак "Принято решение о суде"', mtError, [mbOK], 0);
      Pages.ActivePage := tabLaw;
      Abort;
    end;

  end;

  if Contragent.State in [dsEdit, dsInsert] then begin
    Contragent.Post;
    Contragent.UpdateTransaction.Commit;
  end;
  if ATTR.State in [dsEdit, dsInsert] then begin
    ATTR.Post;
    ATTR.UpdateTransaction.Commit;
  end;

end;

procedure TfmContragentEdit.bbServiceReportClick(Sender: TObject);
begin
  inherited;
  DM.LoadReport('Обслуживание за период', FALSE);
  DM.Report.Variables.Variables['ID'] := ID;
  DM.Report.ShowReport();
end;

procedure TfmContragentEdit.buttonMASTER_PIDClick(Sender: TObject);
var
  GroupName: string;
  GroupID : integer;
begin
  inherited;
  if InputQuery('Новая запись', 'Название группы', GroupName) then begin
    if not GROUPS.Active then
      Groups.Open;

    GroupName := trim(GroupName);
    if (GroupName='') then begin
      MessageBox(0, 'Название группы не может быть пустым', 'Ошибка', MB_ICONSTOP or MB_OK);
      exit;
    end;
    QR.Close;
    QR.SQL.Text := 'select ID from CONTRAGENT_GROUPS where upper(NAME) = upper(:NAME)';
    QR.ParamByName('NAME').AsString := GroupName;
    QR.ExecQuery;
    if not QR.Eof then begin
      GroupID := QR.FieldByName('ID').Value;
      MessageBox(0, 'Группа уже есть в базе', 'Добавление новой группы', MB_ICONINFORMATION or MB_OK);
      CONTRAGENT.Edit;
      CONTRAGENT.FieldByName('MASTER_PID').Value := GroupID;
      QR.Close;
      if QR.Transaction.InTransaction then
        QR.Transaction.Commit;
    end else begin
      Groups.Append;
      Groups.Edit;
      Groups.FieldByName('NAME').Value := GroupName;
      Groups.Post;
      Groups.UpdateTransaction.Commit;
      Groups.Refresh;
      GroupID := Groups.FieldByName('ID').Value;
      CONTRAGENT.Edit;
      CONTRAGENT.FieldByName('MASTER_PID').Value := GroupID;
    end;

  end;
end;

procedure TfmContragentEdit.btnACT_TEMPLATEClick(Sender: TObject);
var
  _MS:TmemoryStream;
  _id : integer;
begin
  inherited;
  _MS := TMemoryStream.Create();
  qTEMPLATE.Close;
  qTEMPLATE.ParamByName('ID').Value := ID;
  try
    qTEMPLATE.Open;
    if not qTEMPLATE.EOF then begin
      _id := qTEMPLATE.FieldByName('INVOICE_ID').Value;
       TBlobField(qTEMPLATE.FieldByName('BODY')).SaveToStream(_MS);
      _MS.Position := 0;
      if _MS.Size>0 then begin
        FR.LoadFromStream(_MS);
      end;
    end else
      _id := 0;
  finally
    FreeAndNil(_MS);
  end;
  FR.FileName := 'Шаблон акта для контрагента «'+Contragent.FBN('NAME').AsString+'»';
  FR.Variables.Variables['ID'] := qTEMPLATE.FieldByname('INVOICE_ID').AsInteger;
  FR.Variables.Variables['CONTRAGENT_ID'] := ID;
  FR.DesignReport();
end;

procedure TfmContragentEdit.cxDBLookupComboBox2PropertiesPopup(Sender: TObject);
begin
  inherited;
  Groups.DisableControls;
  try
    Groups.CloseOpen(TRUE);
  finally
    Groups.EnableControls;
  end;
end;

procedure TfmContragentEdit.gridServicesDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if bbEditService.Enabled then
    bbEditService.Click();
end;

procedure TfmContragentEdit.dsContragentDataChange(Sender: TObject;
  Field: TField);
var
  _en : boolean;
begin
  inherited;
  _en := false;
  if Contragent.Active then
    if CONTRAGENT.FieldByname('CLIENT_TYPE').Value=5 then
      _en := true;
  MASTER_PID.Enabled := _en;
  buttonMASTER_PID.Enabled := _en;
end;

procedure TfmContragentEdit.dsContragentStateChange(Sender: TObject);
begin
  inherited;
  dataChanged := ((Contragent.State in [dsEdit, dsInsert]) or (Attr.State in [dsEdit, dsInsert]));
end;

procedure TfmContragentEdit.FormCreate(Sender: TObject);
begin
  inherited;
  DM.LoadEditRepoImageCombo(DM.erDirectorPosition.Properties, 20);
  DM.LoadEditRepoImageCombo(DM.erDirectorOsnov.Properties, 22);
  Groups.Open;
  if not(user.isAdmin or User.isDispatcher or User.isOwner or User.isDirector) then begin
    btnACT_TEMPLATE.Visible := false;
    IS_ACT_TEMPLATE_ACTIVE.Enabled := false;
    bbEditService.Visible := ivNever;
  end;

  Pages.ActivePage := tabMain;
  FR.OnUserFunction := DM.Report.OnUserFunction;
  DM.FRAddFunctions(FR);
end;

function TfmContragentEdit.FRDesignerSaveReport(Report: TfrxReport;
  SaveAs: Boolean): Boolean;
var
  _MS : TmemoryStream;
begin
  inherited;
  if not SaveAs then begin
    _MS := TmemoryStream.Create();
    try
      FR.SaveToStream(_MS);
      _MS.Position := 0;
      if qTemplate.Active=false then begin
        qTemplate.ParamByName('ID').AsInteger := ID;
        qTemplate.Open;
      end;
      qTEMPLATE.Edit;
      TBlobField(qTEMPLATE.FieldByName('BODY')).LoadFromStream(_MS);
      qTemplate.Post;
      qTemplate.UpdateTransaction.Commit;
    finally
      FreeAndNil(_MS);
    end;
  end else begin
    if SD.Execute then begin
      FR.SaveToFile(SD.FileName);
    end;
  end;
  result := true;
end;

function TfmContragentEdit.getID: integer;
begin
  result := FID;
end;

procedure TfmContragentEdit.PagesChange(Sender: TObject);
begin
  inherited;
  if Pages.ActivePage = tabObespech then begin
    frameObespech.bbRefresh.Click;
  end;
end;

procedure TfmContragentEdit.SERVICESAfterScroll(DataSet: TDataSet);
begin
  inherited;
  bbEditService.Enabled := not Services.IsEmpty;
end;

procedure TfmContragentEdit.SetID(const Value: integer);
begin
  try
    Wait(1);
    CONTRAGENT.DisableControls;
    CONTRAGENT.Close;
    CONTRAGENT.ParamByName('ID').Value := Value;
    CONTRAGENT.Open;

    ATTR.DisableControls;
    ATTR.Close;
    ATTR.ParamByName('ID').Value := Value;
    ATTR.Open;

    REQUEST.DisableControls;
    RequestDetail.DisableControls;
    REQUEST.Close;
    RequestDetail.Close;
    REQUEST.ParamByName('PID').Value := Value;
    REQUEST.Open;

    CONTRACTS.DisableControls;
    CONTRACTS.Close;
    CONTRACTS.ParamByname('CONTRAGENT_ID').Value := Value;
    CONTRACTS.Open;
    CONTRACTS.EnableControls;

    SERVICES.DisableControls;
    SERVICES.Close;
    SERVICES.ParamByname('CONTRAGENT_ID').Value := Value;
    SERVICES.Open;
    SERVICES.EnableControls;


    if not Request.IsEmpty then begin
      RequestDetail.paramByname('PID').Value := Request.FBN('ID').Value;
      RequestDetail.Open;
    end;
    RequestDetail.EnableControls;
    Request.EnableControls;

    frameObespech.ContragentID := Value;

    self.Caption := 'Редактирование - '+CONTRAGENT.FieldByName('NAME').Value;
    CONTRAGENT.EnableControls;
    ATTR.EnableControls;

    FID := Value;
  finally
    Wait(0);
  end;
end;

procedure TfmContragentEdit.tabObespechEnter(Sender: TObject);
begin
  inherited;
  frameObespech.bbRefresh.Click();
end;

end.
