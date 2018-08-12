unit u_frameJournal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCalendar, cxMemo, cxCheckBox, cxClasses, dxBar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, FIBDataSet, pFIBDataSet, cxLabel, cxImageComboBox, cxTextEdit,
  cxNavigator, FIBDatabase,
  pFIBDatabase, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TframeJournal = class(TFrame)
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridDBTableView1CREATED_DT: TcxGridDBColumn;
    GridDBTableView1RECORD_TYPE: TcxGridDBColumn;
    GridDBTableView1MESSAGE: TcxGridDBColumn;
    GridDBTableView1IS_REPORT: TcxGridDBColumn;
    GridDBTableView1IS_SYSTEM: TcxGridDBColumn;
    GridDBTableView1PROMISE_DATE: TcxGridDBColumn;
    GridDBTableView1CONTROL_DATE: TcxGridDBColumn;
    GridDBTableView1CREATED_BY: TcxGridDBColumn;
    GridDBTableView1USER_ID: TcxGridDBColumn;
    GridDBTableView1USERS_LIST: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    dxBarDockControl1: TdxBarDockControl;
    BM: TdxBarManager;
    BarJournal: TdxBar;
    bbRefresh: TdxBarButton;
    bbAdd: TdxBarButton;
    Journal: TpFIBDataSet;
    dsJournal: TDataSource;
    bbCooperation: TdxBarButton;
    GridDBTableView1RECORD_SUBTYPE_NAME: TcxGridDBColumn;
    trJournal: TpFIBTransaction;
    trJournalWrite: TpFIBTransaction;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbAddClick(Sender: TObject);
    procedure bbCooperationClick(Sender: TObject);
  private
    FRequestID: integer;
    FContragentID: integer;
    FAutoID: integer;
    FRouteCardChangeID: integer;
    FAutoServiceID: integer;
    FTenderID : integer;
    procedure SetContragentID(const Value: integer);
    procedure SetRequestID(const Value: integer);
    procedure SetAutoID(const Value: integer);
    procedure SetRouteCardChangeID(const Value: integer);
    procedure SetAutoServiceID(const Value: integer);
    procedure SetTenderID(const Value: Integer);
    { Private declarations }
  public
    procedure AfterConstruction; override;
    property ContragentID : integer read FContragentID write SetContragentID default 0;
    property RequestID : integer read FRequestID write SetRequestID default 0;
    property  AutoID : integer read FAutoID write SetAutoID default 0;
    property RouteCardChangeID : integer read FRouteCardChangeID write SetRouteCardChangeID default 0;
    property AutoServiceID : integer read FAutoServiceID write SetAutoServiceID default 0;
    property TenderID : Integer read FTenderID write SetTenderID default 0;
  end;

implementation
uses u_DM, u_fmJournalRecord, u_fmCooperationEdit;

{$R *.dfm}

procedure TframeJournal.AfterConstruction;
begin
  inherited;
  FContragentID := 0;
  FRequestID := 0;
  FAutoID := 0;
  FAutoServiceID := 0;
  BarJournal.Visible := TRUE;
end;


procedure TframeJournal.bbAddClick(Sender: TObject);
begin
  fmJournalRecord := TfmJournalRecord.Create(self);
  try
    if RouteCardChangeID>0 then begin
      fmJournalRecord.RouteCardChangeID := RouteCardChangeID;
      bbCooperation.Visible := ivAlways;
    end else if ContragentID>0 then
      fmJournalRecord.ContragentID := ContragentID;
    if RequestID>0 then
      fmJournalRecord.RequestID := RequestID;
    if TenderID>0 then
      fmJournalRecord.TenderID := TenderID;
    if AutoServiceID>0 then
      fmJournalRecord.AutoServiceID := AutoServiceID;
    if AutoID>0 then begin
      fmJournalRecord.AutoID := AutoID;
    end;
    Journal.DisableControls;
    fmJournalRecord.ShowModal;
    try
      Journal.CloseOpen(true);
      if fmJournalRecord.ID>0 then begin
        if not Journal.Locate('ID', fmJournalRecord.ID, []) then
          Journal.First();
      end;
    finally
      Journal.EnableControls;
    end;
  finally
    FreeAndNil(fmJournalRecord);
  end;
end;

procedure TframeJournal.bbRefreshClick(Sender: TObject);
var
  _id: integer;
begin
  Journal.DisableControls;
  if not Journal.isEmpty then
    _id := Journal.FBN('ID').Value
  else
    _id := 0;
  Journal.CLose;
  try
    Journal.MainWhereClause := '1=0';
    if (RouteCardChangeID>0) then begin
      Journal.MainWhereClause := 'J.ROUTE_CARD_CHANGE_ID = :ROUTE_CARD_CHANGE_ID';
      Journal.ParamByName('ROUTE_CARD_CHANGE_ID').Value := RouteCardChangeID;
    end else if (AutoServiceID>0) then begin
      Journal.MainWhereClause := 'J.AUTO_SERVICE_ID = :AUTO_SERVICE_ID';
      Journal.ParamByName('AUTO_SERVICE_ID').Value := AutoServiceID;
    end else if (AutoID>0) then begin
      Journal.MainWhereClause := 'J.AUTO_ID = :AUTO_ID';
      Journal.ParamByName('AUTO_ID').Value := AutoID;
    end else if ((RequestID>0) and (ContragentID=0)) then begin
      Journal.MainWhereClause := 'J.REQUEST_ID = :REQUEST_ID';
      Journal.ParamByName('REQUEST_ID').Value := RequestID;
    end else if ((RequestID=0) and (ContragentID>0)) then begin
      Journal.MainWhereClause := '((J.CONTRAGENT_ID = :CONTRAGENT_ID) or (J.REQUEST_ID in (select ID from REQUEST where REQUEST.CONTRAGENT_ID=:CONTRAGENT_ID)))';
      Journal.ParamByName('CONTRAGENT_ID').Value := ContragentID;
    end else if ((RequestID>0) and (ContragentID>0)) then begin
      Journal.MainWhereClause := '(J.REQUEST_ID = :REQUEST_ID) OR (J.CONTRAGENT_ID = :CONTRAGENT_ID)';
      Journal.ParamByName('REQUEST_ID').Value := RequestID;
      Journal.ParamByName('CONTRAGENT_ID').Value := ContragentID;
    end;
    Journal.Open;
    if _id>0 then
      Journal.Locate('id', _id, []);
    Journal.Last;
  finally
    Journal.EnableControls;
  end;
end;

procedure TframeJournal.bbCooperationClick(Sender: TObject);
begin
  if ContragentID>0 then begin
  fmCooperationEdit := TfmCooperationEdit.Create(self);
  try
    fmCooperationEdit.ContragentID := ContragentID;
    if fmCooperationEdit.ShowModal = mrOK then begin
      Journal.ReopenLocate('ID');
    end;
  finally
    FreeAndNil(fmCooperationEdit);
  end;
  end;
end;

procedure TframeJournal.SetAutoID(const Value: integer);
begin
  bbCooperation.Visible := ivNever;
  FAutoID := Value;
  bbRefresh.Click;
end;

procedure TframeJournal.SetAutoServiceID(const Value: integer);
begin
  bbCooperation.Visible := ivNever;
  FAutoServiceID := Value;
  bbRefresh.Click;
end;

procedure TframeJournal.SetContragentID(const Value: integer);
begin
  bbCooperation.Visible := ivAlways;
  FContragentID := Value;
  bbRefresh.Click;
end;

procedure TframeJournal.SetRequestID(const Value: integer);
begin
  FRequestID := Value;
  bbRefresh.Click;
end;

procedure TframeJournal.SetRouteCardChangeID(const Value: integer);
begin
  FRouteCardChangeID := Value;
  bbRefresh.Click;
end;

procedure TframeJournal.SetTenderID(const Value: Integer);
begin
  FTenderID := Value;
end;


end.
