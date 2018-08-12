unit u_fmModal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, u_fmForm, u_DM, FIBDatabase,
  pFIBDatabase, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinsdxBarPainter,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinPumpkin, dxSkinSpringTime,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfmModal = class(TfmForm)
    BM: TdxBarManager;
    BMBar: TdxBar;
    bbClose: TdxBarButton;
    bbRefresh: TdxBarButton;
    bbSave: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bbSaveClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
//		FisClosed : boolean;
    FDataChanged: boolean;
    FSizeChanged: Boolean;
  public
    procedure SetDataChanged(const Value: boolean); virtual;
		property DataChanged : boolean read FDataChanged write SetDataChanged;
    procedure ApplyRights; virtual;
    property SizeChanged : Boolean read FSizeChanged write FSizeChanged default false;
  end;

var
  fmModal: TfmModal;

implementation

{$R *.dfm}

procedure TfmModal.ApplyRights;
begin
end;


procedure TfmModal.bbCloseClick(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TfmModal.bbSaveClick(Sender: TObject);
begin
  inherited;
  self.SelectNext(self.ActiveControl, True, True);
  self.SelectNext(self.ActiveControl, False, True);
end;

procedure TfmModal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if DM.FB.Connected and SizeChanged then begin
    DM.qSettings.Close;
    DM.qSettings.SQL.Text := 'update or insert into USER_GRID_SETTINGS(USER_ID, FORM_NAME, CONTROL_NAME, DATA) values (RDB$GET_CONTEXT(''USER_SESSION'', ''USER_ID''), :FORM_NAME, ''WIDTH'', :WIDTH) matching (USER_ID, FORM_NAME, CONTROL_NAME)';
    DM.qSettings.ParamByname('FORM_NAME').Value := self.Name;
    DM.qSettings.ParamByname('WIDTH').Value := self.Width;
    DM.qSettings.ExecQuery;
    DM.qSettings.Close;
    DM.qSettings.SQL.Text := 'update or insert into USER_GRID_SETTINGS(USER_ID, FORM_NAME, CONTROL_NAME, DATA) values (RDB$GET_CONTEXT(''USER_SESSION'', ''USER_ID''), :FORM_NAME, ''HEIGHT'', :HEIGHT) matching (USER_ID, FORM_NAME, CONTROL_NAME)';
    DM.qSettings.ParamByname('FORM_NAME').Value := self.Name;
    DM.qSettings.ParamByname('HEIGHT').Value := self.Height;
    DM.qSettings.ExecQuery;
    DM.qSettings.Transaction.Commit;
  end;
end;

procedure TfmModal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
	if DataChanged then begin
  	case MessageBox(0, 'Данные изменились. Сохранить?', 'Внимание', MB_ICONQUESTION or MB_YESNOCANCEL or MB_DEFBUTTON1) of
    	mrYES: begin
      	bbSave.Click();;
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

procedure TfmModal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((KEY = VK_RETURN) and (ssCtrl in Shift) and bbSave.Enabled and (bbSave.Visible = ivAlways)) then
    bBSave.Click;
end;

procedure TfmModal.FormResize(Sender: TObject);
begin
  inherited;
  SizeChanged := true;
end;

procedure TfmModal.SetDataChanged(const Value: boolean);
begin
  bbSave.Enabled := Value;
  FDataChanged := Value;
end;


end.
