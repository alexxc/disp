unit u_fmTender;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmModal, dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, u_DM, cxTextEdit,
  cxDBEdit, cxGroupBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxImageComboBox, cxCalendar,
  cxCheckGroup, dxCheckGroupBox, cxCheckListBox, DB, dxmdaset, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxCurrencyEdit, cxSpinEdit, cxDBLookupComboBox,
  FIBDataSet, pFIBDataSet, cxMemo, cxRadioGroup, FIBDatabase, pFIBDatabase,
  dxBarBuiltInMenu, cxPC, dxBevel, ExtCtrls, dxSkinsCore,
  dxSkinsdxBarPainter, dxSkinscxPCPainter,

  dxSkinBlack, dxSkinBlue, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSevenClassic, dxSkinXmas2008Blue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinWhiteprint, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine,

  u_frameJournal, dxCore, dxCoreClasses,
  dxHashUtils,
  cxInplaceContainer,
  cxCheckBox, u_frameDocuments, FIBQuery, pFIBQuery, u_frameObespech;

type
  TfmTender = class(TfmModal)
    dsConcurents: TDataSource;
    dsOrganizations: TDataSource;
    dsDetail: TDataSource;
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    Detail: TpFIBDataSet;
    Pages: TcxPageControl;
    tabMain: TcxTabSheet;
    gbTender: TcxGroupBox;
    cxLabel4: TcxLabel;
    TENDER_TYPE: TcxDBImageComboBox;
    cxLabel5: TcxLabel;
    TENDER_PLAYGROUND_ID: TcxDBImageComboBox;
    cxLabel6: TcxLabel;
    REESTR_PURCHASE_NUMBER: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    SUBMITION_STOP_DT: TcxDBDateEdit;
    TENDER_START_DT: TcxDBDateEdit;
    cxLabel8: TcxLabel;
    cxLabel10: TcxLabel;
    START_PRICE: TcxDBCurrencyEdit;
    cxLabel11: TcxLabel;
    MANAGER_ID: TcxDBLookupComboBox;
    cxLabel18: TcxLabel;
    STATUS: TcxDBImageComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    gbOrganizator: TcxGroupBox;
    cxLabel1: TcxLabel;
    CLIENT_NAME: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    CLIENT_INN: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    CONTRAGENT_ID: TcxDBExtLookupComboBox;
    Panel3: TPanel;
    gbOrganizations: TcxGroupBox;
    cxLabel19: TcxLabel;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    cxLabel12: TcxLabel;
    CONTRACT_OBESP_AMOUNT: TcxDBCurrencyEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    REQUEST_OBESPECH_PERCENT: TcxDBCurrencyEdit;
    CONTRACT_OBESPECH_PERCENT: TcxDBCurrencyEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    REQUEST_OBESPECH_AMOUNT: TcxDBCurrencyEdit;
    CONTRACT_OBESPECH_AMOUNT: TcxDBCurrencyEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    gbService: TcxGroupBox;
    cxLabel9: TcxLabel;
    SERVICE_PERIOD_START: TcxDBDateEdit;
    SERVICE_PERIOD_END: TcxDBDateEdit;
    gridDetail: TcxGrid;
    gridDetailDBTableView1: TcxGridDBTableView;
    gridDetailDBTableView1RecId: TcxGridDBColumn;
    gridDetailDBTableView1name: TcxGridDBColumn;
    gridDetailDBTableView1width: TcxGridDBColumn;
    gridDetailDBTableView1height: TcxGridDBColumn;
    gridDetailDBTableView1QTY: TcxGridDBColumn;
    gridDetailDBTableView1Changes: TcxGridDBColumn;
    gridDetailDBTableView1SquareChanges: TcxGridDBColumn;
    gridDetailLevel1: TcxGridLevel;
    cxLabel13: TcxLabel;
    SERVICE_DESCRIPTION: TcxDBMemo;
    frameJournal: TframeJournal;
    Concurents: TpFIBDataSet;
    Organizations: TpFIBDataSet;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    START_PRICE_M2: TcxDBCurrencyEdit;
    CURRENT_PRICE_M2: TcxDBCurrencyEdit;
    CALC_PRICE_M2: TcxDBCurrencyEdit;
    CALC_PRICE: TcxDBCurrencyEdit;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    gridOrganizations: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    gridConcurents: TcxGrid;
    gridConcurentsDBTableView1: TcxGridDBTableView;
    gridConcurentsDBTableView1RecId: TcxGridDBColumn;
    gridConcurentsDBTableView1Selected: TcxGridDBColumn;
    gridConcurentsDBTableView1NAME: TcxGridDBColumn;
    gridConcurentsDBTableView1INN: TcxGridDBColumn;
    gridConcurentsLevel1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    SOTRUDN_DESCRIPTION: TcxDBMemo;
    COMPENSATION_DESCRIPTION: TcxDBMemo;
    PAYMENT_DESCRIPTION: TcxDBMemo;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    PRICE: TcxDBCurrencyEdit;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    CONTRACT_OBESPECH_FACT_PERCENT: TcxDBCurrencyEdit;
    cxLabel30: TcxLabel;
    CONTRACT_OBESPECH_FACT_AMOUNT: TcxDBCurrencyEdit;
    cxLabel31: TcxLabel;
    PRICE_M2: TcxDBCurrencyEdit;
    cxLabel32: TcxLabel;
    ORG: TpFIBDataSet;
    dsORG: TDataSource;
    ORGANIZATION_ID: TcxDBLookupComboBox;
    cxTabSheet2: TcxTabSheet;
    frameDocuments: TframeDocuments;
    cxLabel33: TcxLabel;
    DESCRIPTION: TcxDBMemo;
    QR: TpFIBQuery;
    tabSystem: TcxTabSheet;
    GridContragentsPopup: TcxGrid;
    GridContragentsPopupDBTableView1: TcxGridDBTableView;
    GridContragentsPopupDBTableView1ID: TcxGridDBColumn;
    GridContragentsPopupDBTableView1CODE: TcxGridDBColumn;
    GridContragentsPopupDBTableView1NAME: TcxGridDBColumn;
    GridContragentsPopupDBTableView1FULLNAME: TcxGridDBColumn;
    GridContragentsPopupDBTableView1INN: TcxGridDBColumn;
    GridContragentsPopupDBTableView1CREATED_DT: TcxGridDBColumn;
    GridContragentsPopupDBTableView1ORGANIZATION_NAME: TcxGridDBColumn;
    GridContragentsPopupLevel1: TcxGridLevel;
    Contragents: TpFIBDataSet;
    dsContragents: TDataSource;
    tabObespech: TcxTabSheet;
    frameObespech: TframeObespech;
    CURRENT_PRICE: TcxDBCurrencyEdit;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridConcurentsDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DetailAfterPost(DataSet: TDataSet);
    procedure DATAAfterPost(DataSet: TDataSet);
    procedure bbSaveClick(Sender: TObject);
    procedure dsDATAStateChange(Sender: TObject);
    procedure CALC_PRICEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure STATUSPropertiesChange(Sender: TObject);
    procedure START_PRICEExit(Sender: TObject);
    procedure gridDetailDBTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure ORGANIZATION_IDPropertiesInitPopup(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CONTRAGENT_IDPropertiesInitPopup(Sender: TObject);
    procedure CONTRAGENT_IDPropertiesCloseUp(Sender: TObject);
    procedure STATUSPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    FREQUEST_ID: integer;
    FTENDER_ID: integer;
    procedure SetREQUEST_ID(const Value: integer);
    procedure SetTENDER_ID(const Value: integer);
    { Private declarations }
  public
    property REQUEST_ID: integer read FREQUEST_ID write SetREQUEST_ID default 0;
    property TENDER_ID: integer read FTENDER_ID write SetTENDER_ID default 0;
    procedure New;
  end;

var
  fmTender: TfmTender;

implementation

{$R *.dfm}

procedure TfmTender.gridConcurentsDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  Concurents.Edit;
  if (Concurents.FieldByname('SELECTED').AsInteger=1) then
    Concurents.FieldByname('SELECTED').AsInteger:=0
  else
    Concurents.FieldByname('SELECTED').AsInteger:=1;
  Concurents.Post;
  DataChanged := true;
end;

procedure TfmTender.gridDetailDBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if KEY=VK_RETURN then begin
    if Detail.State in [dsEdit, dsInsert] then
      Detail.Post;
  end;
end;

procedure TfmTender.New;
begin
  if not DATA.Active then
    DATA.Open;
  DATA.Append;
  DATA.FBN('STATUS').Value := 145;
  DataChanged := true;
end;

procedure TfmTender.ORGANIZATION_IDPropertiesInitPopup(Sender: TObject);
begin
  inherited;
  ORG.CloseOpen(TRUE);
end;

procedure TfmTender.bbSaveClick(Sender: TObject);
begin
  inherited;
  if DATA.State in [dsEdit, dsInsert] then
    DATA.Post;
  if DATA.UpdateTransaction.InTransaction then
    DATA.UpdateTransaction.Commit;
  REQUEST_ID := REQUEST_ID;
end;

procedure TfmTender.CALC_PRICEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if KEY=VK_RETURN then begin
    if DATA.State in [dsEdit, dsInsert] then
      DATA.Post;
  end;
end;

procedure TfmTender.CONTRAGENT_IDPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  Contragents.Filtered := FALSE;
end;

procedure TfmTender.CONTRAGENT_IDPropertiesInitPopup(Sender: TObject);
begin
  inherited;
  SelectNext(ActiveControl, TRUE, TRUE);
  SelectNext(ActiveControl, FALSE, TRUE);
  Wait(1);
  Contragents.DisableControls;
  try
    if DATA.FBN('CLIENT_INN').AsString<>'' then begin
      Contragents.Filter := 'INN like ''%'+trim(DATA.FBN('CLIENT_INN').AsString)+'%''';
      Contragents.Filtered := true;
    end;
  finally
    Contragents.EnableControls;
    Wait(0);
  end;
end;

procedure TfmTender.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  Organizations.Edit;
  if (Organizations.FieldByname('SELECTED').AsInteger=1) then
    Organizations.FieldByname('SELECTED').AsInteger:=0
  else
    Organizations.FieldByname('SELECTED').AsInteger:=1;
  Organizations.Post;
  DataChanged := true;
end;

procedure TfmTender.DATAAfterPost(DataSet: TDataSet);
begin
  inherited;
  if (FREQUEST_ID=0) then
    FREQUEST_ID := DATA.FBN('REQUEST_ID').Value;
  if (FTENDER_ID=0) then
  FTENDER_ID := DATA.FBN('TENDER_ID').Value;
  DataChanged := True;
end;

procedure TfmTender.DetailAfterPost(DataSet: TDataSet);
begin
  inherited;
  if DATA.State in [dsEdit, dsInsert] then
    DATA.Post;
  DATA.Refresh;
  DataChanged := true;
end;

procedure TfmTender.dsDATAStateChange(Sender: TObject);
begin
  inherited;
  if DATA.State in [dsEdit, dsInsert] then
    DataChanged := true;
end;

procedure TfmTender.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  QR.Close;
  if QR.Transaction.InTransaction then
    QR.Transaction.Commit;
end;

procedure TfmTender.FormCreate(Sender: TObject);
var
  _item : TcxImageComboBoxItem;
begin
  inherited;
  DM.LoadEditRepoImageCombo(STATUS.Properties, 144);


  TENDER_PLAYGROUND_ID.Properties.Items.Clear;
  QR.Close;
  QR.SQL.text := 'select ID, NAME from REF_TENDER_PLAYGROUD P order by P.NAME';
  QR.ExecQuery;
  while not QR.EOF do begin
      _item := TENDER_PLAYGROUND_ID.Properties.Items.Add;
      _item.DisplayName := QR.FieldByname('NAME').AsString;
      _item.Description := QR.FieldByname('NAME').AsString;
      _item.Value := QR.FieldByname('ID').Value;
    QR.Next;
  end;
  Contragents.Open;

end;

procedure TfmTender.FormShow(Sender: TObject);
begin
  inherited;
  tabSystem.TabVisible := False;
  Pages.ActivePage := tabMain;
  DM.LoadEditRepoImageCombo(TENDER_TYPE.Properties, 137);
end;

procedure TfmTender.SetREQUEST_ID(const Value: integer);
begin
  DATA.Close;
  DATA.ParamByname('REQUEST_ID').Value := Value;
  DATA.Open;
  if not DATA.EOF then begin
    FREQUEST_ID := Value;
    FTENDER_ID := DATA.FBN('TENDER_ID').Value;
    Detail.Close;
    Detail.ParamByname('PID').Value := Value;
    Detail.Open;
    Organizations.Close;
    Organizations.ParamByname('TENDER_ID').Value := TENDER_ID;
    Organizations.Open;
    Concurents.Close;
    Concurents.ParamByname('TENDER_ID').Value := TENDER_ID;
    Concurents.Open;
    ORG.Close;
    ORG.ParamByname('ID').Value := TENDER_ID;
    ORG.Open;
    frameJournal.RequestID := FREQUEST_ID;
    frameJournal.TenderID := FTENDER_ID;
    frameDocuments.RequestID := FREQUEST_ID;
    frameDocuments.TenderID := FTENDER_ID;
    frameObespech.RequestID := FREQUEST_ID;

    DataChanged := False;
  end;
end;

procedure TfmTender.SetTENDER_ID(const Value: integer);
begin
  FTENDER_ID := Value;
end;

procedure TfmTender.START_PRICEExit(Sender: TObject);
begin
  inherited;
  if DATA.State in [dsEdit, dsInsert] then
    DATA.Post;
end;

procedure TfmTender.STATUSPropertiesChange(Sender: TObject);
begin
  inherited;
  CONTRAGENT_ID.Enabled := STATUS.EditValue=149;
end;

procedure TfmTender.STATUSPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
    Error:= false;
  if (STATUS.EditingValue=150) then begin
    QR.Close;
    QR.SQL.text := 'select count(1) C from OBESPECH O where O.REQUEST_ID=:REQUEST_ID and O.STATUS=1';
    QR.ParamByName('REQUEST_ID').Value := REQUEST_ID;
    QR.ExecQuery;
    if QR.FieldByName('C').AsInteger>0 then begin
      ErrorText := '¬ за€вке активное обеспечение, операци€ невозможна';
      Error:= true;
    end;
  end;
end;

end.
