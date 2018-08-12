unit u_fmUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, u_fmForm,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxCheckBox, cxImageComboBox, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxLabel,
  u_DM, DB, FIBDataSet, pFIBDataSet, Menus, StdCtrls, cxButtons,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinWhiteprint, dxSkinXmas2008Blue, FIBDatabase, pFIBDatabase, cxDBEdit,
  cxGroupBox, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, u_fmModal,
  dxSkinsdxBarPainter, dxBar, cxClasses, cxCheckGroup;

type
  TfmUser = class(TfmModal)
    EMPLOE: TpFIBDataSet;
    dsEMPLOE: TDataSource;
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    Pages: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxLabel12: TcxLabel;
    LOGIN_NAME: TcxDBTextEdit;
    IS_ACTIVE: TcxDBCheckBox;
    cxLabel10: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    FIO: TcxDBTextEdit;
    ROLE_NAME: TcxDBImageComboBox;
    IS_SYSADMIN: TcxDBCheckBox;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    PHONE_INTERNAL: TcxDBTextEdit;
    PHONE_MOBILE: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    EMAIL: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    REGIONS: TpFIBDataSet;
    dsREGIONS: TDataSource;
    REGION_CODE: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    MESSAGE_NAME: TcxDBTextEdit;
    EMPLOE_ID: TcxDBLookupComboBox;
    bbPassword: TdxBarButton;
    cxLabel6: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    USERS_PID: TpFIBDataSet;
    dsUSERS_PID: TDataSource;
    cxGroupBox3: TcxGroupBox;
    cxLabel18: TcxLabel;
    OFFER_PHONE_MOBILE: TcxDBTextEdit;
    OFFER_PHONE_OFFICE: TcxDBTextEdit;
    cxLabel19: TcxLabel;
    cxLabel15: TcxLabel;
    OFFER_NAME: TcxDBTextEdit;
    cxTabSheet2: TcxTabSheet;
    ROLES: TcxCheckGroup;
    cxGroupBox2: TcxGroupBox;
    CONTRAGENT_ACCESS: TcxDBCheckBox;
    REQUEST_ACCESS: TcxDBCheckBox;
    REQUEST_ARCHIVE: TcxDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MANAGER_IDPropertiesEditValueChanged(Sender: TObject);
    procedure LOGIN_NAMEKeyPress(Sender: TObject; var Key: Char);
    procedure bbSaveClick(Sender: TObject);
    procedure bbCloseClick(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesInitPopup(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
  private
    FisNew: boolean;
    FID: integer;
    procedure SetID(const Value: integer);
    { Private declarations }
  public
    property isNEW : boolean read FisNew write FisNew;
    property ID : integer read FID write SetID;
  end;

var
  fmUser: TfmUser;

implementation
uses u_fmUsers;
{$R *.dfm}

{ TfmUserEdit }

procedure TfmUser.bbCloseClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TfmUser.bbRefreshClick(Sender: TObject);
begin
  inherited;
  ID := ID;
end;

procedure TfmUser.bbSaveClick(Sender: TObject);
begin
  inherited;
  if DATA.State in [dsInsert, dsEdit] then
    DATA.Post;
  if DATA.UpdateTransaction.InTransaction then
    DATA.UpdateTransaction.Commit;



{  UserName.text := Trim(UserName.text);
  PASSWORD1.text := trim(PASSWORD1.text);
  PASSWORD2.text := trim(PASSWORD2.text);
  if isNew and (UserName.text='') then begin
    Application.MessageBox('Не введено имя пользователя', 'Ошибка', MB_OK + MB_ICONSTOP);
    USERNAME.SetFocus();
    Exit;
  end else if isNew and (fmUsers.LocateGridUser(UserName.Text)<>-1) then begin
    Application.MessageBox('Пользователь уже есть в базе данных', 'Ошибка', MB_OK + MB_ICONSTOP);
    USERNAME.SetFocus();
    Exit;
  end;
  if UserName.text[1] < 'a' then begin
  end;

  if (PASSWORD1.Text='') and isNew then begin
    Application.MessageBox('Пароль не может быть пустым', 'Ошибка', MB_OK + MB_ICONSTOP);
    PASSWORD1.SetFocus();
    Exit;
  end;

  if not isNew and (PASSWORD1.Text<>PASSWORD2.Text) then begin
    Application.MessageBox('Пароли не совпадают', 'Ошибка', MB_OK + MB_ICONSTOP);
    PASSWORD2.SetFocus();
    Exit;
  end;
}
  ModalResult := mrOK;
end;

procedure TfmUser.cxDBLookupComboBox1PropertiesInitPopup(Sender: TObject);
begin
  inherited;
  USERS_PID.Close;
  USERS_PID.ParamByName('USER_ID').Value := ID;
  USERS_PID.Open;

end;

procedure TfmUser.FormCreate(Sender: TObject);
begin
  FisNew := true;
  EMPLOE.CloseOpen(true);
  Regions.CloseOpen(true);
  USERS_PID.CloseOpen(true);
end;

procedure TfmUser.FormShow(Sender: TObject);
begin
{  if USERNAME.Text<>'' then begin
    UserName.Enabled := false;
    FisNew := false;
  end;
}
end;


procedure TfmUser.LOGIN_NAMEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Length(LOGIN_NAME.Text)=0) and (KEY < 'a') then
    Key := #0;
  if Key>'z' then
    Key := #0;
  Key := UpCase(Key);
end;

procedure TfmUser.MANAGER_IDPropertiesEditValueChanged(Sender: TObject);
begin
{  if (MANAGER_ID.EditValue=null) then begin
    IS_ACTIVE.Enabled := false; IS_ACTIVE.Checked := false;
    FIO.Enabled := False; FIO.Text := '';
    EMAIL.Enabled := False; EMAIl.text := '';
  end else begin
    if (DM.Users.Locate('ID', MANAGER_ID.EditValue, [])) then begin
      IS_ACTIVE.Enabled := true;
      IS_ACTIVE.Checked := DM.Users.FieldByname('IS_ACTIVE').AsBoolean;
      FIO.Enabled := true;
      FIO.Text := DM.Users.FieldByname('NAME').AsString;
      EMAIL.Enabled := true;
      EMAIL.text := DM.Users.FieldByname('EMAIL').AsString;
    end;
  end;
}
end;

procedure TfmUser.SetID(const Value: integer);
begin
  DATA.Close;
  DATA.ParamByName('ID').Value := Value;
  DATA.Open;
  FID := Value;
end;

end.
