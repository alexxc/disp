unit u_fmUsers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridLevel, cxGridCustomView,
  cxGridDBTableView, cxGrid,
  IB_Services, StdCtrls, FIBSQLMonitor, FIBQuery, pFIBQuery, FIBDatabase,
  pFIBDatabase, ShellApi, CheckLst, cxNavigator, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter,
  dxSkinscxPCPainter, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine;

type
  TfmUsers = class(TfmMDIChild)
    bbNewUser: TdxBarButton;
    bbEditUser: TdxBarButton;
    GridUsersDBTableView1: TcxGridDBTableView;
    GridUsersLevel1: TcxGridLevel;
    GridUsers: TcxGrid;
    GridViewUsers: TcxGridTableView;
    GridViewUsersDatabaseUserName: TcxGridColumn;
    GridViewUser: TcxGridColumn;
    GridViewUsersIsActive: TcxGridColumn;
    FBSec: TpFIBSecurityService;
    QR: TpFIBQuery;
    GridViewUsersEmail: TcxGridColumn;
    GridViewROLE: TcxGridColumn;
    GridViewUsersIsSysAdmin: TcxGridColumn;
    bbDelete: TdxBarButton;
    QW: TpFIBQuery;
    FB: TpFIBDatabase;
    bbRunAs: TdxBarButton;
    GridViewUsersPassword: TcxGridColumn;
    GridViewUsersVer: TcxGridColumn;
    GridViewUsersIP: TcxGridColumn;
    GridViewUsersLastLogon: TcxGridColumn;
    bbShowPass: TdxBarButton;
    GridViewUsersIS_ONLINE: TcxGridColumn;
    bbDisconnect: TdxBarButton;
    GridViewUsersAttachmentID: TcxGridColumn;
    GridViewUsersPhone: TcxGridColumn;
    GridViewUserRequestManager: TcxGridColumn;
    bbRequestManager: TdxBarButton;
    GridViewUsersMobile: TcxGridColumn;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbNewUserClick(Sender: TObject);
    procedure bbEditUserClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbDeleteClick(Sender: TObject);
    procedure bbRunAsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbShowPassClick(Sender: TObject);
    procedure GridViewUsersFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure bbDisconnectClick(Sender: TObject);
    procedure bbRequestManagerClick(Sender: TObject);
    procedure GridViewUsersDblClick(Sender: TObject);
  private
    procedure UpdateUser;
    { Private declarations }
  public
    function LocateGridUser(UserName:string) : integer;
  end;

var
  fmUsers: TfmUsers;

implementation

uses u_DM, u_fmUser;

{$R *.dfm}


procedure TfmUsers.bbDeleteClick(Sender: TObject);
var
  _user : string;
begin
  inherited;
  _user := GridViewUsers.DataController.GetValue(GridViewUsers.DataController.FocusedRecordIndex, 0);
  if ( _user= 'SYSDBA') then
    exit;

  if Application.MessageBox('Удалить пользователя из базы данных?', 'Внимание', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then  begin
    try
      if not trWrite.InTransaction then
        trWrite.StartTransaction;
      trWrite.ExecSQLImmediate('ALTER USER '+_user+' REVOKE ADMIN ROLE');
      trWrite.ExecSQLImmediate('REVOKE "RDB$ADMIN" from '+_user);
      trWrite.ExecSQLImmediate('REVOKE "MANAGER" from '+_user);
      trWrite.ExecSQLImmediate('REVOKE "OWNER" from '+_user);
      trWrite.ExecSQLImmediate('REVOKE "ACCOUNT" from '+_user);
      trWrite.ExecSQLImmediate('REVOKE "ADMIN" from '+_user);
      trWrite.ExecSQLImmediate('REVOKE "DIRECTOR" from '+_user);
      trWrite.ExecSQLImmediate('REVOKE "DISPATCHER" from '+_user);
      trWrite.ExecSQLImmediate('REVOKE "HMANAGER" from '+_user);
      trWrite.ExecSQLImmediate('DROP USER '+_user);
      trWrite.ExecSQLImmediate('update users set login_name = null, role_name=null where login_name = '''+_user+'''');
      trWrite.Commit;
      bbRefresh.Click;
    except
      on E:Exception do
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_OK + MB_ICONSTOP);
    end;
  end;

end;

procedure TfmUsers.bbDisconnectClick(Sender: TObject);
var
  attachment_id : integer;
  user_name : string;
begin
  inherited;
  attachment_id := GridViewUsers.DataController.GetValue(GridViewUsers.DataController.FocusedRecordIndex, GridViewUsersAttachmentID.Index);
  user_name := GridViewUsers.DataController.GetValue(GridViewUsers.DataController.FocusedRecordIndex, GridViewUsersDatabaseUserName.Index);
  if MessageBox(0, PWideChar('Будет разорвано подключение #'+IntToStr(attachment_id)+' ('+user_name+') от базы данных'), 'Отключение пользователя', MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON2) = mrNO then
    exit;
  QW.Close;
  QW.SQL.text := 'DELETE FROM MON$ATTACHMENTS WHERE MON$ATTACHMENT_ID = :ID';
  QW.ParamByName('ID').Value := attachment_id;
  QW.ExecQuery;
  QW.Transaction.Commit;
  bbRefresh.Click();

end;

procedure TfmUsers.bbEditUserClick(Sender: TObject);
var
  _index : Integer;
begin
  inherited;
  if ((GridViewUsers.DataController.GetValue(GridViewUsers.DataController.FocusedRecordIndex, GridViewUsersDatabaseUserName.Index) = 'SYSDBA') or (GridViewUsers.DataController.GetValue(GridViewUsers.DataController.FocusedRecordIndex, GridViewUsersDatabaseUserName.Index) = 'SYSTEM') )then
    exit;
  fmUser := TfmUser.Create(self);
  try
    _index := GridViewUsers.DataController.FocusedRecordIndex;
    fmUser.ID := GridViewUsers.DataController.GetValue(_index, GridViewUser.Index);
    if fmUser.ShowModal = mrOK then begin
    end;
  finally
    FreeAndNil(fmUser);
  end;
{  fmUserEdit := TfmUserEdit.Create(Application);
  try
    _index := GridViewUsers.DataController.FocusedRecordIndex;
    fmUserEdit.USERNAME.text := GridViewUsers.DataController.GetValue(_index, 0);
    if (GridViewUsers.DataController.GetValue(_index, 1)<>null) then begin
      fmUserEdit.MANAGER_ID.EditValue := GridViewUsers.DataController.GetValue(_index, 1);
      fmUserEdit.IS_ACTIVE.Checked := GridViewUsers.DataController.GetValue(_index, 4);
      if (GridViewUsers.DataController.GetValue(_index, 2)<>null) then
        fmUserEdit.ROLE_NAME.EditValue := GridViewUsers.DataController.GetValue(_index, 2);
    end;
    fmUserEdit.IS_SYSADMIN.Checked := GridViewUsers.DataController.GetValue(_index, GridViewUsersIsSysAdmin.Index);
    fmUserEdit.PHONE_INTERNAL.EditValue := GridViewUsers.DataController.GetValue(_index, GridViewUsersPhone.Index);
    fmUserEdit.PHONE_MOBILE.EditValue := GridViewUsers.DataController.GetValue(_index, GridViewUsersMobile.Index);

    if fmUserEdit.ShowModal = mrOK then begin
      UpdateUser;
      bbRefresh.Click;
      GridViewUsers.DataController.FocusedRecordIndex := LocateGridUser(fmUserEdit.USERNAME.text);
    end;
  finally
    FreeAndNil(fmUserEdit);
  end;
}
end;

procedure TfmUsers.UpdateUser;
begin
{  try
    if not trWrite.InTransaction then
      trWrite.StartTransaction;
    if fmUserEdit.IS_SYSADMIN.Checked then begin
      trWrite.ExecSQLImmediate('ALTER USER '+fmUserEdit.USERNAME.Text+' GRANT ADMIN ROLE');
      trWrite.ExecSQLImmediate('grant  RDB$ADMIN to '+fmUserEdit.USERNAME.Text+' WITH ADMIN OPTION granted by SYSDBA');
    end else begin
      trWrite.ExecSQLImmediate('ALTER USER '+fmUserEdit.USERNAME.Text+' REVOKE ADMIN ROLE');
      trWrite.ExecSQLImmediate('REVOKE RDB$ADMIN from '+fmUserEdit.USERNAME.Text + ' granted by SYSDBA');
    end;

    trWrite.ExecSQLImmediate('REVOKE "MANAGER", "OWNER", "ACCOUNT", "ADMIN", "DIRECTOR", "DISPATCHER", "HMANAGER" from '+fmUserEdit.USERNAME.Text+' granted by SYSDBA');

    if (fmUserEdit.ROLE_NAME.EditValue<>null) then
      trWrite.ExecSQLImmediate('GRANT "'+fmUserEdit.ROLE_NAME.EditValue+'" to '+fmUserEdit.USERNAME.Text+' granted by SYSDBA');
    if (not fmUserEdit.isNEW) and (fmUserEdit.PASSWORD1.Text<>'') then begin
      trWrite.ExecSQLImmediate('ALTER USER '+fmUserEdit.USERNAME.Text+' password '''+fmUserEdit.PASSWORD1.Text+'''');
    end;

    if (fmUserEdit.MANAGER_ID.EditValue<>null) then begin
      QW.SQL.text :='update users set login_name = :login_name, role_name=:role_name, email=:email, pass=:pass, fio=:fio, is_active=:is_active, phone_internal=:phone_internal, PHONE_MOBILE=:PHONE_MOBILE where id=:id';
      QW.Prepare;
      QW.ParamByName('id').Value := fmUserEdit.MANAGER_ID.EditValue;
      QW.ParamByName('login_name').Value := fmUserEdit.USERNAME.Text;
      QW.ParamByName('role_name').Value := fmUserEdit.ROLE_NAME.EditValue;
      QW.ParamByName('email').Value := fmUserEdit.EMAIL.Text;
      QW.ParamByName('pass').Value := fmUserEdit.PASSWORD1.Text;
      QW.ParamByName('fio').Value := fmUserEdit.FIO.Text;
      QW.ParamByName('is_active').Value := fmUserEdit.IS_ACTIVE.Checked;
      QW.ParamByName('phone_internal').Value := fmUserEdit.phone_internal.text;
      QW.ParamByName('phone_mobile').Value := fmUserEdit.phone_mobile.text;
      QW.ExecQuery;
      trWrite.Commit;
      DM.USERS.ReopenLocate('ID');
    end;
  except
    on E:Exception do
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_OK + MB_ICONSTOP);
  end;
}
end;

procedure TfmUsers.bbNewUserClick(Sender: TObject);
begin
  inherited;
{  fmUserEdit := TfmUserEdit.Create(Application);
  try
    fmUserEdit.Caption := 'Новый пользователь';
    if fmUserEdit.ShowModal = mrOK then begin
      try
        if not trWrite.InTransaction then
          trWrite.StartTransaction;
        trWrite.ExecSQLImmediate('create user '+fmUserEdit.USERNAME.Text+' password '''+fmUserEdit.PASSWORD1.Text+'''');
        trWrite.Commit;
        UpdateUser;
      except
        on E:Exception do
          Application.MessageBox(PChar(E.Message), 'Ошибка', MB_OK + MB_ICONSTOP);
      end;

      bbRefresh.Click;
      GridViewUsers.DataController.FocusedRecordIndex := LocateGridUser(fmUserEdit.USERNAME.text);
    end;
  finally
    FreeAndNil(fmUserEdit);
  end;
}
end;

procedure TfmUsers.bbRefreshClick(Sender: TObject);
var
  _i : Integer;
  _user : TUserInfo;
begin
  inherited;
  if not bbRefresh.Enabled then
    exit;
  bbRefresh.Enabled := False;
  GridViewUsers.BeginUpdate(lsimImmediate);
  Application.ProcessMessages;
  try
    try
      bbShowPassClick(Sender);
      while GridViewUsers.DataController.RecordCount>0 do
        GridViewUsers.DataController.DeleteRecord(0);
      FBSec.Attach;
      FBSec.SecurityAction := ActionDisplayUser;
      FBSec.DisplayUsers;
      GridViewUsers.DataController.RecordCount := FBSec.UserInfoCount;
      for _i := 0 to FBSec.UserInfoCount -1 do begin
        _user := FBSec.UserInfo[_i];
        GridViewUsers.DataController.SetValue(_i, 0, _user.UserName);
        if QR.Transaction. InTransaction then
          QR.Transaction.Commit;
        QR.Close;
        QR.SQL.text := 'select '+
          'coalesce(u.fio, u.name) name, '+
          'coalesce(u.role_name, ''---'') role_name, '+
          'IIF(exists(select * from RDB$USER_PRIVILEGES P where P.RDB$PRIVILEGE=''M'' and P.RDB$USER=u.LOGIN_NAME and P.RDB$RELATION_NAME=''RDB$ADMIN''), 1, 0) IS_SYSADMIN, '+
          'u.pass, '+
          'u.id, u.email, coalesce(u.is_active, 0) is_active, '+
          'u.program_version, u.last_login_dt, u.last_login_ip, ' +
          'u.PHONE_INTERNAL, '+
          'u.PHONE_MOBILE, '+
          '(select first 1 MON$ATTACHMENT_ID from MON$ATTACHMENTS where MON$USER=upper(u.LOGIN_NAME)) ATTACHMENT_ID, '+
          'IIF(exists(select 1 from MON$ATTACHMENTS where MON$USER=upper(u.LOGIN_NAME)), 1, 0) IS_ONLINE, '+
          '(IIF(exists(select PARAMS.ID from PARAMS where PARAMS.VAL_INT=U.ID and PARAMS.NAME=''REQUEST_MANAGER''), 1, 0)) REQUEST_MANAGER '+
          'from users u '+
          'where upper(u.login_name)=:login_name';
        QR.ExecWP([_user.UserName]);
        if not QR.EOF then begin

          GridViewUsers.DataController.SetValue(_i, GridViewUser.Index, QR.FieldByName('ID').AsInteger);         // MANAGER
          GridViewUsers.DataController.SetValue(_i, GridViewROLE.Index, QR.FieldByName('role_name').AsString);   // ROLE
          GridViewUsers.DataController.SetValue(_i, GridViewUsersEmail.Index, QR.FieldByName('email').AsString);       // EMAIL
          GridViewUsers.DataController.SetValue(_i, GridViewUsersIsActive.Index, QR.FieldByName('is_active').AsBoolean);  // ACTIVE
          GridViewUsers.DataController.SetValue(_i, GridViewUsersIsSysAdmin.Index, QR.FieldByName('IS_SYSADMIN').AsBoolean);  // ADMIN
          GridViewUsers.DataController.SetValue(_i, GridViewUsersPassword.Index, QR.FieldByName('pass').AsString);   // ROLE
          GridViewUsers.DataController.SetValue(_i, GridViewUsersVer.Index, QR.FieldByName('program_version').Value);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersIP.Index, QR.FieldByName('last_login_ip').Value);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersLastLogon.Index, QR.FieldByName('last_login_dt').Value);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersIS_ONLINE.Index, QR.FieldByName('IS_ONLINE').Value);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersAttachmentID.Index, QR.FieldByName('ATTACHMENT_ID').Value);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersPhone.Index, QR.FieldByName('PHONE_INTERNAL').Value);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersMobile.Index, QR.FieldByName('PHONE_MOBILE').Value);
          GridViewUsers.DataController.SetValue(_i, GridViewUserRequestManager.Index, QR.FieldByName('REQUEST_MANAGER').Value);
        end else begin
          GridViewUsers.DataController.SetValue(_i, GridViewUser.Index, null);
          GridViewUsers.DataController.SetValue(_i, GridViewROLE.Index, '---');
          GridViewUsers.DataController.SetValue(_i, GridViewUsersEmail.Index, '---');
          GridViewUsers.DataController.SetValue(_i, GridViewUsersIsActive.Index, false);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersIsSysAdmin.Index, false);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersPassword.Index, '---');   //
          GridViewUsers.DataController.SetValue(_i, GridViewUsersVer.Index, NULL);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersIP.Index, NULL);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersLastLogon.Index, NULL);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersIS_ONLINE.Index, false);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersAttachmentID.Index, NULL);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersPhone.Index, NULL);
          GridViewUsers.DataController.SetValue(_i, GridViewUsersMobile.Index, NULL);
          GridViewUsers.DataController.SetValue(_i, GridViewUserRequestManager.Index, 0);
        end;
      end;

    except
      on E:Exception do
        MessageDlg(E.Message, mtError, [mbOK], 0);
    end;
  finally
    if FBSec.Active then
      FBSec.Detach;
    GridViewUsers.EndUpdate();
    bbRefresh.Enabled := True;
  end;

end;


procedure TfmUsers.bbRequestManagerClick(Sender: TObject);
var
  USER_ID : variant;
  RecordIndex : integer;
begin
  inherited;
  bbRequestManager.Enabled := FALSE;
  try
    if Application.MessageBox('Назначить пользователя '#13#10'менеджером для новых заявок?', 'Менеджер для заявок', MB_YESNO + MB_ICONQUESTION) = IDNO then
      exit;
    RecordIndex := GridViewUsers.DataController.FocusedRecordIndex;
    USER_ID := GridViewUsers.DataController.GetValue(RecordIndex, GridViewUser.Index) ;
    QW.Close;
    QW.SQL.Text := 'update PARAMS  set val_int=:user_id where params.NAME=''REQUEST_MANAGER''';
    QW.ParamByName('USER_ID').value := USER_ID;
    QW.ExecQuery;
    QW.Transaction.Commit;
    bbRefresh.Click;
    GridViewUsers.DataController.FocusedRecordIndex := RecordIndex;
  finally
  bbRequestManager.Enabled := TRUE;
  end;

end;

procedure TfmUsers.bbRunAsClick(Sender: TObject);
var
  _str : string;
  _name, _pass : string;
begin
  inherited;
  _name := GridViewUsers.DataController.GetValue(GridViewUsers.DataController.FocusedRecordIndex, 0);
  _pass := GridViewUsers.DataController.GetValue(GridViewUsers.DataController.FocusedRecordIndex, 6);
  _str := ' /U:'+_name+' /P:'+_pass;
  if DM.isTEST then
    _str := _str + ' /TEST';
  ShellExecute(0, 'open', pchar(ParamStr(0)), pchar(_str), nil, SW_SHOW);
end;

procedure TfmUsers.bbShowPassClick(Sender: TObject);
begin
  inherited;
  if bbShowPass.Down then
    TcxTextEditProperties(GridViewUsersPassword.Properties).EchoMode := eemNormal
  else
    TcxTextEditProperties(GridViewUsersPassword.Properties).EchoMode := eemPassword;
end;

procedure TfmUsers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FB.Close;
end;

procedure TfmUsers.FormShow(Sender: TObject);
var
  ServerName : String;
  _x : Integer;
begin
  inherited;
  FBSec.Params.Clear;
  ServerName := DM.FB.DBName;
  _x := pos(':', ServerName);
  if (_x>0) then
    ServerName := Copy(ServerName, 1, _x-1);

  FBSec.ServerName:= AnsiString(ServerName);
  FBSec.Protocol := TCP;
  FBSec.UserName := DM.FB.ConnectParams.UserName;
  FBSec.Password := DM.FB.ConnectParams.Password;
  FBSec.Params.Clear;
  FBSec.Params.Add('user_name='+DM.FB.ConnectParams.UserName);
  FBSec.Params.Add('password='+DM.FB.ConnectParams.Password);
  FBSec.Params.Add('sql_role_name=RDB$ADMIN');
  FBSec.SQlRole := 'RDB$ADMIN';
  FBSec.LoginPrompt := false;

  FB.Close;
  FB.DBName := DM.FB.DBName;
  FB.LibraryName := DM.FB.LibraryName;
  FB.ConnectParams.UserName := DM.FB.ConnectParams.UserName;
  FB.ConnectParams.Password := DM.FB.ConnectParams.Password;
  FB.ConnectParams.RoleName := 'RDB$ADMIN';
  FB.ConnectParams.CharSet := DM.FB.ConnectParams.CharSet;
  FB.Connected := True;
  bbRefresh.Click();
end;

procedure TfmUsers.GridViewUsersDblClick(Sender: TObject);
begin
  inherited;
  bbEditUser.Click();
end;

procedure TfmUsers.GridViewUsersFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  Attachment_ID : Variant;
  IS_REQUEST_MANAGER : Boolean;
  USER_ID : variant;
  ROLE_NAME : string;
begin
  inherited;
  bbEditUser.Enabled := (
    (GridViewUsers.DataController.GetValue(GridViewUsers.DataController.FocusedRecordIndex, GridViewUsersDatabaseUserName.Index) <> 'SYSDBA')
    and (GridViewUsers.DataController.GetValue(GridViewUsers.DataController.FocusedRecordIndex, GridViewUsersDatabaseUserName.Index) <> 'SYSTEM')
  );
  IS_REQUEST_MANAGER := AFocusedRecord.Values[GridViewUserRequestManager.Index] = 1;
  bbRequestManager.Enabled := bbEditUser.Enabled and ((not IS_REQUEST_MANAGER) and (ROLE_NAME<>'----') and (USER_ID<>NULL));;
  bbDelete.Enabled:= bbEditUser.Enabled;
  bbRunAs.Enabled:= bbEditUser.Enabled;
  bbDisconnect.Enabled:=  bbEditUser.Enabled and (Attachment_ID<>null);

  Attachment_ID := AFocusedRecord.Values[GridViewUsersAttachmentID.Index];
  USER_ID := AFocusedRecord.Values[GridViewUser.Index];
  ROLE_NAME := AFocusedRecord.Values[GridViewROLE.Index];

end;

function TfmUsers.LocateGridUser(UserName: string): integer;
var
  _i : integer;
begin
  result := -1;
  for _i := 0 to GridViewUsers.DataController.RecordCount - 1 do begin
    if UpperCase(GridViewUsers.DataController.GetValue(_i, 0))=UpperCase(UserName) then begin
      Result := _i;
      break;
    end;
  end;
end;

end.

