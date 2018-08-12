unit u_fmDocInOutEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_fmModal, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxLabel,
  cxPC, dxBar, cxClasses, FIBDatabase, pFIBDatabase, cxButtonEdit, cxCalendar,
  Data.DB, FIBDataSet, pFIBDataSet, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cxDBExtLookupComboBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, dxTokenEdit, Vcl.ComCtrls, cxListView, FIBQuery, pFIBQuery,
  cxGridLevel, cxCurrencyEdit, cxGroupBox;

type
  TfmDocInOutEdit = class(TfmModal)
    Tabs: TcxTabControl;
    cxLabel1: TcxLabel;
    ORGANIZATION: TcxDBLookupComboBox;
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    cxLabel2: TcxLabel;
    DOC_DATE: TcxDBDateEdit;
    cxLabel3: TcxLabel;
    DOC_NUM: TcxDBButtonEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    REQUEST: TcxDBExtLookupComboBox;
    CONTRAGENT: TcxDBExtLookupComboBox;
    DESCRIPTION: TcxDBMemo;
    GridViewRepository: TcxGridViewRepository;
    GridViewRepositoryRequestList: TcxGridDBTableView;
    GridViewRepositoryRequestListID: TcxGridDBColumn;
    GridViewRepositoryRequestListREQUEST_DT: TcxGridDBColumn;
    GridViewRepositoryRequestListNAME: TcxGridDBColumn;
    GridViewRepositoryRequestListPHONE: TcxGridDBColumn;
    GridViewRepositoryRequestListSTATUS: TcxGridDBColumn;
    GridViewRepositoryContragents: TcxGridDBTableView;
    GridViewRepositoryContragentsID: TcxGridDBColumn;
    GridViewRepositoryContragentsNAME: TcxGridDBColumn;
    GridViewRepositoryContragentsINN: TcxGridDBColumn;
    REF_REQUEST: TpFIBDataSet;
    dsREF_REQUEST: TDataSource;
    CONTRAGENTS: TpFIBDataSet;
    dsCONTRAGENTS: TDataSource;
    cxLabel7: TcxLabel;
    DOC_TYPE: TcxDBImageComboBox;
    QW: TpFIBQuery;
    trW: TpFIBTransaction;
    bbAddFile: TdxBarButton;
    OD: TFileOpenDialog;
    qFile: TpFIBQuery;
    FILES: TpFIBDataSet;
    dsFiles: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1FILENAME: TcxGridDBColumn;
    cxGrid1DBTableView1FILESIZE: TcxGridDBColumn;
    cxGrid1DBTableView1EXT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    bbView: TdxBarButton;
    procedure TabsChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure dsDATADataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabsChanging(Sender: TObject; var AllowChange: Boolean);
    procedure DOC_NUMPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bbAddFileClick(Sender: TObject);
    procedure dsFilesDataChange(Sender: TObject; Field: TField);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure bbViewClick(Sender: TObject);
  private
    FID: integer;
    procedure SetID(const Value: integer);
    { Private declarations }
  public
    property ID: integer read FID write SetID default 0;
    procedure New;
    procedure SetDocNum();
    procedure GetFiles();
  end;

var
  fmDocInOutEdit: TfmDocInOutEdit;

implementation
uses U_DM;

{$R *.dfm}

procedure TfmDocInOutEdit.bbAddFileClick(Sender: TObject);
var
  _i : integer;
  FName, Ext : string;
begin
  inherited;
  OD.DefaultFolder := DM.ReadIniString('APPLICATION', 'DOCUMENTS_DIRECTOTY_PATH', '');
  if OD.Execute then begin
    Wait(1);
    try
      qFile.Close;
      qFile.SQL.Text := 'insert into DOCUMENTS(CONTRAGENT_ID, DOCUMENT_TYPE, DESCRIPTION, FILENAME, EXT, FILESIZE, DATA, COMPRESSED, REQUEST_ID, DOC_IN_OUT) '+
        'values (:CONTRAGENT_ID, :DOCUMENT_TYPE, ''Корреспонденция'', :FILENAME, :Ext, :FILESIZE, :DATA, 0, :REQUEST_ID, :DOC_IN_OUT)';
      qFile.Prepare;
      qFile.ParamByName('CONTRAGENT_ID').Value := DATA.FBN('CONTRAGENT_ID').Value;
      qFile.ParamByName('REQUEST_ID').Value := DATA.FBN('REQUEST_ID').Value;
      qFile.ParamByName('DOC_IN_OUT').Value := DATA.FBN('ID').Value;
      qFile.ParamByName('CONTRAGENT_ID').Value := DATA.FBN('CONTRAGENT_ID').Value;
      if Tabs.TabIndex=0 then
        qFile.ParamByName('DOCUMENT_TYPE').Value := 183
      else
        qFile.ParamByName('DOCUMENT_TYPE').Value := 184;

      for _i := 0 to OD.Files.Count-1 do begin
        FName := OD.Files[_i];
        qFile.ParamByName('DATA').LoadFromFile(FName);
        qFile.ParamByName('FILENAME').AsString := ExtractFileName(FName);
        Ext := copy(ExtractFileExt(FName), 2, 255);
        qFile.ParamByName('EXT').AsString := UpperCase(Ext);
        qFile.ExecQuery;
      end;
      qFile.Close;
      DataChanged := True;
      DM.WriteIniString('APPLICATION', 'DOCUMENTS_DIRECTOTY_PATH', ExtractFilePath(FNAME));
    finally
      GetFiles();
      Wait(0);
    end;
  end;
end;

procedure TfmDocInOutEdit.bbRefreshClick(Sender: TObject);
begin
  inherited;
  if ID>0 then
    ID := ID;
end;

procedure TfmDocInOutEdit.bbSaveClick(Sender: TObject);
begin
  inherited;
  if DATA.FBN('DOC_TYPE').Value=NULL  then begin
    MessageBox(0, 'Не указан вид документа', 'Ошибка', MB_ICONSTOP or MB_OK);
    ActiveControl := DOC_TYPE;
    Abort;
  end;

  if DATA.FBN('DOC_NUM').Value=NULL then
    DOC_NUMPropertiesButtonClick(Sender, 0);
  if DataChanged then begin
    if DATA.State in [dsEdit, dsInsert] then
      DATA.Post;
    if DATA.UpdateTransaction.InTransaction then
      DATA.UpdateTransaction.CommitRetaining;
  end;
  FID := DATA.FBN('ID').Value;
  DATA.Refresh;
  DataChanged := False;
end;

procedure TfmDocInOutEdit.bbViewClick(Sender: TObject);
begin
  inherited;
  DM.ViewDoc(Files.FBN('ID').Value);
end;

procedure TfmDocInOutEdit.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  bbView.Click();
end;

procedure TfmDocInOutEdit.DOC_NUMPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SetDocNum();
  if DataChanged then
    bbSave.Click();
end;

procedure TfmDocInOutEdit.dsDATADataChange(Sender: TObject; Field: TField);
begin
  inherited;
  bbAddFile.Enabled := (DATA.Active and (DATA.FBN('ID').Value<>NULL));
  DOC_NUM.Enabled := (DATA.Active and (DATA.FBN('ORGANIZATION_ID').Value<>NULL));
  ORGANIZATION.Enabled := (DATA.Active and (DATA.FBN('DOC_NUM').Value=NULL));
  REQUEST.Enabled := (DATA.Active and (DATA.FBN('CONTRAGENT_ID').Value=NULL));
  CONTRAGENT.Enabled := (DATA.Active and (DATA.FBN('REQUEST_ID').Value=NULL));
  DataChanged := True;
end;

procedure TfmDocInOutEdit.dsFilesDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  bbView.Enabled := not Files.isEmpty;
end;

procedure TfmDocInOutEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if DATA.UpdateTransaction.InTransaction then
    DATA.UpdateTransaction.Rollback;

end;

procedure TfmDocInOutEdit.FormCreate(Sender: TObject);
begin
  inherited;
  REF_REQUEST.Open;
  CONTRAGENTS.Open;
  TabsChange(Self);
end;

procedure TfmDocInOutEdit.GetFiles;
begin
  Files.Close;
  if (DATA.Active and (DATA.FBN('ID').Value<>NULL)) then begin
    Files.ParamByName('PID').Value := DATA.FBN('ID').Value;
    Files.Open;
  end;
end;

procedure TfmDocInOutEdit.New;
begin
  DATA.Open;
  DATA.Append;
  DATA.Post;
  DataChanged := True;
end;

procedure TfmDocInOutEdit.SetDocNum();
var
  N : Integer;
begin
  if DATA.FBN('ORGANIZATION_ID').AsInteger=0 then
    exit;

  QW.Close;
  QW.SQL.Text := 'select DOC_N from SP_GET_DOC_IN_OUT_NUM(:OID, :IS_OUT)';
  QW.ParamByName('OID').Value := DATA.FBN('ORGANIZATION_ID').Value;
  QW.ParamByName('IS_OUT').Value := Tabs.TabIndex;
  try
    QW.ExecQuery;
    DATA.Edit;
    DATA.FBN('DOC_NUM').Value := QW.FieldByName('DOC_N').Value;
    DATA.Post;
  finally
    QW.Transaction.Commit;
  end;

end;

procedure TfmDocInOutEdit.SetID(const Value: integer);
begin
  DATA.Close;
  DATA.MainWhereClause := 'D.ID='+IntToStr(Value);
  DATA.Open;
  FID := Value;
  GetFiles;
  DataChanged := False;
end;

procedure TfmDocInOutEdit.TabsChange(Sender: TObject);
begin
  inherited;
  if Tabs.TabIndex=0 then
    DM.LoadEditRepoImageCombo(DOC_TYPE.Properties, 183)
  else
    DM.LoadEditRepoImageCombo(DOC_TYPE.Properties, 184);
end;

procedure TfmDocInOutEdit.TabsChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  if self.Visible then
    AllowChange := False;
end;

end.
