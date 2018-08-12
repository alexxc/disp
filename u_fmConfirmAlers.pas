unit u_fmConfirmAlers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxLabel;

type
  TfmConfirmAlerts = class(TForm)
    bYes: TcxButton;
    bReDate: TcxButton;
    bNo: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure bNoClick(Sender: TObject);
  private
    FActionType: integer;
    FNewdate: tDate;
    FJournalID: integer;
    { Private declarations }
  public
    property ActionType: integer read FActionType;
    property NewDate : TDate read FNewdate write FNewDate;
    property JournalID : integer read FJournalID write FJournalID;
  end;

var
  fmConfirmAlerts: TfmConfirmAlerts;

implementation

uses u_DM;

{$R *.dfm}

procedure TfmConfirmAlerts.bNoClick(Sender: TObject);
begin
  FActionType := 2;
  Close;
end;

procedure TfmConfirmAlerts.FormShow(Sender: TObject);
begin
  FActionType := 0;
end;

end.
