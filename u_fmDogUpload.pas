unit u_fmDogUpload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmModal, dxBar, cxClasses, u_DM, FIBQuery, pFIBQuery, ComCtrls,
  ShlObj, cxShellCommon, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxShellTreeView, cxShellListView,
  cxSplitter, ExtCtrls, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxLabel, cxCalendar, cxCheckBox, cxSpinEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxCore,
  cxDateUtils, cxTreeView, FIBDatabase, pFIBDatabase;

type
  TfmDogUpload = class(TfmModal)
    Q: TpFIBQuery;
    Tree: TcxShellTreeView;
    Panel: TPanel;
    cxLabel2: TcxLabel;
    Description: TcxTextEdit;
    labelFileName: TcxLabel;
    labelPATH: TcxLabel;
    labelFileSize: TcxLabel;
    cxLabel3: TcxLabel;
    FileDate: TcxLabel;
    FileSize: TcxLabel;
    FileName: TcxLabel;
    FilePath: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    NOMER_DOG: TcxTextEdit;
    DATE_START: TcxDateEdit;
    DATE_END: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    TYPE_DOG: TcxImageComboBox;
    IS_ACCEPTED: TcxCheckBox;
    IS_DOP_DOG: TcxImageComboBox;
    cbREMIND: TcxCheckBox;
    DAYS: TcxSpinEdit;
    labelDAYS: TcxLabel;
    cxLabel7: TcxLabel;
    WINTER_REMIND: TcxCheckBox;
    WINTER_DAYS: TcxSpinEdit;
    labelWINTER: TcxLabel;
    WINTER_DATE: TcxDateEdit;
    cxLabel9: TcxLabel;
    DATE_NO_LIMIT: TcxCheckBox;
    SUMMER_DATE: TcxDateEdit;
    SUMMER_REMIND: TcxCheckBox;
    SUMMER_DAYS: TcxSpinEdit;
    labelSUMMER: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure TreeChange(Sender: TObject; Node: TTreeNode);
    procedure bbSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbREMINDPropertiesChange(Sender: TObject);
    procedure SUMMER_REMINDClick(Sender: TObject);
    procedure SUMMER_DATEPropertiesChange(Sender: TObject);
  private
    FContragentID: integer;
    FFileName: string;
    FFExt: string;
    FFullFileName: string;
    FID: integer;
    FFSize: Int64;
    FReadOnly: boolean;
    procedure SetContragentID(const Value: integer);
    procedure SetID(const Value: integer);
    procedure SetReadOnly(const Value: boolean);
    { Private declarations }
  public
    property ContragentID : integer read FContragentID write SetContragentID default -1;
    property isReadOnly : boolean read FReadOnly write SetReadOnly;
    property ID : integer read FID write SetID;
    property FullFileName : string read FFullFileName write FFullFileName;
    property FName : string read FFileName write FFileName;
    property FExt : string read FFExt write FFExt;
    property FSize: Int64 read FFSize write FFSize default 0;
    function CheckFile(AFileName:string) : boolean;
    function CheckAttr: boolean;
  end;

var
  fmDogUpload: TfmDogUpload;

implementation

uses u_fmMain;
{$R *.dfm}

procedure TfmDogUpload.bbSaveClick(Sender: TObject);
var
  SQL : string;
begin
  inherited;
  if (not CheckAttr) then
    exit;
  try
    Wait(1);
    try
      Q.Close;
      if (ID=0) then begin
        Q.Transaction := trWrite;
        Q.SQL.Text := 'insert into DOCUMENTS(CONTRAGENT_ID, DOCUMENT_TYPE, DESCRIPTION, FILENAME, EXT, FILESIZE, STATUS, DATA) values (:CONTRAGENT_ID, :DOCUMENT_TYPE, :DESCRIPTION, :FILENAME, :EXT, :FILESIZE, :STATUS, :DATA) returning ID';
        Q.ParamByName('CONTRAGENT_ID').AsInteger := ContragentID;
        Q.ParamByName('DOCUMENT_TYPE').AsInteger := 2;
        Q.ParamByName('DESCRIPTION').AsString := Description.Text;
        Q.ParamByName('FILENAME').AsString := FName;
        Q.ParamByName('FILESIZE').Value := FSize;
        Q.ParamByName('EXT').AsString := FExt;
        Q.ParamByName('STATUS').Value := 0;
        Q.ParamByName('DATA').LoadFromFile(FullFileName);
        Q.ExecQuery;
        ID := Q.FieldByName('ID').Value;
      end;
      Q.Transaction := trRead;
      Q.SQL.Text := 'select count(1) C from DOCUMENTS_DOG where ID=:ID';
      Q.ParamByName('ID').AsInteger := ID;
      Q.ExecQuery;
      if Q.FieldByName('C').AsInteger = 0 then begin
        SQL := 'insert into DOCUMENTS_DOG '+
          ' (ID, REMIND_DAYS, CONTRAGENT_ID, NOMER_DOG, DATE_START, DATE_END, DOG_TYPE, IS_DOP_DOG, DESCRIPTION, IS_ACCEPTED, '#10+
            'WINTER_DATE, SUMMER_DATE, WINTER_DAYS_REMIND, SUMMER_DAYS_REMIND, IS_DATE_NOLIMIT) '#10+
          'values (:ID, :REMIND_DAYS, :CONTRAGENT_ID,  :NOMER_DOG, :DATE_START, :DATE_END, :DOG_TYPE, :IS_DOP_DOG, :DESCRIPTION, :IS_ACCEPTED, '#10+
          ' :WINTER_DATE, :SUMMER_DATE, :WINTER_DAYS_REMIND, :SUMMER_DAYS_REMIND, :IS_DATE_NOLIMIT)';
      end else begin
        SQL := 'update DOCUMENTS_DOG set CONTRAGENT_ID=:CONTRAGENT_ID, NOMER_DOG = :NOMER_DOG, DATE_START = :DATE_START, DATE_END = :DATE_END, DOG_TYPE = :DOG_TYPE, '#10+
              ' REMIND_DAYS=:REMIND_DAYS, IS_DOP_DOG = :IS_DOP_DOG, DESCRIPTION = :DESCRIPTION, IS_ACCEPTED = :IS_ACCEPTED, '#10+
              ' WINTER_DATE=:WINTER_DATE, SUMMER_DATE=:SUMMER_DATE, '#10+
              ' SUMMER_DAYS_REMIND = :SUMMER_DAYS_REMIND, WINTER_DAYS_REMIND = :WINTER_DAYS_REMIND, '#10 +
              ' IS_DATE_NOLIMIT=:IS_DATE_NOLIMIT'#10+
              ' where ID=:ID';
      end;
      Q.Close;
      Q.Transaction := trWrite;
      Q.SQL.text := SQL;
      Q.ParamByName('ID').Value := ID;
      Q.ParamByName('CONTRAGENT_ID').Value := ContragentID;
      Q.ParamByName('NOMER_DOG').AsString := Trim(NOMER_DOG.Text);
      Q.ParamByName('DATE_START').AsString := DATE_START.EditValue;
      Q.ParamByName('DATE_END').AsString := DATE_END.EditValue;
      Q.ParamByName('DOG_TYPE').AsInteger := TYPE_DOG.EditValue;
      Q.ParamByName('IS_DOP_DOG').AsBoolean := IS_DOP_DOG.EditValue;
      Q.ParamByName('DESCRIPTION').AsString := Trim(Description.Text);
      Q.ParamByName('IS_ACCEPTED').AsBoolean := IS_ACCEPTED.Checked;
      Q.ParamByName('WINTER_DATE').Value := WINTER_DATE.EditValue;
      Q.ParamByName('SUMMER_DATE').Value := SUMMER_DATE.EditValue;
      if (DATE_NO_LIMIT.Checked) then
        Q.ParamByName('IS_DATE_NOLIMIT').Value := 1
      else
        Q.ParamByName('IS_DATE_NOLIMIT').Value := 0;
      if cbRemind.Checked then
        Q.ParamByName('REMIND_DAYS').AsInteger := DAYS.Value
      else
        Q.ParamByName('REMIND_DAYS').Value := NULL;
      if ((SUMMER_REMIND.Checked) and (Q.ParamByName('SUMMER_DATE').Value<>null)) then
        Q.ParamByName('SUMMER_DAYS_REMIND').AsInteger := SUMMER_DAYS.EditValue
      else
        Q.ParamByName('SUMMER_DAYS_REMIND').Value := NULL;
      if ((WINTER_REMIND.Checked) and (Q.ParamByName('WINTER_DATE').Value)) then
        Q.ParamByName('WINTER_DAYS_REMIND').AsInteger := WINTER_DAYS.EditValue
      else
        Q.ParamByName('WINTER_DAYS_REMIND').Value := NULL;


      Q.ExecQuery;

      Q.Transaction.Commit;
      DM.WriteIniString('APPLICATION', 'DOCUMENTS_DIRECTOTY_PATH', ExtractFilePath(Tree.AbsolutePath));
      ModalResult := mrOK;
    except
      on E:Exception do
        Showmessage(E.Message);
    end;

  finally
    Wait(0);
  end;
end;

procedure TfmDogUpload.cbREMINDPropertiesChange(Sender: TObject);
begin
  inherited;
  DAYS.Visible := cbREMIND.Checked;
  labelDAYS.Visible := cbREMIND.Checked;
end;

function TfmDogUpload.CheckAttr: boolean;
var
  res : boolean;
begin
  res := true;
  NOMER_DOG.text := trim(NOMER_DOG.text);

  if ((ID=0) and (not CheckFile(Tree.AbsolutePath))) then begin
    Application.MessageBox('Не выбран корректный файл', 'Внимание', MB_OK + MB_ICONSTOP);
  end else if NOMER_DOG.text = '' then begin
    Application.MessageBox('Не заполнен номер договора', 'Внимание', MB_OK + MB_ICONSTOP);
    ActiveControl := NOMER_DOG;
    res := false;
  end else if (DATE_START.EditingText='') then begin
    Application.MessageBox('Не указана дата начала действия', 'Внимание', MB_OK + MB_ICONSTOP);
    ActiveControl := DATE_START;
    res := false;
  end else if (DATE_END.EditingText='') and (DATE_NO_LIMIT.Checked=false) then begin
    if MessageBox(0, 'Не указана дата окончания договора.'+#13+#10+'Этот договор бессрочный?', 'Дата окончания', MB_ICONQUESTION or MB_YESNO)=mrYES then begin
      DATE_NO_LIMIT.Checked := true;
    end else begin
      ActiveControl := DATE_END;
      res := false;
    end;
  end else if not IS_ACCEPTED.Checked then begin
    Application.MessageBox('Необходимо наличие документов!', 'Внимание', MB_OK + MB_ICONSTOP);
    ActiveControl := IS_ACCEPTED;
    res := false;
  end;
  result := res;
end;

function TfmDogUpload.CheckFile(AFileName:string): boolean;
var
  InfoFile : TSearchRec;
  AttrFile : Integer;
  EXT : string;
begin
  result := false;
  FileName.Caption := '';
  FilePath.Caption := '';
  FileSize.Caption := '';
  FileDate.Caption := '';
  FFileName := '';
  FFExt := '';

  if FileExists(AFileName) then begin
    AttrFile := $0000003F; {Any file}
    FindFirst(AFileName, AttrFile, InfoFile);
    FilePath.Caption := ExtractFilePath(AFileName);
    FileName.Caption := ExtractFileName(AFileName);
    try
      FFSize := InfoFile.Size;
      if FFSize > (1024*1024*1024) then
        FileSize.Caption := IntToStr(Round(FFSize/1024/1024/1024))+' GB'
      else if FFSize > 5*1024*1024 then
        FileSize.Caption := IntToStr(Round(FFSize/1024/1024))+' MB'
      else if FFSize > 5*1024 then
        FileSize.Caption := IntToStr(Round(FFSize/1024))+' KB'
      else
        FileSize.Caption := IntToStr(FFSize)+' B';
      FileDate.Caption := DateTimeToStr(InfoFile.TimeStamp);
      EXT := Uppercase(ExtractFileExt(AFileName));
      if (EXT='.TXT') or (EXT='.XLS') or (EXT='.DOC') or (EXT='.DOCX') or (EXT='.XLSX') or (EXT='.JPG') or (EXT='.JPEG') or (EXT='.PDF') or (EXT='.TIFF') or (EXT='.TIF') then begin
        FullFileName := AFileName;
        FName := ExtractFileName(AFileName);
        FExt := copy(EXT, 2, length(EXT));
        result := true;
      end;
    finally
      FindClose(InfoFile);
    end;

  end else if DirectoryExists(AFileName) then begin
    FilePath.Caption := AFileName;
  end;
  bbSave.Enabled := (result and (not isReadOnly)) or (ID>0);
end;

procedure TfmDogUpload.FormCreate(Sender: TObject);
begin
  inherited;
  FID := 0;
end;

procedure TfmDogUpload.FormShow(Sender: TObject);
var
  _str : string;
begin
  inherited;
  if ContragentID = -1 then begin
    raise Exception.Create('Не установлен контрагент');
  end;
  _str := DM.ReadIniString('APPLICATION', 'DOCUMENTS_DIRECTOTY_PATH', '');
  if (_str<>'') then
    Tree.AbsolutePath := _str;

end;

procedure TfmDogUpload.SetContragentID(const Value: integer);
begin
  Q.Close;
  Q.Transaction := trRead;
  Q.SQL.Text := 'select id, name from CONTRAGENTS where id=:ID';
  Q.ParamByName('ID').value := Value;
  Q.ExecQuery;
  if not Q.EOF then begin
    self.Caption := 'Загрузка сканированного договора для '+Q.FieldByname('NAME').AsString;
    FContragentID := Value;
  end else
    raise Exception.Create('Контрагент с кодом '+IntToStr(Value)+' не найден');

end;




procedure TfmDogUpload.SetID(const Value: integer);
begin
  if (Value>0) then begin
    Tree.Enabled := FALSE;
    Q.Close;
    Q.Transaction := trRead;
    Q.SQl.text := 'select NOMER_DOG, DATE_START, DATE_END, DOG_TYPE, IS_DOP_DOG, DESCRIPTION, IS_ACCEPTED, coalesce(IS_DATE_NOLIMIT, 0) IS_DATE_NOLIMIT, '#10+
                  'WINTER_DATE, SUMMER_DATE, WINTER_DAYS_REMIND, SUMMER_DAYS_REMIND from DOCUMENTS_DOG where ID=:ID';
    Q.ParamByName('ID').AsInteger := Value;
    Q.ExecQuery;
    if not Q.EOF then begin
      NOMER_DOG.Text := Q.FieldByname('NOMER_DOG').AsString;
      DATE_START.EditValue := Q.FieldByname('DATE_START').AsString;
      DATE_END.EditValue := Q.FieldByname('DATE_END').AsString;
      TYPE_DOG.EditValue := Q.FieldByname('DOG_TYPE').AsInteger;
      IS_DOP_DOG.EditValue := Q.FieldByname('IS_DOP_DOG').AsBoolean;
      IS_ACCEPTED.EditValue := Q.FieldByname('IS_ACCEPTED').AsBoolean;
      WINTER_DATE.EditValue := Q.FieldByname('WINTER_DATE').AsString;
      SUMMER_DATE.EditValue := Q.FieldByname('SUMMER_DATE').AsString;
      WINTER_DAYS.EditValue := Q.FieldByname('WINTER_DAYS_REMIND').AsInteger;
      SUMMER_DAYS.EditValue := Q.FieldByname('SUMMER_DAYS_REMIND').AsInteger;
      DATE_NO_LIMIT.Checked := Q.FieldByname('IS_DATE_NOLIMIT').AsInteger=1;
    end;
    Q.Close;
  end;
  FID := Value;
end;

procedure TfmDogUpload.SetReadOnly(const Value: boolean);
var
  _f : boolean;
begin
  DATE_NO_LIMIT.Properties.ReadOnly := FALSE;
  _f := not(User.isAdmin or User.isDirector or User.isSysAdmin);

  NOMER_DOG.Properties.ReadOnly := Value and _f;
  TYPE_DOG.Properties.ReadOnly := Value and _f;
  IS_DOP_DOG.Properties.ReadOnly := Value and _f;
  DATE_START.Properties.ReadOnly := Value and _f;
  DATE_END.Properties.ReadOnly := Value and _f;
  cbREMIND.Properties.ReadOnly := Value and _f;
  DAYS.Properties.ReadOnly := Value and _f;
  SUMMER_DATE.Properties.ReadOnly := Value and _f;
  SUMMER_REMIND.Properties.ReadOnly := Value and _f;
  SUMMER_DAYS.Properties.ReadOnly := Value and _f;
  WINTER_DATE.Properties.ReadOnly := Value and _f;
  WINTER_REMIND.Properties.ReadOnly := Value and _f;
  WINTER_DAYS.Properties.ReadOnly := Value and _f;
  Description.Properties.ReadOnly := Value and _f;
  IS_ACCEPTED.Properties.ReadOnly := Value and _f;

  FReadOnly := Value;
end;

procedure TfmDogUpload.SUMMER_DATEPropertiesChange(Sender: TObject);
begin
  inherited;
  SUMMER_REMIND.Enabled := SUMMER_DATE.EditingText<>'';
  if not SUMMER_REMIND.Enabled then
    SUMMER_REMIND.Checked := false;
  WINTER_REMIND.Enabled := WINTER_DATE.EditingText<>'';
  if not WINTER_REMIND.Enabled then
    WINTER_REMIND.Checked := false;
end;

procedure TfmDogUpload.SUMMER_REMINDClick(Sender: TObject);
begin
  inherited;
  SUMMER_DAYS.Visible := SUMMER_REMIND.Checked;
  labelSUMMER.Visible := SUMMER_REMIND.Checked;
  WINTER_DAYS.Visible := WINTER_REMIND.Checked;
  labelWINTER.Visible := WINTER_REMIND.Checked;

end;

procedure TfmDogUpload.TreeChange(Sender: TObject; Node: TTreeNode);
begin
  inherited;
  CheckFile(Tree.AbsolutePath);
end;

end.
