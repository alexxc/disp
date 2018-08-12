unit u_fmInvoiceReestr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, dxBarExtItems, u_DM, DB, FIBDataSet,
  pFIBDataSet, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCurrencyEdit, cxTextEdit, cxNavigator, FIBQuery,
  pFIBQuery, FIBDatabase, pFIBDatabase,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmInvoiceReestr = class(TfmMDIChild)
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    bbExport: TdxBarButton;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    GridDBTableView1ID: TcxGridDBColumn;
    GridDBTableView1INVOICE_DT: TcxGridDBColumn;
    GridDBTableView1INVOICE_NUM: TcxGridDBColumn;
    GridDBTableView1INVICE_AMOUNT: TcxGridDBColumn;
    GridDBTableView1CONTRAGENT_NAME: TcxGridDBColumn;
    GridDBTableView1ORGAINZATION_NAME: TcxGridDBColumn;
    GridDBTableView1AMOUNT_REMAIN: TcxGridDBColumn;
    GridDBTableView1MANAGER_NAME: TcxGridDBColumn;
    GridDBTableView1PAYMENT_TYPE: TcxGridDBColumn;
    GridDBTableView1IS_ACT_PRESENT: TcxGridDBColumn;
    bbAct: TdxBarButton;
    GridDBTableView1DETAIL_COUNT: TcxGridDBColumn;
    GridDBTableView1INVOICE_DESCRIPTION: TcxGridDBColumn;
    bbInvoiceGenetare: TdxBarButton;
    bbPrintInvoice: TdxBarButton;
    Invoice: TpFIBDataSet;
    GridDBTableView1DOVER_NAME: TcxGridDBColumn;
    dxBarSubItem1: TdxBarSubItem;
    bbAllClientInvoice: TdxBarButton;
    GridDBTableView1GROUP_NAME: TcxGridDBColumn;
    bbPrintInvoiceStamp: TdxBarButton;
    GridDBTableView1DELIVERY_DATE: TcxGridDBColumn;
    GridDBTableView1STATUS: TcxGridDBColumn;
    qR: TpFIBQuery;
    QW: TpFIBQuery;
    GridDBTableView1DESCRIPTION: TcxGridDBColumn;
    bbACT_FROM_TEMPLATE: TdxBarButton;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
    procedure GridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure dsDATADataChange(Sender: TObject; Field: TField);
    procedure bbActClick(Sender: TObject);
    procedure GridDBTableView1DblClick(Sender: TObject);
    procedure bbInvoiceGenetareClick(Sender: TObject);
    procedure bbPrintInvoiceClick(Sender: TObject);
    procedure bbAllClientInvoiceClick(Sender: TObject);
    procedure bbPrintInvoiceStampClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbACT_FROM_TEMPLATEClick(Sender: TObject);
  private
  public
    _sfCount : integer;
    procedure ApplyRights; override;
    procedure PrintPack(ID:integer; doClean:boolean = true; withStamp: boolean = false);
    procedure BatchPrint(WithStamp: boolean = false; doPrint: boolean = true);
  end;

var
  fmInvoiceReestr: TfmInvoiceReestr;

implementation

uses u_fmInvoiceGenerator, u_fmMain, u_fmProgress, cxProgressBar;

{$R *.dfm}

procedure TfmInvoiceReestr.ApplyRights;
begin
  inherited;
  if not (User.isOwner or user.isAdmin or User.isDirector or User.isAccount or (UpperCase(USER.LoginName)='NECHAEVA')) then begin
    bbExport.Visible := ivNever;
  end;

end;


procedure TfmInvoiceReestr.BatchPrint(WithStamp: boolean = false; doPrint: boolean = true);
var
  _x : integer;
  _id : integer;
  _is_first : boolean;
begin
  _is_first := true;
  Wait(1);
  Data.DisableControls;
  try
    if (GridDBTableView1.Controller.SelectedRecordCount>1) then begin
      fmProgress := TfmProgress.Create(self);
      fmProgress.Caption := 'Формирование пакета документов';
      fmProgress.ProgressBar.Properties.Max := GridDBTableView1.Controller.SelectedRecordCount;
      fmProgress.ProgressBar.Position := 0;
      fmProgress.ProgressBar.Properties.ShowTextStyle := cxtsText;
      fmProgress.Visible := true;
      Application.ProcessMessages;
      try
        for _x := 0 to GridDBTableView1.Controller.SelectedRecordCount - 1 do begin
          if not fmProgress.Visible then
            break;
          try
            _id := GridDBTableView1.Controller.SelectedRecords[_x].Values[GridDBTableView1ID.Index];
            PrintPack(_id, _is_first, WithStamp);
            fmProgress.ProgressBar.Position := fmProgress.ProgressBar.Position+1;
            fmProgress.ProgressBar.Properties.Text := 'Счет '+IntToStr(_x+1)+' из '+IntToStr(GridDBTableView1.Controller.SelectedRecordCount);
            _is_first := false;
          except
          end;
          Application.ProcessMessages;
        end;
      finally
        FreeAndNil(fmProgress);
      end;
    end else
      PrintPack(DATA.FBN('ID').AsInteger, true, WithStamp);
    DM.Report.FileName := 'Пакет документов';
    if doPrint then
      DM.Report.Print()
    else
      DM.Report.ShowPreparedReport();

  finally
    Data.EnableControls;
    Wait(0);
  end;
end;

procedure TfmInvoiceReestr.bbActClick(Sender: TObject);
begin
  inherited;
  DATA.DisableCOntrols;
    try
      QW.Close;
      QW.SQl.Text := 'update invoice set IS_ACT_PRESENT=:F where ID=:ID';
      QW.ParamByName('ID').Value := Data.FieldByName('ID').Value;
      if DATA.FieldByName('IS_ACT_PRESENT').Value then begin
        QW.ParamByName('F').Value := 0;
      end else begin
        QW.ParamByName('F').Value := 1;
      end;
      QW.ExecQuery;
      trWrite.Commit;
  finally
    DATA.Refresh;
    DATA.EnableControls;
  end;
end;

procedure TfmInvoiceReestr.bbACT_FROM_TEMPLATEClick(Sender: TObject);
var
  _MS : TMemoryStream;
begin
  inherited;
  _MS := TMemoryStream.Create();
  DM.qREPORT.Close;
  DM.qReport.SQL.Text := 'select BODY from REPORTS R where R.ID=:ID';
  DM.qReport.ParamByName('ID').Value := DATA.FBN('ACT_TEMPLATE_ID').Value;
  try
    DM.qReport.ExecQuery;
    if not DM.qReport.EOF then begin
      DM.qReport.FieldByName('BODY').SaveToStream(_MS);
      _MS.Position := 0;
      if _MS.Size>0 then begin
        DM.Report.LoadFromStream(_MS);
      end;
    end;
    DM.qREPORT.Close;
  finally
    FreeAndNil(_MS);
  end;
  DM.Report.Variables.Variables['ID'] := DATA.FBN('ID').Value;
  DM.Report.Variables.Variables['CONTRAGENT_ID'] := DATA.FBN('CONTRAGENT_ID').Value;
  DM.Report.FileName := 'Акта для контрагента';
  Dm.Report.ShowReport();
end;

procedure TfmInvoiceReestr.bbAllClientInvoiceClick(Sender: TObject);
var
  ID : integer;
  Contragent_ID : integer;
begin
  inherited;
  try
    Wait(1);
    DATA.DisableControls;
    ID := DATA.FBN('ID').AsInteger;
    Contragent_ID := DATA.FBN('CONTRAGENT_ID').Value;
    if bbAllClientInvoice.Down then begin
      bbAllClientInvoice.Caption := 'Все счета по контрагенту "'+DATA.FBN('CONTRAGENT_NAME').AsString+'"';
      DATA.Close;
      DATA.MainWhereClause := 'I.STATUS=2 and I.CONTRAGENT_ID=:CONTRAGENT_ID';
      DATA.ParamByName('CONTRAGENT_ID').Value := Contragent_ID;
    end else begin
      bbAllClientInvoice.Caption := 'Все счета по контрагенту';
      DATA.Close;
      DATA.MainWhereClause := 'I.STATUS=2 and I.DOC_DT between coalesce(cast(:DATE_START as T_DATE), ''01.07.2015'') and coalesce(cast(:DATE_END as T_DATE), current_date)';
      data.ParamByName('DATE_START').Value := dateStart;
      data.ParamByName('DATE_END').Value := dateEnd;
    end;
    DATA.Open;
    DATA.Locate('ID', ID, []);
  finally
    bbDateStart.Enabled := not bbAllClientInvoice.Down;
    bbDateEnd.Enabled := not bbAllClientInvoice.Down;
    DATA.EnableControls;
    Wait(0);
  end;
end;


procedure TfmInvoiceReestr.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(Grid);
end;

procedure TfmInvoiceReestr.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  Data.DisableControls;
  try
    data.Close;
    if not bbAllClientInvoice.Down then begin
      data.ParamByName('DATE_START').Value := DateStart;
      data.ParamByName('DATE_END').Value := DateEnd;
    end;
    Data.Open;
  finally
    Data.EnableControls;
    Wait(0);
  end;

end;

procedure TfmInvoiceReestr.dsDATADataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not DATA.EOF then begin
    bbACT_FROM_TEMPLATE.Enabled := DATA.FieldByName('ACT_TEMPLATE_PRESENT').AsInteger=1;
    bbAct.Enabled := true;
    if DATA.FieldByName('IS_ACT_PRESENT').Value then begin
      bbAct.Hint := 'Счёт закрыт оригиналом акта.'+#10+'Убрать признак?';
      bbAct.ImageIndex := 51;
    end else begin
      bbAct.Hint := 'Подтвердить наличие акта закрытия счёта?';
      bbAct.ImageIndex := -1;
    end;
  end else begin
    bbAct.Enabled := false;
    bbACT_FROM_TEMPLATE.Enabled := false;
  end;
  bbInvoiceGenetare.Enabled := not DATA.EOF;
  bbAllClientInvoice.Enabled := not DATA.EOF;
  bbPrintInvoice.Enabled := not DATA.EOF;
end;

procedure TfmInvoiceReestr.bbInvoiceGenetareClick(Sender: TObject);
begin
  inherited;
  fmMain.CreateChildWindow(fmInvoiceGenerator, TfmInvoiceGenerator, False);
  fmInvoiceGenerator.InvoiceID := DATA.FBN('ID').AsInteger;
end;



procedure TfmInvoiceReestr.bbPrintInvoiceClick(Sender: TObject);
begin
  inherited;
  BatchPrint(false);
end;

procedure TfmInvoiceReestr.bbPrintInvoiceStampClick(Sender: TObject);
begin
  inherited;
  BatchPrint(true, False);
end;

procedure TfmInvoiceReestr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QR.Close;
  if QR.Transaction.InTransaction then
    QR.Transaction.Commit;
  QW.Close;
  if QW.Transaction.InTransaction then
    QW.Transaction.Commit;
end;

procedure TfmInvoiceReestr.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((Key=VK_F2) and bbAct.Enabled) then
    bbAct.Click();
end;

procedure TfmInvoiceReestr.FormShow(Sender: TObject);
var
  D,M,Y : word;
begin
  inherited;
  QR.Close;
  QR.SQL.text := 'select P.VAL_INT V from PARAMS P where P.NAME=''SF_COUNT''';
  QR.ExecQuery;
  if not QR.EOF then
    _sfCount := QR.FieldByName('V').AsInteger
  else
    _sfCount := 1;

end;

procedure TfmInvoiceReestr.GridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if ((bbInvoiceGenetare.Visible=ivAlways) and bbInvoiceGenetare.Enabled) then
    bbInvoiceGenetare.Click();
end;

procedure TfmInvoiceReestr.GridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if (GridDBTableView1.DataController.Values[ARecord.RecordIndex, GridDBTableView1AMOUNT_REMAIN.Index]>0) then
    AStyle := DM.cxStyleRed
  else
    AStyle := DM.cxStyleNormal;
end;

procedure TfmInvoiceReestr.PrintPack(ID:integer; doClean:boolean = true; withStamp: boolean = false);
var
  ACTCount, DetailCount, NaklCount, InvoiceCount, SFCount, PKOCount, PostCount : integer;
begin
  try
    Invoice.Close;
    Invoice.ParamByName('ID').AsInteger := ID;
    Invoice.Open;
    if Invoice.FieldByName('DOVER_ID').Value = NULL then begin
      QR.Close;
      QR.SQL.text := 'select first 1 D.ID from DOVER D where D.ORGANIZATION_ID=:O_ID and D.EMPLOE_ID=(select U.EMPLOE_ID from USERS U where upper(U.LOGIN_NAME)=upper(current_user)) order by  D.DOC_DATE desc';
      QR.ParamByName('O_ID').Value := Invoice.FieldByName('ORGANIZATION_ID').Value;
      QR.ExecQuery;
      if not QR.EOF then begin
        QW.Close;
        QW.SQL.Text := 'update INVOICE set DOVER_ID=:DOVER_ID where ID=:ID';
        QW.ParamByName('ID').Value := Invoice.FieldByName('ID').Value;
        QW.ParamByName('DOVER_ID').Value := QR.FieldByName('ID').Value;
        QW.ExecQuery;
        QW.Transaction.Commit;
        Data.Refresh;
      end;
    end;
    ACTCount := 2;
    DetailCount := 1;
    NaklCount := 0;
    if Invoice.FieldByName('PAYMENT_TYPE').AsInteger=1 then begin  // Банк
      InvoiceCount := 1;
      if Invoice.FieldByName('AMOUNT_NDS').AsCurrency>0 then
          SFCount := _sfCount
      else
          SFCount := 0;
      PKOCount := 0;
      PostCount := 1;
    end else begin
      InvoiceCount := 0;
      SFCount := 0;
      PKOCount := 1;
      PostCount := 0;
    end;
    if doClean then
      DM.LoadReport('Счет_встроенный', false, false);

    DM.Report.Variables.Variables['ID'] := ID;
    if withStamp then
      DM.Report.Variables.Variables['StampVisible'] := 1
    else
      DM.Report.Variables.Variables['SpampVisible'] := 0;

    DM.Report.Variables.Variables['InvoiceCount'] := InvoiceCount;
    DM.Report.Variables.Variables['ActCount'] := ActCount;
    DM.Report.Variables.Variables['SFCount'] := SFCount;
    DM.Report.Variables.Variables['PKOCount'] := PKOCount;
    DM.Report.Variables.Variables['DetailCount'] := DetailCount;
    DM.Report.Variables.Variables['PostCount'] := PostCount;
    DM.Report.Variables.Variables['NaklCount'] := NaklCount;
    DM.Report.PrepareReport(doClean);
  finally
    QR.Close;
    QW.Close;
  end;
end;

end.
