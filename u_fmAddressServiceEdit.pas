unit u_fmAddressServiceEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_fmModal, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter,
  dxBar, cxClasses, FIBDatabase, pFIBDatabase, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDBEdit, cxLabel, Data.DB, FIBDataSet, pFIBDataSet;

type
  TfmAddressServiceEdit = class(TfmModal)
    SERVICES: TpFIBDataSet;
    dsSERVICES: TDataSource;
    cxLabel1: TcxLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxLabel2: TcxLabel;
    QTY_MAT: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    QTY_REPLACE: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    PRICE_REPLACE: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxLabel6: TcxLabel;
    SERVICE_DESCRIPTION: TcxDBMaskEdit;
    cxLabel7: TcxLabel;
    DOC_DESCRIPTION: TcxDBMaskEdit;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure dsSERVICESDataChange(Sender: TObject; Field: TField);
  private
    FID: integer;
    procedure SetID(const Value: integer);
    { Private declarations }
  public
    property ID: integer read FID write SetID;
  end;

var
  fmAddressServiceEdit: TfmAddressServiceEdit;

implementation
uses u_DM;
{$R *.dfm}

{ TfmAddressServiceEdit }

procedure TfmAddressServiceEdit.bbRefreshClick(Sender: TObject);
begin
  inherited;
  ID := ID;
end;

procedure TfmAddressServiceEdit.bbSaveClick(Sender: TObject);
begin
  inherited;
  if Services.State in [dsEdit, dsInsert] then
    Services.Post;
  if Services.UpdateTransaction.InTransaction then
    Services.UpdateTransaction.Commit;
  DataChanged := FALSE;
  Modalresult := mrOK;
end;

procedure TfmAddressServiceEdit.dsSERVICESDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  DataChanged := True;
end;

procedure TfmAddressServiceEdit.SetID(const Value: integer);
begin
  SERVICES.Close;
  SERVICES.ParamByName('ID').value := Value;
  SERVICES.Open;
  DataChanged := false;
  FID := Value;
end;

end.
