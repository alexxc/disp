unit u_fmContragentActAnalyze;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, cxGraphics, cxControls, cxLookAndFeels, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit,
  cxCurrencyEdit, Data.DB, FIBDataSet, pFIBDataSet, cxCustomPivotGrid,
  cxDBPivotGrid, dxBar, FIBDatabase, pFIBDatabase;

type
  TfmContragentActAnalyze = class(TfmMDIChild)
    cxDBPivotGrid1: TcxDBPivotGrid;
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    cxDBPivotGrid1DOC_DT: TcxDBPivotGridField;
    cxDBPivotGrid1DOC_NUM: TcxDBPivotGridField;
    cxDBPivotGrid1ADDRESS: TcxDBPivotGridField;
    cxDBPivotGrid1MAT_NAME: TcxDBPivotGridField;
    cxDBPivotGrid1QTY_IN: TcxDBPivotGridField;
    cxDBPivotGrid1QTY_OUT: TcxDBPivotGridField;
    procedure bbRefreshClick(Sender: TObject);
  private
    FContragentID: integer;
    procedure SetContragentID(const Value: integer);
    { Private declarations }
  public
    property ContragentID: integer read FContragentID write SetContragentID;
  end;

var
  fmContragentActAnalyze: TfmContragentActAnalyze;

implementation
uses u_DM;
{$R *.dfm}

{ TfmContragentActAnalyze }

procedure TfmContragentActAnalyze.bbRefreshClick(Sender: TObject);
begin
  inherited;
  ContragentID := ContragentID;
end;

procedure TfmContragentActAnalyze.SetContragentID(const Value: integer);
begin
  DATA.DisableControls;
  Wait(1);
  try
    DATA.ParamByName('ID').Value := Value;
    DATA.CloseOpen(FALSE);
    FContragentID := Value;
  finally
    DATA.EnableControls;
    Wait(0);
  end;
end;

end.
