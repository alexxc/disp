unit u_fmTextEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmModal, dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo;

type
  TfmTextEdit = class(TfmModal)
    MEMO: TcxMemo;
    procedure bbSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTextEdit: TfmTextEdit;

implementation

{$R *.dfm}

procedure TfmTextEdit.bbSaveClick(Sender: TObject);
begin
  inherited;
  Modalresult := mrOK;
end;

end.
