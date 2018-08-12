unit u_fmInputDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, DateUtils;

type
  TfmInputDate = class(TForm)
    LCaption: TLabel;
    eDate: TcxDateEdit;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmInputDate: TfmInputDate;

implementation

{$R *.dfm}

procedure TfmInputDate.cxButton1Click(Sender: TObject);
begin
   ModalResult := mrOK;
end;

procedure TfmInputDate.FormCreate(Sender: TObject);
begin
  eDate.Date := Today();
end;

procedure TfmInputDate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then begin
    ModalResult := mrCancel;
    Close;
  end;
end;

end.
