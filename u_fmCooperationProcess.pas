unit u_fmCooperationProcess;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_DM, u_fmModal, cxGraphics, cxControls, cxLookAndFeels, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxImageComboBox, FIBQuery, pFIBQuery, dxmdaset, FIBDataSet, pFIBDataSet,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, dxBar,
  FIBDatabase, pFIBDatabase, cxLookAndFeelPainters, cxStyles,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmCooperationProcess = class(TfmModal)
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    GridTableView: TcxGridDBBandedTableView;
    GridTableViewID: TcxGridDBBandedColumn;
    GridTableViewNAME: TcxGridDBBandedColumn;
    GridTableViewIS_MAT_ACTIVE: TcxGridDBBandedColumn;
    GridTableViewMAT_SERVICE_QTY: TcxGridDBBandedColumn;
    GridTableViewCOOPERATION_STATUS: TcxGridDBBandedColumn;
    GridTableViewCOOPERATION_STATUS_NAME: TcxGridDBBandedColumn;
    GridTableViewCOOPERATION_STATUS_NEW: TcxGridDBBandedColumn;
    GridTableViewCOOPERATION_STATUS_NEW_NAME: TcxGridDBBandedColumn;
    GridTableViewLAST_ACT_DATE: TcxGridDBBandedColumn;
    GridTableViewACT_IN: TcxGridDBBandedColumn;
    GridTableViewACT_OUT: TcxGridDBBandedColumn;
    GridTableViewIS_PROCESS: TcxGridDBBandedColumn;
    bbSelectAll: TdxBarButton;
    bbClearAll: TdxBarButton;
    bbUpdateCurrent: TdxBarButton;
    bbUpdateAll: TdxBarButton;
    bbSelect: TdxBarButton;
    M: TdxMemData;
    MID: TIntegerField;
    MNAME: TWideStringField;
    MIS_MAT_ACTIVE: TIntegerField;
    MMAT_SERVICE_QTY: TIntegerField;
    MCOOPERATION_STATUS: TIntegerField;
    MCOOPERATION_STATUS_NAME: TWideStringField;
    MCOOPERATION_STATUS_NEW: TIntegerField;
    MCOOPERATION_STATUS_NEW_NAME: TWideStringField;
    MLAST_ACT_DATE: TDateField;
    MACT_IN: TIntegerField;
    MACT_OUT: TIntegerField;
    MIS_PROCESS: TSmallintField;
    QW: TpFIBQuery;
    procedure dsDATADataChange(Sender: TObject; Field: TField);
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridTableViewDblClick(Sender: TObject);
    procedure bbSelectClick(Sender: TObject);
    procedure bbSelectAllClick(Sender: TObject);
    procedure bbClearAllClick(Sender: TObject);
    procedure bbUpdateCurrentClick(Sender: TObject);
    procedure bbUpdateAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCooperationProcess: TfmCooperationProcess;

implementation

{$R *.dfm}

procedure TfmCooperationProcess.bbClearAllClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  Wait(1);
  _id:= M.FieldByName('ID').AsInteger;
  M.DisableControls;
  try
    M.First;
    while not M.EOF do begin
      if not (M.State in [dsInsert, TDatasetState.dsEdit]) then
        M.Edit;
      M.FieldByName('IS_PROCESS').Value := 0;
      M.Post;
      M.next;
    end;
    M.Locate('ID', _id, []);
  finally
    M.EnableControls;
    Wait(0);
  end;
end;

procedure TfmCooperationProcess.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(0);
  try
    M.DisableControls;
    M.Close;
    DATA.CloseOpen(FALSE);
    M.CopyFromDataSet(DATA);
    M.First();
  finally
    M.EnableControls;
    Wait(0);
  end;
end;

procedure TfmCooperationProcess.bbSelectAllClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  Wait(1);
  _id:= M.FieldByName('ID').AsInteger;
  M.DisableControls;
  try
    M.First;
    while not M.EOF do begin
      if not (M.State in [dsInsert, TDatasetState.dsEdit]) then
        M.Edit;
      M.FieldByName('IS_PROCESS').Value := 1;
      M.Post;
      M.next;
    end;
    M.Locate('ID', _id, []);
  finally
    M.EnableControls;
    Wait(0);
  end;
end;

procedure TfmCooperationProcess.bbSelectClick(Sender: TObject);
begin
  inherited;
  if not (M.State in [dsInsert, TDatasetState.dsEdit]) then
    M.Edit;
  if M.FieldByName('IS_PROCESS').Value = 0 then
    M.FieldByName('IS_PROCESS').Value := 1
  else
    M.FieldByName('IS_PROCESS').Value := 0;
  M.Post;
end;

procedure TfmCooperationProcess.bbUpdateAllClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  try
    M.First();
    M.DisableControls;
    QW.Close;
    QW.SQL.Text := 'update CONTRAGENTS_ATTR A set A.COOPERATION_STATUS = :STATUS where A.ID=:ID';
    while not M.EOF do begin
      if M.FieldByName('IS_PROCESS').Value = 1 then begin
        QW.Close;
        QW.ParamByName('ID').Value := M.FieldByname('ID').Value;
        QW.ParamByName('STATUS').Value := M.FieldByname('COOPERATION_STATUS_NEW').Value;
        QW.ExecQuery;
        M.Delete;
      end else begin
        M.Next;
      end;
    end;
    M.First;
    QW.Transaction.Commit;
  finally
    M.EnableControls;
    Wait(0);
  end;
end;

procedure TfmCooperationProcess.bbUpdateCurrentClick(Sender: TObject);
begin
  inherited;
  QW.Close;
  QW.SQL.Text := 'update CONTRAGENTS_ATTR A set A.COOPERATION_STATUS = :STATUS where A.ID=:ID';
  QW.ParamByName('ID').Value := M.FieldByname('ID').Value;
  QW.ParamByName('STATUS').Value := M.FieldByname('COOPERATION_STATUS_NEW').Value;
  QW.ExecQuery;
  QW.Transaction.Commit;
  M.Delete;
end;

procedure TfmCooperationProcess.dsDATADataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (not DATA.isEmpty) then begin
    bbSelect.Enabled := true;
    bbSelectAll.Enabled := true;
    bbClearAll.Enabled := true;
    bbUpdateCurrent.Enabled := true;
    bbUpdateAll.Enabled := true;
    if DATA.FBN('IS_PROCESS').Value=0 then begin
      bbSelect.Caption := 'Отметить';
    end else begin
      bbSelect.Caption := 'Снять отметку';
    end;
  end else begin
    bbSelect.Enabled := false;
    bbSelectAll.Enabled := false;
    bbClearAll.Enabled := false;
    bbUpdateCurrent.Enabled := false;
    bbUpdateAll.Enabled := false;
  end;
end;

procedure TfmCooperationProcess.FormShow(Sender: TObject);
begin
  inherited;
  bbRefresh.Click;
end;

procedure TfmCooperationProcess.GridTableViewDblClick(Sender: TObject);
begin
  inherited;
  if (bbSelect.Enabled) then
    bbSelect.Click();
end;

end.
