unit u_fmJournal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, FIBDataSet, pFIBDataSet,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxMemo, cxImageComboBox, cxCalendar, cxTextEdit,
  dxBarExtItems,
  DateUtils, cxNavigator, FIBDatabase, pFIBDatabase,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmJournal = class(TfmMDIChild)
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    GridDBTableView1ID: TcxGridDBColumn;
    GridDBTableView1USER_ID: TcxGridDBColumn;
    GridDBTableView1RECORD_TYPE: TcxGridDBColumn;
    GridDBTableView1MESSAGE: TcxGridDBColumn;
    GridDBTableView1IS_SYSTEM: TcxGridDBColumn;
    GridDBTableView1CONTROL_DATE: TcxGridDBColumn;
    GridDBTableView1CREATED_DT: TcxGridDBColumn;
    GridDBTableView1COMPLETE_DT: TcxGridDBColumn;
    GridDBTableView1CONTRAGENT_NAME: TcxGridDBColumn;
    dxBarSubItem1: TdxBarSubItem;
    bbPeriod1: TdxBarButton;
    bbPeriod2: TdxBarButton;
    bbPeriod3: TdxBarButton;
    bbPeriod4: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    bbShowSystem: TdxBarButton;
    GridDBTableView1USER_LIST: TcxGridDBColumn;
    bbExport: TdxBarButton;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbPeriod1Click(Sender: TObject);
    procedure bbDateStartChange(Sender: TObject);
    procedure bbShowSystemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmJournal: TfmJournal;

implementation
uses u_DM;
{$R *.dfm}

procedure TfmJournal.bbDateStartChange(Sender: TObject);
begin
  inherited;
  if BM.LockUpdate then
    exit;
  bbRefresh.Click();
end;

procedure TfmJournal.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(GRID);
end;

procedure TfmJournal.bbPeriod1Click(Sender: TObject);
var
  DStart : TDate;
  DEnd : TDate;
  D, M, y : word;
begin
  inherited;
  BM.LockUpdate := true;
  try
    DStart := Date();
    DEnd := Date();
    if (TdxBarButton(Sender).Tag = 1) then begin  // Сегодня
    end else if (TdxBarButton(Sender).Tag = 2) then begin  // 7 дней
      DStart := IncDay(Date(), -7);
    end else if (TdxBarButton(Sender).Tag = 3) then begin  // Месяц
      Decodedate(Date, Y, M, D);
      DStart := EncodeDate(Y, M, 1);
      DEnd := EncodeDate(Y, M, DaysInMonth(Date));
    end else if (TdxBarButton(Sender).Tag = 4) then begin  // Год
      Decodedate(Date, Y, M, D);
      DStart := EncodeDate(Y, 1, 1);
      DEnd := EncodeDate(Y, 12, 31);
    end;

    bbDateStart.Date := DStart;
    bbdateEnd.Date := DEnd;
  finally
    BM.LockUpdate := false;
    bbRefresh.Click();
  end;
end;

procedure TfmJournal.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  DATA.DisableControls;
  DATA.Close;
  try
    if bbShowSystem.Down then
      DATA.ParamByName('IS_SYSTEM').AsInteger := 1
    else
      DATA.ParamByName('IS_SYSTEM').AsInteger := 0;
    if (bbDateStart.Text<>'') then
      DATA.ParamByName('DATE_START').AsDate := bbDateStart.Date
    else
      DATA.ParamByName('DATE_START').Value := null;
    if (bbdateEnd.Text<>'') then
      DATA.ParamByName('DATE_END').AsDate := bbdateEnd.Date
    else
      DATA.ParamByName('DATE_END').Value := null;

    DATA.Open;
  finally
    DATA.EnableControls;
    Wait(0);
  end;
end;

procedure TfmJournal.bbShowSystemClick(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

procedure TfmJournal.FormShow(Sender: TObject);
begin
  inherited;
  bbPeriod1.Click;
end;

end.
