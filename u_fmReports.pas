unit u_fmReports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, DB, FIBDataSet, pFIBDataSet, u_DM,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, FIBDatabase, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBarExtItems,
  pFIBDatabase;

type
  TfmReports = class(TfmMDIChild)
    REPORTS: TpFIBDataSet;
    dsREPORTS: TDataSource;
    bbEdit: TdxBarButton;
    bbNew: TdxBarButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1BODY: TcxGridDBColumn;
    cxGrid1DBTableView1CREATED_BY: TcxGridDBColumn;
    cxGrid1DBTableView1CREATED_DT: TcxGridDBColumn;
    cxGrid1DBTableView1MODIFY_BY: TcxGridDBColumn;
    cxGrid1DBTableView1MODIFY_DT: TcxGridDBColumn;
    cxGrid1DBTableView1IS_SYSTEM: TcxGridDBColumn;
    bbSys: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure bbNewClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
    procedure bbSysClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReports: TfmReports;

implementation

{$R *.dfm}

procedure TfmReports.bbEditClick(Sender: TObject);
begin
  inherited;
  try
    if not DM.LoadReport(Reports.FieldByName('NAME').AsString, False) then
      Abort;
    DM.Report.FileName:=Reports.FieldByname('NAME').AsString;
    Reports.DisableControls;
    DM.Report.DesignReport();
  finally
    Reports.ReopenLocate('ID');
    Reports.EnableControls;
  end;

end;

procedure TfmReports.bbNewClick(Sender: TObject);
begin
  inherited;
  try
    DM.Report.Clear;
    DM.Report.FileName:='';
    REPORTS.DisableControls;
    DM.Report.DesignReport();
  finally
    REPORTS.CloseOpen(false);
    REPORTS.EnableControls;
  end;
end;

procedure TfmReports.bbRefreshClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  Wait(1);
  REPORTS.DisableControls;
  try
    Reports.Close;
    if not Reports.IsEmpty then
      _id := reports.FBN('ID').Value
    else
      _id := 0;
    if not bbSys.Down then
      Reports.MainWhereClause := ' coalesce(IS_SYSTEM, 0)=0'
    else
      Reports.MainWhereClause := '';

    REPORTS.Open;
    if _id>0 then begin
      if not Reports.Locate('ID', _id, []) then
        Reports.First;

    end;
  finally
    REPORTS.EnableControls;
    Wait(0);
  end;
end;

procedure TfmReports.bbSysClick(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

procedure TfmReports.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if not Reports.isEmpty then
    bbEdit.Click;

end;

procedure TfmReports.FormCreate(Sender: TObject);
begin
  inherited;
  bbRefresh.Click;
end;

end.
