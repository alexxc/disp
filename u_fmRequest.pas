unit u_fmRequest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmModal, dxBar, cxClasses, u_frameJournal, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, DB,
  FIBDataSet, pFIBDataSet, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxLabel, cxPCdxBarPopupMenu, cxPC, cxImageComboBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMemo, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, FIBDatabase, pFIBDatabase, cxSpinEdit, cxCurrencyEdit, FIBQuery,
  pFIBQuery, cxCheckBox, cxDBExtLookupComboBox, Menus, StdCtrls, cxButtons,
  dxBarBuiltInMenu, cxNavigator, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  u_frameObespech, u_frameRequestOffer, dxCheckGroupBox, dxDBCheckGroupBox,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmRequest = class(TfmModal)
    bbStatusArchive: TdxBarButton;
    bbStatus: TdxBarSubItem;
    bbStatusTrash: TdxBarButton;
    Request: TpFIBDataSet;
    dsRequest: TDataSource;
    Pages: TcxPageControl;
    tabMain: TcxTabSheet;
    tabJournal: TcxTabSheet;
    frameJournal: TframeJournal;
    cxLabel1: TcxLabel;
    REQUEST_DT: TcxDBDateEdit;
    cxLabel2: TcxLabel;
    SOURCE: TcxDBImageComboBox;
    cxLabel3: TcxLabel;
    CONTACT: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    MANAGER_ID: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    PHONE: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    RequestDetail: TpFIBDataSet;
    dsRequestDetail: TDataSource;
    cxGrid1DBTableView1MAT_TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGES: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE: TcxGridDBColumn;
    BMBar1: TdxBar;
    DockDetail: TdxBarDockControl;
    bbDetailDelete: TdxBarButton;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    bbStatusNew: TdxBarButton;
    bbStatusPrice: TdxBarButton;
    bbStatusDog: TdxBarButton;
    QW: TpFIBQuery;
    EMAIL: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    IS_CLEANING: TcxDBCheckBox;
    cxLabel10: TcxLabel;
    INN: TcxDBTextEdit;
    COMPANY_NAME: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    CONTRAGENT_ID: TcxDBExtLookupComboBox;
    Contragents: TpFIBDataSet;
    dsContragents: TDataSource;
    tabSYSTEM: TcxTabSheet;
    GridContragentsPopup: TcxGrid;
    GridContragentsPopupDBTableView1: TcxGridDBTableView;
    GridContragentsPopupLevel1: TcxGridLevel;
    GridContragentsPopupDBTableView1ID: TcxGridDBColumn;
    GridContragentsPopupDBTableView1CODE: TcxGridDBColumn;
    GridContragentsPopupDBTableView1NAME: TcxGridDBColumn;
    GridContragentsPopupDBTableView1FULLNAME: TcxGridDBColumn;
    GridContragentsPopupDBTableView1ORGANIZATION_NAME: TcxGridDBColumn;
    GridContragentsPopupDBTableView1CREATED_DT: TcxGridDBColumn;
    GridContragentsPopupDBTableView1INN: TcxGridDBColumn;
    cxLabel13: TcxLabel;
    SOURCE_DESCRIPTION: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    STATUS: TcxDBImageComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    btnStatus: TcxButton;
    tabObespech: TcxTabSheet;
    frameObespech: TframeObespech;
    cxLabel7: TcxLabel;
    REGION_CODE: TcxDBLookupComboBox;
    tabOffer: TcxTabSheet;
    frameRequestOffer: TframeRequestOffer;
    IS_ONE_ADDRESS: TdxDBCheckGroupBox;
    ONE_ADDRESS: TcxDBMemo;
    cxGroupBox2: TcxGroupBox;
    BUSINESS_DESCRIPTION: TcxDBMemo;
    cxGroupBox3: TcxGroupBox;
    DESCRIPTION: TcxDBMemo;
    cxLabel6: TcxLabel;
    PODPISANT: TcxDBTextEdit;
    bbDetailAdd: TdxBarListItem;
    QR: TpFIBQuery;
    procedure bbRefreshClick(Sender: TObject);
    procedure RequestAfterPost(DataSet: TDataSet);
    procedure bbSaveClick(Sender: TObject);
    procedure dsRequestStateChange(Sender: TObject);
    procedure bbStatusNewClick(Sender: TObject);
    procedure bbDetailDeleteClick(Sender: TObject);
    procedure dsRequestDetailDataChange(Sender: TObject; Field: TField);
    procedure RequestDetailAfterDelete(DataSet: TDataSet);
    procedure cxGrid1DBTableView1MAT_TYPEPropertiesCloseUp(Sender: TObject);
    procedure cxGrid1DBTableView1QTYPropertiesEditValueChanged(Sender: TObject);
    procedure RequestBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CONTRAGENT_IDPropertiesInitPopup(Sender: TObject);
    procedure CONTRAGENT_IDPropertiesCloseUp(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure SOURCEPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure frameJournalbbAddClick(Sender: TObject);
    procedure PagesChange(Sender: TObject);
    procedure IS_ONE_ADDRESSPropertiesChange(Sender: TObject);
    procedure bbDetailAddClick(Sender: TObject);
  private
    FID: integer;
//    FDataChanged: boolean;
    procedure SetID(const Value: integer);
//    procedure SetDataChanged(const Value: boolean);
  public
    property ID : integer read FID write SetID default 0;
    procedure SetStatusButtons;
    procedure New;
  end;

var
  fmRequest: TfmRequest;

implementation
uses u_DM, u_fmRequestChangeStatus, u_fmRequestOffer;
{$R *.dfm}

{ TfmRequest }

procedure TfmRequest.bbDetailAddClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  _id := Integer(bbDetailAdd.Items.Objects[bbDetailAdd.ItemIndex]);
  RequestDetail.DisableControls;
  try
    if RequestDetail.Locate('MAT_TYPE', _id, []) then begin
      RequestDetail.Edit;
      RequestDetail.FBN('QTY').value := RequestDetail.FBN('QTY').value + 1;
    end else begin
      RequestDetail.Append;
      RequestDetail.Edit;
      RequestDetail.FBN('MAT_TYPE').value := _id;
    end;

    RequestDetail.Post;
    RequestDetail.Refresh;
  finally
    RequestDetail.EnableControls;
  end;
end;

procedure TfmRequest.bbDetailDeleteClick(Sender: TObject);
begin
  inherited;
  RequestDetail.Delete;
end;

procedure TfmRequest.bbRefreshClick(Sender: TObject);
begin
  inherited;
  if DataChanged then
    if Application.MessageBox('Внесенные данные будут потеряны. Продолжить?', 'Сохранение',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
      abort;
  if trWrite.InTransaction then
    trWrite.RollBack;
  ID := ID;
end;

procedure TfmRequest.bbSaveClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  if (Request.FBN('Status').Value<>47) then begin
    if (Request.FBN('SOURCE').Value=null) then begin
      Application.MessageBox('Не выбран вид источник', 'Ошибка', MB_OK + MB_ICONSTOP);
      Pages.ActivePage := tabMain;
      ActiveControl := SOURCE;
      Abort;
    end;
    if (Request.FBN('PHONE').AsString='') then begin
      Application.MessageBox('Не ведены контактные данные', 'Ошибка', MB_OK + MB_ICONSTOP);
      Pages.ActivePage := tabMain;
      ActiveControl := PHONE;
      Abort;
    end;

    if (Request.FBN('NAME').AsString='') then begin
      Application.MessageBox('Не ведено имя', 'Ошибка', MB_OK + MB_ICONSTOP);
      Pages.ActivePage := tabMain;
      ActiveControl := CONTACT;
      Abort;
    end;

  end;
  Request.DisableControls;
  try
    if Request.State in [dsEdit, dsInsert] then
      Request.Post;
    if RequestDetail.State in [dsEdit, dsInsert] then
      RequestDetail.Post;

    _id := request.FBN('ID').Value;
  if (user.isManager) then
    SOURCE.Enabled := false;
    if trWrite.InTransaction then
      trWrite.Commit;
  finally
    Request.EnableControls;
  end;
  ID := _id;
  DataChanged := False;
end;

procedure TfmRequest.bbStatusNewClick(Sender: TObject);
var
  NewStatus : integer;
begin
  inherited;
  if (Sender is TdxBarButton) then begin
    NewStatus := (Sender as TdxBarButton).Tag;
    Request.Edit;
    Request.FBN('STATUS').Value := NewStatus;
    Request.Post;
  end;
end;

procedure TfmRequest.btnStatusClick(Sender: TObject);
begin
  inherited;
  fmRequestChangeStatus := TfmRequestChangeStatus.Create(self);
  try
    fmRequestChangeStatus.RequestID := Request.FBN('ID').AsInteger;
    fmRequestChangeStatus.OLD_STATUS.EditValue := Request.FBN('STATUS').AsString;
    fmRequestChangeStatus.CONTRAGENT_ID := Request.FBN('CONTRAGENT_ID').AsInteger;
    if fmRequestChangeStatus.ShowModal = mrOK then begin
      Request.Edit;
      Request.FBN('STATUS').Value := fmRequestChangeStatus.NEW_STATUS.EditValue;
      if (fmRequestChangeStatus.DESCRIPTION.Text<>'') then
        Request.FBN('STATUS_DESCRIPTION').AsString := trim(copy(fmRequestChangeStatus.DESCRIPTION.Lines.Text, 1, 500));
      Request.Post;
      Request.Refresh;
    end;
  finally
    FreeAndNil(fmRequestChangeStatus);
  end;
end;

procedure TfmRequest.CONTRAGENT_IDPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  Contragents.Filtered := FALSE;
end;

procedure TfmRequest.CONTRAGENT_IDPropertiesInitPopup(Sender: TObject);
begin
  inherited;
  SelectNext(ActiveControl, TRUE, TRUE);
  SelectNext(ActiveControl, FALSE, TRUE);
  Wait(1);
  Contragents.DisableControls;
  try
    if Request.FBN('INN').AsString<>'' then begin
      Contragents.Filter := 'INN like ''%'+trim(Request.FBN('INN').AsString)+'%''';
      Contragents.Filtered := true;
    end else
      Abort();
  finally
    Contragents.EnableControls;
    Wait(0);
  end;

end;

procedure TfmRequest.cxGrid1DBTableView1MAT_TYPEPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if RequestDetail.State in [dsEdit, dsInsert] then
    RequestDetail.Post;
end;

procedure TfmRequest.cxGrid1DBTableView1QTYPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if RequestDetail.State in [dsEdit, dsInsert] then
    RequestDetail.Post;

end;

procedure TfmRequest.dsRequestDetailDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  bbDetailDelete.Enabled := (not RequestDetail.IsEmpty) and (ID>0);
end;

procedure TfmRequest.dsRequestStateChange(Sender: TObject);
begin
  inherited;
  if ((Request.State in [dsEdit, dsInsert]) or (RequestDetail.State in [dsEdit, dsInsert])) then
    DataChanged := true;
end;

procedure TfmRequest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   manager_id.Properties.ListSource.DataSet.Filtered := false;
end;

procedure TfmRequest.FormShow(Sender: TObject);
begin
  inherited;
  tabSYSTEM.TabVisible := false;
//  tabOffer.Visible := (user.isAdmin or user.isOwner);
  Pages.ActivePage := tabMain;
  bbDetailAdd.Items.Clear;
  QR.Close;
  QR.ExecQuery;
  while not QR.EOF do begin
    bbDetailAdd.Items.AddObject(QR.FieldByName('NAME').AsString, TObject(QR.FieldByName('ID').AsInteger));
    QR.Next;
  end;

  if not((user.isDirector) or (User.isOwner) or (user.isAdmin) or (user.isDispatcher) or (user.ContragentAccess>=1)) then begin
    manager_id.Properties.ListSource.DataSet.Filter := 'id = '+IntToStr(User.ID);
    manager_id.Properties.ListSource.DataSet.Filtered := true;
  end;
  if not((user.isDirector) or (User.isOwner) or (user.isAdmin) or (user.RequestAccess>0) ) then begin
    CONTRAGENT_ID.Enabled := FALSE;
  end;
//  if (User.isManager) then
//    Source.Enabled := false;
end;

procedure TfmRequest.frameJournalbbAddClick(Sender: TObject);
begin
  inherited;
  frameJournal.bbAddClick(Sender);
  Request.Refresh;
end;

procedure TfmRequest.IS_ONE_ADDRESSPropertiesChange(Sender: TObject);
begin
  inherited;
  ONE_ADDRESS.Enabled := IS_ONE_ADDRESS.CheckBox.Checked;
end;

procedure TfmRequest.New;
begin
  Request.Open;
  Request.Append;
  Request.FBN('STATUS').value := 44;
  Request.FBN('SOURCE').value := 41;
  Request.FBN('MANAGER_ID').value := DM.RequestManagerID;
  SetStatusButtons;
  DataChanged := true;
end;

procedure TfmRequest.PagesChange(Sender: TObject);
begin
  inherited;
  if bbSave.Enabled then
    bBSave.Click();
end;

procedure TfmRequest.RequestAfterPost(DataSet: TDataSet);
begin
  inherited;
  SetStatusButtons;
  DataChanged := true;
end;

procedure TfmRequest.RequestBeforePost(DataSet: TDataSet);
begin
  inherited;
  if ((not((User.isDirector) or (user.isOwner) or (user.isAdmin) or (User.ContragentAccess>0) )) and (Request.FBN('manager_id').Value=null)) then begin
    Request.FBN('manager_id').Value := User.ID;
  end;

end;

procedure TfmRequest.RequestDetailAfterDelete(DataSet: TDataSet);
begin
  inherited;
  DataChanged := true;
end;


procedure TfmRequest.SetID(const Value: integer);
begin
  Request.DisableControls;
  RequestDetail.DisableControls;
  Wait(1);
  Request.Close;
  DataChanged := true;
  try
    Request.ParamByName('ID').Value := Value;
    Request.Open;

    RequestDetail.Close;
    RequestDetail.ParamByName('PID').Value := Value;
    RequestDetail.Open;
    Contragents.Open;
    frameJournal.RequestID := Value;
    frameObespech.RequestID := Value;
    frameRequestOffer.RequestID := Value;
    FID := Value;
    SetStatusButtons;
    DataChanged := false;
  finally
    Request.EnableControls;
    RequestDetail.EnableControls;
    Wait(0);
  end;
end;

procedure TfmRequest.SetStatusButtons;
begin
  if ID>0 then begin
    bbStatus.Visible := ivAlways;
    bbStatus.Caption := 'Статус - '+DM.FB.QueryValueAsStr('select name from REFBOOK where ID='+Request.FBN('STATUS').AsString, 0)+'. Поменять';
  end else begin
    bbStatus.Visible := ivNever;
  end;
  bbRefresh.Enabled := ID>0;
  bbDetailAdd.Enabled := ID>0;
  bbDetailDelete.Enabled := (not RequestDetail.IsEmpty) and (ID>0);
  tabJournal.Enabled := ID>0;
end;

procedure TfmRequest.SOURCEPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if (Source.EditingValue=40)then begin // Сайт
     ErrorText := 'Источник "Сайт" устанавливается автоматически'#10'только для заявок с сайта';
     Error := true;
  end;

end;

end.
