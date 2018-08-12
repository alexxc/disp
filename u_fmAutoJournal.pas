unit u_fmAutoJournal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_fmMDIChild, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, dxBar, cxClasses,
  FIBDatabase, pFIBDatabase, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCalendar, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, FIBDataSet, pFIBDataSet, dxBarExtItems,
  cxTextEdit;

type
  TfmAutoJournal = class(TfmMDIChild)
    DATA: TpFIBDataSet;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    dsDATA: TDataSource;
    GridDBTableView1MESSAGE: TcxGridDBColumn;
    GridDBTableView1D: TcxGridDBColumn;
    GridDBTableView1RECORD_TYPE_NAME: TcxGridDBColumn;
    GridDBTableView1USER_NAME: TcxGridDBColumn;
    GridDBTableView1MODEL_NAME: TcxGridDBColumn;
    GridDBTableView1GOS_NOMER: TcxGridDBColumn;
    GridDBTableView1DRIVERS: TcxGridDBColumn;
    bbExport: TdxBarButton;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAutoJournal: TfmAutoJournal;

implementation
uses U_DM;

{$R *.dfm}

procedure TfmAutoJournal.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(Grid);
end;

procedure TfmAutoJournal.bbRefreshClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  if not Data.isEmpty then
    _id := Data.FBN('ID').AsInteger
  else
    _id := 0;
  Wait(1);
  DATA.Close;
  try
    DATA.ParamByName('DATE_START').AsDate := DateStart;
    DATA.ParamByName('DATE_END').AsDate := DateEnd;
    DATA.Open;
    if not DATA.EOF then begin
      if _id>0 then
        DATA.Locate('ID', _id, []);

    end;

  finally
    Wait(0);
  end;
end;

end.
