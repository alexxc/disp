unit u_fmPaymentsList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBarExtItems, dxBar, cxClasses, DB, FIBDataSet,
  pFIBDataSet, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  pFIBDatabase, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxSkinscxPCPainter, cxNavigator,
  cxTextEdit, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, FIBDatabase,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmPaymentsList = class(TfmMDIChild)
    bbExport: TdxBarButton;
    DATA: TpFIBDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsDATA: TDataSource;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1PAYMENT_DT: TcxGridDBColumn;
    cxGrid1DBTableView1PAYMENT_NUM: TcxGridDBColumn;
    cxGrid1DBTableView1CONTRAGENT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1PAYMENT_AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1PAYMENT_TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1CONTRAGENT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1INVOICE_NUM: TcxGridDBColumn;
    cxGrid1DBTableView1INVOICE_DT: TcxGridDBColumn;
    cxGrid1DBTableView1INVOICE_AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1ORGANIZATION_ID: TcxGridDBColumn;
    cxGrid1DBTableView1ORGAINZATION_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1GROUP_NAME: TcxGridDBColumn;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ApplyRights; override;
  end;

var
  fmPaymentsList: TfmPaymentsList;

implementation
uses u_User, u_DM;
{$R *.dfm}

procedure TfmPaymentsList.ApplyRights;
begin
  inherited;
  if not (User.isOwner or user.isAdmin or User.isDirector ) then begin
    bbExport.Visible := ivNever;
  end;
end;

procedure TfmPaymentsList.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(cxGrid1);
end;

procedure TfmPaymentsList.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  Data.DisableControls;
  try
    data.Close;
    data.ParamByName('DATE_START').Value := dateStart;
    data.ParamByName('DATE_END').Value := dateEnd;
    Data.Open;
  finally
    Data.EnableControls;
    Wait(0);
  end;
end;

end.
