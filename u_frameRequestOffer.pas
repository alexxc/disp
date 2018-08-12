unit u_frameRequestOffer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, u_DM, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinCoffee, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxSkinsdxBarPainter,
  FIBDataSet, pFIBDataSet, dxBar, cxClasses, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, FIBQuery,
  pFIBQuery, cxTextEdit, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TframeRequestOffer = class(TFrame)
    BMOffer: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    BMOfferBar1: TdxBar;
    bbAdd: TdxBarButton;
    bbEdit: TdxBarButton;
    bbRefresh: TdxBarButton;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    OFFER: TpFIBDataSet;
    dsOFFER: TDataSource;
    GridDBTableView1ID: TcxGridDBColumn;
    GridDBTableView1REQUEST_ID: TcxGridDBColumn;
    GridDBTableView1ORGANIZATION_ID: TcxGridDBColumn;
    GridDBTableView1OFFER_DATE: TcxGridDBColumn;
    GridDBTableView1STATUS: TcxGridDBColumn;
    GridDBTableView1CREATED_BY: TcxGridDBColumn;
    GridDBTableView1DETAIL_COUNT: TcxGridDBColumn;
    GridDBTableView1CHANGES: TcxGridDBColumn;
    GridDBTableView1QTY: TcxGridDBColumn;
    GridDBTableView1AMOUNT: TcxGridDBColumn;
    bbDelete: TdxBarButton;
    bbCopy: TdxBarListItem;
    Q: TpFIBQuery;
    bbOfferPrint: TdxBarButton;
    bbOfferCreateDog: TdxBarButton;
    procedure bbAddClick(Sender: TObject);
    procedure OFFERAfterOpen(DataSet: TDataSet);
    procedure bbEditClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure dsOFFERDataChange(Sender: TObject; Field: TField);
    procedure GridDBTableView1DblClick(Sender: TObject);
    procedure bbCopyClick(Sender: TObject);
    procedure bbOfferPrintClick(Sender: TObject);
    procedure bbOfferCreateDogClick(Sender: TObject);
  private
    FRequestID: Integer;
    procedure SetRequestID(const Value: Integer);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    property RequestID : Integer read FRequestID write SetRequestID;
  end;

implementation

uses u_fmRequestOffer, u_fmMakeDog;

{$R *.dfm}

{ TframeRequestOffer }

procedure TframeRequestOffer.bbAddClick(Sender: TObject);
var
  _id : integer;
begin
  Q.Close;
  Q.SQL.text := 'select count(1) C from REQUEST_DETAIL D where D.PID=:ID';
  Q.ParamByName('ID').AsInteger := RequestID;
  Q.ExecQuery;
  if Q.FieldByName('C').AsInteger=0 then begin
    if MessageBox(0, 'Состав заявки отсутствует. Продолжить?', 'Внимание', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON2)=mrNO then
      exit;
  end;

  fmRequestOffer := TfmRequestOffer.Create(self);
  try
    _id := fmRequestOffer.New(RequestID);
    if _id>0 then begin
      if fmRequestOffer.ShowModal=mrOK then begin
        Offer.CloseOpen(TRUE);
        Offer.Locate('ID', _id, []);
      end;
    end;
  finally
    FreeAndNil(fmRequestOffer);
  end;

end;

procedure TframeRequestOffer.bbCopyClick(Sender: TObject);
var
  _org : integer;
  _id : integer;
begin
  _org := Integer(bbCopy.Items.Objects[bbCopy.ItemIndex]);
  Q.Close;
  Q.SQL.Text := 'select ID from SP_REQUEST_OFFER_COPY(:OFFER_ID, :O_ID)';
  Q.ParamByName('OFFER_ID').AsInteger := OFFER.FBN('ID').AsInteger;
  Q.ParamByName('O_ID').AsInteger := _org;
  Q.ExecQuery;
  if not Q.EOF then begin
    _id := Q.FieldByName('ID').AsInteger;
    Q.Transaction.Commit;
    OFFER.CloseOpen(TRUE);
    if Offer.Locate('ID', _id, []) then
      bbEdit.Click();

  end;
end;

procedure TframeRequestOffer.bbEditClick(Sender: TObject);
begin
  fmRequestOffer := TfmRequestOffer.Create(self);
  try
    fmRequestOffer.ID := Offer.FBN('ID').Value;
    fmRequestOffer.ShowModal;
    Offer.Refresh;
  finally
    FreeAndNil(fmRequestOffer);
  end;
end;

procedure TframeRequestOffer.bbOfferPrintClick(Sender: TObject);
begin
  DM.LoadReport('Шаблон КП', false);
  DM.Report.Variables.Variables['ID'] := Offer.FieldByName('ID').AsInteger;
  DM.Report.ShowReport();
end;

procedure TframeRequestOffer.bbOfferCreateDogClick(Sender: TObject);
begin
  fmMakeDog := TfmMakeDog.Create(self);
  try
    fmMakeDog.OfferID := OFFER.FBN('ID').Value;
    fmMakeDog.ShowModal;

  finally
    FreeAndNil(fmMakeDog);
  end;
end;

procedure TframeRequestOffer.bbRefreshClick(Sender: TObject);
begin
  RequestID := RequestID;
end;

constructor TframeRequestOffer.Create(AOwner: TComponent);
begin
  inherited;
  if (User.isAdmin or User.isDirector or User.isOwner) then
    bbOfferCreateDog.Visible := ivAlways;
  Q.Close;
  Q.SQL.text := 'select  O.ID, O.SHORTNAME NAME from ORGANIZATIONS O where coalesce(O.SHORTNAME, '''')<>''''';
  Q.ExecQuery;
  while not Q.EOF do begin
    bbCopy.Items.AddObject(Q.FieldByname('NAME').AsString, TObject(Q.FieldByname('ID').AsInteger));
    Q.Next;
  end;
  Q.Close;
end;

procedure TframeRequestOffer.dsOFFERDataChange(Sender: TObject;
  Field: TField);
begin
  bbDelete.Enabled := (not OFFER.isEmpty) and (Offer.FBN('IS_READONLY').AsInteger=0);
  bbCopy.Enabled := not OFFER.isEmpty;
  bbEdit.Enabled := not OFFER.isEmpty;
  bbOfferPrint.Enabled := not OFFER.isEmpty;
  bbOfferCreateDog.Enabled := not OFFER.isEmpty;
end;

procedure TframeRequestOffer.GridDBTableView1DblClick(Sender: TObject);
begin
  if bbEdit.Enabled then
    bBEdit.Click();
end;

procedure TframeRequestOffer.OFFERAfterOpen(DataSet: TDataSet);
begin
  bbEdit.Enabled := not Offer.EOF;
end;

procedure TframeRequestOffer.SetRequestID(const Value: Integer);
var
  _id : integer;
begin
  _id := 0;
  if not Offer.IsEmpty then
    _id := Offer.FBN('ID').Value;
  Offer.DisableControls;
  try
    Offer.Close;
    Offer.ParamByName('REQUEST_ID').Value := Value;
    Offer.Open;
    if _id>0 then
      Offer.Locate('ID', _id, []);
    FRequestID := Value;
  finally
    Offer.EnableControls;
  end;
end;

end.
