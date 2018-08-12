unit u_fmAutoServiceEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  u_fmModal, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, FIBQuery, pFIBQuery, Data.DB,
  FIBDataSet, pFIBDataSet, u_frameJournal, cxDBEdit, cxDropDownEdit,
  cxImageComboBox, cxMemo, cxTextEdit, cxMaskEdit, cxCalendar, cxLabel,
  cxGroupBox, dxBar, cxClasses, FIBDatabase, pFIBDatabase;

type
  TfmAutoServiceEdit = class(TfmModal)
    cxGroupBox1: TcxGroupBox;
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    cxGroupBox2: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel3: TcxLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    NOTES: TcxDBMemo;
    cxLabel6: TcxLabel;
    NOTES_STO: TcxDBMemo;
    NONES_BOSS_PRODUTION: TcxDBMemo;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxGroupBox3: TcxGroupBox;
    frameJournal: TframeJournal;
    QR: TpFIBQuery;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure bbCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FID: Integer;
    FAutoID: integer;
    procedure SetAutoID(const Value: integer);
    procedure SetID(const Value: Integer);
    { Private declarations }
  public
    property ID : Integer read FID write SetID default 0;
    property AutoID : integer read FAutoID write SetAutoID default 0;
  end;

var
  fmAutoServiceEdit: TfmAutoServiceEdit;

implementation
uses u_DM;
{$R *.dfm}

{ TfmAutoServiceEdit }

procedure TfmAutoServiceEdit.bbCloseClick(Sender: TObject);
begin
  inherited;
  if (DATA.UpdateTransaction.InTransaction) then
    DATA.UpdateTransaction.Rollback;
end;

procedure TfmAutoServiceEdit.bbRefreshClick(Sender: TObject);
begin
  inherited;
  if DATA.UpdateTransaction.InTransaction then
    DATA.UpdateTransaction.Rollback;
  DATA.CloseOpen(FALSE);
end;

procedure TfmAutoServiceEdit.bbSaveClick(Sender: TObject);
begin
  inherited;
  if DATA.State in [dsInsert, dsEdit] then
    DATA.Post;
  if DATA.UpdateTransaction.InTransaction then
    DATA.UpdateTransaction.Commit;
  Close;
end;

procedure TfmAutoServiceEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QR.Close;
  if QR.Transaction.InTransaction then
    QR.Transaction.Commit;
  if trWrite.InTransaction then
    trWrite.Commit;
end;

procedure TfmAutoServiceEdit.FormShow(Sender: TObject);
begin
  inherited;
  DM.LoadEditRepoImageCombo(cxDBImageComboBox1.Properties, 117);
  if (ID=0) and (AutoID>0) then begin
      // new record
      DATA.ParamByName('ID').Value := null;
      DATA.Open;
      DATA.Append;
      DATA.FieldByName('AUTO_ID').Value := AutoID;
      DATA.Post;
      DATA.ParamByName('ID').Value := DATA.FBN('ID').Value;
      frameJournal.bbAdd.Enabled := true;
      frameJournal.bbRefresh.Enabled := true;
  end;
  frameJournal.bbAdd.Enabled := ID>0;
    frameJournal.bbRefresh.Enabled := ID>0;
end;

procedure TfmAutoServiceEdit.SetAutoID(const Value: integer);
begin
  QR.Close;
  QR.SQL.text := 'select coalesce(A.MODEL_NAME, '''') || '' г/н '' || coalesce(A.GOS_NOMER, '''') AUTO_NAME from AUTOMOBILE A where A.ID=:ID';
  QR.ParamByName('ID').Value := Value;
  QR.ExecQuery;
  if not QR.Eof then begin
    self.Caption := 'Сервисное обслуживание '+QR.FieldByname('AUTO_NAME').Value;
  end else
    raise Exception.Create('Не найден авто с ID '+IntToStr(Value));
  FAutoID := Value;
end;

procedure TfmAutoServiceEdit.SetID(const Value: Integer);
begin
  DATA.Close;
  DATA.ParamByName('ID').Value := Value;
  DATA.Open;
  frameJournal.AutoServiceID := Value;
  FID := Value;
end;

end.
