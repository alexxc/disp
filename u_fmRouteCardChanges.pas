unit u_fmRouteCardChanges;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmModal, dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxDBLabel, cxLabel, DB,
  FIBDataSet, pFIBDataSet, cxTextEdit, cxMaskEdit, cxSpinEdit, u_DM,
  cxDropDownEdit, cxImageComboBox, cxMemo, cxDBEdit, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCalendar, Menus, StdCtrls, cxButtons, FIBQuery, pFIBQuery,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls, cxRadioGroup,
  u_frameJournal, cxNavigator, dxBevel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxSkinscxPCPainter, FIBDatabase,
  pFIBDatabase;

type
  TfmRouteCardChanges = class(TfmModal)
    DOC: TpFIBDataSet;
    dsDOC: TDataSource;
    OLD_DOCS: TpFIBDataSet;
    GroupMain: TcxGroupBox;
    dsOLD_DOCS: TDataSource;
    qDescr: TpFIBQuery;
    Panel1: TPanel;
    GroupOld: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ROUTE_CARD_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1ROUTE_CARD_NUM: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1COUNT_PLAN: TcxGridDBColumn;
    cxGrid1DBTableView1COUNT_FACT_OUT: TcxGridDBColumn;
    cxGrid1DBTableView1COUNT_FACT_IN: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    ACTIONS: TpFIBDataSet;
    dsACTIONS: TDataSource;
    frameJournal: TframeJournal;
    cxGroupBox1: TcxGroupBox;
    cxLabel2: TcxLabel;
    CONTRAGENT_NAME: TcxDBLabel;
    cxLabel1: TcxLabel;
    ADDRESS_NAME: TcxDBLabel;
    cxLabel9: TcxLabel;
    MAT_NAME: TcxDBLabel;
    cxLabel4: TcxLabel;
    DRIVER_ID: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    COUNT_FACT: TcxDBLabel;
    cxLabel5: TcxLabel;
    FACT_OUT: TcxDBSpinEdit;
    cxLabel6: TcxLabel;
    FACT_IN: TcxDBSpinEdit;
    cxLabel7: TcxLabel;
    FACT_STATUS: TcxDBImageComboBox;
    cxGroupBox3: TcxGroupBox;
    FACT_DESCRIPTION: TcxDBMemo;
    procedure bbSaveClick(Sender: TObject);
    procedure bbCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DRIVER_IDPropertiesInitPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure frameJournalbbCooperationClick(Sender: TObject);
  private
    FID: integer;
    FEditMode: boolean;
    procedure SetID(const Value: integer);
    procedure SetEditMode(const Value: boolean);
    { Private declarations }
  public
    property ID : integer read FID write SetID;
    property EditMode : boolean read FEditMode write SetEditMode;
  end;

var
  fmRouteCardChanges: TfmRouteCardChanges;

implementation

{$R *.dfm}

{ TfmRouteCardChanges }

procedure TfmRouteCardChanges.bbCloseClick(Sender: TObject);
begin
  inherited;
  if DOC.UpdateTransaction.InTransaction then
    DOC.UpdateTransaction.Rollback;
  ModalResult := mrCancel;

end;

procedure TfmRouteCardChanges.bbSaveClick(Sender: TObject);
begin
  inherited;
  if DOC.State in [dsEdit, dsInsert] then
    DOC.Post;
  if DOC.UpdateTransaction.InTransaction then
    DOC.UpdateTransaction.Commit;
  ModalResult := mrOK;
end;

procedure TfmRouteCardChanges.DRIVER_IDPropertiesInitPopup(Sender: TObject);
begin
  inherited;
  DM.refAUTO_DRIVER.ReopenLocate('ID');
end;

procedure TfmRouteCardChanges.FormCreate(Sender: TObject);
begin
  inherited;
  EditMode := false;
end;

procedure TfmRouteCardChanges.FormShow(Sender: TObject);
begin
  inherited;
  DM.LoadEditRepoImageCombo(FACT_STATUS.Properties, 62);
end;

procedure TfmRouteCardChanges.frameJournalbbCooperationClick(Sender: TObject);
var
  AComment : string;
  Txt : string;
begin
  inherited;
  AComment := '';
  if InputQuery('Новый комментарий', 'Текст', AComment) then begin
     AComment := trim(AComment);
     if (AComment<>'') then begin
        Txt := DateTimeToStr(Now())+' '+ User.Name + ': '+AComment+#10;
        qDescr.Close;
        qDescr.ParamByName('ID').Value := DOC.FieldByName('CHG_ID').Value;
        qDescr.ParamByName('DESCR').Value := TXT;
        qDescr.ExecQuery;
        qDescr.Transaction.Commit;
        qDescr.Close;
        DOC.Refresh;
     end;
  end;

end;

procedure TfmRouteCardChanges.SetEditMode(const Value: boolean);
begin
  FACT_OUT.Enabled := not Value;
  FACT_IN.Enabled := not Value;
  FACT_STATUS.Enabled := not Value;
  FEditMode := Value;
end;

procedure TfmRouteCardChanges.SetID(const Value: integer);
begin
  DOC.Close;
  DOC.ParamByName('ID').Value := Value;
  DOC.Open;
  if DOC.FBN('CHG_ID').Value<>null then begin
    frameJournal.RouteCardChangeID := DOC.FBN('CHG_ID').Value;
  end;
  frameJournal.bbRefresh.Enabled := DOC.FieldByName('CHG_ID').AsInteger>0;
  frameJournal.bbAdd.Enabled := DOC.FieldByName('CHG_ID').AsInteger>0;
  self.Caption := 'Расхождение для маршрутной карты №'+DOC.FBN('DOC_NUM').AsString;
  FACT_OUT.Enabled := (User.isAdmin or User.isDirector or User.isDispatcher or User.isOwner or User.isProdDirector);
  FACT_IN.Enabled := FACT_OUT.Enabled;
  FACT_STATUS.Enabled := FACT_OUT.Enabled;
  FACT_DESCRIPTION.Enabled := FACT_OUT.Enabled;
  ACTIONS.Close;
  ACTIONS.ParamByName('ID').Value := Value;
  ACTIONS.Open;
  FID := Value;
  OLD_DOCS.Close;
  OLD_DOCS.ParamByName('CONTRAGENT_ID').Value := DOC.FieldByName('CONTRAGENT_ID').Value;
  OLD_DOCS.ParamByName('ADDRESS_ID').Value := DOC.FieldByName('ADDRESS_ID').Value;
  OLD_DOCS.ParamByName('MAT_ID').Value := DOC.FieldByName('MAT_ID').Value;
  OLD_DOCS.ParamByName('ID').Value := DOC.FieldByName('ID').Value;
  OLD_DOCS.Open;
  if (OLD_DOCS.Eof) then begin
//    Self.Width := Self.Width - GroupOld.Width;
    GroupOld.Visible := false;
//    GroupMain.Align := alClient;
  end;
end;

end.
