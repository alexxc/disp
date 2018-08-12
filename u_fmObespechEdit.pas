unit u_fmObespechEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmModal, dxBar, cxClasses, u_DM, DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxMemo, FIBDataSet,
  dxSkinsdxBarPainter, FIBDatabase, pFIBDatabase, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, pFIBDataSet, DateUtils;

type
  TfmObespechEdit = class(TfmModal)
    dsOBESPECH: TDataSource;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    LOCK_DATE: TcxDBDateEdit;
    UNLOCK_DATE: TcxDBDateEdit;
    AMOUNT: TcxDBCurrencyEdit;
    USER_ID: TcxDBLookupComboBox;
    DESCRIPTION: TcxDBMemo;
    cxButton1: TcxButton;
    procedure dsOBESPECHStateChange(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmObespechEdit: TfmObespechEdit;

implementation
uses u_fmContragentEdit;

{$R *.dfm}

procedure TfmObespechEdit.bbRefreshClick(Sender: TObject);
begin
  inherited;
  dsOBESPECH.DataSet.Refresh;
end;

procedure TfmObespechEdit.bbSaveClick(Sender: TObject);
begin
  if Lock_Date.EditingValue=NULL then begin
    Application.MessageBox('Не указана дата начала', 'Внимание', MB_OK + MB_ICONSTOP);
    ActiveControl := LOCK_DATE;
    exit;
  end;
  if UNLock_Date.EditingValue=NULL then begin
    Application.MessageBox('Не указана дата окончания', 'Внимание', MB_OK + MB_ICONSTOP);
    ActiveControl := UNLOCK_DATE;
    exit;
  end;
  if ((AMOUNT.EditingValue=null) or (AMOUNT.EditingValue=0)) then begin
    Application.MessageBox('Не указана сумма', 'Внимание', MB_OK + MB_ICONSTOP);
    ActiveControl := AMOUNT;
    exit;
  end;


  inherited;
  dsOBESPECH.DataSet.Post;
  if TpFIBDataSet(dsOBESPECH.DataSet).UpdateTransaction.InTransaction then
    TpFIBDataSet(dsOBESPECH.DataSet).UpdateTransaction.Commit;
  Modalresult := mrOK;
end;

procedure TfmObespechEdit.cxButton1Click(Sender: TObject);
begin
  inherited;
  if (LOCK_DATE.EditingValue<>NULL) then begin
    UNLOCK_DATE.date := IncYear(LOCK_DATE.Date, 1);
  end;
end;

procedure TfmObespechEdit.dsOBESPECHStateChange(Sender: TObject);
begin
  inherited;
  DataChanged := (dsOBESPECH.State in [dsInsert, dsEdit]);
end;

procedure TfmObespechEdit.FormShow(Sender: TObject);
begin
  inherited;
  dsOBESPECH.DataSet.Refresh;
end;

end.
