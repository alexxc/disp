unit u_fmRequestOffer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmModal, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, dxBar, cxClasses,
  FIBDatabase, pFIBDatabase, u_DM, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxPC, DB, FIBDataSet, pFIBDataSet, cxDBEdit,
  cxCalendar, cxMemo, cxCalc, cxImageComboBox, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxCurrencyEdit, cxGrid,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmRequestOffer = class(TfmModal)
    Pages: TcxPageControl;
    tabMain: TcxTabSheet;
    OFFER: TpFIBDataSet;
    dsOFFER: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxLabel1: TcxLabel;
    ORGANIZATION_ID: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    OFFER_ID: TcxDBTextEdit;
    OFFER_DATE: TcxDBDateEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    BASE_PRICE: TcxDBCalcEdit;
    cxLabel6: TcxLabel;
    PRICE_TYPE: TcxDBImageComboBox;
    DESCRIPTION: TcxDBMemo;
    DETAIL: TpFIBDataSet;
    dsDETAIL: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1ADDRESS: TcxGridDBColumn;
    cxGrid1DBTableView1MAT_TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGES: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    dxBarDockControl2: TdxBarDockControl;
    barDetail: TdxBar;
    bbDetailAdd: TdxBarButton;
    bbDetailDelete: TdxBarButton;
    cxGrid1DBTableView1PRICE_M2: TcxGridDBColumn;
    cxLabel7: TcxLabel;
    STATUS: TcxDBImageComboBox;
    cxTabSheet1: TcxTabSheet;
    dockTemplate: TdxBarDockControl;
    barTemplate: TdxBar;
    bbDetailEdit: TdxBarButton;
    bbMakeOffer: TdxBarButton;
    bbDetailCopy: TdxBarButton;
    bbMakeDog: TdxBarButton;
    procedure bbSaveClick(Sender: TObject);
    procedure OFFERAfterEdit(DataSet: TDataSet);
    procedure bbRefreshClick(Sender: TObject);
    procedure DETAILAfterEdit(DataSet: TDataSet);
    procedure bbDetailAddClick(Sender: TObject);
    procedure dsDETAILDataChange(Sender: TObject; Field: TField);
    procedure cxGrid1DBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure bbDetailDeleteClick(Sender: TObject);
    procedure OFFERAfterPost(DataSet: TDataSet);
    procedure BASE_PRICEExit(Sender: TObject);
    procedure bbCloseClick(Sender: TObject);
    procedure bbMakeOfferClick(Sender: TObject);
    procedure bbDetailEditClick(Sender: TObject);
    procedure bbDetailCopyClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure ORGANIZATION_IDPropertiesCloseUp(Sender: TObject);
    procedure bbMakeDogClick(Sender: TObject);
  private
    FID: integer;
    FRequestID: integer;
    procedure SetID(const Value: integer);
    procedure SetRequestID(const Value: integer);
    { Private declarations }
  public
    procedure SetDataChanged(const Value: boolean); override;
    property ID:integer read FID write SetID default 0;
    property RequestID : integer read FRequestID write SetRequestID default 0;
    function New(ARequestID : integer) : Integer;
    function Save:boolean;
  end;

var
  fmRequestOffer: TfmRequestOffer;

implementation

{$R *.dfm}

uses u_fmRequestOfferItemEdit, u_fmMakeDog;

procedure TfmRequestOffer.BASE_PRICEExit(Sender: TObject);
begin
  inherited;
  if Offer.State in [dsEdit, dsInsert] then
    Offer.Post;
end;

procedure TfmRequestOffer.bbCloseClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOK;
end;

procedure TfmRequestOffer.bbDetailAddClick(Sender: TObject);
begin
  inherited;
  Detail.Append;
  bbDetailEdit.Click();
end;

procedure TfmRequestOffer.bbDetailCopyClick(Sender: TObject);
var
  _MAT_TYPE : integer;
  _QTY : integer;
  _CHANGES : integer;
  _PRICE : Currency;
  _Address : string;
begin
  inherited;
  _MAT_TYPE := Detail.FBN('MAT_TYPE').AsInteger;
  _QTY := Detail.FBN('QTY').AsInteger;
  _CHANGES := Detail.FBN('CHANGES').AsInteger;
  _PRICE := Detail.FBN('PRICE').AsCurrency;
  _ADDRESS := Detail.FBN('ADDRESS').AsString;
  Detail.Append();
  Detail.Edit;
  Detail.FBN('MAT_TYPE').AsInteger := _MAT_TYPE;
  Detail.FBN('QTY').AsInteger := _QTY;
  Detail.FBN('CHANGES').AsInteger := _CHANGES;
  Detail.FBN('PRICE').AsCurrency := _PRICE;
  Detail.FBN('ADDRESS').AsString := _ADDRESS;
  bbDetailEdit.Click();
end;

procedure TfmRequestOffer.bbDetailDeleteClick(Sender: TObject);
begin
  inherited;
  Detail.Delete;
end;

procedure TfmRequestOffer.bbDetailEditClick(Sender: TObject);
begin
  inherited;
  fmRequestOfferItemEdit := TfmRequestOfferItemEdit.Create(self);
  if fmRequestOfferItemEdit.ShowModal = mrOK then begin
    if Detail.State in [dsEdit, dsInsert] then
      Detail.Post;
  end else begin
    if Detail.State in [dsEdit, dsInsert] then
      Detail.Cancel;
  end
end;

procedure TfmRequestOffer.bbMakeDogClick(Sender: TObject);
begin
  inherited;
  fmMakeDog := TfmMakeDog.Create(self);
  try
    fmMakeDog.OfferID := self.ID;
    fmMakeDog.ShowModal;

  finally
    FreeAndNil(fmMakeDog);
  end;

end;

procedure TfmRequestOffer.bbMakeOfferClick(Sender: TObject);
begin
  inherited;
  if ORGANIZATION_ID.EditValue > 0 then begin
    DM.LoadReport('Шаблон КП', false);
    DM.Report.Variables.Variables['ID'] := Offer.FieldByName('ID').AsInteger;
    DM.Report.ShowReport();
  end
end;

procedure TfmRequestOffer.bbRefreshClick(Sender: TObject);
begin
  inherited;
  ID := ID;
  DataChanged := false;
end;

procedure TfmRequestOffer.bbSaveClick(Sender: TObject);
begin
  inherited;
  if Offer.FBN('ORGANIZATION_ID').Value = NULL then begin
    MessageBox(0, 'Выберите организацию', 'Ошибка', MB_ICONSTOP or MB_OK);
    ActiveControl := ORGANIZATION_ID;
    exit;
  end;
  if Detail.RecordCount=0 then begin
    MessageBox(0, 'Состав ЦП пустой', 'Ошибка', MB_ICONSTOP or MB_OK);
    ActiveControl := ORGANIZATION_ID;
    exit;
  end;

  Save();
  bbRefresh.Click();
end;

procedure TfmRequestOffer.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if bbDetailEdit.Enabled and barDetail.Visible then
    bbDetailEdit.Click();
end;

procedure TfmRequestOffer.cxGrid1DBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
  if detail.State in [dsEdit, dsInsert] then
    Detail.Post;
end;

procedure TfmRequestOffer.DETAILAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataChanged := true;
end;

procedure TfmRequestOffer.dsDETAILDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  bbDetailDelete.Enabled := not Detail.IsEmpty;
  bbDetailEdit.Enabled := not Detail.IsEmpty;
  bbDetailCopy.Enabled := not Detail.IsEmpty;
end;

function TfmRequestOffer.New(ARequestID: integer): Integer;
begin
  Result := 0;
  if ARequestID=0 then
    exit;
  Offer.Open;
  Offer.Append;
  Offer.Edit;
  Offer.FBN('REQUEST_ID').Value := ARequestID;
  Offer.Post;
//  Save;
  ID := Offer.FBN('ID').Value;
  DataChanged := true;
  Result := ID;
end;

procedure TfmRequestOffer.OFFERAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataChanged := true;
end;

procedure TfmRequestOffer.OFFERAfterPost(DataSet: TDataSet);
var
  _id : integer;
begin
  inherited;
  if not Detail.isEmpty then begin
    _id := Detail.FBN('ID').Value;
    DETAIL.DisableControls;
    try
      Detail.First;
      while not detail.Eof do begin
        Detail.Refresh;
        Detail.Next;
      end;
      if Detail.FBN('ID').value <>_id then begin
        Detail.First;
        Detail.Locate('ID', _id, []);
      end;

    finally
      Detail.EnableControls;
    end;
  end;
end;

procedure TfmRequestOffer.ORGANIZATION_IDPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if OFFER.State in [dsEdit, dsInsert] then begin
    OFFER.Post;
    ID := OFFER.FBN('ID').AsInteger;
  end;

end;

function TfmRequestOffer.Save: boolean;
begin
  result := false;
  try
//    if ((Offer.FBN('OFFER_NUM').Value = NULL) and (Offer.FBN('ORGANIZATION_ID').Value <> NULL)) then begin
//      Offer.Edit;
//      Offer.FBN('OFFER_NUM').Value := DM.FB.QueryValue('select coalesce(max(O.OFFER_NUM), 0)+1 from REQUEST_OFFER O where O.ORGANIZATION_ID='+Offer.FBN('ORGANIZATION_ID').AsString, 0, trWrite);
//    end;
    if (Offer.State in [dsEdit, dsInsert]) then
      Offer.Post;
    if (Detail.State in [dsEdit, dsInsert]) then
      Detail.Post;
    if trWrite.InTransaction then
      trWrite.Commit;
    DataChanged := false;
    result := true;
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfmRequestOffer.SetDataChanged(const Value: boolean);
begin
  inherited;
  bbMakeOffer.Enabled := not Value;
  bbMakeDog.Enabled := not Value;
end;

procedure TfmRequestOffer.SetID(const Value: integer);
begin
  PRICE_TYPE.Enabled := true;
  OFFER.Close;
  OFFER.ParamByName('ID').Value := Value;
  OFFER.Open;
  if (not OFFER.IsEmpty) then begin
    if Offer.FieldByName('NDS').AsCurrency=0 then begin
      PRICE_TYPE.Enabled := false;
    end;

    Detail.Close;
    Detail.ParamByName('PID').Value := Value;
    Detail.Open;
    FID := Value;
  end;
  barDetail.Visible := (Detail.Active and (OFFER.FBN('IS_READONLY').AsInteger=0));
  ORGANIZATION_ID.Enabled := OFFER.FBN('IS_READONLY').AsInteger=0;
  OFFER_DATE.Enabled := OFFER.FBN('IS_READONLY').AsInteger=0;
  BASE_PRICE.Enabled := OFFER.FBN('IS_READONLY').AsInteger=0;
  PRICE_TYPE.Enabled := PRICE_TYPE.Enabled and (OFFER.FBN('IS_READONLY').AsInteger=0);
end;

procedure TfmRequestOffer.SetRequestID(const Value: integer);
begin
  FRequestID := Value;
end;

end.
