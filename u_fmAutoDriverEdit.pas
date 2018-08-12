unit u_fmAutoDriverEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmModal, dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  FIBQuery, pFIBQuery, cxCheckBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxLabel, FIBDatabase,
  pFIBDatabase;

type
  TfmAutoDriverEdit = class(TfmModal)
    cxLabel1: TcxLabel;
    DRIVER_NAME: TcxTextEdit;
    cxLabel2: TcxLabel;
    PRODUCTION_ID: TcxLookupComboBox;
    IS_ACTIVE: TcxCheckBox;
    cxLabel3: TcxLabel;
    PHONE_MOBILE: TcxTextEdit;
    cxLabel4: TcxLabel;
    DESCRIPTION: TcxTextEdit;
    QR: TpFIBQuery;
    QW: TpFIBQuery;
    procedure DRIVER_NAMEPropertiesEditValueChanged(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure bbCloseClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
  private
    FID: Integer;
    FDataChanged: boolean;
    procedure SetID(const Value: Integer);
    procedure SetDataChanged(const Value: boolean);
    { Private declarations }
  public
    property ID : Integer read FID write SetID;
    property DataChanged : boolean read FDataChanged write SetDataChanged;
  end;

var
  fmAutoDriverEdit: TfmAutoDriverEdit;

implementation
uses u_DM;
{$R *.dfm}

{ TfmAutoDriverEdit }

procedure TfmAutoDriverEdit.bbCloseClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TfmAutoDriverEdit.bbRefreshClick(Sender: TObject);
begin
  inherited;
  ID:=ID;
end;

procedure TfmAutoDriverEdit.bbSaveClick(Sender: TObject);
begin
  inherited;
  DRIVER_NAME.Text := trim(DRIVER_NAME.Text);
  if DRIVER_NAME.Text = '' then begin
    Application.MessageBox('Не введёно имя', 'Ошибка', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
    ActiveControl := DRIVER_NAME;
    Abort;
  end;

  try
    if (ID>0) then begin
      QW.SQl.text := 'update AUTO_DRIVER set NAME = :NAME, IS_ACTIVE = :IS_ACTIVE, PRODUCTION_ID = :PRODUCTION_ID, PHONE_MOBILE = :PHONE_MOBILE, DESCRIPTION = :DESCRIPTION where ID = :ID returning new.id';
      QW.ParamByName('ID').AsInteger := ID;
    end else begin
      QW.Close;
      QW.SQl.text := 'insert into AUTO_DRIVER (NAME, IS_ACTIVE, PRODUCTION_ID, PHONE_MOBILE, DESCRIPTION) '+
        'values (:NAME, :IS_ACTIVE, :PRODUCTION_ID, :PHONE_MOBILE, :DESCRIPTION) returning ID';
    end;
    QW.ParamByName('NAME').AsString := DRIVER_NAME.Text;
    QW.ParamByName('DESCRIPTION').AsString := DESCRIPTION.Text;
    QW.ParamByName('PHONE_MOBILE').AsString := PHONE_MOBILE.Text;
    QW.ParamByName('PRODUCTION_ID').Value := PRODUCTION_ID.EditValue;
    if IS_ACTIVE.Checked then
      QW.ParamByName('IS_ACTIVE').AsInteger := 1
    else
      QW.ParamByName('IS_ACTIVE').AsInteger := 0;
    QW.ExecQuery;
    FID := QW.FieldByName('ID').AsInteger;
    QW.Transaction.Commit;
    ModalResult := mrOK;
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;

end;

procedure TfmAutoDriverEdit.DRIVER_NAMEPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  DataChanged := TRUE;
end;

procedure TfmAutoDriverEdit.SetDataChanged(const Value: boolean);
begin
  bbSave.Enabled := Value;
  FDataChanged := Value;
end;

procedure TfmAutoDriverEdit.SetID(const Value: Integer);
begin
  Wait(1);
  try
    if (Value>0) then begin
      QR.Close;
      QR.SQL.Text := 'select * from AUTO_DRIVER where ID=:ID';
      QR.ParamByName('ID').Value := Value;
      QR.ExecQuery;
      if not QR.EOF then begin
        DRIVER_NAME.Text := QR.FieldByName('NAME').AsString;
        PHONE_MOBILE.Text := QR.FieldByName('PHONE_MOBILE').AsString;
        PRODUCTION_ID.EditValue := QR.FieldByName('PRODUCTION_ID').Value;
        IS_ACTIVE.Checked := QR.FieldByName('IS_ACTIVE').AsInteger=1;
        DESCRIPTION.Text := QR.FieldByName('DESCRIPTION').AsString;
        QR.Close;
        FID := Value;
      end;
    end else begin
      DRIVER_NAME.Text := '';
      PHONE_MOBILE.Text := '';
      PRODUCTION_ID.EditValue := '';
      IS_ACTIVE.Checked := false;
      DESCRIPTION.Text := '';
      FID := Value;
    end;
  finally
    Wait(0);
    DataChanged := false;
  end;
end;

end.
