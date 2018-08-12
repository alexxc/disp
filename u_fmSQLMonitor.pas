unit u_fmSQLMonitor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, FIBSQLMonitor, pFIBSQLLog,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMemo;

type
  TfmSQLMonitor = class(TfmMDIChild)
    Monitor: TFIBSQLMonitor;
    bbEnabled: TdxBarButton;
    Memo: TcxMemo;
    bbClear: TdxBarButton;
    procedure bbEnabledClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbClearClick(Sender: TObject);
    procedure MonitorSQL(EventText: string; EventTime: TDateTime);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSQLMonitor: TfmSQLMonitor;

implementation

{$R *.dfm}

procedure TfmSQLMonitor.bbClearClick(Sender: TObject);
begin
  inherited;
  memo.Lines.Clear;
end;

procedure TfmSQLMonitor.bbEnabledClick(Sender: TObject);
begin
  inherited;
  Monitor.Active := bbEnabled.Down;
end;

procedure TfmSQLMonitor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Monitor.Active := false;
end;

procedure TfmSQLMonitor.MonitorSQL(EventText: string; EventTime: TDateTime);
begin
  inherited;
  memo.Lines.Add(Eventtext);
end;

end.
