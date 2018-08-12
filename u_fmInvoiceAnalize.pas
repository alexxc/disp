unit u_fmInvoiceAnalize;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxBarExtItems, FIBDataSet, pFIBDataSet, cxCurrencyEdit, cxPCdxBarPopupMenu,
  cxPC, cxSplitter, cxTextEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin,
  dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxNavigator, dxBarBuiltInMenu,
  FIBDatabase, pFIBDatabase,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmInvoiceAnalize = class(TfmMDIChild)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    cxGrid1DBTableView1CONTRAGENT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1CONTRAGENT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1INVOICE_AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1INVOICE_REMAIN: TcxGridDBColumn;
    cxGrid1DBTableView1SERVICE_AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1SERVICE_DELTA: TcxGridDBColumn;
    cxGrid1DBTableView1ORGANIZARION_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1MANAGER_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1SQUARE: TcxGridDBColumn;
    cxGrid1DBTableView1NDS: TcxGridDBColumn;
    cxGrid1DBTableView1AVR_PRICE: TcxGridDBColumn;
    Pages: TcxPageControl;
    tabInvoice: TcxTabSheet;
    tabService: TcxTabSheet;
    INVOICE: TpFIBDataSet;
    dsINVOICE: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1DOC_DT: TcxGridDBColumn;
    cxGrid2DBTableView1DOC_NUM: TcxGridDBColumn;
    cxGrid2DBTableView1PERIOD_START: TcxGridDBColumn;
    cxGrid2DBTableView1PERIOD_END: TcxGridDBColumn;
    cxGrid2DBTableView1SERVICE_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1QTY: TcxGridDBColumn;
    cxGrid2DBTableView1PRICE: TcxGridDBColumn;
    cxGrid2DBTableView1AMOUNT: TcxGridDBColumn;
    ROUTE_CARD: TpFIBDataSet;
    dsROUTE_CARD: TDataSource;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1SERVICE_NAME: TcxGridDBColumn;
    cxGrid3DBTableView1ADDRESS_NAME: TcxGridDBColumn;
    cxGrid3DBTableView1COUNT_FACT: TcxGridDBColumn;
    cxGrid3DBTableView1PRICE_REPLACE: TcxGridDBColumn;
    cxGrid3DBTableView1PRICE: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    cxGrid3DBTableView1DOC_DT: TcxGridDBColumn;
    cxGrid3DBTableView1DOC_NUM: TcxGridDBColumn;
    cxGrid3DBTableView1ROUTE: TcxGridDBColumn;
    bbExport: TdxBarButton;
    cxGrid2DBTableView1STATUS: TcxGridDBColumn;
    cxGrid3DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1INVOICE_CATEGORY: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure dsDATADataChange(Sender: TObject; Field: TField);
    procedure bbExportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmInvoiceAnalize: TfmInvoiceAnalize;

implementation
uses u_DM;
{$R *.dfm}

procedure TfmInvoiceAnalize.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(cxGrid1);
end;

procedure TfmInvoiceAnalize.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  DATA.DisableControls;
  try
    DATA.ParamByName('DATE_START').Value := DateStart;
    DATA.ParamByName('DATE_END').Value := DateEND;
    Invoice.Close;
    INVOICE.ParamByName('DATE_START').Value := DateStart;
    INVOICE.ParamByName('DATE_END').Value := DateEND;
    ROUTE_CARD.Close;
    ROUTE_CARD.ParamByName('DATE_START').Value := DateStart;
    ROUTE_CARD.ParamByName('DATE_END').Value := DateEND;
    DATA.CloseOpen(TRUE);
  finally
    DATA.EnableControls;
    Wait(0);
  end;
end;

procedure TfmInvoiceAnalize.dsDATADataChange(Sender: TObject; Field: TField);
begin
  inherited;
  Wait(1);
  Invoice.DisableControls;
  Invoice.Close;
  ROUTE_CARD.DisableControls;
  ROUTE_CARD.Close;
  try
    if (not DATA.EOF) then begin
      Invoice.ParamByName('CONTRAGENT_ID').Value := DATA.FBN('CONTRAGENT_ID').Value;
      Invoice.Open;
      ROUTE_CARD.ParamByName('CONTRAGENT_ID').Value := DATA.FBN('CONTRAGENT_ID').Value;
      ROUTE_CARD.Open;
    end;
  finally
    Invoice.EnableControls;
    ROUTE_CARD.EnableControls;
    Wait(0);
  end;
end;

procedure TfmInvoiceAnalize.FormCreate(Sender: TObject);
begin
  inherited;
  if (User.isManager) then
    bbExport.Visible := ivNever;
end;

procedure TfmInvoiceAnalize.FormShow(Sender: TObject);
begin
  inherited;
  bbRefresh.Click;
end;

end.
