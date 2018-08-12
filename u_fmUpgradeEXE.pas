unit u_fmUpgradeEXE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmModal, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FIBDataSet, pFIBDataSet, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBar, cxTextEdit, cxCurrencyEdit, cxCalendar,
  u_DM, crc32, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin,
  dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxNavigator, FIBDatabase,
  pFIBDatabase, FIBQuery, pFIBQuery;

type
  TfmUpgradeEXE = class(TfmModal)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    EXE: TpFIBDataSet;
    bbUpload: TdxBarButton;
    dsEXE: TDataSource;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1VER: TcxGridDBColumn;
    cxGrid1DBTableView1EXE_SIZE: TcxGridDBColumn;
    cxGrid1DBTableView1CREATED_BY: TcxGridDBColumn;
    cxGrid1DBTableView1CREATED_DT: TcxGridDBColumn;
    cxGrid1DBTableView1CRC: TcxGridDBColumn;
    QW: TpFIBQuery;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbUploadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmUpgradeEXE: TfmUpgradeEXE;

implementation

{$R *.dfm}

procedure TfmUpgradeEXE.bbRefreshClick(Sender: TObject);
begin
  inherited;
  EXE.DisableControls;
  try
    EXE.CloseOpen(true);
  finally
    EXE.EnableControls;
  end;
end;

procedure TfmUpgradeEXE.bbUploadClick(Sender: TObject);
var
  description: string;
  CRC32 : UInt32;
  FS : TFileStream;
  MS : TMemoryStream;
  id : Integer;
begin
  inherited;
  if InputQuery('Обновление текущей версии', 'Комментарии', Description) then begin
    MS := TMemoryStream.Create;
    try
      FS := TFileStream.Create(Application.ExeName, fmOpenRead, fmShareDenyNone);
      try
        MS.LoadFromStream(FS);
        MS.Position := 0;
        CRC32 := GetMemoryStreamCrc32(MS);
        if (not EXE.Locate('CRC', crc32, [])) then begin
          QW.Close;
          QW.SQL.text := 'insert into EXE(DATA, VER, DESCRIPTION, CRC) values (:DATA, :VER, :DESCRIPTION, :CRC) returning id';
          QW.ParamByName('VER').Value := Ver;
          QW.ParamByName('DESCRIPTION').Value := description;
          QW.ParamByName('CRC').AsLong := CRC32;
          FS.Position := 0;
          QW.ParamByName('DATA').LoadFromStream(FS);
          QW.ExecQuery;
          ID := QW.FieldByName('id').Value;
          QW.Transaction.Commit;
          bbRefresh.Click();
          EXE.Locate('ID', ID, []);

        end else begin
          Application.MessageBox('Файл уже был загружен', 'Внимание', MB_OK +MB_ICONSTOP + MB_DEFBUTTON2);
        end;

      finally
        FreeAndNil(FS);
      end;
    finally
        FreeAndNil(MS);
    end;

  end;

end;

procedure TfmUpgradeEXE.FormShow(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
  Self.Caption := 'Управление версиями прилоджения. Текущая версия - '+IntToStr(VER);
end;

end.
