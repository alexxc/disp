unit u_fmLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, StdCtrls;

type
  TfmLog = class(TfmMDIChild)
    Memo: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLog: TfmLog;

implementation

{$R *.dfm}

end.
