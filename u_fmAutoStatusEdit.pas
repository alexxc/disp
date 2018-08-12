unit u_fmAutoStatusEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_DM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxImageComboBox, cxLabel, Menus, StdCtrls, cxButtons, ComCtrls, dxCore,
  cxDateUtils;

type
  TfmAutoStatusEdit = class(TForm)
    cxLabel6: TcxLabel;
    OLD_STATUS: TcxImageComboBox;
    cxLabel1: TcxLabel;
    NEW_STATUS: TcxImageComboBox;
    cxLabel2: TcxLabel;
    STATUS_DATE: TcxDateEdit;
    cxLabel3: TcxLabel;
    STATUS_DESCRIPTION: TcxTextEdit;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure NEW_STATUSPropertiesEditValueChanged(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAutoStatusEdit: TfmAutoStatusEdit;

implementation

{$R *.dfm}

procedure TfmAutoStatusEdit.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmAutoStatusEdit.btnSaveClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfmAutoStatusEdit.FormShow(Sender: TObject);
begin
  STATUS_DATE.Date := date();
end;

procedure TfmAutoStatusEdit.NEW_STATUSPropertiesEditValueChanged(
  Sender: TObject);
begin
  btnSave.Enabled := ((NEW_STATUS.EditingValue<>OLD_STATUS.EditingValue) and (STATUS_DATE.Text<>'') and (STATUS_DESCRIPTION.text<>''));
end;

end.
