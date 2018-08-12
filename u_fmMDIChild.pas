unit u_fmMDIChild;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_DM, dxBar, cxClasses, cxPCdxBarPopupMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, FIBQuery, pFIBQuery, u_fmForm,
  FIBDatabase,
  pFIBDatabase, dxBarExtItems;

type
  TfmMDIChild = class(TfmForm)
    BM: TdxBarManager;
    BMBar: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    bbClose: TdxBarButton;
    bbRefresh: TdxBarButton;
    bbSave: TdxBarButton;
    bbDateStart: TdxBarDateCombo;
    bbDateEnd: TdxBarDateCombo;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbDateStartChange(Sender: TObject);
    procedure bbDateEndCurChange(Sender: TObject);
    procedure bbDateStartCurChange(Sender: TObject);
  private
		FisClosed : boolean;
    FDataChanged: boolean;
    FDateStart: TDate;
    FDateEnd: TDate;
    procedure SetisClosed(const Value: boolean);
  public
    procedure SetDataChanged(const Value: boolean); virtual;
  	property isClosed : boolean read FisClosed write SetisClosed;
		property DataChanged : boolean read FDataChanged write SetDataChanged default false;
    procedure ApplyRights; virtual;
    property DateStart : TDate read FDateStart write FDateStart;
    property DateEnd : TDate read FDateEnd write FDateEnd;
  end;

var
  fmMDIChild: TfmMDIChild;

implementation

{$R *.dfm}

procedure TfmMDIChild.ApplyRights;
begin
end;

procedure TfmMDIChild.bbCloseClick(Sender: TObject);
begin
  Close();
end;

procedure TfmMDIChild.bbDateEndCurChange(Sender: TObject);
begin
  inherited;
  bbDateEnd.Date := bbDateEnd.CurDate;
end;

procedure TfmMDIChild.bbDateStartChange(Sender: TObject);
begin
  inherited;
  if bbDateStart.Text<>'' then
    DateStart := bbDateStart.Date
  else
    DateStart := EncodeDate(1900, 01, 01);

  if bbDateEnd.Text<>'' then
    DateEnd := bbDateEnd.Date
  else
    DateEnd := EncodeDate(2100, 12, 31);

end;

procedure TfmMDIChild.bbDateStartCurChange(Sender: TObject);
begin
  inherited;
  bbDateStart.Date := bbDateStart.CurDate;
end;

procedure TfmMDIChild.bbRefreshClick(Sender: TObject);
begin
  if self.Visible then begin
    SelectNext(ActiveControl, TRUE, TRUE);
	  SelectNext(ActiveControl, FALSE, TRUE);
  end;
  DM.WriteIniDate(self.Name, 'DATE_START', DateStart);
  DM.WriteIniDate(self.Name, 'DATE_END', DateEnd);
end;

procedure TfmMDIChild.bbSaveClick(Sender: TObject);
begin
  if self.Visible then begin
    SelectNext(ActiveControl, TRUE, TRUE);
  	SelectNext(ActiveControl, FALSE, TRUE);
  end;
end;

procedure TfmMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	isClosed := true;
  Action := caFree;
end;



procedure TfmMDIChild.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
	if DataChanged then begin
  	case MessageBox(0, 'Данные изменились. Сохранить?', 'Внимание', MB_ICONQUESTION or MB_YESNOCANCEL or MB_DEFBUTTON1) of
    	mrYES: begin
      	bbSave.Click();
        CanClose := TRUE;
      end;
      mrNO : begin
        CanClose := TRUE;
      end;
      mrCancel : begin
        CanClose := FALSE;
      end;
    end;
  end;
end;

procedure TfmMDIChild.FormShow(Sender: TObject);
var
  D,M,Y : word;
  DT : TDate;
begin
  inherited;
  ApplyRights;
	FDataChanged := FALSE;
  isClosed := false;
  try
    DecodeDate(Date(), Y, M, D);
    DT := DM.ReadIniDate(self.Name, 'DATE_START', Encodedate(Y, M, 1));
    if DT<>EncodeDate(1900, 1, 1) then
      bbDateStart.Date := DT
    else
      bbDateStart.Text := '';
    DateStart := DT;

    DT := DM.ReadIniDate(self.Name, 'DATE_END', Date());
    if DT<>EncodeDate(2100, 12, 31) then
      bbDateEnd.date := DT
    else
      bbDateEnd.Text := '';
    DateEnd := DT;
  finally
    bbRefresh.Click();
  end;
end;




procedure TfmMDIChild.SetDataChanged(const Value: boolean);
begin
  bbSave.Enabled := Value;
  FDataChanged := Value;
end;

procedure TfmMDIChild.SetIsClosed(const Value: boolean);
begin
  FisClosed := Value;
end;

end.
