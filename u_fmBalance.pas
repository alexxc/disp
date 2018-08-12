unit u_fmBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, u_DM, DB, FIBDataSet, pFIBDataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxStyles, cxEdit, cxCustomPivotGrid, cxDBPivotGrid,
  FIBDatabase, pFIBDatabase;

type
  TfmBalance = class(TfmMDIChild)
    DATA: TpFIBDataSet;
    Cube: TcxDBPivotGrid;
    dsDATA: TDataSource;
    cxDBPivotGrid1D: TcxDBPivotGridField;
    cxDBPivotGrid1CONTRAGENT_NAME: TcxDBPivotGridField;
    cxDBPivotGrid1MANAGER_NAME: TcxDBPivotGridField;
    cxDBPivotGrid1AMOUNT: TcxDBPivotGridField;
    cxDBPivotGrid1REWARD_PERCENT: TcxDBPivotGridField;
    cxDBPivotGrid1MANAGER_AMOUNT: TcxDBPivotGridField;
    bbExport: TdxBarButton;
    bbPeriod: TdxBarSubItem;
    bbPeriod2: TdxBarButton;
    bbPeriod3: TdxBarButton;
    bbPeriod0: TdxBarButton;
    bbPeriod1: TdxBarButton;
    CubeSOURCE: TcxDBPivotGridField;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbPeriod0Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBalance: TfmBalance;

implementation
uses DateUtils;
{$R *.dfm}

procedure TfmBalance.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportCube(Cube);
end;

procedure TfmBalance.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  Data.DisableControls;
  try
    Data.Close;
    Data.Open;
  finally
    data.EnableControls;
    Wait(0);
  end;
end;

procedure TfmBalance.bbPeriod0Click(Sender: TObject);
var
  DStart, Dend: TDate;
  D,M,Y : word;
begin
  inherited;
  DStart := Date();
  DEnd := date();
  DecodeDate(date, Y, M, D);
  case TdxBarButton(Sender).tag of
    0: begin // 6 m
        D := DaysInMonth(Date);
        DEnd := EncodeDate(Y, M, D);
        DStart := IncDay(IncMonth(Dend, -6), 1);
        bbPeriod.Caption := 'Период - последние 6 месяцев';
      end;
    1:begin // 12 m
        D := DaysInMonth(Date);
        DEnd := EncodeDate(Y, M, D);
        DStart := IncDay(IncMonth(Dend, -12), 1);
        bbPeriod.Caption := 'Период - последние 12 месяцев';
      end;
    2:begin // year
        DStart := Encodedate(Y, 01, 01);
       Dend := Encodedate(Y, 12, 31);
        bbPeriod.Caption := 'Период - текущий год';
      end;
    3:begin  // last year
        DStart := Encodedate(Y-1, 01, 01);
        Dend := Encodedate(Y-1, 12, 31);
        bbPeriod.Caption := 'Период - прошлый год';
      end;
  end;
  Wait(1);
  DATA.Close;
  DATA.DisableControls;
  try
    DATA.ParamByName('DSTART').Value := DSTART;
    DATA.ParamByName('DEND').Value := DEND;
    Data.Open;
  finally
    DATA.EnableControls;
    Wait(0);
  end;

end;

procedure TfmBalance.FormShow(Sender: TObject);
begin
  inherited;
  bbPeriod0.Click();
end;

end.
