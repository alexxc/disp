unit u_fmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  System.UITypes, cxContainer, cxEdit, Vcl.Menus, Data.DB, FIBDataSet, pFIBDataSet, cxMaskEdit,
  cxDropDownEdit, cxProgressBar, Vcl.StdCtrls, cxButtons, cxTextEdit, cxLabel,
  dxGDIPlusClasses, Vcl.ExtCtrls;

type
  TfmLogin = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    UserName: TcxTextEdit;
    Password: TcxTextEdit;
    buttonLogin: TcxButton;
    Image1: TImage;
    labelError: TcxLabel;
    DS: TpFIBDataSet;
    ProgressBar: TcxProgressBar;
    cxLabel3: TcxLabel;
    DBNAME: TcxComboBox;
    procedure buttonLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UserNamePropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSReadBlobField(Field: TBlobField; BlobSize, Progress: Integer;
      var Stop: Boolean);
  private
    { Private declarations }
  public
    function UpdateProgram() : boolean;
  end;

var
  fmLogin: TfmLogin;

implementation
uses CRC32,  FIBQuery, u_DM, u_fmMain, ShellAPI;
{$R *.dfm}

procedure TfmLogin.buttonLoginClick(Sender: TObject);
var
  res : integer;
begin
  try
    labelError.Caption := '';
    buttonLogin.Enabled := false;
    if not DM.FB.Connected then begin
      if DBName.ItemIndex=1 then begin
        DM.isSaransk := true;
        DM.FB.DatabaseName := DM.ServerName+':disp-saransk';
      end;
      res := DM.Connect(UserName.Text, Password.text);
      case res of
        0: begin
          DM.WriteIniString('DATABASE', 'USERNAME', UserName.Text);
          DM.WriteIniInt('DATABASE', 'ITEM', DBNAME.ItemIndex);
          if UpdateProgram() then begin
            Close;
          end else begin
            fmLogin.Close;
            fmMain.Show;
          end;
        end;
        335544721:
          labelError.Caption := 'Ошибка подключения к базе данных';
        335544472:
          labelError.Caption := 'Неверное имя или пароль';
        3:
          labelError.Caption := 'Пользователя нет в справочнике пользователей';
        4:
          labelError.Caption := 'Пользователю не назначена роль';
        else
          labelError.Caption := 'Ошибка -1 при подключении к базе данных';
      end;
    end;
  finally
    buttonLogin.Enabled := true;
  end;
end;



procedure TfmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not DM.FB.Connected then begin
    fmMain.Free;
    Application.Terminate;
  end;
end;

procedure TfmLogin.FormCreate(Sender: TObject);
begin
//  DM.ApplySkin(DM.ReadIniString('APPLICATION', 'SKIN', 'Office11'));
  labelError.Caption := '';
  UserName.Text := DM.ReadIniString('DATABASE', 'USERNAME', '');
  DBNAME.ItemIndex := DM.ReadIniInt('DATABASE', 'ITEM', 0);
  if (UserName.Text<>'') then
    ActiveControl := Password;
  UserNamePropertiesChange(Sender);
end;


procedure TfmLogin.DSReadBlobField(Field: TBlobField; BlobSize,
  Progress: Integer; var Stop: Boolean);
begin
  ProgressBar.Position := round(Progress * 100 / BlobSize);
  Application.ProcessMessages;
end;


function TfmLogin.UpdateProgram(): boolean;
var
  FileExe, FileBak: string;
  FS: TFileStream;

  CRC_DB, CRC2: LongWord;
//  CB : TCallBackBlobReadWrite;
  MS : TMemoryStream;
  S : TStream;
//  Buf : array[0..4095] of byte;
  ExecStr : string;
  ID : integer;
begin

  result := false;

  DS.Close;
  DS.SelectSQL.text := 'select first 1 ID, VER, CRC, char_length(DATA) L  from EXE where EXE.VER>:VER order by EXE.id desc';
  DS.ParamByname('VER').Value := Ver;
  try
    DS.Open;
    if not DS.EOF then begin
      Self.Caption := 'Обновление';
      Application.ProcessMessages;
      ID := DS.FieldByName('ID').Value;
      CRC_DB := DS.FieldByName('CRC').Value;
      DS.Close;
      DS.SelectSQL.Text := 'select DATA from EXE where ID=:ID';
      DS.ParamByName('ID').Value := ID;
      DS.Open;
      FileExe := Application.ExeName;
      FileBak := FileEXE + '.new';
      try
        if FileExists(FileBAK) then
          SysUtils.DeleteFile(FileBAK);
        if FileExists(FileEXE + '.old') then SysUtils.DeleteFile(FileEXE + '.old');
        if FileExists(FileEXE + '.old1') then SysUtils.DeleteFile(FileEXE + '.old1');
        if FileExists(FileEXE + '.old2') then SysUtils.DeleteFile(FileEXE + '.old2');
        if FileExists(FileEXE + '.old3') then SysUtils.DeleteFile(FileEXE + '.old3');
        if FileExists(FileEXE + '.old4') then SysUtils.DeleteFile(FileEXE + '.old4');
        if FileExists(FileEXE + '.old5') then SysUtils.DeleteFile(FileEXE + '.old5');
      except
        on E:Exception do begin
          MessageDlg('Ошибка удаления старого файла'#10+E.Message, mtError, [mbOK], 0);
          raise;
        end;
      end;

      MS := TMemoryStream.Create();
      Self.Caption := 'Обновление программы';
      labelError.Visible := false;
      ProgressBar.Visible := true;
      S := DS.CreateBlobStream(DS.FieldByName('DATA'), bmRead);

      ProgressBar.Visible := False;
      labelError.Visible := true;
      try
        try
          MS.CopyFrom(S, S.Size);
          MS.Position := 0;
          CRC2 := GetMemoryStreamCrc32(MS);
          if (CRC2=CRC_DB) then begin
            MS.Position := 0;
            FS := TFileStream.Create(FileBak, fmCreate);
            try
              FS.CopyFrom(MS, MS.Size);
            finally
              FreeAndNil(FS);
            end;

            Self.Caption := 'Перезапуск...';
            Application.ProcessMessages;
            sleep(500);
            // Текущий EXE -> в OLD
            MoveFile(PChar(FileExe), pchar(FileExe + '.old'));
            sleep(500);
            // Новый EXE -> в NEW
            MoveFile(PChar(FileBAK), pchar(FileExe));
            sleep(500);

            if FileExists(FileBAK) then
              SysUtils.DeleteFile(FileBAK);
            if FileExists(FileEXE + '.old') then
              SysUtils.DeleteFile(FileEXE + '.old*');

            ExecStr := '/U:'+UserName.Text+' /P:'+Password.TEXT;
            if (DM.isTest) then
              ExecStr := ExecStr + ' /TEST';
            ShellExecute(0, 'open', pchar(ParamStr(0)), pchar(ExecStr), nil, SW_SHOW);
            Application.Terminate;
            result := True;
          end else begin
            MessageBox(0, 'Не совпадает контрольная сумма ', 'Обновление программы', MB_ICONSTOP or MB_OK);
          end;
        except
          on E:Exception do begin
            MessageDlg(E.Message, mtError, [mbOK], 0);
            raise;
          end;
        end;

      finally
        FreeAndNil(MS);
        FreeAndNil(S);
      end;

    end;
  finally
    DS.Close;
    if (DS.Transaction.InTransaction) then
      DS.Transaction.Commit;
  end;
end;

procedure TfmLogin.UserNamePropertiesChange(Sender: TObject);
begin
  UserName.Text := Trim(UserName.Text);
  Password.Text := Trim(Password.Text);
  buttonLogin.Enabled := (UserName.Text<>'') and (Password.Text<>'');
end;

end.
