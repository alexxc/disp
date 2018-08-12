unit u_fmDebitorReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxTextEdit, cxCurrencyEdit, cxImageComboBox, cxCheckBox,
  dxBarBuiltInMenu, FIBDataSet, pFIBDataSet, cxSplitter, u_frameJournal, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxBar, FIBDatabase, pFIBDatabase,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarExtItems;

type
  TfmDebitorReport = class(TfmMDIChild)
    dsDATA: TDataSource;
    DATA: TpFIBDataSet;
    GridView: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    GridViewCONTRAGENT_NAME: TcxGridDBColumn;
    GridViewMANAGER_NAME: TcxGridDBColumn;
    GridViewAMOUNT: TcxGridDBColumn;
    GridViewAMOUNT0: TcxGridDBColumn;
    GridViewAMOUNT1: TcxGridDBColumn;
    GridViewAMOUNT2: TcxGridDBColumn;
    GridViewAMOUNT3: TcxGridDBColumn;
    GridViewAMOUNT4: TcxGridDBColumn;
    GridViewAMOUNT5: TcxGridDBColumn;
    GridViewAMOUNT6: TcxGridDBColumn;
    GridViewAMOUNT_OLD: TcxGridDBColumn;
    bbExport: TdxBarButton;
    GridViewORGANIZATION_NAME: TcxGridDBColumn;
    GridViewPAYMENT_TYPE: TcxGridDBColumn;
    Pages: TcxPageControl;
    cxSplitter1: TcxSplitter;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    DOCS: TpFIBDataSet;
    dsDOCS: TDataSource;
    GridDocuments: TcxGrid;
    GridDocumentsDBTableView1: TcxGridDBTableView;
    GridDocumentsDBTableView1STATUS: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_DATE: TcxGridDBColumn;
    GridDocumentsDBTableView1DELIVERY_DATE: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_NUM: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_TYPE: TcxGridDBColumn;
    GridDocumentsDBTableView1AMOUNT_IN: TcxGridDBColumn;
    GridDocumentsDBTableView1AMOUNT_OUT: TcxGridDBColumn;
    GridDocumentsDBTableView1AMOUNT_DOLG: TcxGridDBColumn;
    GridDocumentsDBTableView1DESCRIPTION: TcxGridDBColumn;
    GridDocumentsDBTableView1IN_CONTROL: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_DESCRIPTION: TcxGridDBColumn;
    GridDocumentsLevel1: TcxGridLevel;
    frameJournal: TframeJournal;
    GridViewDEBTOR_TYPE: TcxGridDBColumn;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DATAAfterScroll(DataSet: TDataSet);
    procedure GridViewAMOUNT_OLDStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDebitorReport: TfmDebitorReport;

implementation
uses u_DM, FN;
{$R *.dfm}

procedure TfmDebitorReport.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(Grid);
end;

procedure TfmDebitorReport.bbRefreshClick(Sender: TObject);
var
  DD : TDate;
  D,M,Y : word;
begin
  inherited;
  Wait(1);
  try
    DATA.DisableControls;
    DATA.Close;
    DATA.Open;
    DD := date();
    DecodeDate(DD, Y, M, D); GridViewAMOUNT0.Caption := FN.Months_1[M]+' '+IntToStr(Y); DD := IncMonth(DD, -1);
    DecodeDate(DD, Y, M, D); GridViewAMOUNT1.Caption := FN.Months_1[M]+' '+IntToStr(Y); DD := IncMonth(DD, -1);
    DecodeDate(DD, Y, M, D); GridViewAMOUNT2.Caption := FN.Months_1[M]+' '+IntToStr(Y); DD := IncMonth(DD, -1);
    DecodeDate(DD, Y, M, D); GridViewAMOUNT3.Caption := FN.Months_1[M]+' '+IntToStr(Y); DD := IncMonth(DD, -1);
    DecodeDate(DD, Y, M, D); GridViewAMOUNT4.Caption := FN.Months_1[M]+' '+IntToStr(Y); DD := IncMonth(DD, -1);
    DecodeDate(DD, Y, M, D); GridViewAMOUNT5.Caption := FN.Months_1[M]+' '+IntToStr(Y); DD := IncMonth(DD, -1);
    DecodeDate(DD, Y, M, D); GridViewAMOUNT6.Caption := FN.Months_1[M]+' '+IntToStr(Y);

  finally
    DATA.EnableControls;
    Wait(0);
  end;
end;

procedure TfmDebitorReport.DATAAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if DATA.ControlsDisabled then
    exit;
  Wait(1);
  DOCS.Close;
  frameJournal.ContragentID := 0;
  try
    if (not DATA.IsEmpty) then begin
      DOCS.DisableControls;
      DOCS.ParamByName('CONTRAGENT_ID').Value := DATA.FBN('CONTRAGENT_ID').Value;
      DOCS.open;
      frameJournal.ContragentID := DATA.FBN('CONTRAGENT_ID').Value;
    end;
  finally
    DOCS.EnableControls;
    Wait(0);
  end;
end;

procedure TfmDebitorReport.FormShow(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

procedure TfmDebitorReport.GridViewAMOUNT_OLDStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if ARecord<>nil then begin
    if AItem<>nil then begin
      if (ARecord.Values[AItem.Index]<>null) then begin
        if (ARecord.Values[AItem.Index] <0) then begin
          AStyle := DM.cxStyleRed;
        end else begin
          if AItem.Index<>GridViewAMOUNT.Index then
            AStyle := DM.cxStyleNormal
          else
            AStyle := DM.cxStyleBold;
        end;
      end;
    end;
  end
end;

end.
