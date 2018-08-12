unit u_fmJournalRecord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, u_DM, FIBQuery, pFIBQuery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxLabel, cxDropDownEdit, cxImageComboBox,
  cxCalendar, cxCheckBox, cxMemo, cxGroupBox, cxCheckListBox, u_user, ComCtrls,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, FIBDatabase, pFIBDatabase,
  cxCustomListBox, dxBarExtItems;

type
  TfmJournalRecord = class(TfmMDIChild)
    QR: TpFIBQuery;
    cxLabel2: TcxLabel;
    RecordType: TcxImageComboBox;
    ControlDate: TcxDateEdit;
    cxLabel4: TcxLabel;
    Memo: TcxMemo;
    UsersList: TcxCheckListBox;
    cxLabel1: TcxLabel;
    QW: TpFIBQuery;
    cxLabel3: TcxLabel;
    bbTemplates: TdxBarSubItem;
    bbTemplateInvoice: TdxBarButton;
    procedure RecordTypePropertiesChange(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbTemplateInvoiceClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FContragentID: integer;
    FID: integer;
    FRequestID: integer;
    FAutoID: Integer;
    FRouteCardChangeID: integer;
    FAutoServiceID: integer;
    FTenderID: integer;
    procedure SetContragentID(const Value: integer);
    procedure SetRequestID(const Value: integer);
    procedure SetAutoID(const Value: Integer);
    procedure SetRouteCardChangeID(const Value: integer);
    procedure SetAutoServiceID(const Value: integer);
    procedure SetTenderID(const Value: integer);
    { Private declarations }
  public
    property ContragentID : integer read FContragentID write SetContragentID;
    property RequestID : integer read FRequestID write SetRequestID default 0;
    property TenderID : integer read FTenderID write SetTenderID default 0;
    property AutoID : Integer read FAutoID write SetAutoID default 0;
    property ID : integer read FID write FID default 0;
    property RouteCardChangeID : integer read FRouteCardChangeID write SetRouteCardChangeID default 0;
    property AutoServiceID : integer read FAutoServiceID write SetAutoServiceID default 0;
    procedure CheckByUserID(AID:Integer);
  end;

var
  fmJournalRecord: TfmJournalRecord;

implementation

{$R *.dfm}

{ TfmJournalRecord }

procedure TfmJournalRecord.bbSaveClick(Sender: TObject);
var
  item : TcxCheckListBoxItem;
  _x : integer;
begin
  inherited;
  if (RecordType.EditingValue=null) then begin
    Application.MessageBox('Не выбран раздел', 'Ошибка', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
    ActiveControl := RecordType;
    exit;

  end;
  Memo.text := trim(Memo.text);
  if Memo.Text='' then begin
    Application.MessageBox('Текст не может быть пустым', 'Ошибка', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
    ActiveControl := Memo;
    exit;
  end;
  if (RecordType.EditValue=108) then begin // Перевод заявки в "Отложенные"
    if trim(ControlDate.EditingText)='' then begin
      Application.MessageBox('Необходимо указать контрольную дату', 'Ошибка', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
      ActiveControl := ControlDate;
      exit;
    end;
  end;

  if (self.RequestID>0) and (RecordType.EditValue=54) then begin    // Запрос на проверку
    QR.Close;
    QR.SQL.Text := 'select trim(INN) INN, trim(coalesce(PODPISANT, '''')) P from REQUEST where REQUEST.ID='+IntToStr(self.RequestID);
    QR.ExecQuery;
    if (QR.FieldByName('P').AsString='') then begin
      Application.MessageBox('В заявке не указан подписант', 'Ошибка', MB_OK + MB_ICONSTOP);
      exit;
    end;

    if (QR.FieldByName('INN').AsString='') then begin
      Application.MessageBox('В заявке не указан ИНН', 'Ошибка', MB_OK + MB_ICONSTOP);
      exit;
    end;

    QR.Close;
    QR.SQL.Text := 'select count(1) C from REQUEST_OFFER O where O.REQUEST_ID=:ID and O.STATUS=162';
    QR.ParamByName('ID').AsInteger := self.RequestID;
    QR.ExecQuery;
    if QR.FieldByName('C').AsInteger=0 then begin
      if MessageBox(0, 'В заявке отсутствует одобренное клиентом ЦП.'+#13+#10+'Все равно сохранить?', 'Внимание', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON2) <> mrYes then
        exit;
    end;

  end;

  QW.Close;
  QW.SQL.text := 'insert into CONTRAGENT_JOURNAL(CONTRAGENT_ID, REQUEST_ID, AUTO_ID, AUTO_SERVICE_ID, ROUTE_CARD_CHANGE_ID,  RECORD_TYPE, MESSAGE, IS_REPORT, IS_SYSTEM, PROMISE_DATE, CONTROL_DATE, TENDER_ID) '+
      ' values (:CONTRAGENT_ID, :REQUEST_ID, :AUTO_ID, :AUTO_SERVICE_ID, :ROUTE_CARD_CHANGE_ID, :RECORD_TYPE, :MESSAGE, :IS_REPORT, :IS_SYSTEM, :PROMISE_DATE, :CONTROL_DATE, :TENDER_ID) returning id';
  QW.Prepare;
  if (RouteCardChangeID>0) then
    QW.ParamByName('ROUTE_CARD_CHANGE_ID').Value := self.RouteCardChangeID;
  if (RequestID>0) then
    QW.ParamByName('REQUEST_ID').Value := self.RequestID;
  if (TenderID>0) then
    QW.ParamByName('TENDER_ID').Value := self.TenderID;
  if (ContragentID>0) then
    QW.ParamByName('CONTRAGENT_ID').Value := self.ContragentID;
  if (AutoID>0) then  begin
    QW.ParamByName('AUTO_ID').Value := self.AutoID;
    // ДТП
    if RecordType.EditValue=87 then begin
      CheckByUserID(13); // Коновалов
      CheckByUserID(9); // Ощепков
      CheckByUserID(32); //Рязанов
      CheckByUserID(54);  // Поляков
    end;

  end;
  if (AutoServiceID>0) then
    QW.ParamByName('AUTO_SERVICE_ID').Value := self.AutoServiceID;

  QW.ParamByName('RECORD_TYPE').Value := RecordType.EditValue;
  QW.ParamByName('Message').Value := Memo.Lines.Text;
  QW.ParamByName('IS_SYSTEM').Value := false;
  QW.ParamByName('CONTROL_DATE').Value := ControlDate.EditValue;
  try
    QW.ExecQuery;
    id := QW.FieldByName('ID').AsInteger;
    QW.Close;
    QW.SQL.text := 'insert into USER_MASSEGES(JOURNAL_ID, USER_ID) values (:JOURNAL_ID, :USER_ID)';
    QW.Prepare;
    for _x := 0 to UsersList.Items.Count-1 do begin
      Item := UsersList.Items[_x];
      if Item.Checked then begin
        QW.ParamByName('JOURNAL_ID').Value := id;
        QW.ParamByName('USER_ID').Value := Item.tag;
        QW.ExecQuery;
      end;
    end;
    QW.Transaction.Commit;
    ModalResult := mrOK;
  except
    on E:Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

end;

procedure TfmJournalRecord.bbTemplateInvoiceClick(Sender: TObject);
var
  _s : string;
begin
  inherited;
  RecordType.EditValue := 11;
  QR.Close;
  QR.SQL.Text := 'select cast(I.DOC_DT as T_DATE) DT, I.DOC_NUM, I.AMOUNT, I.AMOUNT_REMAIN from INVOICE I where I.IN_CONTROL=1 and I.CONTRAGENT_ID=:CONTRAGENT_ID and I.STATUS=2';
  QR.ParamByname('CONTRAGENT_ID').Value := ContragentID;
  QR.ExecQuery;
  if not QR.Eof then begin

    _s := DM.FB.QueryValueAsStr('select coalesce(U.FIO, U.NAME) from users u, contragents c where c.MANAGER_ID=u.ID and c.ID='+IntToStr(ContragentID), 0)+', внимание долг:';
    _s := _s + #10'Долги по счетам';
    while not QR.EOF do begin
      _s := _s + #10'Счет №'+QR.FieldByName('DOC_NUM').AsString+' от '+QR.FieldByName('DT').AsString + ' - '+QR.FieldByName('AMOUNT_REMAIN').AsString;
      QR.next;
    end;
    Memo.Lines.Text := Memo.Lines.Text + _s+#10;
  end;
end;

procedure TfmJournalRecord.CheckByUserID(AID: Integer);
var
  _i : integer;
  _item : TcxCheckListBoxItem;
begin
  for _i := 0 to UsersList.Items.Count-1 do begin
    _Item := UsersList.Items[_i];
    if _Item.Tag=AID then
      _Item.Checked := true;

  end;
end;

procedure TfmJournalRecord.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  QR.Close;
  if QR.Transaction.InTransaction then
    QR.Transaction.Commit;
end;

procedure TfmJournalRecord.FormCreate(Sender: TObject);
var
  item : TcxCheckListBoxItem;
begin
  inherited;
  if ((User.LoginName = 'BORIS') or User.isAdmin) then
    bbTemplates.Visible := ivAlways;
  UsersList.Items.Clear;
  QR.Close;
  QR.SQL.Text := 'select u.ID, coalesce(u.FIO, u.NAME) NAME, coalesce(u.EMAIL, ''no-email'') EMAIL from users u where u.IS_ACTIVE=1 and trim(coalesce(u.EMAIL, ''''))<>'''' order by 2';
  QR.ExecQuery;
  while not QR.Eof do begin
    Item := UsersList.Items.Add;
    Item.Text := QR.FieldByName('NAME').AsString+' <'+LowerCase(QR.FieldByName('EMAIL').AsString)+'>';
    Item.tag := QR.FieldByName('ID').AsInteger;
    QR.Next;
  end;
end;

procedure TfmJournalRecord.FormShow(Sender: TObject);
begin
  inherited;
  bbTemplates.Enabled := ContragentID>0;
end;

procedure TfmJournalRecord.RecordTypePropertiesChange(Sender: TObject);
begin
  inherited;
  bbSave.Enabled := ((RecordType.EditValue<>null) and (Memo.Text<>''));
end;

procedure TfmJournalRecord.SetAutoID(const Value: Integer);
begin
  bbTemplates.Visible := ivNever;
  Self.Caption := 'Новая запись в журнал';
  RecordType.RepositoryItem := nil;
  DM.LoadEditRepoImageCombo(RecordType.Properties, 81);
  FAutoID := Value;
end;

procedure TfmJournalRecord.SetAutoServiceID(const Value: integer);
begin
  RecordType.RepositoryItem := nil;
  DM.LoadEditRepoImageCombo(RecordType.Properties, 124);
  FAutoServiceID := Value;
end;

procedure TfmJournalRecord.SetContragentID(const Value: integer);
var
  item : TcxCheckListBoxItem;
  _x : integer;
begin
  bbTemplates.Visible := ivAlways;
  QR.Close;
  QR.SQL.text := 'select * from VW_CONTRAGENTS where ID=:ID';
  QR.ParamByName('ID').AsInteger := Value;
  try
    QR.ExecQuery;
    if not QR.EOF then begin
      Self.Caption := 'Новая запись в журнал для '+QR.FieldByName('NAME').AsString;
      FContragentID := Value;
    end;
    for _x := 0 to UsersList.Items.Count - 1 do begin
      Item := UsersList.Items[_x];
      if Item.Tag = QR.FieldByName('MANAGER_ID').AsInteger then
        Item.Checked := true;
    end;
  except
  end;
end;

procedure TfmJournalRecord.SetRequestID(const Value: integer);
var
  item : TcxCheckListBoxItem;
  _x : integer;
begin
  if (Value>0) then
    RecordType.RepositoryItem := DM.erRequestJournalRecordType;
  bbTemplates.Visible := ivAlways;
  QR.Close;
  QR.SQL.text := 'select manager_id from REQUEST where ID=:ID';
  QR.ParamByName('ID').AsInteger := Value;
  Self.Caption := 'Новая запись в журнал для запроса';
  try
    QR.ExecQuery;
    if not QR.EOF then begin
      FRequestID := Value;
    end;
    for _x := 0 to UsersList.Items.Count - 1 do begin
      Item := UsersList.Items[_x];
      if Item.Tag = QR.FieldByName('MANAGER_ID').AsInteger then
        Item.Checked := true;

    end;
  except
  end;
end;

procedure TfmJournalRecord.SetRouteCardChangeID(const Value: integer);
var
  item : TcxImageComboBoxItem;
begin
  RecordType.RepositoryItem := nil;
  RecordType.Properties.Items.Clear();
  bbTemplates.Visible := ivNever;
  QR.Close;
  QR.SQL.text := 'select A.STATUS ID, (select B.NAME from REFBOOK B where B.ID=A.STATUS) NAME from SP_GET_ROUTE_CHANGES_ACTIONS(:ID) A';
  QR.ParamByName('ID').AsInteger := Value;
  Self.Caption := 'Обработка маршрутной карты';
  try
    QR.ExecQuery;
    while not QR.EOF do begin
      Item := RecordType.Properties.Items.Add;
      Item.DisplayName := QR.FieldByname('NAME').AsString;
      Item.Description := QR.FieldByname('NAME').AsString;
      Item.Value := QR.FieldByname('ID').Value;
      Item.ImageIndex := -1;
      QR.Next;
    end;
    FRouteCardChangeID := Value;
  except
  end;
  FRouteCardChangeID := Value;
end;

procedure TfmJournalRecord.SetTenderID(const Value: integer);
begin
  RecordType.RepositoryItem := nil;
  DM.LoadEditRepoImageCombo(RecordType.Properties, 151);
  FTenderID := Value;
end;

end.
