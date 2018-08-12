unit u_fmRequestChangeStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, Menus, StdCtrls, cxButtons, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, FIBQuery,
  pFIBQuery, cxMemo;

type
  TfmRequestChangeStatus = class(TForm)
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    OLD_STATUS: TcxImageComboBox;
    NEW_STATUS: TcxImageComboBox;
    btnOK: TcxButton;
    btnClose: TcxButton;
    QR: TpFIBQuery;
    DESCRIPTION: TcxMemo;
    procedure NEW_STATUSPropertiesChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure NEW_STATUSPropertiesCloseUp(Sender: TObject);
  private
    FContragentID: integer;
    FRequestID: Integer;
    { Private declarations }
  public
    property CONTRAGENT_ID : integer read FContragentID write FContragentID default 0;
    property RequestID : Integer read FRequestID write FRequestID;
  end;

var
  fmRequestChangeStatus: TfmRequestChangeStatus;

implementation
uses U_DM, u_fmRequest;
{$R *.dfm}

procedure TfmRequestChangeStatus.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmRequestChangeStatus.btnOKClick(Sender: TObject);
begin
  SelectNext(ActiveControl, TRUE, TRUE);
	SelectNext(ActiveControl, FALSE, TRUE);
  DESCRIPTION.text := Trim(DESCRIPTION.text);
  if ((NEW_STATUS.EditValue=47) and (DESCRIPTION.text='')) then begin
    Application.MessageBox(
      '��� ���������� ������� ���������� ' + #13#10 +
      '��������� �����������',
      '��������� �������',
      MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
    ActiveControl := DESCRIPTION;
    Abort;
  end;
  ModalResult := mrOK;
end;

procedure TfmRequestChangeStatus.NEW_STATUSPropertiesChange(Sender: TObject);
begin
  btnOK.Enabled := NEW_STATUS.EditValue<>OLD_STATUS.EditValue;
end;

procedure TfmRequestChangeStatus.NEW_STATUSPropertiesCloseUp(Sender: TObject);
begin
  // ��������� ��
  // ���������, ��������� �� �������� �������
  if ((NEW_STATUS.EditValue=45) and (not user.isAdmin) and (trim(fmRequest.Request.FieldByname('BUSINESS_DESCRIPTION').AsString)='')) then begin
    Application.MessageBox('� ����������� �� ��������� ������������ ���� - �������� �������', '��������� �������', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
    NEW_STATUS.EditValue := OLD_STATUS.EditingValue;
    Abort;
  end;

  //  �����
  if ((NEW_STATUS.EditValue=46) and (User.RequestArchive<1) and (not user.isAdmin)) then begin
    MessageDlg('������������ ���� '+#13+#10+'��� �������� ������ � �����', mtError, [mbOK], 0);
    NEW_STATUS.EditValue := OLD_STATUS.EditingValue;
    Abort;
  end;

  // ��������� �������
  if (NEW_STATUS.EditingValue=48) and (CONTRAGENT_ID=0) then begin
    Application.MessageBox('������ �� ��������� � �����������', '��������� �������', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
    NEW_STATUS.EditValue := OLD_STATUS.EditingValue;
    Abort;
  end;

  // �������� ������������ �����������
  if ((NEW_STATUS.EditingValue=46) or (NEW_STATUS.EditingValue=47) or (NEW_STATUS.EditingValue=107)) then begin
    QR.Close;
    QR.SQL.text := 'select count(1) C from OBESPECH O where O.REQUEST_ID=:REQUEST_ID and O.STATUS=1';
    QR.ParamByName('REQUEST_ID').Value := RequestID;
    QR.ExecQuery;
    if QR.FieldByName('C').AsInteger>0 then begin
      Application.MessageBox('� ������ �������� �����������, �������� ����������', '��������� �������', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
      NEW_STATUS.EditValue := OLD_STATUS.EditingValue;
      ActiveControl := NEW_STATUS;
      Abort;
    end;
  end;


  // ��������
  if ((NEW_STATUS.EditingValue=107) and (DESCRIPTION.text='')) then begin
    Application.MessageBox('��������� ������ �������� ����������'#13#10'������ ����� ������', '��������� �������', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
    NEW_STATUS.EditValue := OLD_STATUS.EditingValue;
    ActiveControl := NEW_STATUS;
    Abort;
  end;

end;

end.

