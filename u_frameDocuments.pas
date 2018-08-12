unit u_frameDocuments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DB, FIBDataSet, pFIBDataSet, dxBar, cxClasses, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxImageComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxTextEdit, cxCurrencyEdit, cxCalendar, cxNavigator,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, FIBDatabase, pFIBDatabase,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TframeDocuments = class(TFrame)
    Documents: TpFIBDataSet;
    dsDocuments: TDataSource;
    dockDocuments: TdxBarDockControl;
    BM: TdxBarManager;
    BMBar1: TdxBar;
    bbRefresh: TdxBarButton;
    bbAdd: TdxBarButton;
    bbAddScan: TdxBarButton;
    bbEdit: TdxBarButton;
    bbView: TdxBarButton;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid2DBTableView1FILESIZE: TcxGridDBColumn;
    cxGrid2DBTableView1DATA: TcxGridDBColumn;
    cxGrid2DBTableView1CREATED_BY_USER_ID: TcxGridDBColumn;
    cxGrid2DBTableView1CREATED_DT: TcxGridDBColumn;
    cxGrid2DBTableView1FILENAME: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1DOCUMENT_TYPE_NAME: TcxGridDBColumn;
    trDocuments: TpFIBTransaction;
    trDocumentsWrite: TpFIBTransaction;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbAddClick(Sender: TObject);
    procedure bbAddScanClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
    procedure dsDocumentsDataChange(Sender: TObject; Field: TField);
    procedure bbViewClick(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
  private
    FRequestID: integer;
    FContragentID: integer;
    FAutomobileID: integer;
    FTenderID: integer;
    FRouteCardID: integer;
    procedure SetAutomobileID(const Value: integer);
    procedure SetContragentID(const Value: integer);
    procedure SetRequestID(const Value: integer);
    procedure SetTenderID(const Value: integer);
    procedure SetRouteCardID(const Value: integer);
    { Private declarations }
  public
    property ContragentID : integer read FContragentID write SetContragentID default 0;
    property RequestID : integer read FRequestID write SetRequestID default 0;
    property AutomobileID : integer read FAutomobileID write SetAutomobileID default 0;
    property TenderID : integer read FTenderID write SetTenderID default 0;
    property RouteCardID : integer read FRouteCardID write SetRouteCardID default 0;
    procedure AfterConstruction; override;
  end;

implementation
uses u_DM, u_fmDocumentUpload, u_fmDogUpload;
{$R *.dfm}

procedure TframeDocuments.AfterConstruction;
begin
  inherited;
  if not (user.isAdmin or user.isOwner or user.isDirector) then begin
    bbEdit.Caption := 'Открыть реквизиты';
    bbEdit.Tag := 1;
  end;
  bbEdit.Enabled := false;
  bbView.Enabled := false;
end;

procedure TframeDocuments.bbAddClick(Sender: TObject);
begin
  fmDocumentUpload := TfmDocumentUpload.Create(Application);
  try
    fmDocumentUpload.ContragentID := ContragentID;
    fmDocumentUpload.RequestID := RequestID;
    fmDocumentUpload.TenderID := TenderID;
    fmDocumentUpload.RouteCardID := RouteCardID;
    if fmDocumentUpload.ShowModal = mrOK then begin

      try
        Documents.DisableControls;
        Documents.CloseOpen(true);
        if not Documents.Locate('ID', fmDocumentUpload.ID, []) then
          Documents.First;
      finally
        Documents.EnableControls;
      end;
    end;
  finally
    FreeAndNil(fmDocumentUpload);
  end;
end;

procedure TframeDocuments.bbAddScanClick(Sender: TObject);
begin
  fmDogUpload := TfmDogUpload.Create(Application);
  try
    fmDogUpload.ContragentID := ContragentID;
    if fmDogUpload.ShowModal = mrOK then begin
      try
        Documents.DisableControls;
        Documents.CloseOpen(true);
        if not Documents.Locate('ID', fmDogUpload.ID, []) then
          Documents.First;
      finally
        Documents.EnableControls;
      end;
    end;
  finally
    FreeAndNil(fmDogUpload);
  end;

end;

procedure TframeDocuments.bbEditClick(Sender: TObject);
begin
  fmDogUpload := TfmDogUpload.Create(Application);
  try
    fmDogUpload.ContragentID := ContragentID;
    fmDogUpload.ID := DOCUMENTS.FieldByName('ID').Value;
    if bbEdit.tag = 1 then
      fmDogUpload.isReadOnly := true;
    if fmDogUpload.ShowModal = mrOK then begin
      try
        Documents.DisableControls;
        Documents.CloseOpen(true);
        if not Documents.Locate('ID', fmDogUpload.ID, []) then
          Documents.First;
      finally
        Documents.EnableControls;
      end;
    end;
  finally
    FreeAndNil(fmDogUpload);
  end;
end;

procedure TframeDocuments.bbRefreshClick(Sender: TObject);
var
  _id : integer;
begin
  if not bbRefresh.Enabled then
    exit;
  if Documents.Active and not Documents.EOF then
    _id :=- Documents.FBN('ID').AsInteger
  else
    _id := 0;

  bbRefresh.Enabled := false;
  Wait(1);
  try
    Documents.DisableControls;
    Documents.Close;
    if ContragentID>0 then
      Documents.ParamByName('CONTRAGENT_ID').Value := ContragentID
    else
      Documents.ParamByName('CONTRAGENT_ID').Value := NULL;

    if RequestID>0 then
      Documents.ParamByName('REQUEST_ID').Value := RequestID
    else
      Documents.ParamByName('REQUEST_ID').Value := NULL;

    if AutomobileID>0 then
      Documents.ParamByName('AUTOMOBILE_ID').Value := AutomobileID
    else
      Documents.ParamByName('AUTOMOBILE_ID').Value := NULL;

    if RouteCardID>0 then
      Documents.ParamByName('DOC_ROUTE_CARD_ID').Value := RouteCardID
    else
      Documents.ParamByName('DOC_ROUTE_CARD_ID').Value := NULL;


    Documents.Open;
    if _id>0 then begin
      if not Documents.Locate('ID', _id, []) then
        Documents.First();
    end;
  finally
    Documents.EnableControls;
    bbRefresh.Enabled := true;
    Wait(0);
  end;
end;

procedure TframeDocuments.bbViewClick(Sender: TObject);
begin
  try
    DM.ViewDoc(Documents.FieldByName('ID').Value);
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TframeDocuments.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  if bbView.Enabled then
    bbView.Click();
end;

procedure TframeDocuments.dsDocumentsDataChange(Sender: TObject; Field: TField);
begin
  bbView.Enabled := not Documents.IsEmpty;
  bbEdit.Enabled := not Documents.IsEmpty and (Documents.FieldByName('DOCUMENT_TYPE').AsInteger = 2);
end;



procedure TframeDocuments.SetAutomobileID(const Value: integer);
begin
  FAutomobileID := Value;
  bbRefresh.Click();
end;

procedure TframeDocuments.SetContragentID(const Value: integer);
begin
  FContragentID := Value;
  bbRefresh.Click();
end;

procedure TframeDocuments.SetRequestID(const Value: integer);
begin
  FRequestID := Value;
  bbRefresh.Click();
end;

procedure TframeDocuments.SetRouteCardID(const Value: integer);
begin
  if Value>0 then
    bbAddScan.Visible := ivNever;
  FRouteCardID := Value;
end;

procedure TframeDocuments.SetTenderID(const Value: integer);
begin
  FTenderID := Value;
end;

end.
