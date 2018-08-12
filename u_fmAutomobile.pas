unit u_fmAutomobile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox, cxTextEdit,
  cxImageComboBox, cxCheckBox, dxBarBuiltInMenu, FIBDataSet, pFIBDataSet,
  cxSplitter, u_frameAutoServiceReestr, u_frameDocuments, u_frameJournal, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, FIBDatabase, pFIBDatabase;

type
  TfmAutomobile = class(TfmMDIChild)
    bbNew: TdxBarButton;
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    bbDelete: TdxBarButton;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1GOS_NOMER: TcxGridDBColumn;
    cxGrid1DBTableView1MODEL_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1VIN: TcxGridDBColumn;
    cxGrid1DBTableView1MAIN_DRIVER: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCTION_ID: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    bbEdit: TdxBarButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1FUEL_TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1IS_ACTIVE: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1GPS_ID: TcxGridDBColumn;
    cxGrid1DBTableView1PTS: TcxGridDBColumn;
    cxGrid1DBTableView1STS: TcxGridDBColumn;
    Pages: TcxPageControl;
    cxSplitter1: TcxSplitter;
    tabJournal: TcxTabSheet;
    tabDocuments: TcxTabSheet;
    frameJournal: TframeJournal;
    frameDocuments: TframeDocuments;
    tabService: TcxTabSheet;
    frameAutoServiceReestr: TframeAutoServiceReestr;
    cxGrid1DBTableView1IN_SERVICE: TcxGridDBColumn;
    bbReportService: TdxBarButton;
    cxGrid1DBTableView1ORGANIZATION_ID: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
    procedure bbNewClick(Sender: TObject);
    procedure dsDATADataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure frameDocumentsbbAddClick(Sender: TObject);
    procedure tabServiceEnter(Sender: TObject);
    procedure tabDocumentsEnter(Sender: TObject);
    procedure tabJournalEnter(Sender: TObject);
    procedure bbReportServiceClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetDataChanged(const Value: boolean); override;
  end;

var
  fmAutomobile: TfmAutomobile;

implementation

uses u_DM, u_fmAutoEdit, u_fmDocumentUpload;

{$R *.dfm}

procedure TfmAutomobile.bbEditClick(Sender: TObject);
begin
  inherited;
  fmAutoEdit := TfmAutoEdit.Create(Self);
  try
    fmAutoEdit.ID := DATA.FieldByname('ID').AsInteger;
    if fmAutoEdit.ShowModal = mrOK then
      bbRefresh.Click();
  finally
  end;
end;

procedure TfmAutomobile.bbNewClick(Sender: TObject);
begin
  inherited;
  DATA.DisableControls;
  fmAutoEdit := TfmAutoEdit.Create(Self);
  try
    if fmAutoEdit.ShowModal = mrOK then
    DATA.Close;
    DATA.Open;
    if not Data.Locate('ID', fmAutoEdit.ID, []) then
      DATA.First;
  finally
    DATA.EnableControls;
  end;
end;

procedure TfmAutomobile.bbRefreshClick(Sender: TObject);
begin
  inherited;
  DATA.ReopenLocate('ID');
end;

procedure TfmAutomobile.bbReportServiceClick(Sender: TObject);
begin
  inherited;
  DM.LoadReport('AUTO_STO');
end;

procedure TfmAutomobile.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  bbEdit.Click;
end;

procedure TfmAutomobile.dsDATADataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not Data.EOF then begin
      frameJournal.AutoID := DATA.FBN('ID').Value;
      frameDocuments.AutomobileID := DATA.FBN('ID').Value;
      frameAutoServiceReestr.AutoID:= DATA.FBN('ID').Value;
      frameDocuments.bbRefresh.Click();
  end else begin
      frameJournal.AutoID := 0;
      frameDocuments.AutomobileID := 0;
      frameAutoServiceReestr.AutoID:= 0;
  end;
end;

procedure TfmAutomobile.FormCreate(Sender: TObject);
begin
  inherited;
  Pages.ActivePage := tabJournal;
end;

procedure TfmAutomobile.FormShow(Sender: TObject);
begin
  inherited;
  bbRefresh.Click;
end;

procedure TfmAutomobile.frameDocumentsbbAddClick(Sender: TObject);
begin
  inherited;
  fmDocumentUpload := TfmDocumentUpload.Create(Application);
  try
    fmDocumentUpload.AutomobileID := DATA.FBN('ID').Value;
    if fmDocumentUpload.ShowModal = mrOK then begin
      try
        frameDocuments.Documents.DisableControls;
        frameDocuments.Documents.CloseOpen(true);
        if not frameDocuments.Documents.Locate('ID', fmDocumentUpload.ID, []) then
          frameDocuments.Documents.First;
      finally
        frameDocuments.Documents.EnableControls;
      end;
    end;
  finally
    FreeAndNil(fmDocumentUpload);
  end;
end;

procedure TfmAutomobile.SetDataChanged(const Value: boolean);
begin
  inherited;
end;

procedure TfmAutomobile.tabDocumentsEnter(Sender: TObject);
begin
  inherited;
  frameDocuments.bbRefresh.Click();
end;

procedure TfmAutomobile.tabJournalEnter(Sender: TObject);
begin
  inherited;
  frameJournal.bbRefresh.Click();
end;

procedure TfmAutomobile.tabServiceEnter(Sender: TObject);
begin
  inherited;
  frameAutoServiceReestr.bbRefresh.Click();
end;

end.
