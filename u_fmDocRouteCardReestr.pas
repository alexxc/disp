unit u_fmDocRouteCardReestr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, u_DM, DB, FIBDataSet, pFIBDataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxNavigator, cxDropDownEdit,
  cxTextEdit, cxCurrencyEdit, cxImageComboBox, cxContainer, cxButtonEdit,
  FIBQuery, pFIBQuery, cxBarEditItem, dxBarExtItems, cxGroupBox,
  cxGridBandedTableView, cxGridDBBandedTableView, Vcl.ExtCtrls,
  cxGridCustomView, cxGrid, FIBDatabase, pFIBDatabase, dxBarBuiltInMenu, cxPC,
  u_frameDocuments, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmDocRouteCardReestr = class(TfmMDIChild)
    DATA: TpFIBDataSet;
    dsData: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DOC_DT: TcxGridDBColumn;
    cxGrid1DBTableView1DOC_NUM: TcxGridDBColumn;
    cxGrid1DBTableView1STORAGE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1ROUNE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1KM: TcxGridDBColumn;
    cxGrid1DBTableView1MAT_COUNT: TcxGridDBColumn;
    cxGrid1DBTableView1MAT_SQUARE: TcxGridDBColumn;
    cxGrid1DBTableView1POSITION_COUNT: TcxGridDBColumn;
    cxGrid1DBTableView1ADDRESS_COUNT: TcxGridDBColumn;
    cxGrid1DBTableView1CONTRAGENTS_COUNT: TcxGridDBColumn;
    DOC: TpFIBDataSet;
    dsDOC: TDataSource;
    BMBar1: TdxBar;
    bbRouteCardDelta: TdxBarButton;
    bbRefreshDoc: TdxBarButton;
    DRIVER_ID: TcxGridDBColumn;
    panelDriver: TcxGroupBox;
    gridAutoDriverDBTableView1: TcxGridDBTableView;
    gridAutoDriverLevel1: TcxGridLevel;
    gridAutoDriver: TcxGrid;
    BMBar2: TdxBar;
    dxBarDockControl3: TdxBarDockControl;
    bbDriverRefresh: TdxBarButton;
    bbDriverSave: TdxBarButton;
    bbDriverClose: TdxBarButton;
    gridAutoDriverDBTableView1ID: TcxGridDBColumn;
    gridAutoDriverDBTableView1NAME: TcxGridDBColumn;
    AutoDrivers: TpFIBDataSet;
    dsAutoDrivers: TDataSource;
    gridAutoDriverDBTableView1IS_ACTIVE: TcxGridDBColumn;
    gridAutoDriverDBTableView1PRODUCTION_ID: TcxGridDBColumn;
    bbDriverClear: TdxBarButton;
    QW: TpFIBQuery;
    bbMK: TcxBarEditItem;
    pagesDetail: TcxPageControl;
    tabDetail: TcxTabSheet;
    tabDocuments: TcxTabSheet;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1ID: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1LINENO: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1COUNT_FACT: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1STATUS: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ADDRESS: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1SERVICE_NAME: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1MAT_NAME: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1CONTRAGENT_NAME: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FACT_STATUS: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FACT_IN: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1FACT_OUT: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    dockDetail: TdxBarDockControl;
    frameDocuments: TframeDocuments;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbDateStartCurChange(Sender: TObject);
    procedure bbDateStartChange(Sender: TObject);
    procedure bbRouteCardDeltaClick(Sender: TObject);
    procedure cxGrid2DBBandedTableView1DblClick(Sender: TObject);
    procedure DATAAfterScroll(DataSet: TDataSet);
    procedure bbRefreshDocClick(Sender: TObject);
    procedure dsAutoDriversDataChange(Sender: TObject; Field: TField);
    procedure bbDriverRefreshClick(Sender: TObject);
    procedure bbDriverSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbDriverClearClick(Sender: TObject);
    procedure DRIVER_IDPropertiesInitPopup(Sender: TObject);
    procedure bbMKKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bbMKPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bbMKPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDocRouteCardReestr: TfmDocRouteCardReestr;
  PopupEditor: TcxPopupEdit;

implementation

uses u_fmRouteCardChanges;

{$R *.dfm}

procedure TfmDocRouteCardReestr.bbDateStartChange(Sender: TObject);
begin
  inherited;
  bbrefresh.ImageIndex := 46;
end;

procedure TfmDocRouteCardReestr.bbDateStartCurChange(Sender: TObject);
begin
  inherited;
//  bbDateStart.Date := bbDateStart.CurDate;
//  bbDateEnd.Date := bbDateEnd.CurDate;
end;

procedure TfmDocRouteCardReestr.bbDriverClearClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  DATA.DisableControls;
  QW.Close;
  QW.SQL.Text := 'update DOC_ROUTE_CARD D set D.DRIVER_ID=:DRIVER_ID where D.ID=:ID';
  QW.ParamByName('ID').Value := DATA.FBN('ID').Value;
  QW.ParamByName('DRIVER_ID').Value := null;
  try
    QW.ExecQuery;
    QW.Transaction.Commit;
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
  bbDriverClose.Click;
  DATA.Refresh;
  DATA.EnableControls;
  Wait(0);
end;

procedure TfmDocRouteCardReestr.bbDriverRefreshClick(Sender: TObject);
begin
  inherited;
  AutoDrivers.ReopenLocate('ID');
end;

procedure TfmDocRouteCardReestr.bbDriverSaveClick(Sender: TObject);
begin
  inherited;
  // Update
  Wait(1);
  DATA.DisableControls;
  QW.Close;
  QW.SQL.Text := 'update DOC_ROUTE_CARD D set D.DRIVER_ID=:DRIVER_ID where D.ID=:ID';
  QW.ParamByName('ID').Value := DATA.FBN('ID').Value;
  QW.ParamByName('DRIVER_ID').Value := AutoDrivers.FBN('ID').Value;
  try
    QW.ExecQuery;
    QW.Transaction.Commit;
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
  bbDriverClose.Click;
  DATA.Refresh;
  DATA.EnableControls;
  Wait(0);
end;

procedure TfmDocRouteCardReestr.bbMKKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_RETURN) then begin
    bbMK.EditValue := bbMK.CurEditValue;
    if bbRefresh.Enabled then
      bbRefresh.Click();
  end;
end;

procedure TfmDocRouteCardReestr.bbMKPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  bbMK.EditValue := Null;
  bbMKPropertiesChange(sender);
  bbDateStart.SetFocus();
end;

procedure TfmDocRouteCardReestr.bbMKPropertiesChange(Sender: TObject);
begin
  inherited;
  bbDateStart.Enabled := (bbMK.EditValue = NULL) or (bbMK.EditValue = Unassigned) or (bbMK.EditValue = '');
  bbDateEND.Enabled := bbDateStart.Enabled;
end;

procedure TfmDocRouteCardReestr.bbRefreshClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  if not bbRefresh.Enabled then
    exit;
  bbRefresh.Enabled := false;
  bbMKPropertiesChange(Sender);
  Wait(1);
  DATA.DisableControls;
  AutoDrivers.DisableControls;
  try
    AutoDrivers.Open;
    if not DATA.IsEmpty then
      _id := DATA.FieldByName('ID').AsInteger
    else
      _id := -1;
    DATA.Close;
    DATA.ParamByName('DATE_START').AsDate := DateStart;
    DATA.ParamByName('DATE_END').AsDate := DateEnd;
    DATA.ParamByName('MK').Value := bbMK.EditValue;

    DATA.Open;
    if _id<>-1 then begin
      if not DATA.Locate('ID', _id, []) then
        DATA.First;
    end;
  finally
    AutoDrivers.EnableControls;
    DATA.EnableControls;
    DATAAfterScroll(DATA);
    bbRefresh.ImageIndex := 3;
    bbRefresh.Enabled := true;
    Wait(0);
  end;
end;

procedure TfmDocRouteCardReestr.bbRefreshDocClick(Sender: TObject);
begin
  inherited;
  if DOC.isEmpty then
    Abort;
  DOC.DisableControls;
  try
    DOC.reopenLocate('ID');
  finally
    DOC.EnableControls;
  end;
end;

procedure TfmDocRouteCardReestr.bbRouteCardDeltaClick(Sender: TObject);
begin
  inherited;
  if DOC.IsEmpty then
    exit;
  bbRouteCardDelta.Enabled := false;
  fmRouteCardChanges := TfmRouteCardChanges.Create(self);
  try
    fmRouteCardChanges.ID := DOC.FBN('ID').Value;
    if (fmRouteCardChanges.ShowModal = mrOK ) then begin
      DOC.DisableControls;
      try
        DOC.Refresh;
//        DOC.ReopenLocate('ID');
      finally
        DOC.EnableControls;
      end;
    end;
  finally
    bbRouteCardDelta.Enabled := true;
    FreeAndNil(fmRouteCardChanges);
  end;
end;

procedure TfmDocRouteCardReestr.cxGrid2DBBandedTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if bbRouteCardDelta.Enabled then
    bbRouteCardDelta.Click();
end;

procedure TfmDocRouteCardReestr.DATAAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (DATA.isEmpty or DATA.ControlsDisabled) then
    exit;
  Wait(1);
  DOC.DisableControls;
  DOC.ParamByName('PID').Value := DATA.FBN('ID').Value;
  Doc.CloseOpen(true);
  try
    frameDocuments.RouteCardID := DATA.FBN('ID').Value;
  finally
    DOC.EnableControls;
    Wait(0);
  end;
end;

procedure TfmDocRouteCardReestr.DRIVER_IDPropertiesInitPopup(Sender: TObject);
begin
  inherited;
  if Sender is TcxPopupEdit then begin
    if (DATA.FBN('DRIVER_ID').AsInteger>0) then begin
      AutoDrivers.Locate('ID', DATA.FBN('DRIVER_ID').AsInteger, []);
    end;
    PopupEditor := TcxPopupEdit(Sender);
  end;
end;

procedure TfmDocRouteCardReestr.dsAutoDriversDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  bbDriverSave.Enabled := not AutoDrivers.EOF;
end;

procedure TfmDocRouteCardReestr.FormCreate(Sender: TObject);
begin
  inherited;
  pagesDetail.ActivePage := tabDetail;
  DRIVER_ID.Options.Editing := User.isAdmin or User.isDirector or User.isDispatcher or User.isOwner or User.isSysAdmin;
end;

end.
