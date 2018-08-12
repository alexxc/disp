unit u_fmCooperationEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  u_fmForm, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, FIBQuery,
  pFIBQuery, cxDropDownEdit, cxCalendar, cxTextEdit, cxCheckBox, cxMaskEdit,
  cxImageComboBox, Vcl.StdCtrls, cxButtons, cxMemo, cxLabel, FIBDatabase,
  pFIBDatabase, Dialogs;

type
  TfmCooperationEdit = class(TfmForm)
    cxLabel1: TcxLabel;
    Memo: TcxMemo;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    cxLabel2: TcxLabel;
    RecordType: TcxImageComboBox;
    IS_COMPETITOR: TcxCheckBox;
    cxLabel3: TcxLabel;
    COMPETITOR_NAME: TcxTextEdit;
    CooperationStatus: TcxImageComboBox;
    cxLabel4: TcxLabel;
    ControlDate: TcxDateEdit;
    cxLabel5: TcxLabel;
    QR: TpFIBQuery;
    QW: TpFIBQuery;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure IS_COMPETITORClick(Sender: TObject);
  private
    FContragentID: integer;
    procedure SetContragentID(const Value: integer);
    { Private declarations }
  public
    property ContragentID : integer read FContragentID write SetContragentID;
  end;

var
  fmCooperationEdit: TfmCooperationEdit;

implementation
uses u_DM;
{$R *.dfm}

procedure TfmCooperationEdit.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmCooperationEdit.btnOKClick(Sender: TObject);
begin
  if CooperationStatus.EditValue = null then begin
    Application.MessageBox('Не выбран результат', 'Ошибка', MB_OK + MB_ICONSTOP);
    ActiveControl := CooperationStatus;
    Abort;
  end;
  Memo.Lines.text := Trim(memo.Lines.text);
  if ((Memo.Lines.text = '') and (CooperationStatus.EditValue<> 36)) then begin
    Application.MessageBox('Введите комментарии к разговору', 'Ошибка', MB_OK + MB_ICONSTOP);
    ActiveControl := Memo;
    Abort;
  end;

  if ((Memo.Lines.text = '') and (CooperationStatus.EditValue= 36)) then begin
    QR.Close;
    QR.SQL.Text := 'select QTY from SP_GET_CONTRAGENT_MAT_COUNT(:ID)';
    QR.ParamByName('ID').Value := ContragentID;
    QR.ExecQuery;
    if QR.FieldByName('QTY').Value>0 then begin
      Memo.Lines.text := 'Есть ковры';
    end else begin
      if MessageDlg('У контрагента нет ковров. Продолжить?', mtConfirmation, [mbYes, mbNo], 0)=mrNO then
        Abort;
    end;
  end;


  if (IS_COMPETITOR.Checked and (COMPETITOR_NAME.Text='')) then begin
    Application.MessageBox('Введите имя конкурента', 'Ошибка', MB_OK + MB_ICONSTOP);
    ActiveControl := COMPETITOR_NAME;
    Abort;
  end;

  if (CooperationStatus.EditValue=37) and (ControlDate.Text='') then begin
    Application.MessageBox('Укажате контрольную дату', 'Ошибка', MB_OK + MB_ICONSTOP);
    ActiveControl := CooperationStatus;
    Abort;
  end;

  try
    QW.Close;
    QW.SQL.text := 'insert into CONTRAGENT_JOURNAL (CONTRAGENT_ID, RECORD_TYPE, MESSAGE, IS_REPORT, IS_COOPERATION, CONTROL_DATE) values (:CONTRAGENT_ID, :RECORD_TYPE, :MESSAGE, 1, 1, :CONTROL_DATE)';
    QW.ParamByname('CONTRAGENT_ID').Value := ContragentID;
    QW.ParamByname('RECORD_TYPE').Value := RecordType.EditValue;
    QW.ParamByname('MESSAGE').Value := memo.Lines.Text+#10+'Вид сотрудничества: '+DM.FB.QueryValueAsStr('select description from REFBOOK where ID='+IntToStr(CooperationStatus.EditValue), 0);
    QW.ParamByname('CONTROL_DATE').Value := ControlDate.EditingValue;
    if IS_COMPETITOR.Checked then begin
      QW.ParamByname('MESSAGE').Value := QW.ParamByname('MESSAGE').Value + #10'Работают с конкурентом '+COMPETITOR_NAME.Text;
    end;

    QW.ExecQuery;

    QW.Close;

    QW.SQL.Text := 'update CONTRAGENTS_ATTR ATTR set ATTR.COOPERATION_STATUS=:STATUS, IS_COMPETITOR = :IS_COMPETITOR, COMPETITOR_NAME=:COMPETITOR_NAME where ID=:ID';
    QW.ParamByname('ID').Value := ContragentID;
    QW.ParamByname('STATUS').Value := CooperationStatus.EditValue;
    QW.ParamByname('IS_COMPETITOR').Value := IS_COMPETITOR.Checked;
    QW.ParamByname('COMPETITOR_NAME').Value := COMPETITOR_NAME.Text;
    QW.ExecQuery;

    QW.Transaction.Commit;
    ModalResult := mrOK;
  except
    on E:Exception do begin
      ShowMessage(E.Message);
      QW.Transaction.Rollback;
    end;
  end;



end;

procedure TfmCooperationEdit.IS_COMPETITORClick(Sender: TObject);
begin
  COMPETITOR_NAME.Enabled := IS_COMPETITOR.Checked;
  if not IS_COMPETITOR.Checked then
    COMPETITOR_NAME.Text := '';
end;

procedure TfmCooperationEdit.SetContragentID(const Value: integer);
begin
  QR.Close;
  QR.SQl.text := 'select A.COOPERATION_STATUS, A.IS_COMPETITOR, A.COMPETITOR_NAME from CONTRAGENTS_ATTR A where id=:ID';
  QR.ParamByName('ID').Value := Value;
  QR.ExecQuery;
  if not QR.Eof then begin
    CooperationStatus.EditValue := QR.FieldByName('COOPERATION_STATUS').Value;
    IS_COMPETITOR.Checked := QR.FieldByName('IS_COMPETITOR').AsInteger = 1;
    if IS_COMPETITOR.Checked then
      COMPETITOR_NAME.Text := QR.FieldByName('COMPETITOR_NAME').Value;
  end;
  QR.Close;
  if QR.Transaction.InTransaction then
    QR.Transaction.Commit;

  FContragentID := Value;
end;

end.
