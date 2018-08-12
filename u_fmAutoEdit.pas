unit u_fmAutoEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmModal, dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxTextEdit, cxDBEdit,
  Data.DB,
  cxDBData, FIBQuery, pFIBQuery, FIBDataSet, pFIBDataSet, u_frameJournal,
  u_frameDocuments, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons,
  cxListBox, cxImageComboBox, cxCheckBox, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, u_frameAutoServiceReestr,
  cxGroupBox, cxPC, FIBDatabase, pFIBDatabase, dxBarBuiltInMenu, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxCustomListBox;

type
  TfmAutoEdit = class(TfmModal)
    Pages: TcxPageControl;
    tabMain: TcxTabSheet;
    tabDrivers: TcxTabSheet;
    List2: TcxListBox;
    btnAdd: TcxButton;
    btnAddAll: TcxButton;
    btnRemove: TcxButton;
    btnRemoveAll: TcxButton;
    cxLabel5: TcxLabel;
    MAIN_DRIVER: TcxLookupComboBox;
    cbDriverFilter: TcxCheckBox;
    List1: TcxListBox;
    cxTabSheet3: TcxTabSheet;
    frameDocuments: TframeDocuments;
    tabJournal: TcxTabSheet;
    frameJournal: TframeJournal;
    cxGroupBox1: TcxGroupBox;
    BMBar1: TdxBar;
    dockPolis: TdxBarDockControl;
    GridPolisView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    bbRefreshPolis: TdxBarButton;
    bbNewPolis: TdxBarButton;
    bbEditPolis: TdxBarButton;
    bbDeletePolis: TdxBarButton;
    POLIS: TpFIBDataSet;
    dsPOLIS: TDataSource;
    GridPolisViewID: TcxGridDBColumn;
    GridPolisViewAUTO_ID: TcxGridDBColumn;
    GridPolisViewDOC_SERIAL: TcxGridDBColumn;
    GridPolisViewDOC_NUMBER: TcxGridDBColumn;
    GridPolisViewCOMPANY_NAME: TcxGridDBColumn;
    GridPolisViewDATE_START: TcxGridDBColumn;
    GridPolisViewDATE_END: TcxGridDBColumn;
    GridPolisViewDESCRIPTION: TcxGridDBColumn;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    labelVIN: TcxLabel;
    MODEL_NAME: TcxTextEdit;
    GOS_NOMER: TcxTextEdit;
    VIN: TcxTextEdit;
    cxLabel3: TcxLabel;
    PRODUCTION_ID: TcxLookupComboBox;
    IS_ACTIVE: TcxCheckBox;
    FUEL_TYPE: TcxImageComboBox;
    labelFUEL_TYPE: TcxLabel;
    cxLabel4: TcxLabel;
    DESCRIPTION: TcxTextEdit;
    cxLabel6: TcxLabel;
    STATUS: TcxImageComboBox;
    cxLabel7: TcxLabel;
    GPS_ID: TcxTextEdit;
    cxLabel8: TcxLabel;
    PTS: TcxTextEdit;
    cxLabel9: TcxLabel;
    STS: TcxTextEdit;
    frameAutoServiceReestr: TframeAutoServiceReestr;
    cxLabel10: TcxLabel;
    ORGANIZATION_ID: TcxLookupComboBox;
    QR: TpFIBQuery;
    QW: TpFIBQuery;
    procedure bbRefreshClick(Sender: TObject);
    procedure List1DblClick(Sender: TObject);
    procedure List2DblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnAddAllClick(Sender: TObject);
    procedure btnRemoveAllClick(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbDriverFilterClick(Sender: TObject);
    procedure STATUSPropertiesEditValueChanged(Sender: TObject);
    procedure frameDocuments1bbAddClick(Sender: TObject);
    procedure bbNewPolisClick(Sender: TObject);
    procedure bbEditPolisClick(Sender: TObject);
    procedure bbDeletePolisClick(Sender: TObject);
    procedure bbRefreshPolisClick(Sender: TObject);
    procedure GridPolisViewDblClick(Sender: TObject);
    procedure dsPOLISDataChange(Sender: TObject; Field: TField);
    procedure frameJournalbbAddClick(Sender: TObject);
  private
    FID: integer;
    procedure SetID(const Value: integer);
    { Private declarations }
  public
    property ID : integer read FID write SetID default 0;
    procedure GetDrivers;
    procedure SetControls;
  end;

var
  fmAutoEdit: TfmAutoEdit;
  IsStatusChanged :boolean;
  NewStatusDate : TDate;
  NewStatusDescription : String;


implementation

uses u_fmAutoStatusEdit, u_fmDocumentUpload, u_fmPolis, u_DM;

{$R *.dfm}

{ TfmAutoEdit }

procedure TfmAutoEdit.bbDeletePolisClick(Sender: TObject);
begin
  inherited;
  if MessageBox(0, 'Удалить полис?', 'Внимание', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON2) = mrYES then begin
    Wait(1);
    try
      Polis.delete;
      Polis.UpdateTransaction.Commit;
    finally
      Wait(0);
    end;
  end;
end;

procedure TfmAutoEdit.bbEditPolisClick(Sender: TObject);
begin
  inherited;
  bbRefreshPolis.Enabled := false;
  fmPolis := TfmPolis.Create(self);
  try
    fmPolis.ID := Polis.FBN('ID').Value;
    if fmPolis.ShowModal = mrOK then begin
      Wait(1);
      Polis.DisableControls;
      try
        Polis.Refresh;
      finally
        Polis.EnableControls;
        Wait(0);
      end;
    end;
  finally
    FreeAndNil(fmPolis);
    bbRefreshPolis.Enabled := true;
  end;
end;

procedure TfmAutoEdit.bbNewPolisClick(Sender: TObject);
begin
  inherited;
  bbNewPolis.Enabled := false;
  fmPolis := TfmPolis.Create(self);
  try
    fmPolis.AutoID := self.ID;
    if fmPolis.ShowModal = mrOK then begin
      Wait(1);
      Polis.DisableControls;
      try
        Polis.CloseOpen(TRUE);
        if not Polis.Locate('ID', fmPolis.ID, []) then
          Polis.First;
      finally
        Polis.EnableControls;
        Wait(0);
      end;
    end;
  finally
    FreeAndNil(fmPolis);
    bbNewPolis.Enabled := true;
  end;
end;

procedure TfmAutoEdit.bbRefreshPolisClick(Sender: TObject);
begin
  inherited;
  bbRefreshPolis.Enabled := False;
  Polis.ReopenLocate('ID');
  bbRefreshPolis.Enabled := true;
end;

procedure TfmAutoEdit.bbRefreshClick(Sender: TObject);
begin
  inherited;
  ID := ID;
end;

procedure TfmAutoEdit.bbSaveClick(Sender: TObject);
var
  _s : string;
  _id : integer;
begin
  inherited;
  try
    if (ID=0) then
      FID := DM.FB.Gen_Id('G_ID', 1);
    QW.Close;
    QW.SQL.text := 'update or insert into AUTOMOBILE '+
      '  (ID, GOS_NOMER, MODEL_NAME, VIN, FUEL_TYPE, IS_ACTIVE, MAIN_DRIVER, PRODUCTION_ID, DESCRIPTION, GPS_ID,PTS,STS, ORGANIZATION_ID) '+
      'values '+
      '  (:ID, :GOS_NOMER, :MODEL_NAME, :VIN, :FUEL_TYPE, :IS_ACTIVE, :MAIN_DRIVER, :PRODUCTION_ID, :DESCRIPTION, :GPS_ID,:PTS,:STS, :ORGANIZATION_ID) '+
      'returning ID';
    if ID>0 then
      QW.ParamByname('ID').Value := ID;
    QW.ParamByname('GOS_NOMER').Value := GOS_NOMER.Text;
    QW.ParamByname('MODEL_NAME').Value := MODEL_NAME.Text;
    QW.ParamByname('VIN').Value := VIN.Text;
    QW.ParamByname('PTS').Value := PTS.Text;
    QW.ParamByname('STS').Value := STS.Text;
    QW.ParamByname('FUEL_TYPE').Value := FUEL_TYPE.EditValue;
    QW.ParamByname('IS_ACTIVE').Value := IS_ACTIVE.Checked;
    QW.ParamByname('PRODUCTION_ID').Value := PRODUCTION_ID.EditValue;
    QW.ParamByname('MAIN_DRIVER').Value := MAIN_DRIVER.EditValue;
    QW.ParamByname('DESCRIPTION').Value := DESCRIPTION.Text;
    QW.ParamByname('GPS_ID').Value := GPS_ID.EditValue;
    QW.ParamByname('ORGANIZATION_ID').Value := ORGANIZATION_ID.EditValue;
    QW.ExecQuery;

    _id := QW.FieldByName('ID').Value;

    QW.Close;
    if ((ID>0) and IsStatusChanged) then begin
      QW.SQL.Text := 'insert into AUTO_STATUS_HISTORY(AUTO_ID, NEW_STATUS, STATUS_DATE, DESCRIPTION) values (:AUTO_ID, :NEW_STATUS, :STATUS_DATE, :DESCRIPTION)';
      QW.ParamByName('AUTO_ID').Value := ID;
      QW.ParamByName('NEW_STATUS').Value := STATUS.EditingValue;
      QW.ParamByName('STATUS_DATE').Value := NewStatusDate;
      QW.ParamByName('DESCRIPTION').Value := NewStatusDescription;
      QW.ExecQuery;
    end else if (ID=0) then begin
      QW.SQL.Text := 'insert into AUTO_STATUS_HISTORY(AUTO_ID, NEW_STATUS, STATUS_DATE, DESCRIPTION) values (:AUTO_ID, :NEW_STATUS, :STATUS_DATE, :DESCRIPTION)';
      QW.ParamByName('AUTO_ID').Value := ID;
      QW.ParamByName('NEW_STATUS').Value := STATUS.EditingValue;
      QW.ParamByName('STATUS_DATE').Value := Date();
      QW.ParamByName('DESCRIPTION').Value := 'Внесена новая запись в справочник авто';
      QW.ExecQuery;
    end;

    QW.Close;

    FID := _id;

    QW.SQL.Text := 'insert into AUTO_DRIVERS (AUTO_ID, DRIVER_ID) values (:AUTO_ID, :DRIVER_ID)';
    QW.Prepare;
    QW.ParamByName('AUTO_ID').Value := ID;
    while List2.Items.Count>0 do begin
      _id := Integer(List2.Items.Objects[0]);
      QW.Close;
      if DM.FB.QueryValue('select count(1) from AUTO_DRIVERS ad where ad.AUTO_ID=:ID and ad.DRIVER_ID=:DRIVER_ID', 0, [ID, _id])=0 then begin
        QW.ParamByName('DRIVER_ID').Value := _id;
        QW.ExecQuery;
      end;
      _s := _s + ', '+IntToStr(_id);
      List2.Items.Delete(0);
    end;
    QW.Close;
    QW.SQL.text := 'delete from AUTO_DRIVERS where AUTO_ID='+IntToStr(ID)+' and DRIVER_ID not in (-1'+_s+')';
    QW.ExecQuery;
    QW.Transaction.Commit;
    ModalResult := mrOK;
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfmAutoEdit.btnAddAllClick(Sender: TObject);
begin
  inherited;
  while (List1.Items.Count>0) do begin
    List2.Items.AddObject(List1.Items[0], List1.Items.Objects[0]);
    List1.Items.Delete(0);
  end;
  SetControls;
end;

procedure TfmAutoEdit.btnAddClick(Sender: TObject);
begin
  inherited;
  if List1.ItemIndex>-1 then begin
    List2.Items.AddObject(List1.Items[List1.ItemIndex], List1.Items.Objects[List1.ItemIndex]);
    List1.Items.Delete(List1.ItemIndex);
    SetControls;
  end;
end;

procedure TfmAutoEdit.btnRemoveAllClick(Sender: TObject);
begin
  inherited;
  while (List2.Items.Count>0) do begin
    List1.Items.AddObject(List2.Items[0], List2.Items.Objects[0]);
    List2.Items.Delete(0);
  end;
  SetControls;
end;

procedure TfmAutoEdit.btnRemoveClick(Sender: TObject);
begin
  inherited;
  if List2.ItemIndex>-1 then begin
    List1.Items.AddObject(List2.Items[List2.ItemIndex], List2.Items.Objects[List2.ItemIndex]);
    List2.Items.Delete(List2.ItemIndex);
    SetControls;
  end;
end;

procedure TfmAutoEdit.cbDriverFilterClick(Sender: TObject);
begin
  inherited;
  GetDrivers;
end;

procedure TfmAutoEdit.dsPOLISDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  bbEditPolis.Enabled := not Polis.IsEmpty;
  bbDeletePolis.Enabled := not Polis.IsEmpty;
end;

procedure TfmAutoEdit.FormShow(Sender: TObject);
begin
  inherited;
  Pages.ActivePage := tabMain;
  DM.refAUTO_DRIVER.CloseOpen(true);
  if (FID=0) then begin
    FUEL_TYPE.Editvalue := 0;
    IS_ACTIVE.Checked := true;
    GetDrivers;
  end;
end;

procedure TfmAutoEdit.frameDocuments1bbAddClick(Sender: TObject);
begin
  inherited;
//  frameDocuments1.bbAddClick(Sender);
  fmDocumentUpload := TfmDocumentUpload.Create(Application);
  try
    fmDocumentUpload.AutomobileID := ID;
    if fmDocumentUpload.ShowModal = mrOK then begin
      try
        frameDocuments.Documents.DisableControls;
        frameDocuments.Documents.CloseOpen(true);
        if not frameDocuments.Documents.Locate('ID', fmDocumentUpload.ID, []) then
          frameDocuments.Documents.First;
      finally
        frameDocuments.Documents.EnableControls;
      end;
    end;
  finally
    FreeAndNil(fmDocumentUpload);
  end;

end;

procedure TfmAutoEdit.frameJournalbbAddClick(Sender: TObject);
begin
  inherited;
  frameJournal.bbAddClick(Sender);

end;

procedure TfmAutoEdit.GetDrivers;
begin
  List1.Items.BeginUpdate;
  List2.Items.BeginUpdate;
  try
    List1.Items.Clear;
    List2.Items.Clear;
    QR.Close;
    QR.SQL.text := 'select d.id, d.NAME, d.PRODUCTION_ID, AD.AUTO_ID from AUTO_DRIVER D '+
      '  left join AUTO_DRIVERS AD on AD.DRIVER_ID=D.ID and AD.AUTO_ID=:ID '+
      '  where coalesce(D.IS_ACTIVE, 1)=1 order by d.NAME';
    QR.ParamByname('ID').value := ID;
    QR.ExecQuery;
    while not QR.EOF do begin
      if ((FID>0) and (QR.FieldByName('AUTO_ID').AsInteger = FID)) then begin
        List2.Items.AddObject(QR.FieldByName('NAME').AsString, TObject(QR.FieldByName('ID').AsInteger));
      end else if ((QR.FieldByName('PRODUCTION_ID').Value = PRODUCTION_ID.EditValue) or (PRODUCTION_ID.EditValue=Null) or (not cbDriverFilter.Checked)) then begin
        List1.Items.AddObject(QR.FieldByName('NAME').AsString, TObject(QR.FieldByName('ID').AsInteger));
      end;
      QR.next;
    end;
  finally
    List1.Items.EndUpdate;
    List2.Items.EndUpdate;
  end;
end;

procedure TfmAutoEdit.GridPolisViewDblClick(Sender: TObject);
begin
  inherited;
  if bbEditPolis.Enabled then
    bbEditPolis.Click();
end;

procedure TfmAutoEdit.List1DblClick(Sender: TObject);
begin
  inherited;
  if btnAdd.Enabled then
    btnAdd.Click;
end;

procedure TfmAutoEdit.List2DblClick(Sender: TObject);
begin
  inherited;
  if btnRemove.Enabled then
    btnRemove.Click;
end;

procedure TfmAutoEdit.SetControls;
begin
  btnAdd.Enabled := List1.Items.Count>0;
  btnAddAll.Enabled := List1.Items.Count>0;
  btnRemove.Enabled := List2.Items.Count>0;
  btnRemoveAll.Enabled := List2.Items.Count>0;
end;

procedure TfmAutoEdit.SetID(const Value: integer);
begin
  List1.Items.BeginUpdate;
  List2.Items.BeginUpdate;
  try
    FID := 0;
    QR.Close;
    QR.SQL.Text := 'select A.GOS_NOMER, coalesce(A.STATUS, 1) STATUS, A.MODEL_NAME, A.VIN, A.GPS_ID, '+
      ' coalesce(FUEL_TYPE, 0) FUEL_TYPE, coalesce(A.IS_ACTIVE, 1) IS_ACTIVE, A.MAIN_DRIVER, A.PRODUCTION_ID, '+
      ' PTS, STS, DESCRIPTION, ORGANIZATION_ID '+
      ' from AUTOMOBILE A where ID=:ID';
    QR.ParamByName('ID').AsInteger := Value;
    QR.ExecQuery;
    if not QR.Eof then begin
      IsStatusChanged := false;
      GOS_NOMER.Text := QR.FieldByName('GOS_NOMER').AsString;
      VIN.Text := QR.FieldByName('VIN').AsString;
      PTS.Text := QR.FieldByName('PTS').AsString;
      STS.Text := QR.FieldByName('STS').AsString;
      MODEL_NAME.Text := QR.FieldByName('MODEL_NAME').AsString;
      PRODUCTION_ID.EditValue := QR.FieldByName('PRODUCTION_ID').Value;
      ORGANIZATION_ID.EditValue := QR.FieldByName('ORGANIZATION_ID').Value;
      IS_ACTIVE.Checked := QR.FieldByName('IS_ACTIVE').Value;
      DESCRIPTION.Text := QR.FieldByName('DESCRIPTION').AsString;
      FUEL_TYPE.EditValue := QR.FieldByName('FUEL_TYPE').Value;
      MAIN_DRIVER.EditValue := QR.FieldByName('MAIN_DRIVER').Value;
      STATUS.EditValue := QR.FieldByName('STATUS').Value;
      STATUS.Tag := STATUS.EditValue;
      GPS_ID.EditValue := QR.FieldByName('GPS_ID').AsString;
      FID := Value;
      frameAutoServiceReestr.AutoID := ID;
      GetDrivers;
      Polis.DisableControls;
      POLIS.Close;
      POLIS.ParamByName('ID').Value := Value;
      POLIS.Open;
      Polis.EnableControls;
      frameDocuments.AutomobileID := Value;
      frameDocuments.bbRefresh.Click();
      frameJournal.AutoID := Value;
      frameJournal.bbRefresh.Click();
    end else begin
      Application.MessageBox('Ошибка открытия объекта', 'Ошибка', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
    end;
  finally
    QR.Close;
    List1.Items.EndUpdate;
    List2.Items.EndUpdate;
  end;
end;

procedure TfmAutoEdit.STATUSPropertiesEditValueChanged(Sender: TObject);
var
  OldStatus : integer;
begin
  inherited;
  if (ID=0) then
    exit;
  OldStatus := DM.FB.QueryValue('select coalesce(STATUS, 1) from AUTOMOBILE where ID='+IntToStr(ID), 0);
  if (OldStatus<>STATUS.EditingValue) then begin
    fmAutoStatusEdit := TfmAutoStatusEdit.Create(self);
    try
      fmAutoStatusEdit.OLD_STATUS.EditValue := OldStatus;
      fmAutoStatusEdit.NEW_STATUS.EditValue := STATUS.EditingValue;
      if fmAutoStatusEdit.ShowModal = mrOK then begin
        IsStatusChanged := true;
        NewStatusDate := fmAutoStatusEdit.STATUS_DATE.Date;
        NewStatusDescription := fmAutoStatusEdit.STATUS_DESCRIPTION.Text;
      end else begin
        STATUS.EditValue := OldStatus;
      end;

    finally
      FreeAndNil(fmAutoStatusEdit);
    end;

  end;
end;

end.
