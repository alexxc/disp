unit u_fmPlanEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_fmModal, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, dxBar, cxClasses,
  FIBDatabase, pFIBDatabase, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  cxMemo, cxDBEdit, cxDBExtLookupComboBox, cxCalendar, cxImageComboBox, Data.DB,
  FIBDataSet, pFIBDataSet, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, dxBarBuiltInMenu, cxPC, cxSpinEdit, cxTimeEdit, dxWheelPicker,
  dxNumericWheelPicker, dxDateTimeWheelPicker, dxDBDateTimeWheelPicker,
  cxGroupBox, dxBarExtItems, cxCheckBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.ExtCtrls, cxDBLabel;

type
  TfmPlanEdit = class(TfmModal)
    dsDATA: TDataSource;
    REF_REQUEST: TpFIBDataSet;
    dsREF_REQUEST: TDataSource;
    GridViewRepository: TcxGridViewRepository;
    GridViewRepositoryRequestList: TcxGridDBTableView;
    GridViewRepositoryRequestListID: TcxGridDBColumn;
    GridViewRepositoryRequestListREQUEST_DT: TcxGridDBColumn;
    GridViewRepositoryRequestListNAME: TcxGridDBColumn;
    GridViewRepositoryRequestListPHONE: TcxGridDBColumn;
    GridViewRepositoryRequestListSTATUS: TcxGridDBColumn;
    CONTRAGENTS: TpFIBDataSet;
    dsCONTRAGENTS: TDataSource;
    GridViewRepositoryContragents: TcxGridDBTableView;
    GridViewRepositoryContragentsID: TcxGridDBColumn;
    GridViewRepositoryContragentsNAME: TcxGridDBColumn;
    GridViewRepositoryContragentsINN: TcxGridDBColumn;
    Pages: TcxPageControl;
    tab0: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxLabel8: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel12: TcxLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel16: TcxLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    cxLabel28: TcxLabel;
    cxDBDateEdit6: TcxDBDateEdit;
    cxLabel29: TcxLabel;
    cxDBExtLookupComboBox11: TcxDBExtLookupComboBox;
    cxLabel30: TcxLabel;
    cxDBExtLookupComboBox12: TcxDBExtLookupComboBox;
    cxLabel25: TcxLabel;
    cxDBDateEdit9: TcxDBDateEdit;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarStatic1: TdxBarStatic;
    cxLabel1: TcxLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    cxLabel2: TcxLabel;
    cxDBDateEdit5: TcxDBDateEdit;
    USER_ID: TcxDBLookupComboBox;
    gbNotes: TcxGroupBox;
    DESCRIPTION: TcxDBMemo;
    cxLabel3: TcxLabel;
    cxDBExtLookupComboBox5: TcxDBExtLookupComboBox;
    cxLabel4: TcxLabel;
    cxDBExtLookupComboBox6: TcxDBExtLookupComboBox;
    cxLabel5: TcxLabel;
    cxDBDateEdit7: TcxDBDateEdit;
    cxLabel6: TcxLabel;
    cxDBDateEdit8: TcxDBDateEdit;
    cxLabel7: TcxLabel;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    cxLabel9: TcxLabel;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    cxLabel10: TcxLabel;
    cxDBExtLookupComboBox3: TcxDBExtLookupComboBox;
    cxLabel11: TcxLabel;
    cxDBExtLookupComboBox4: TcxDBExtLookupComboBox;
    END_DT_1: TcxDBDateEdit;
    IS_ALL_DAY: TcxDBCheckBox;
    buttonStartToEnd: TcxButton;
    cxLabel13: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxTabSheet1: TcxTabSheet;
    cxLabel14: TcxLabel;
    cxDBDateEdit10: TcxDBDateEdit;
    tabJournal: TcxTabSheet;
    gbJournal: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    Panel1: TPanel;
    cxLabel15: TcxLabel;
    cbJournal: TcxDBCheckBox;
    cxLabel17: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxLabel18: TcxLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    JOURNAL_DATE: TcxDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure dsDATAUpdateData(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure dsDATADataChange(Sender: TObject; Field: TField);
    procedure PagesChange(Sender: TObject);
    procedure IS_ALL_DAY_1PropertiesChange(Sender: TObject);
    procedure bbCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure buttonStartToEndClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FisNew: boolean;
    { Private declarations }
  public
    property isNew : boolean read FisNew write FisNew default false;
  end;

var
  fmPlanEdit: TfmPlanEdit;

implementation
uses U_DM, u_fmUserPlan;
{$R *.dfm}

{ TfmPlanEdit }

procedure TfmPlanEdit.bbCloseClick(Sender: TObject);
begin
  inherited;
  if TpFIBDataSet(dsData.DataSet).UpdateTransaction.InTransaction  then
     TpFIBDataSet(dsData.DataSet).UpdateTransaction.Rollback;
  dsData.DataSet.Refresh;
end;

procedure TfmPlanEdit.bbSaveClick(Sender: TObject);
begin
  inherited;
  isNew := false;
  if dsDATA.DataSet.FieldByName('ID').AsInteger>0 then begin
    dsData.DataSet.Refresh;
    if TpFIBDataSet(dsData.DataSet).UpdateTransaction.InTransaction  then
       TpFIBDataSet(dsData.DataSet).UpdateTransaction.Commit;
    DataChanged := false;
    ModalResult := mrOK;
  end else begin
    if cbJournal.Checked then begin
      DM._QW.Close;
      DM._QW.SQL.text := 'update CONTRAGENT_JOURNAL set COMPLETE_DT=current_timestamp, MESSAGE = MESSAGE||:M where ID=:ID';
      DM._QW.ParamByname('ID').Value := 0-dsDATA.DataSet.FieldByName('ID').Value;
      DM._QW.ParamByname('M').AsString := #10+DateTimeToStr(Now)+' пользователь '+User.Name+' отметил контроль выполенным';
      DM._QW.ExecQuery;
      DM._QW.Transaction.Commit;
      dsDATA.DataSet.Delete;
      DataChanged := false;
      ModalResult := mrOK;
    end else if (TpFIBDataSet(dsData.DataSet).FieldByName('START_DT').OldValue<>TpFIBDataSet(dsData.DataSet).FieldByName('START_DT').Value) then begin
      DM._QW.Close;
      DM._QW.SQL.text := 'update CONTRAGENT_JOURNAL set CONTROL_DATE=:D, MESSAGE = MESSAGE||:M where ID=:ID';
      DM._QW.ParamByname('ID').AsInteger := 0-DSData.DataSet.FieldByname('ID').Value;
      DM._QW.ParamByname('D').Value := JOURNAL_DATE.EditValue;
      DM._QW.ParamByname('M').AsString := #10+DateTimeToStr(Now)+' пользователь '+User.Name+
          ' перенес контрольную дату с '+dateToStr(dsData.DataSet.FieldByName('START_DT').OldValue)+
          ' на '+DateToStr(dsData.DataSet.FieldByName('START_DT').AsDateTime);
      DM._QW.ExecQuery;
      DM._QW.Transaction.Commit;
      DM._QW.CLose;
      dsData.DataSet.Refresh;
      DataChanged := false;
      ModalResult := mrOK;
    end;
  end;

end;

procedure TfmPlanEdit.buttonStartToEndClick(Sender: TObject);
begin
  inherited;
  dsData.dataSet.Edit;
  dsData.DataSet.FieldByname('END_DT').Value := dsData.DataSet.FieldByname('START_DT').Value;
  dsData.dataSet.Post;
end;

procedure TfmPlanEdit.PagesChange(Sender: TObject);
begin
  inherited;
  if Pages.ActivePage.Tag>0 then begin
    dsData.DataSet.Edit;
    dsData.DataSet.FieldByName('ACTION_ID').AsInteger:=Pages.ActivePage.Tag;
    dsData.DataSet.Post;
  end;
end;

procedure TfmPlanEdit.dsDATADataChange(Sender: TObject; Field: TField);
begin
  inherited;
  DataChanged := true;
end;

procedure TfmPlanEdit.dsDATAUpdateData(Sender: TObject);
begin
  inherited;
  DataChanged := True;
end;

procedure TfmPlanEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if DataChanged then begin
    if TpFIBDataSet(dsData.DataSet).UpdateTransaction.InTransaction  then
       TpFIBDataSet(dsData.DataSet).UpdateTransaction.Rollback;
    dsData.DataSet.Refresh;
    DataChanged := false;
  end;
end;

procedure TfmPlanEdit.FormCreate(Sender: TObject);
begin
  inherited;
  REF_REQUEST.Open;
  CONTRAGENTS.Open;
end;

procedure TfmPlanEdit.FormShow(Sender: TObject);
var
  _i : integer;
begin
  inherited;
  Pages.ActivePage := tab0;
  if not isNew then begin
    for _i := 0 to Pages.PageCount-1 do begin
      if dsData.dataSet.FieldByName('ACTION_ID').AsInteger>0  then begin
        Pages.Properties.HideTabs := False;
        gbNotes.Visible := True;
        tabJournal.TabVisible := False;

        if Pages.Pages[_i].tag = dsData.dataSet.FieldByName('ACTION_ID').AsInteger then begin
          Pages.ActivePage := Pages.Pages[_i];
          exit;
        end;
      end else begin
        gbNotes.Visible := false;
        tabJournal.TabVisible := True;
        Pages.ActivePage := tabJournal;
        Pages.Properties.HideTabs := true;
      end;
    end;

  end else begin
    Pages.Properties.HideTabs := False;
    tabJournal.TabVisible := false;
  end;

end;

procedure TfmPlanEdit.IS_ALL_DAY_1PropertiesChange(Sender: TObject);
begin
  inherited;
  END_DT_1.Enabled := not IS_ALL_DAY.Checked;
end;

end.
