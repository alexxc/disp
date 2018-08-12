unit u_fmPolis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmModal, dxBar, cxClasses, u_DM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, DB, FIBDataSet,
  pFIBDataSet, cxLabel, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxMemo,
  cxGroupBox, FIBDatabase, pFIBDatabase;

type
  TfmPolis = class(TfmModal)
    POLIS: TpFIBDataSet;
    dsPOLIS: TDataSource;
    POLIS_COMPANY: TpFIBDataSet;
    dsPOLIS_COMPANY: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    DOC_NUMBER: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    COMPANY: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    DATE_START: TcxDBDateEdit;
    cxLabel5: TcxLabel;
    DATE_END: TcxDBDateEdit;
    cxLabel6: TcxLabel;
    DESCRIPTION: TcxDBMemo;
    DOC_SERIAL: TcxDBComboBox;
    procedure POLISAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure POLISAfterPost(DataSet: TDataSet);
    procedure bbSaveClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
  private
    FID: Integer;
    FAutoID: integer;
    procedure SetID(const Value: Integer);
    { Private declarations }
  public
    property ID : Integer read FID write SetID;
    property AutoID : integer read FAutoID write FAutoID;
  end;

var
  fmPolis: TfmPolis;

implementation

{$R *.dfm}

procedure TfmPolis.bbRefreshClick(Sender: TObject);
begin
  inherited;
  if Polis.UpdateTransaction.InTransaction then
    Polis.UpdateTransaction.Rollback;
  Polis.Refresh;
end;

procedure TfmPolis.bbSaveClick(Sender: TObject);
begin
  inherited;
  if (DATE_START.EditValue=NULL) then begin
    MessageDlg('Не введена дата начала действия полиса', mtError, [mbOK], 0);
    ActiveControl := DATE_START;
    Abort;
  end;
  if (DATE_END.EditValue=NULL) then begin
    MessageDlg('Не введена дата окончания действия полиса', mtError, [mbOK], 0);
    ActiveControl := DATE_END;
    Abort;
  end;
  if Polis.State in [dsEdit, dsInsert] then
    Polis.Post;
  if trWrite.InTransaction then
    trWrite.Commit;
  DataChanged := FALSE;
  ModalResult := mrOK;
end;

procedure TfmPolis.FormCreate(Sender: TObject);
begin
  inherited;
  POLIS_COMPANY.Open;
  ID := 0;
end;

procedure TfmPolis.FormShow(Sender: TObject);
begin
  inherited;
  if (ID=0) then begin
    Polis.Append;
    Polis.FBN('AUTO_ID').Value := AutoID;
    Polis.Post;
    FID := Polis.FBN('ID').Value;
    DataChanged := True;
  end;

end;

procedure TfmPolis.POLISAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataChanged := True;
end;

procedure TfmPolis.POLISAfterPost(DataSet: TDataSet);
begin
  inherited;
  DataChanged := True;
end;

procedure TfmPolis.SetID(const Value: Integer);
begin
  Wait(1);
  Polis.DisableControls;
  try
    Polis.Close;
    Polis.ParamByName('ID').Value := Value;
    Polis.Open;
    if not Polis.EOF then
      AutoID := Polis.FBN('AUTO_ID').Value;
    FID := Value;
    DataChanged := False;
  finally
    Polis.EnableControls;
    Wait(0);
  end;
end;

end.
