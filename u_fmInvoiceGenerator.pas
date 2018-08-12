unit u_fmInvoiceGenerator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, DB, FIBDataSet, pFIBDataSet,
  FIBDatabase, pFIBDatabase, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, frxClass, frxPreview, cxSplitter, dxLayoutContainer,
  dxLayoutControl, cxContainer, cxEdit, cxGroupBox, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxCheckBox, ExtCtrls, frxDesgnCtrls, cxDropDownEdit, cxLabel,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxGrid, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  Menus, StdCtrls, cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin,
  dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxNavigator;

type
  TfmInvoiceGenerator = class(TfmMDIChild)
    Data: TpFIBDataSet;
    PreviewPanel: TPanel;
    Report: TfrxReport;
    GroupParams: TcxGroupBox;
    InvoiceCount: TcxSpinEdit;
    cbInvoice: TcxCheckBox;
    cbAct: TcxCheckBox;
    ActCount: TcxSpinEdit;
    cbSF: TcxCheckBox;
    SFCount: TcxSpinEdit;
    cbPKO: TcxCheckBox;
    PKOCount: TcxSpinEdit;
    cbDetail: TcxCheckBox;
    DetailCount: TcxSpinEdit;
    cbPost: TcxCheckBox;
    PostCount: TcxSpinEdit;
    cbNakl: TcxCheckBox;
    NaklCount: TcxSpinEdit;
    cbStamp: TcxCheckBox;
    cxLabel1: TcxLabel;
    DOVER_ID: TcxDBExtLookupComboBox;
    Grids: TcxGridViewRepository;
    Dover: TpFIBDataSet;
    dsDover: TDataSource;
    GridsDBTableView1: TcxGridDBTableView;
    GridsDBTableView1ID: TcxGridDBColumn;
    GridsDBTableView1E_NAME: TcxGridDBColumn;
    GridsDBTableView1DOC_NUM: TcxGridDBColumn;
    GridsDBTableView1DOC_DATE: TcxGridDBColumn;
    GridsDBTableView1TXT: TcxGridDBColumn;
    btnDoverClear: TcxButton;
    btnDoverPost: TcxButton;
    dsData: TDataSource;
    btnPrint: TcxButton;
    procedure InvoiceCountPropertiesChange(Sender: TObject);
    procedure cbInvoiceClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function ReportUserFunction(const MethodName: string;
      var Params: Variant): Variant;
    procedure ReportPreview(Sender: TObject);
    procedure btnDoverClearClick(Sender: TObject);
    procedure btnDoverPostClick(Sender: TObject);
    procedure DOVER_IDPropertiesChange(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    FInvoiceID: integer;
    procedure SetInvoiceID(const Value: integer);
    { Private declarations }
  public
    property InvoiceID : integer read FInvoiceID write SetInvoiceID;
  end;

var
  fmInvoiceGenerator: TfmInvoiceGenerator;

implementation
uses u_DM, FN, u_fmInvoiceReestr;
{$R *.dfm}

{ TfmInvoiceGeterator }

procedure TfmInvoiceGenerator.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  try
    if Data.UpdateTransaction.InTransaction then
      Data.UpdateTransaction.Rollback;
    DATA.CloseOpen(TRUE);
    Dover.CloseOpen(TRUE);
    DM.LoadReport('Счет_встроенный', false, false, report);
    Report.Variables.Variables['ID'] := InvoiceID;
    Report.Variables.Variables['InvoiceCount'] := InvoiceCount.Value;
    Report.Variables.Variables['ActCount'] := ActCount.Value;
    Report.Variables.Variables['SFCount'] := SFCount.Value;
    Report.Variables.Variables['PKOCount'] := PKOCount.Value;
    Report.Variables.Variables['DetailCount'] := DetailCount.Value;
    Report.Variables.Variables['PostCount'] := PostCount.Value;
    Report.Variables.Variables['NaklCount'] := NaklCount.Value;
    if cbStamp.Checked then
      Report.Variables.Variables['StampVisible'] := 1
    else
      Report.Variables.Variables['StampVisible'] := 0;
    Report.ShowReport();
  finally
    Wait(0);
  end;
end;

procedure TfmInvoiceGenerator.cbInvoiceClick(Sender: TObject);
begin
  inherited;
  if Sender=cbInvoice then begin
    if not cbInvoice.Checked then
      InvoiceCount.Value := 0
    else begin
      if InvoiceCount.Value=0 then
        InvoiceCount.Value := 1;
    end;
  end else if Sender=cbACT then begin
    if not cbACT.Checked then
      ACTCount.Value := 0
    else begin
      if ACTCount.Value=0 then
        ACTCount.Value := 1;
    end;
  end else if Sender=cbSF then begin
    if not cbSF.Checked then
      SFCount.Value := 0
    else begin
      if SFCount.Value=0 then
        SFCount.Value := 1;
    end;
  end else if Sender=cbPKO then begin
    if not cbPKO.Checked then
      PKOCount.Value := 0
    else begin
      if PKOCount.Value=0 then
        PKOCount.Value := 1;
    end;
  end else if Sender=cbDetail then begin
    if not cbDetail.Checked then
      DetailCount.Value := 0
    else begin
      if DetailCount.Value=0 then
        DetailCount.Value := 1;
    end;
  end else if Sender=cbPost then begin
    if not cbPost.Checked then
      PostCount.Value := 0
    else begin
      if PostCount.Value=0 then
        PostCount.Value := 1;
    end;
  end else if Sender=cbNakl then begin
    if not cbNakl.Checked then
      NaklCount.Value := 0
    else begin
      if NaklCount.Value=0 then
        NaklCount.Value := 1;
    end;
  end;
end;

procedure TfmInvoiceGenerator.DOVER_IDPropertiesChange(Sender: TObject);
begin
  inherited;
  btnDoverPost.Enabled := true;
end;

procedure TfmInvoiceGenerator.btnDoverClearClick(Sender: TObject);
begin
  inherited;
  if not (DATA.State in [dsEdit, dsInsert]) then
    DATA.Edit;
  DATA.FieldByName('DOVER_ID').Value := null;
  DATA.Post;
  btnDoverPost.Enabled := true;
end;

procedure TfmInvoiceGenerator.btnDoverPostClick(Sender: TObject);
begin
  inherited;
  if DATA.State in [dsEdit, dsInsert] then
    DATA.Post;
  if DATA.UpdateTransaction.InTransaction then
    DATA.UpdateTransaction.Commit;
  bbRefresh.Click();
  if (Assigned(fmInvoiceReestr) and not fmInvoiceReestr.Data.IsEmpty) then
    fmInvoiceReestr.Data.Refresh;
  btnDoverPost.Enabled := false;
end;

procedure TfmInvoiceGenerator.btnPrintClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  btnPrint.Enabled := false;
  try
    Report.Print;
  finally
    btnPrint.Enabled := true;
    Wait(0);
  end;
end;

procedure TfmInvoiceGenerator.FormCreate(Sender: TObject);
begin
  inherited;
  Report.AddFunction('function CurrencyToRouble(Amount: Extended; Currensy: string): string', 'User', 'Сумма прописью. Параметры: Сумма, Валюта (RUR, USD, EUR)');
  Report.AddFunction('function LongDateStr(ADate:TDate; Quoted : boolean): string', 'User', 'Дата прописью');
  Report.AddFunction('function ObjectAsInteger(AObject:TObject): integer', 'User', 'ObjectAsInteger');
  Dover.Open;
end;

procedure TfmInvoiceGenerator.InvoiceCountPropertiesChange(Sender: TObject);
begin
  inherited;
 if (Sender = InvoiceCount) then begin
    if ((InvoiceCount.Value=0) and cbInvoice.Checked) then
      cbInvoice.Checked := False
    else if ((InvoiceCount.Value>0) and (not cbInvoice.Checked)) then
      cbInvoice.Checked := True;
  end else if (Sender = ACTCount) then begin
    if ((ACTCount.Value=0) and cbACT.Checked) then
      cbACT.Checked := False
    else if ((ACTCount.Value>0) and (not cbACT.Checked)) then
      cbACT.Checked := True;
  end else if (Sender = SFCount) then begin
    if ((SFCount.Value=0) and cbSF.Checked) then
      cbSF.Checked := False
    else if ((SFCount.Value>0) and (not cbSF.Checked)) then
      cbSF.Checked := True;
  end else if (Sender = PKOCount) then begin
    if ((PKOCount.Value=0) and cbPKO.Checked) then
      cbPKO.Checked := False
    else if ((PKOCount.Value>0) and (not cbPKO.Checked)) then
      cbPKO.Checked := True;
  end else if (Sender = DetailCount) then begin
    if ((DetailCount.Value=0) and cbDetail.Checked) then
      cbDetail.Checked := False
    else if ((DetailCount.Value>0) and (not cbDetail.Checked)) then
      cbDetail.Checked := True;
  end else if (Sender = PostCount) then begin
    if ((PostCount.Value=0) and cbPost.Checked) then
      cbPost.Checked := False
    else if ((PostCount.Value>0) and (not cbPost.Checked)) then
      cbPost.Checked := True;
  end else if (Sender = NaklCount) then begin
    if ((NaklCount.Value=0) and cbNakl.Checked) then
      cbNakl.Checked := False
    else if ((NaklCount.Value>0) and (not cbNakl.Checked)) then
      cbNakl.Checked := True;
  end;
end;

procedure TfmInvoiceGenerator.ReportPreview(Sender: TObject);
var
  Preview: TfrxPreviewForm;
begin
  inherited;
  Preview := TfrxPreviewForm(Report.PreviewForm);
  Preview.BorderStyle := bsNone;
  Preview.Parent:=PreviewPanel;
  Preview.Left:=0;
  Preview.Top:=0;
  Preview.Width:=PreviewPanel.ClientWidth;
  Preview.Height:=PreviewPanel.ClientHeight;
  Preview.BorderStyle := bsNone;
end;

function TfmInvoiceGenerator.ReportUserFunction(const MethodName: string;
  var Params: Variant): Variant;
begin
  inherited;
  if UpperCase(MethodName) = UpperCase('CurrencyToRouble') then
    Result := RealToRouble(Params[0], Params[1])
  else if UpperCase(MethodName) = UpperCase('LongDateStr') then
    Result := LongDateStr(Params[0], Params[1])
  else if UpperCase(MethodName) = UpperCase('ObjectAsInteger') then
  	result := Integer(Params[0]);
end;

procedure TfmInvoiceGenerator.SetInvoiceID(const Value: integer);
begin
  data.ParamByName('ID').AsInteger := Value;
  try
    DATA.CloseOpen(TRUE);
    Dover.ParamByName('ORGANIZATION_ID').AsInteger := DATA.FieldByName('ORGANIZATION_ID').AsInteger;
    ACTCount.Value := 2;
    DetailCount.Value := 1;
    NaklCount.Value := 0;

    if Data.FieldByName('PAYMENT_TYPE').AsInteger=1 then begin  // Банк
      InvoiceCount.Value := 1;
      if data.FieldByName('AMOUNT_NDS').AsCurrency>0 then begin
        if Assigned(fmInvoiceReestr) then
          SFCount.Value := fmInvoiceReestr._sfCount
        else
          SFCount.Value := 1;
      end else
        SFCount.Value := 0;
      PKOCount.Value := 0;
      PostCount.Value := 1;
    end else begin
      InvoiceCount.Value := 0;
      SFCount.Value := 0;
      PKOCount.Value := 1;
      PostCount.Value := 0;
    end;
    FInvoiceID := Value;
    bbRefresh.Click();
  finally
  end
end;

end.
