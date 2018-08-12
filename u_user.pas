unit u_user;
interface

uses classes, SysUtils, Dialogs;

type
  TUser = class
  private
    FID: integer;
    FisOwner: boolean;
    FisManager: boolean;
    FisHManager: boolean;
    FisDirector: boolean;
    FisDispatcher: boolean;
    FisAccount: boolean;
    FisAdmin: boolean;
    FName: string;
    FRole: string;
    FisSysAdmin: boolean;
    FisProdDirector: boolean;
    FLoginName: string;
    FSCR_INTERVAL: integer;
    FContragentAccess: integer;
    FRequestAccess: integer;
    FRequestArchive: integer;
    FGuiTheme: string;
    fRefAuto: integer;
    fRefAutoDriver: integer;
    FGuiType: integer;
    function GetSysJournal: boolean;
    procedure SetGuiTheme(const Value: string);
    procedure SetGuiType(const Value: integer);
  public
    property isAdmin : boolean read FisAdmin default false;
    property isAccount : boolean read FisAccount default false;
    property isDirector : boolean read FisDirector default false;
    property isDispatcher : boolean read FisDispatcher default false;
    property isHManager : boolean read FisHManager default false;
    property isManager : boolean read FisManager default false;
    property isOwner : boolean read FisOwner default false;
    property isSysAdmin: boolean read FisSysAdmin default false;
    property isProdDirector : boolean read FisProdDirector default false;
    property ID:integer read FID write FID default -1;
    property SCR_INTERVAL: integer read FSCR_INTERVAL;
    property Name : string read FName;
    property LoginName : string read FLoginName;
    property Role: string read FRole;
    property SysJournal : boolean read GetSysJournal;
    property ContragentAccess : integer read FContragentAccess;
    property RequestAccess : integer read FRequestAccess;
    property RequestArchive : integer read FRequestArchive;
    property GuiTheme : string read FGuiTheme write SetGuiTheme;
    property refAuto: integer read fRefAuto default 0;
    property refAutoDriver: integer read fRefAutoDriver default 0;
    property GuiType: integer read FGuiType write SetGuiType default 0;

    constructor Create(ID:Integer);
  end;

implementation
uses U_DM;
{ TUser }

constructor TUser.Create(ID: Integer);
begin
  DM.QUser.Close;
  DM.QUser.SQL.text := 'select * from get_user_settings';
  DM.QUser.ExecQuery;

  FName := DM.QUser.FieldByname('NAME').AsString;
  FLoginName := DM.QUser.FieldByname('LOGIN_NAME').AsString;
  FRole := DM.QUser.FieldByname('ROLE_NAME').AsString;
  FID := DM.QUser.FieldByname('ID').AsInteger;
  FSCR_INTERVAL := DM.QUser.FieldByname('SCR_INTERVAL').AsInteger;
  FContragentAccess := DM.QUser.FieldByname('CONTRAGENT_ACCESS').AsInteger;
  FRequestAccess := DM.QUser.FieldByname('REQUEST_ACCESS').AsInteger;
  FRequestArchive := DM.QUser.FieldByname('REQUEST_ARCHIVE').AsInteger;
  GuiTheme := DM.QUser.FieldByname('GUI_THEME').AsString;
  GuiType := DM.QUser.FieldByname('GUI_TYPE').AsInteger;
  fRefAuto := DM.QUser.FieldByname('REF_AUTO').AsInteger;
  fRefAutoDriver := DM.QUser.FieldByname('REF_AUTO_DRIVER').AsInteger;

  DM.QUser.Close;
  DM.QUser.SQL.text := 'select trim(RDB$RELATION_NAME) NAME from RDB$USER_PRIVILEGES P where P.RDB$PRIVILEGE = ''M'' and P.RDB$USER=current_user';
  DM.QUser.ExecQuery;
  while not DM.QUser.EOF do begin
    if DM.QUser.FieldByname('NAME').AsString='ACCOUNT' then FisAccount := true;
    if DM.QUser.FieldByname('NAME').AsString='ADMIN' then FisAdmin := true;
    if DM.QUser.FieldByname('NAME').AsString='DIRECTOR' then FisDirector := true;
    if DM.QUser.FieldByname('NAME').AsString='DISPATCHER' then FisDispatcher := true;
    if DM.QUser.FieldByname('NAME').AsString='MANAGER' then FisManager := true;
    if DM.QUser.FieldByname('NAME').AsString='HMANAGER' then FisHManager := true;
    if DM.QUser.FieldByname('NAME').AsString='OWNER' then FisOwner := true;
    if DM.QUser.FieldByname('NAME').AsString='PROD_DIRECTOR' then FisProdDirector := true;
    if DM.QUser.FieldByname('NAME').AsString='RDB$ADMIN' then FisSysAdmin := true;
    DM.QUser.Next;
  end;
  if DM.FB.QueryValue('select count(1) from REF_PRODUCTIONS P where p.BOSS_USER_ID='+IntToStr(self.ID), 0) = 1 then
    FisProdDirector := true;

end;

function TUser.GetSysJournal: boolean;
begin
  result := self.isAdmin or Self.isOwner or user.isDirector or (self.ID = 26);
end;

procedure TUser.SetGuiTheme(const Value: string);
begin
  try
    DM._QW.CLose;
    DM._QW.SQL.text := 'update users set GUI_THEME=:THEME where Users.ID=:ID and coalesce(Users.GUI_THEME, ''Office11'')<>:THEME';
    DM._QW.ParamByName('ID').AsInteger := self.ID;
    DM._QW.ParamByName('THEME').AsString := value;
    DM._QW.ExecQuery;
    DM._QW.Transaction.Commit;
    DM.ApplySkin(Value);
    FGuiTheme := Value;
  except
    on E:exception do
      ShowMessage(E.Message);
  end;
end;

procedure TUser.SetGuiType(const Value: integer);
begin
  try
    DM._QW.CLose;
    DM._QW.SQL.text := 'update users set GUI_TYPE=:GUI_TYPE where Users.ID=:ID and coalesce(Users.GUI_TYPE, 0)<>:GUI_TYPE';
    DM._QW.ParamByName('ID').AsInteger := self.ID;
    DM._QW.ParamByName('GUI_TYPE').AsInteger := value;
    DM._QW.ExecQuery;
    DM._QW.Transaction.Commit;
    FGuiType := Value;
  except
    on E:exception do
      ShowMessage(E.Message);
  end;

end;

end.
