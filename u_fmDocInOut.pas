unit u_fmDocInOut;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_fmMDIChild, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  FIBDataSet, pFIBDataSet, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBar, cxClasses, FIBDatabase,
  pFIBDatabase, dxBarBuiltInMenu, cxPC, cxContainer, cxSplitter, cxGroupBox,
  cxCurrencyEdit, cxCalendar, cxTextEdit, dxBarExtItems;

type
  TfmDocInOut = class(TfmMDIChild)
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    Tabs: TcxTabControl;
    Grid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1DOC_DATE: TcxGridDBColumn;
    cxGridDBTableView1DOC_NUM: TcxGridDBColumn;
    cxGridDBTableView1DOC_TYPE: TcxGridDBColumn;
    cxGridDBTableView1NOTE: TcxGridDBColumn;
    cxGridDBTableView1CONTRAGENT_ID: TcxGridDBColumn;
    cxGridDBTableView1CONTRAGNT_NAME: TcxGridDBColumn;
    cxGridDBTableView1REQUEST_ID: TcxGridDBColumn;
    cxGridDBTableView1REQUEST_NAME: TcxGridDBColumn;
    cxGridDBTableView1DESCRIPTION: TcxGridDBColumn;
    bbAdd: TdxBarButton;
    bbEdit: TdxBarButton;
    gbInfo: TcxGroupBox;
    cxSplitter1: TcxSplitter;
    FILES: TpFIBDataSet;
    dsFiles: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1FILENAME: TcxGridDBColumn;
    cxGrid1DBTableView1FILESIZE: TcxGridDBColumn;
    cxGrid1DBTableView1EXT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGridDBTableView1FCOUNT: TcxGridDBColumn;
    bbView: TdxBarButton;
    procedure bbAddClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabsChange(Sender: TObject);
    procedure dsDATADataChange(Sender: TObject; Field: TField);
    procedure dsFilesDataChange(Sender: TObject; Field: TField);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure bbViewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDocInOut: TfmDocInOut;

implementation
uses U_DM, u_fmDocInOutEdit;
{$R *.dfm}

procedure TfmDocInOut.bbAddClick(Sender: TObject);
begin
  inherited;
  fmDocInOutEdit := TfmDocInOutEdit.Create(self);
  fmDocInOutEdit.Tabs.TabIndex := Tabs.TabIndex;
  fmDocInOutEdit.New;
  try
    fmDocInOutEdit.ShowModal;
  finally
    Data.DisableControls;
    Data.CloseOpen(TRUE);
    if not DATA.Locate('ID', fmDocInOutEdit.ID, []) then
      DATA.First;
    Data.EnableControls;

    FreeAndNil(fmDocInOutEdit);
  end;
end;

procedure TfmDocInOut.bbEditClick(Sender: TObject);
begin
  inherited;
  fmDocInOutEdit := TfmDocInOutEdit.Create(self);
  fmDocInOutEdit.Tabs.TabIndex := Tabs.TabIndex;
  fmDocInOutEdit.ID := DATA.FBN('ID').AsInteger;
  try
    fmDocInOutEdit.ShowModal;
  finally
    FreeAndNil(fmDocInOutEdit);
    DATA.Refresh;
  end;
end;

procedure TfmDocInOut.bbRefreshClick(Sender: TObject);
begin
  inherited;
  TabsChange(Sender);
  DATA.CloseOpen(TRUE);
end;

procedure TfmDocInOut.bbViewClick(Sender: TObject);
begin
  inherited;
  DM.ViewDoc(Files.FBN('ID').Value);
end;

procedure TfmDocInOut.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if bbView.Enabled then
    bbView.Click();

end;

procedure TfmDocInOut.dsDATADataChange(Sender: TObject; Field: TField);
begin
  inherited;
  Files.DisableControls;
  Files.Close;
  try
    if not DATA.isEmpty then begin
      Files.ParamByName('PID').Value := DATA.FBN('ID').Value;
      Files.Open;
    end;
  finally
    Files.EnableControls;
  end;

end;

procedure TfmDocInOut.dsFilesDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  bbView.Enabled  := NOT Files.isEmpty;
end;

procedure TfmDocInOut.FormCreate(Sender: TObject);
begin
  inherited;
  Tabs.TabIndex := 0;
end;

procedure TfmDocInOut.FormShow(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

procedure TfmDocInOut.TabsChange(Sender: TObject);
begin
  inherited;
  DATA.Filter := 'IS_OUT='+IntToStr(Tabs.TabIndex);
  DATA.Filtered := TRUE;

end;

end.
