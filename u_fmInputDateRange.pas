unit u_fmInputDateRange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, DateUtils;

type
  TfmInputDateRange = class(TForm)
    LCaption: TLabel;
    eDateStart: TcxDateEdit;
    cxButton1: TcxButton;
    eDateEnd: TcxDateEdit;
    Label1: TLabel;
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
  fmInputDateRange: TfmInputDateRange;

implementation

{$R *.dfm}

procedure TfmInputDateRange.cxButton1Click(Sender: TObject);
begin
   ModalResult := mrOK;
end;

procedure TfmInputDateRange.FormCreate(Sender: TObject);
begin
  eDateStart.Date := Today();
  eDateEnd.Date := Today();
end;

procedure TfmInputDateRange.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then begin
    ModalResult := mrCancel;
    Close;
  end;
end;

end.
