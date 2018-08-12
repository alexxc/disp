unit u_fmRequestReestr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, u_DM, DB, FIBDataSet, pFIBDataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxCurrencyEdit, cxPCdxBarPopupMenu, cxPC, cxSplitter,
  u_frameJournal, cxDBLookupComboBox, cxSpinEdit, cxImageComboBox, ExtCtrls,
  cxLabel, cxCalendar, cxMemo, cxNavigator, dxBarBuiltInMenu, u_frameDocuments,
  cxTextEdit, FIBDatabase, pFIBDatabase,
  FIBQuery, pFIBQuery, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxBarExtItems;

type
  TfmRequestReestr = class(TfmMDIChild)
    Request: TpFIBDataSet;
    dsRequest: TDataSource;
    TableView: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    TableViewID: TcxGridDBColumn;
    TableViewREQUEST_DT: TcxGridDBColumn;
    TableViewNAME: TcxGridDBColumn;
    TableViewPHONE: TcxGridDBColumn;
    TableViewSOURCE: TcxGridDBColumn;
    TableViewMANAGER_ID: TcxGridDBColumn;
    TableViewCONTRAGENT_ID: TcxGridDBColumn;
    TableViewDETAIL_COUNT: TcxGridDBColumn;
    TableViewAMOUNT: TcxGridDBColumn;
    TableViewSTATUS: TcxGridDBColumn;
    bbNew: TdxBarButton;
    bbActiveRequestOnly: TdxBarButton;
    bbEdit: TdxBarButton;
    cxSplitter1: TcxSplitter;
    Pages: TcxPageControl;
    tabDetail: TcxTabSheet;
    tabJournal: TcxTabSheet;
    frameJournal: TframeJournal;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1MAT_TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGES: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RequestDetail: TpFIBDataSet;
    dsRequestDetail: TDataSource;
    TableViewINN: TcxGridDBColumn;
    TableViewCOMPANY_NAME: TcxGridDBColumn;
    Timer: TTimer;
    RequestRefresh: TpFIBDataSet;
    TableViewLAST_MESSAGE: TcxGridDBColumn;
    TableViewLAST_MESSAGE_DT: TcxGridDBColumn;
    tabDocuments: TcxTabSheet;
    frameDocuments: TframeDocuments;
    bbExport: TdxBarButton;
    bbNewTender: TdxBarButton;
    TableViewREGION_NAME: TcxGridDBColumn;
    bbClone: TdxBarButton;
    QW: TpFIBQuery;
    bbOnlyMy: TdxBarButton;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbActiveRequestOnlyClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
    procedure TableViewDblClick(Sender: TObject);
    procedure bbNewClick(Sender: TObject);
    procedure RequestAfterOpen(DataSet: TDataSet);
    procedure TimerTimer(Sender: TObject);
    procedure frameJournalbbAddClick(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
    procedure bbNewTenderClick(Sender: TObject);
    procedure dsRequestDataChange(Sender: TObject; Field: TField);
    procedure TableViewGetCellHeight(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
    procedure bbCloneClick(Sender: TObject);
    procedure bbOnlyMyClick(Sender: TObject);
  private
    { Private declarations }
  public
    LastDataRead : TDateTime;
  end;

var
  fmRequestReestr: TfmRequestReestr;

implementation

uses u_fmRequest, u_fmTender;

{$R *.dfm}

procedure TfmRequestReestr.bbActiveRequestOnlyClick(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

procedure TfmRequestReestr.bbCloneClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  if MessageBox(0, 'Склонировать выбранную заявку?', 'Клонирование', MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON2)=mrYES then begin
    QW.Close;
    QW.SQL.text := 'select ID from SP_REQUEST_COPY(:REQUEST_ID)';
    QW.ParamByName('REQUEST_ID').AsInteger := Request.FBN('ID').AsInteger;
    try
      QW.ExecQuery;
      _id := QW.FieldByName('ID').AsInteger;
      QW.Transaction.Commit;
      Request.CloseOpen(TRUE);
      Request.Locate('ID', _id, []);
    except
      on E:Exception do
        ShowMessage(E.Message);
    end;
  end;
end;

procedure TfmRequestReestr.bbEditClick(Sender: TObject);
begin
  inherited;
  if (Request.FBN('SOURCE_ID').Value=134) then begin
    fmTender := TfmTender.Create(self);
    Request.DisableControls;
    try
      fmTender.REQUEST_ID := Request.FBN('ID').Value;
      fmTender.ShowModal;
      Request.Refresh;
    finally
      FreeAndNil(fmTender);
      Request.EnableControls;
    end;
  end else begin
    fmRequest := TfmRequest.Create(self);
    Request.DisableControls;
    try
      fmRequest.ID := Request.FBN('ID').Value;
      fmRequest.ShowModal;
      Request.Refresh;
    finally
      FreeAndNil(fmRequest);
      Request.EnableControls;
    end;
  end;
end;

procedure TfmRequestReestr.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(Grid);
end;

procedure TfmRequestReestr.bbNewClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  Request.DisableControls;
  fmRequest := TfmRequest.Create(self);
  try
    fmRequest.New;
    fmRequest.ShowModal;
    _id := fmRequest.ID;
    if _id>0 then begin
      try
        Request.CloseOpen(TRUE);
        Request.Locate('id', _id, []);
      except
        on E:Exception do
          ShowMessage(E.Message);
      end;
    end;
  finally
    Request.EnableControls;
    FreeAndNil(fmRequest);
  end;
end;

procedure TfmRequestReestr.bbNewTenderClick(Sender: TObject);
begin
  inherited;
  fmTender := TfmTender.Create(self);
  try
    fmTender.New;
    if fmTender.ShowModal=mrOK then begin
    end;
  finally
    FreeAndNil(fmTender);
  end;
end;

procedure TfmRequestReestr.bbOnlyMyClick(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

procedure TfmRequestReestr.bbRefreshClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  Wait(1);
  try
    if not Request.IsEmpty then
      _id := Request.FBN('ID').AsInteger
    else
      _id := 0;
    Request.DisableControls;
    Request.Close;
    if (bbActiveRequestOnly.Down) then begin
      Request.MainWhereClause := 'R.STATUS in (44,45, 145, 146, 147, 148, 149, 156) ';
    end else begin
      Request.MainWhereClause := '1=1 ';
    end;
    if (bbOnlyMy.Down) then begin
        Request.MainWhereClause := Request.MainWhereClause + ' and  '+'R.MANAGER_ID='+IntToStr(User.ID);
    end else begin
      if not((User.isDirector) or (user.isOwner) or (user.isAdmin) or (user.isDispatcher) or (user.ContragentAccess>0)) then begin
        Request.MainWhereClause := '('+Request.MainWhereClause + ' and  '+'R.MANAGER_ID in (select cast('+IntToStr(User.ID)+' as T_PID) ID from RDB$DATABASE union select U.ID from USERS U where U.PID='+IntToStr(User.ID)+')'+' )';
      end;
    end;

    Request.Open();
    if _id>0 then
      Request.Locate('id', _id, []);
  finally
    Request.EnableControls;
    Wait(0);
  end;
end;

procedure TfmRequestReestr.dsRequestDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  try
    if Request.ControlsDisabled then
      Abort;
    Wait(1);
    if (not Request.isEmpty and (Request.FBN('ID').value<>NULL)) then begin
      bbEdit.Enabled := true;
      frameJournal.RequestID := Request.FBN('ID').Value;
      frameDocuments.RequestID := Request.FBN('ID').Value;
      RequestDetail.DisableControls;
      RequestDetail.ParamByName('PID').Value := Request.FBN('ID').Value;
      RequestDetail.CloseOpen(True);
      RequestDetail.EnableControls;
      bbClone.Enabled := true;

    end else begin
      bbClone.Enabled := false;
      bbEdit.Enabled := false;
      frameJournal.RequestID := 0;
      frameDocuments.RequestID := 0;
      RequestDetail.DisableControls;
      RequestDetail.ParamByName('PID').Value := 0;
      RequestDetail.CloseOpen(True);
      RequestDetail.EnableControls;
    end;
  finally
    Wait(0);
  end;
end;

procedure TfmRequestReestr.FormShow(Sender: TObject);
begin
  inherited;
  if (user.isAdmin) then begin
    bbNewTender.Visible := ivAlways;
  end;
  TableViewSTATUS.RepositoryItem := nil;
  TableViewSTATUS.Properties.Images:=DM.ImageListStatuses;
  DM.LoadEditRepoImageCombo(TcxImageComboBoxProperties(TableViewSTATUS.Properties), 43);
  DM.LoadEditRepoImageCombo(TcxImageComboBoxProperties(TableViewSTATUS.Properties), 144, False);
  bbRefresh.Click();
end;

procedure TfmRequestReestr.frameJournalbbAddClick(Sender: TObject);
begin
  inherited;
  frameJournal.bbAddClick(Sender);
  Request.Refresh();
end;

procedure TfmRequestReestr.RequestAfterOpen(DataSet: TDataSet);
begin
  inherited;
  LastDataRead := DM.FB.GetServerTime;
  Timer.Enabled := true;
end;

procedure TfmRequestReestr.TableViewDblClick(Sender: TObject);
begin
  inherited;
  if ((bbEdit.Enabled) and (bbEdit.Visible = ivAlways)) then
    bbEdit.Click();
end;

procedure TfmRequestReestr.TableViewGetCellHeight(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; ACellViewInfo: TcxGridTableDataCellViewInfo;
  var AHeight: Integer);
begin
  inherited;
  if AHeight>100 then
    AHeight := 100;
end;

procedure TfmRequestReestr.TimerTimer(Sender: TObject);
begin
  inherited;
  Timer.Enabled := FALSE;
  try
    RequestRefresh.Close;
    RequestRefresh.SelectSQL.Text := Request.SelectSQL.Text;
    RequestRefresh.MainWhereClause := RequestRefresh.MainWhereClause + ' and ((R.CREATED_DT > :DT) OR (R.MODIFY_DT > :DT))';
    RequestRefresh.ParamByName('DT').AsDateTime := LastDataRead;
    RequestRefresh.Open;
    LastDataRead := DM.FB.GetServerTime;
    if not (RequestRefresh.IsEmpty) then begin
      MessageBeep(MB_ICONEXCLAMATION);
      Request.DisableControls;
      Request.RefreshFromDataSet(RequestRefresh, 'id');
      Request.EnableControls;
    end;
  finally
    Timer.Enabled := True;
  end;
end;

end.
