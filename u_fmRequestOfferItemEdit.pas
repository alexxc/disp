unit u_fmRequestOfferItemEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_fmModal, 
  dxBar, cxClasses, FIBDatabase, pFIBDatabase, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxTextEdit,
  cxMaskEdit, cxDBEdit, cxGroupBox, cxImageComboBox, cxRadioGroup, Data.DB;

type
  TfmRequestOfferItemEdit = class(TfmModal)
    ADDRESS: TcxDBMaskEdit;
    cxLabel1: TcxLabel;
    MAT_TYPE: TcxDBLookupComboBox;
    labelMatType: TcxLabel;
    cxLabel2: TcxLabel;
    QTY: TcxDBTextEdit;
    groupPrice: TcxGroupBox;
    PRICE: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    PRICE_M2: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    AMOUNT: TcxDBTextEdit;
    CHANGES: TcxDBRadioGroup;
    procedure bbSaveClick(Sender: TObject);
    procedure bbCloseClick(Sender: TObject);
    procedure QTYKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MAT_TYPEPropertiesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PRICE_M2PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure PRICEPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRequestOfferItemEdit: TfmRequestOfferItemEdit;

implementation
uses u_fmRequestOffer, u_DM;

{$R *.dfm}

procedure TfmRequestOfferItemEdit.bbCloseClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TfmRequestOfferItemEdit.bbSaveClick(Sender: TObject);
begin
  inherited;
  if MAT_TYPE.EditValue=NULL then begin
    MessageBox(0, 'Не выбран вид ковра', 'Ошибка', MB_ICONWARNING or MB_OK);
    ActiveControl := MAT_TYPE;
    Abort;
  end;
  ModalResult := mrOK;
end;

procedure TfmRequestOfferItemEdit.FormShow(Sender: TObject);
begin
  inherited;
  if fmRequestOffer.PRICE_TYPE.EditValue=0 then
    groupPrice.Caption := 'Цена замены БЕЗ НДС'
  else
    groupPrice.Caption := 'Цена замены с НДС';
end;

procedure TfmRequestOfferItemEdit.MAT_TYPEPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if fmRequestOffer.DETAIL.State in [dsEdit, dsInsert] then
    fmRequestOffer.DETAIL.Post;

end;

procedure TfmRequestOfferItemEdit.PRICEPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  _price : Currency;
begin
  inherited;
  _price := DisplayValue;
  if _price<>0 then begin
    fmRequestOffer.DETAIL.Edit;
    fmRequestOffer.DETAIL.FBN('PRICE_M2').AsCurrency := _price / fmRequestOffer.DETAIL.FBN('SQUARE').AsCurrency;
  end;
end;

procedure TfmRequestOfferItemEdit.PRICE_M2PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  priceM2 : Currency;
begin
  inherited;
  priceM2 := DisplayValue;
  if priceM2<>0 then begin
    fmRequestOffer.DETAIL.Edit;
    fmRequestOffer.DETAIL.FBN('PRICE').AsCurrency := fmRequestOffer.DETAIL.FBN('SQUARE').AsCurrency * pricem2;
  end;
end;

procedure TfmRequestOfferItemEdit.QTYKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if KEY=VK_RETURN then begin
    fmRequestOffer.DETAIL.post;
  end;

end;

end.
