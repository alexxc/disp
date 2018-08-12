unit u_fmActTemplates;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_fmMDIChild, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, FIBDataSet,
  pFIBDataSet, dxBar, dxBarExtItems, cxClasses, FIBDatabase, pFIBDatabase;

type
  TfmActTemplates = class(TfmMDIChild)
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    bbOnly: TdxBarButton;
    cxGrid1DBTableView1IS_TEMPLATE_EXISTS: TcxGridDBColumn;
    bbEditTemplate: TdxBarButton;
    cxGrid1DBTableView1ACT_TEMPLATE_ID: TcxGridDBColumn;
    cxGrid1DBTableView1INVOICE_ID: TcxGridDBColumn;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbEditTemplateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbOnlyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmActTemplates: TfmActTemplates;

implementation
uses U_DM, u_fmContragentEdit;

{$R *.dfm}

procedure TfmActTemplates.bbEditTemplateClick(Sender: TObject);
begin
  inherited;
  fmContragentEdit := TfmContragentEdit.Create(self);
  try
    fmContragentEdit.ID := DATA.FBN('ID').Value;
    fmContragentEdit.btnACT_TEMPLATE.Click();
  finally
    bbRefresh.Click();
    FreeAndNil(fmContragentEdit);
  end;
end;

procedure TfmActTemplates.bbOnlyClick(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

procedure TfmActTemplates.bbRefreshClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  Wait(1);
  try
    if not DATA.isEmpty then
      _id := DATA.FBN('ID').Value
    else
      _ID := 0;

    DATA.Close;
    DATA.MainWhereClause := 'C.IS_ACTIVE=1 and c.IS_FOLDER=0 ';
    if bbOnly.Down then begin
      Data.MainWhereClause := Data.MainWhereClause + ' and c.ACT_TEMPLATE_ID is not null';
    end;
    DATA.Open;
    if _id>0 then begin
      if not DATA.Locate('ID', _id, []) then
        DATA.First;
    end;
  finally
    Wait(0);
  end;
end;

procedure TfmActTemplates.FormShow(Sender: TObject);
begin
  inherited;
   bbRefresh.Click();
end;

end.
