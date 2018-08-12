unit u_fmProgress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, cxProgressBar, StdCtrls, cxButtons;

type
  TfmProgress = class(TForm)
    buttonCancel: TcxButton;
    ProgressBar: TcxProgressBar;
    procedure buttonCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProgress: TfmProgress;

implementation

{$R *.dfm}

procedure TfmProgress.buttonCancelClick(Sender: TObject);
begin
  Close;
end;

end.
