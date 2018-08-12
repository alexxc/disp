unit u_fmContragentCooperation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxPCdxBarPopupMenu, cxPC,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxNavigator, cxImageComboBox,
  cxCurrencyEdit, cxCheckBox, dxBarBuiltInMenu, FIBDataSet, pFIBDataSet,
  dxBarExtItems, cxSplitter, u_frameJournal, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridDBTableView, cxGrid, FIBDatabase, pFIBDatabase;

type
  TfmContragentCooperation = class(TfmMDIChild)
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    Pages: TcxPageControl;
    tabJournal: TcxTabSheet;
    cxSplitter1: TcxSplitter;
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    GridDBTableView1ID: TcxGridDBColumn;
    GridDBTableView1NAME: TcxGridDBColumn;
    GridDBTableView1INN: TcxGridDBColumn;
    GridDBTableView1DESCRIPTION: TcxGridDBColumn;
    GridDBTableView1MANAGER_NAME: TcxGridDBColumn;
    frameJournal: TframeJournal;
    GridDBTableView1IS_ACTIVE_MAT: TcxGridDBColumn;
    GridDBTableView1COOPERATION_STATUS_NAME: TcxGridDBColumn;
    GridDBTableView1LAST_CALL_USER: TcxGridDBColumn;
    GridDBTableView1LAST_CALL_DATE: TcxGridDBColumn;
    GridDBTableView1LAST_CALL_MESSAGE: TcxGridDBColumn;
    GridDBTableView1PLAN_USER: TcxGridDBColumn;
    GridDBTableView1PLAN_DATE: TcxGridDBColumn;
    GridDBTableView1PLAN_MESSAGE: TcxGridDBColumn;
    GridDBTableView1PLAN_SECTION: TcxGridDBColumn;
    GridDBBandedTableView1: TcxGridDBBandedTableView;
    GridDBBandedTableView1ID: TcxGridDBBandedColumn;
    GridDBBandedTableView1NAME: TcxGridDBBandedColumn;
    GridDBBandedTableView1INN: TcxGridDBBandedColumn;
    GridDBBandedTableView1MANAGER_NAME: TcxGridDBBandedColumn;
    GridDBBandedTableView1ORGANIZATION_NAME: TcxGridDBBandedColumn;
    GridDBBandedTableView1IS_ACTIVE_MAT: TcxGridDBBandedColumn;
    GridDBBandedTableView1COOPERATION_STATUS: TcxGridDBBandedColumn;
    GridDBBandedTableView1COOPERATION_STATUS_NAME: TcxGridDBBandedColumn;
    GridDBBandedTableView1LAST_CALL_USER: TcxGridDBBandedColumn;
    GridDBBandedTableView1LAST_CALL_DATE: TcxGridDBBandedColumn;
    GridDBBandedTableView1LAST_CALL_MESSAGE: TcxGridDBBandedColumn;
    GridDBBandedTableView1PLAN_USER: TcxGridDBBandedColumn;
    GridDBBandedTableView1PLAN_DATE: TcxGridDBBandedColumn;
    GridDBBandedTableView1PLAN_MESSAGE: TcxGridDBBandedColumn;
    GridDBBandedTableView1PLAN_SECTION: TcxGridDBBandedColumn;
    bbProcess: TdxBarButton;
    bbOpen: TdxBarButton;
    GridDBBandedTableView1LAST_ACT_DATE: TcxGridDBBandedColumn;
    tabMoney: TcxTabSheet;
    dxBarDockControl2: TdxBarDockControl;
    BMBar1: TdxBar;
    MONEY_DATE_START: TdxBarDateCombo;
    MONEY_DATE_END: TdxBarDateCombo;
    bbMoneyRefresh: TdxBarButton;
    BalanceDocuments: TpFIBDataSet;
    dsBalanceDocuments: TDataSource;
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
    GridDocumentsDBTableView1IN_CONTROL: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_DESCRIPTION: TcxGridDBColumn;
    GridDocumentsLevel1: TcxGridLevel;
    tabAddressService: TcxTabSheet;
    ContractAddress: TpFIBDataSet;
    dsContractAddress: TDataSource;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1IS_ACTIVE: TcxGridDBColumn;
    cxGrid3DBTableView1ADDRESS: TcxGridDBColumn;
    cxGrid3DBTableView1MAT_NAME: TcxGridDBColumn;
    cxGrid3DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid3DBTableView1PHONE: TcxGridDBColumn;
    cxGrid3DBTableView1CONTACT_NAME: TcxGridDBColumn;
    cxGrid3DBTableView1QTY_MAT: TcxGridDBColumn;
    cxGrid3DBTableView1WEEKS: TcxGridDBColumn;
    cxGrid3DBTableView1DAYS: TcxGridDBColumn;
    cxGrid3DBTableView1REGION_NAME: TcxGridDBColumn;
    cxGrid3DBTableView1PRICE_REPLACE_SQUARE: TcxGridDBColumn;
    cxGrid3DBTableView1SQUARE: TcxGridDBColumn;
    cxGrid3DBTableView1IS_MAT_FILTER: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    bbExport: TdxBarButton;
    procedure dsDATADataChange(Sender: TObject; Field: TField);
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frameJournalbbCooperationClick(Sender: TObject);
    procedure bbProcessClick(Sender: TObject);
    procedure bbOpenClick(Sender: TObject);
    procedure GridDBBandedTableView1DblClick(Sender: TObject);
    procedure bbMoneyRefreshClick(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmContragentCooperation: TfmContragentCooperation;

implementation

uses u_DM, u_fmCooperationProcess;

{$R *.dfm}

procedure TfmContragentCooperation.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(Grid);
end;

procedure TfmContragentCooperation.bbMoneyRefreshClick(Sender: TObject);
begin
  inherited;
    try
      BalanceDocuments.DisableControls;
      BalanceDocuments.Close;
      if (not DATA.EOF) then begin
        BalanceDocuments.ParamByName('CONTRAGENT_ID').Value := DATA.FieldByName('ID').Value;
        if MONEY_DATE_START.Text<>'' then
          BalanceDocuments.ParamByName('DATE_START').Value := MONEY_DATE_START.Date
        else
          BalanceDocuments.ParamByName('DATE_START').Value := NULL;
        if MONEY_DATE_END.Text<>'' then
          BalanceDocuments.ParamByName('DATE_END').Value := MONEY_DATE_END.Date
        else
          BalanceDocuments.ParamByName('DATE_END').Value := NULL;
        BalanceDocuments.Open;
        BalanceDocuments.Last;
      end;
    finally
      BalanceDocuments.EnableControls;
    end;
end;

procedure TfmContragentCooperation.bbOpenClick(Sender: TObject);
begin
  inherited;
  if not bbOpen.Enabled then
    exit;
  bbOpen.Enabled := false;
  try
    DM.EditContragent(DATA.FieldByName('ID').Value);
    DATA.Refresh;
  finally
    bbOpen.Enabled := true;
  end;
end;

procedure TfmContragentCooperation.bbProcessClick(Sender: TObject);
begin
  inherited;
  fmCooperationProcess := TfmCooperationProcess.Create(self);
  try
    fmCooperationProcess.ShowModal;
    bbRefresh.Click();
  finally
    FreeAndNil(fmCooperationProcess);
  end;
end;

procedure TfmContragentCooperation.bbRefreshClick(Sender: TObject);
begin
  inherited;
  if not bbRefresh.Enabled then
    exit;
  Wait(1);
  bbRefresh.Enabled := false;
  try
    DATA.DisableControls;
    DATA.ReopenLocate('ID');
  finally
    DATA.EnableControls;
    bbRefresh.Enabled := true;
    Wait(0);
  end;
end;

procedure TfmContragentCooperation.dsDATADataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  Wait(1);
  try
    ContractAddress.DisableControls;
    ContractAddress.Close;
    if ((not DATA.Eof) and (DATA.FBN('ID').Value<>null)) then begin
      frameJournal.ContragentID := DATA.FBN('ID').Value;
      bbOpen.Enabled := true;
      bbMoneyRefresh.Click;
      ContractAddress.ParamByName('CONTRAGENT_ID').Value := DATA.FBN('ID').Value;
      ContractAddress.Open;
    end else begin
      bbOpen.Enabled := false;
      frameJournal.ContragentID := NULL;
    end;
  finally
    ContractAddress.EnableControls;
    Wait(0);
  end;
end;


procedure TfmContragentCooperation.FormShow(Sender: TObject);
begin
  inherited;
  if (User.isAdmin or User.isOwner or User.isSysAdmin) then begin
    bbExport.Visible := ivAlways;
    bbProcess.Visible := ivAlways;
  end;
  Pages.ActivePage := tabJournal;
  bbRefresh.Click();
end;

procedure TfmContragentCooperation.frameJournalbbCooperationClick(
  Sender: TObject);
begin
  inherited;
  frameJournal.bbCooperationClick(Sender);
  DATA.Refresh();
end;

procedure TfmContragentCooperation.GridDBBandedTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  bbOpen.Click;
end;

end.
