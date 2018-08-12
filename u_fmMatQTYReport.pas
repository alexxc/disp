unit u_fmMatQTYReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_fmMDIChild, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter,
  dxBar, cxClasses, FIBDatabase, pFIBDatabase, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles, cxEdit,
  cxCustomPivotGrid, cxDBPivotGrid, Data.DB, FIBDataSet, pFIBDataSet,
  cxCurrencyEdit;

type
  TfmMatQTYReport = class(TfmMDIChild)
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    Cube: TcxDBPivotGrid;
    CubeQTY_7: TcxDBPivotGridField;
    CubeMAT_NAME: TcxDBPivotGridField;
    CubeQTY_1: TcxDBPivotGridField;
    CubeQTY_2: TcxDBPivotGridField;
    CubeQTY_3: TcxDBPivotGridField;
    CubeQTY_4: TcxDBPivotGridField;
    CubeQTY_5: TcxDBPivotGridField;
    CubeQTY_6: TcxDBPivotGridField;
    CubeWEEK_N: TcxDBPivotGridField;
    CubeMAT_QTY: TcxDBPivotGridField;
    CubeROUTE_NAME: TcxDBPivotGridField;
    CubeREGION_ID: TcxDBPivotGridField;
    CubeROUTE_ID: TcxDBPivotGridField;
    CubePRODUCTION_NAME: TcxDBPivotGridField;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMatQTYReport: TfmMatQTYReport;

implementation
uses U_DM;
{$R *.dfm}

procedure TfmMatQTYReport.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  try
    DATA.CloseOpen(TRUE);
  finally
    Wait(0);
  end;

end;

procedure TfmMatQTYReport.FormShow(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

end.
