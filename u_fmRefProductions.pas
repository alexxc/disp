unit u_fmRefProductions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, u_DM, DB, FIBDataSet, pFIBDataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin,
  dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxNavigator, FIBDatabase,
  pFIBDatabase;

type
  TfmRefProductions = class(TfmMDIChild)
    dsDATA: TDataSource;
    DATA: TpFIBDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1BOSS_USER_ID: TcxGridDBColumn;
    procedure DATAAfterPost(DataSet: TDataSet);
    procedure bbSaveClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRefProductions: TfmRefProductions;

implementation

{$R *.dfm}

procedure TfmRefProductions.bbRefreshClick(Sender: TObject);
begin
  inherited;
  DATA.ReopenLocate('ID');
end;

procedure TfmRefProductions.bbSaveClick(Sender: TObject);
begin
  inherited;
  DATA.UpdateTransaction.Commit;
  bbSave.Enabled := false;

end;

procedure TfmRefProductions.DATAAfterPost(DataSet: TDataSet);
begin
  inherited;
  bbSave.Enabled := true;
end;

procedure TfmRefProductions.FormShow(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

end.
