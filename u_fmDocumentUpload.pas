unit u_fmDocumentUpload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmModal, dxBar, cxClasses, u_DM, FIBQuery, pFIBQuery, ComCtrls,
  ShlObj, cxShellCommon, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxShellTreeView, cxShellListView,
  cxSplitter, ExtCtrls, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxLabel, cxTreeView, FIBDatabase, pFIBDatabase, cxCustomListBox,
  cxCheckListBox;

type
  TfmDocumentUpload = class(TfmModal)
    QW: TpFIBQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel: TPanel;
    cxLabel1: TcxLabel;
    DocumentSection: TcxImageComboBox;
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
    cxGroupBox1: TcxGroupBox;
    UsersList: TcxCheckListBox;
    cxGroupBox2: TcxGroupBox;
    Tree: TcxShellTreeView;
    QR: TpFIBQuery;
    procedure FormShow(Sender: TObject);
    procedure TreeChange(Sender: TObject; Node: TTreeNode);
    procedure DocumentSectionPropertiesChange(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FContragentID: integer;
    FFileName: string;
    FFExt: string;
    FFullFileName: string;
    FID: integer;
    FFSize: Int64;
    FRequestID: integer;
    FAutomobileID: integer;
    FTenderID: integer;
    FRouteCardID: integer;
    procedure SetContragentID(const Value: integer);
    procedure SetRequestID(const Value: integer);
    { Private declarations }
    procedure SetContragentData;
    procedure SetAutomobileID(const Value: integer);
    procedure SetTenderID(const Value: integer);
    procedure SetRouteCardID(const Value: integer);
  public
    property ID : integer read FID write FID;
    property ContragentID : integer read FContragentID write SetContragentID default 0;
    property AutomobileID : integer read FAutomobileID write SetAutomobileID default 0;
    property RequestID : integer read FRequestID write SetRequestID default 0;
    property TenderID : integer read FTenderID write SetTenderID default 0;
    property RouteCardID : integer read FRouteCardID write SetRouteCardID default 0;
    property FullFileName : string read FFullFileName write FFullFileName;
    property FName : string read FFileName write FFileName;
    property FExt : string read FFExt write FFExt;
    property FSize: Int64 read FFSize write FFSize default 0;
    function CheckFile(AFileName:string) : boolean;
  end;

var
  fmDocumentUpload: TfmDocumentUpload;

implementation

uses u_fmMain;
{$R *.dfm}

procedure TfmDocumentUpload.bbSaveClick(Sender: TObject);
var
  MessageID : Integer;
  _s : string;
  _x : integer;
  item : TcxCheckListBoxItem;
begin
  inherited;
  try
    Wait(0);
    QW.Close;
    QW.SQL.Text:= 'insert into DOCUMENTS ';
    QW.SQL.Add('(CONTRAGENT_ID, REQUEST_ID, AUTOMOBILE_ID, DOC_ROUTE_CARD_ID, DOCUMENT_TYPE, DESCRIPTION, FILENAME, EXT, FILESIZE, STATUS, DATA) ');
    QW.SQL.ADD('values ');
    QW.SQL.Add('(:CONTRAGENT_ID, :REQUEST_ID, :AUTOMOBILE_ID, :DOC_ROUTE_CARD_ID, :DOCUMENT_TYPE, :DESCRIPTION, :FILENAME, :EXT, :FILESIZE, :STATUS, :DATA) ');
    QW.SQL.Add(' returning ID');

    if (ContragentID>0) then
      QW.ParamByName('CONTRAGENT_ID').AsInteger := ContragentID;
    if (RequestID>0) then
      QW.ParamByName('REQUEST_ID').AsInteger := RequestID;
    if (AutomobileID>0) then
      QW.ParamByName('AUTOMOBILE_ID').AsInteger := AutomobileID;
    if (RouteCardID>0) then
      QW.ParamByName('DOC_ROUTE_CARD_ID').AsInteger := RouteCardID;

    QW.ParamByName('DOCUMENT_TYPE').AsInteger := DocumentSection.EditValue;
    QW.ParamByName('DESCRIPTION').AsString := Description.Text;
    QW.ParamByName('FILENAME').AsString := FName;
    QW.ParamByName('FILESIZE').Value := FSize;
    QW.ParamByName('EXT').AsString := FExt;
    QW.ParamByName('STATUS').Value := 0;
    try
      QW.ParamByName('DATA').LoadFromFile(FullFileName);
      QW.ExecQuery;
      ID := QW.FieldByName('ID').Value;

      QW.Close;
      QW.SQL.text := 'insert into CONTRAGENT_JOURNAL(CONTRAGENT_ID, REQUEST_ID, AUTO_ID, RECORD_TYPE, MESSAGE, IS_REPORT, IS_SYSTEM) '+
      ' values (:CONTRAGENT_ID, :REQUEST_ID, :AUTO_ID, :RECORD_TYPE, :MESSAGE, 0, 1) returning id';

      _s := 'Загрузка документа  "'+FileName.Caption+'", раздел: '+DocumentSection.Properties.Items[DocumentSection.ItemIndex].Description;
      if (ContragentID>0) then begin
        QW.ParamByName('CONTRAGENT_ID').AsInteger := ContragentID;
      end else if (RequestID>0) then begin
        QW.ParamByName('REQUEST_ID').AsInteger := RequestID;
      end else if (AutomobileID>0) then begin
        QW.ParamByName('AUTO_ID').AsInteger := AutomobileID;
      end;
      if trim(Description.Text)<>'' then
        _s := _s + #10+Description.Text;
      QW.ParamByName('RECORD_TYPE').AsInteger := 7; // Прочее
      QW.ParamByName('MESSAGE').AsString := _s; // Прочее
      QW.ExecQuery;
      MessageID := QW.FieldByName('ID').Value;

      QW.Close;
      QW.SQL.text := 'insert into USER_MASSEGES(JOURNAL_ID, USER_ID) values (:JOURNAL_ID, :USER_ID)';
      QW.Prepare;
      for _x := 0 to UsersList.Items.Count-1 do begin
        Item := UsersList.Items[_x];
        if Item.Checked then begin
          QW.ParamByName('JOURNAL_ID').Value := MessageID;
          QW.ParamByName('USER_ID').Value := Item.tag;
          QW.ExecQuery;
        end;
      end;
      if QW.Transaction.inTransaction then
        QW.Transaction.Commit;

      DM.WriteIniString('APPLICATION', 'DOCUMENTS_DIRECTOTY_PATH', ExtractFilePath(Tree.AbsolutePath));
      ModalResult := mrOK;
    except
      on E:Exception do
        Showmessage(E.Message);
    end;

  finally
    Wait(1);
  end;
end;

function TfmDocumentUpload.CheckFile(AFileName:string): boolean;
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



end;

procedure TfmDocumentUpload.DocumentSectionPropertiesChange(Sender: TObject);
begin
  inherited;
  if DocumentSection.EditValue = 2 then begin
      Application.MessageBox('Сканы договоров прикладываются в специальной форме!', 'Внимание', MB_OK + MB_ICONSTOP);
      DocumentSection.EditValue := null;
  end;
  bbSave.Enabled := CheckFile(Tree.AbsolutePath) and (DocumentSection.EditValue<>null);
end;

procedure TfmDocumentUpload.FormCreate(Sender: TObject);
var
  item : TcxCheckListBoxItem;
begin
  inherited;
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

procedure TfmDocumentUpload.FormShow(Sender: TObject);
var
  _str : string;
begin
  inherited;
  if AutomobileID>0 then begin
    DM.LoadEditRepoImageCombo(DocumentSection.Properties, 76);
  end else if RequestID>0 then begin
    DM.LoadEditRepoImageCombo(DocumentSection.Properties, 127);
  end else if ContragentID>0 then begin
    DM.LoadEditRepoImageCombo(DocumentSection.Properties, 1);
  end else if RouteCardID>0 then begin
    DM.LoadEditRepoImageCombo(DocumentSection.Properties, 167);
  end;
  _str := DM.ReadIniString('APPLICATION', 'DOCUMENTS_DIRECTOTY_PATH', '');
  if (_str<>'') then
    Tree.AbsolutePath := _str;
end;

procedure TfmDocumentUpload.SetAutomobileID(const Value: integer);
begin
  FAutomobileID := Value;
end;

procedure TfmDocumentUpload.SetContragentID(const Value: integer);
begin
  FContragentID := Value;
  SetContragentData;
end;


procedure TfmDocumentUpload.SetContragentData;
var
  _text : string;
begin
  if (RequestID>0) then begin
    QR.Close;
    QR.SQL.Text := 'select R.ID, R.CONTRAGENT_ID, C.NAME from REQUEST R left join CONTRAGENTS C on C.ID=R.CONTRAGENT_ID where R.ID=:ID';
    QR.ParamByName('ID').Value := RequestID;
    QR.ExecQuery;
    if (not QR.EOF) then begin
      _text := 'Документ для заявки ' + IntToStr(RequestID);
      if QR.FieldByName('CONTRAGENT_ID').AsInteger>0 then begin
        FContragentID := QR.FieldByName('CONTRAGENT_ID').AsInteger;
        _text := _text + ', '+QR.FieldByName('NAME').AsString;
      end;
    end else
      raise Exception.Create('Заявка '+IntToStr(RequestID)+' не найдена');
  end  else if (ContragentID>0) then begin
    QR.Close;
    QR.SQL.Text := 'select id, name from CONTRAGENTS where id=:ID';
    QR.ParamByName('ID').value := ContragentID;
    QR.ExecQuery;
    if QR.EOF then
      raise Exception.Create('Контрагент с кодом '+IntToStr(ContragentID)+' не найден');
    _text := 'Загрузка документов для контрагента '+QR.FieldByname('NAME').AsString;
  end else if (AutomobileID>0) then begin
    _text := 'Прикрепление документов к карточке автомобиля';
  end else if (RouteCardID>0) then begin
    _text := 'Прикрепление документов к маршрутной карте';
  end;
  self.Caption := _text;
end;

procedure TfmDocumentUpload.SetRequestID(const Value: integer);
begin
  FRequestID := Value;
  SetContragentData;
end;

procedure TfmDocumentUpload.SetRouteCardID(const Value: integer);
begin
  FRouteCardID := Value;
end;

procedure TfmDocumentUpload.SetTenderID(const Value: integer);
begin
  FTenderID := Value;
end;

procedure TfmDocumentUpload.TreeChange(Sender: TObject; Node: TTreeNode);
begin
  inherited;
  bbSave.Enabled := CheckFile(Tree.AbsolutePath) and (DocumentSection.EditValue<>null);
end;

end.
