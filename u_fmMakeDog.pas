unit u_fmMakeDog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_fmModal, dxBar, cxClasses,
  FIBDatabase, pFIBDatabase, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Data.DB, FIBDataSet, pFIBDataSet,
  cxTextEdit, cxDBEdit, cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGroupBox, cxImageComboBox, cxMemo;

type
  TfmMakeDog = class(TfmModal)
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    OFFER: TpFIBDataSet;
    dsOFFER: TDataSource;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    CONTRAGENT: TpFIBDataSet;
    dsCONTRAGENT: TDataSource;
    cxGroupBox1: TcxGroupBox;
    labelFULLNAME: TcxLabel;
    FULLNAME: TcxDBTextEdit;
    INN: TcxDBTextEdit;
    labelINN: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel16: TcxLabel;
    UR_ADDRESS: TcxDBMemo;
    cxLabel17: TcxLabel;
    POST_ADDRESS: TcxDBMemo;
    cxLabel18: TcxLabel;
    cxLabel2: TcxLabel;
    RS: TcxDBTextEdit;
    KS: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxLabel13: TcxLabel;
    BIK: TcxDBTextEdit;
    BANK_NAME: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxLabel19: TcxLabel;
    DIRECTOR_NAME: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    DIRECTOR_POSITION_ID: TcxDBImageComboBox;
    DIRECTOR_NAME_RP: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    DIRECTOR_OSNOV: TcxDBImageComboBox;
    cxLabel21: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    CONTRACT_NUM: TcxDBTextEdit;
    CONTRACT_DATE: TcxDBDateEdit;
    cxLabel12: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel4: TcxLabel;
    CONTRACT_SROK: TcxDBImageComboBox;
    cxLabel8: TcxLabel;
    CONTRACT_SROK_END_DATE: TcxDBDateEdit;
    cxLabel9: TcxLabel;
    CONTRACT_DESCRIPTION: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    CONTRACT_PERSON_NAME: TcxDBTextEdit;
    cxLabel22: TcxLabel;
    CONTRACT_CONTACT: TcxDBTextEdit;
    cxLabel23: TcxLabel;
    CONTRACT_ROUTECARD_PERSON_NAME: TcxDBTextEdit;
    cxLabel24: TcxLabel;
    DOC_EMAIL: TcxDBTextEdit;
    bbDoMake: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure dsCONTRAGENTDataChange(Sender: TObject; Field: TField);
    procedure bbSaveClick(Sender: TObject);
    procedure bbDoMakeClick(Sender: TObject);
  private
    FOfferID: integer;
    procedure SetOfferID(const Value: integer);
    { Private declarations }
  public
    property OfferID : integer read FOfferID write SetOfferID;
    procedure SetDataChanged(const Value: boolean); override;
    function CheckData: boolean;

  end;

var
  fmMakeDog: TfmMakeDog;

implementation
uses u_DM;
{$R *.dfm}

{ TfmMakeDog }

procedure TfmMakeDog.bbDoMakeClick(Sender: TObject);
begin
  inherited;
  if isHasError then begin
    MessageBox(0, 'Некорректно заполнены данные', 'Ошибка', MB_ICONSTOP or MB_OK);
    exit;
  end;

  DM.LoadReport('Шаблон Договор ИП', False);
  DM.Report.Variables.Variables['ID'] := OfferID;
  DM.Report.ShowReport();
end;

procedure TfmMakeDog.bbSaveClick(Sender: TObject);
begin
  inherited;
  if OffeR.State in [dsEdit, dsInsert] then
    Offer.Post;
  if Contragent.State in [dsEdit, dsInsert] then
    Contragent.Post;
  if trWrite.InTransaction then
    trWrite.Commit;
  DataChanged := false;
end;

function TfmMakeDog.CheckData: boolean;
begin
  isHasError := false;
  CheckEditData(FULLNAME, FULLNAME.Text<>'');
  CheckEditData(INN, INN.Text<>'');
  CheckEditData(DIRECTOR_POSITION_ID, DIRECTOR_POSITION_ID.EditValue<>null);
  CheckEditData(DIRECTOR_NAME_RP, DIRECTOR_NAME_RP.Text<>'');
  CheckEditData(DIRECTOR_NAME, DIRECTOR_NAME.Text<>'');
  CheckEditData(DIRECTOR_OSNOV, DIRECTOR_OSNOV.EditValue<>null);
  CheckEditData(RS, RS.Text<>'');
  CheckEditData(KS, KS.Text<>'');
  CheckEditData(BIK, BIK.Text<>'');

  CheckEditData(BANK_NAME, BANK_NAME.Text<>'');
  CheckEditData(UR_ADDRESS, UR_ADDRESS.Text<>'');
  CheckEditData(POST_ADDRESS, POST_ADDRESS.Text<>'');
  CheckEditData(CONTRACT_PERSON_NAME, CONTRACT_PERSON_NAME.Text<>'');
  CheckEditData(CONTRACT_ROUTECARD_PERSON_NAME, CONTRACT_ROUTECARD_PERSON_NAME.Text<>'');
  CheckEditData(DOC_EMAIL, DOC_EMAIL.Text<>'');
  CheckEditData(CONTRACT_CONTACT, CONTRACT_CONTACT.Text<>'');
  CheckEditData(CONTRACT_NUM, CONTRACT_NUM.Text<>'');
  CheckEditData(CONTRACT_DATE, CONTRACT_DATE.Text<>'');
  result := isHasError;
end;

procedure TfmMakeDog.dsCONTRAGENTDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  DataChanged := True;
end;

procedure TfmMakeDog.FormCreate(Sender: TObject);
begin
  inherited;
  DM.LoadEditRepoImageCombo(DM.erDirectorPosition.Properties, 20);
  DM.LoadEditRepoImageCombo(DM.erDirectorOsnov.Properties, 22);
end;


procedure TfmMakeDog.SetDataChanged(const Value: boolean);
begin
  inherited;
  CheckData;
  bbDoMake.Enabled := ((not Value) and (not isHasError));
end;

procedure TfmMakeDog.SetOfferID(const Value: integer);
begin
  Offer.Close;
  Contragent.Close;
  Offer.ParamByName('ID').Value := Value;
  Offer.Open;
  if Offer.FBN('CONTRAGENT_ID').Value=NULL then begin
    MessageBox(0, 'Для формирования договора '+#13+#10+'необходима привязка заявки к контрагенту', 'Ошибка', MB_ICONSTOP or MB_OK);
    Abort;
  end;


  Contragent.ParamByName('OFFER_ID').Value := Value;
  Contragent.Open;
  DataChanged := False;
  FOfferID := Value;
end;

end.
