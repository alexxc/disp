unit u_fmMATReestr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_DM, u_fmMDIChild, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FIBDataSet, pFIBDataSet, cxGridLevel,
  cxNavigator, cxCalendar, cxTextEdit,
  cxSplitter, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxBar, FIBDatabase, pFIBDatabase,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarExtItems;

type
  TfmMATReestr = class(TfmMDIChild)
    viewMat: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    bbExport: TdxBarButton;
    viewMatID: TcxGridDBColumn;
    viewMatDESCRIPTION: TcxGridDBColumn;
    viewMatWIDTH: TcxGridDBColumn;
    viewMatHEIGHT: TcxGridDBColumn;
    viewMatMAT_TYPE: TcxGridDBColumn;
    viewMatABBR: TcxGridDBColumn;
    viewMatQTY_OUT: TcxGridDBColumn;
    viewMatQTY_IN: TcxGridDBColumn;
    viewMatQTY: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    GridDocumentsDBTableView1: TcxGridDBTableView;
    GridDocumentsLevel1: TcxGridLevel;
    GridDocuments: TcxGrid;
    Documents: TpFIBDataSet;
    dsDocuments: TDataSource;
    GridDocumentsDBTableView1ID: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_DT: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_NUM: TcxGridDBColumn;
    GridDocumentsDBTableView1QTY_OUT: TcxGridDBColumn;
    GridDocumentsDBTableView1QTY_IN: TcxGridDBColumn;
    GridDocumentsDBTableView1QTY: TcxGridDBColumn;
    GridDocumentsDBTableView1CONTRAGENT_NAME: TcxGridDBColumn;
    GridDocumentsDBTableView1ADDRESS: TcxGridDBColumn;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
    procedure bbActiveOnlyClick(Sender: TObject);
    procedure DATAAfterScroll(DataSet: TDataSet);
    procedure viewMatStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure GridDocumentsDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
  public
    procedure ApplyRights; override;
  end;

var
  fmMATReestr: TfmMATReestr;

implementation

{$R *.dfm}

procedure TfmMATReestr.ApplyRights;
begin
  inherited;
  if (user.isManager or User.isHManager) then begin
    bbExport.Visible := ivNever;
  end;
end;

procedure TfmMATReestr.bbActiveOnlyClick(Sender: TObject);
begin
  inherited;
  bbrefresh.Click();
end;

procedure TfmMATReestr.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(Grid);
end;

procedure TfmMATReestr.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  Data.DisableControls;
  try
    DATA.Close;
    DATA.Open;
  finally
    Data.EnableControls;
    DATAAfterScroll(DATA);
    Wait(0);
  end;
end;

procedure TfmMATReestr.DATAAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if DATA.ControlsDisabled then
    exit;
  Documents.DisableControls;
  Wait(1);
  try
    Documents.Close;
    if (not Data.IsEmpty) then begin
      Documents.ParamByName('MAT_ID').Value := DATA.FieldByname('ID').Value;
    end else
      Documents.ParamByName('MAT_ID').Value := null;
    Documents.Open;
  finally
    Documents.EnableControls;
    Wait(0);
  end;
end;

procedure TfmMATReestr.FormShow(Sender: TObject);
begin
  inherited;
  bbrefresh.Click();
end;

procedure TfmMATReestr.GridDocumentsDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if (ARecord.ValueCount>0) and (ARecord.Values[GridDocumentsDBTableView1QTY.Index]<>null) and (ARecord.Values[GridDocumentsDBTableView1QTY.Index]<0) then
    AStyle := DM.cxStyleRed
  else
    AStyle := DM.cxStyleNormal;
end;

procedure TfmMATReestr.viewMatStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if (ARecord.ValueCount>0) and (ARecord.Values[viewMatQTY.Index]<>null) and (ARecord.Values[viewMatQTY.Index]<0) then
    AStyle := DM.cxStyleRed
  else
    AStyle := DM.cxStyleNormal;
end;

end.
