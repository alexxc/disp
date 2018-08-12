unit u_fmReportAct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, DB, FIBDataSet, pFIBDataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxCurrencyEdit, dxBarExtItems, cxNavigator,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter,
  dxSkinscxPCPainter, FIBDatabase, pFIBDatabase,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmReportAct = class(TfmMDIChild)
    DATA: TpFIBDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsDATA: TDataSource;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1GROUP_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1DOC_DT: TcxGridDBColumn;
    cxGrid1DBTableView1DOC_NUM: TcxGridDBColumn;
    cxGrid1DBTableView1CONTRAGENT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1FROM_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1CONTRAGENT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1CLIENT_TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1DEBTOR_TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1QTY_OUT: TcxGridDBColumn;
    cxGrid1DBTableView1QTY_IN: TcxGridDBColumn;
    cxGrid1DBTableView1ADDRESS: TcxGridDBColumn;
    cxGrid1DBTableView1MAT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE_REPLACE: TcxGridDBColumn;
    cxGrid1DBTableView1MANAGER_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1SQUARE: TcxGridDBColumn;
    cxGrid1DBTableView1SQUARE_IN: TcxGridDBColumn;
    cxGrid1DBTableView1SQUARE_OUT: TcxGridDBColumn;
    bbExport: TdxBarButton;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReportAct: TfmReportAct;

implementation
uses u_DM;

{$R *.dfm}

procedure TfmReportAct.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(cxGrid1);
end;

procedure TfmReportAct.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  Data.DisableControls;
  try
    data.Close;
    data.ParamByName('DATE_START').AsDate := dateStart;
    data.ParamByName('DATE_END').AsDate := dateEnd;
    Data.Open;
  finally
    Data.EnableControls;
    Wait(0);
  end;
end;

procedure TfmReportAct.FormShow(Sender: TObject);
var
  D,M,Y : word;
begin
  inherited;
  try
    DecodeDate(Date(), Y, M, D);
    bbDateStart.Date := DM.ReadIniDate('ACT_REPORT', 'DATE_START', Encodedate(Y, M, 1));
    bbDateEnd.date := DM.ReadIniDate('ACT_REPORT', 'DATE_END', Date());
  finally
    bbRefresh.Click();
  end;
  if ((User.isAdmin) or (User.isDirector) or (User.isOwner) or (User.isSysAdmin) or (User.ID=4)) then
    bbExport.Visible := ivAlways;
end;

end.
