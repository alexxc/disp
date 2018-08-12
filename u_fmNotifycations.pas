unit u_fmNotifycations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, u_DM, DB, FIBDataSet,
  pFIBDataSet,  dxBarExtDBItems, dxBarExtItems, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxNavigator, cxImageComboBox, cxMemo,
  FIBQuery, pFIBQuery, cxGridCustomView, cxGrid, FIBDatabase, pFIBDatabase,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmNotifycations = class(TfmMDIChild)
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    bbDate: TdxBarDateCombo;
    bbUser: TdxBarLookupCombo;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    GridDBTableView1ID: TcxGridDBColumn;
    GridDBTableView1RECORD_TYPE: TcxGridDBColumn;
    GridDBTableView1MESS: TcxGridDBColumn;
    GridDBTableView1REF_NAME: TcxGridDBColumn;
    GridDBTableView1NAME: TcxGridDBColumn;
    GridDBTableView1FULLNAME: TcxGridDBColumn;
    GridDBTableView1CONTROL_DATE: TcxGridDBColumn;
    GridDBTableView1CREATED_DT: TcxGridDBColumn;
    GridDBTableView1USER_NAME: TcxGridDBColumn;
    bbAllUsers: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    bbNotyfy5: TdxBarButton;
    bbNotyfy60: TdxBarButton;
    bbNotyfyClose30: TdxBarButton;
    bbNotyfy10: TdxBarButton;
    bbActions: TdxBarSubItem;
    bBSetNotifyComplete: TdxBarButton;
    bbSetNotifyNewdate: TdxBarButton;
    GridDBTableView1IS_OUTDATED: TcxGridDBColumn;
    MANAGER_NAME: TcxGridDBColumn;
    IS_REQUEST: TcxGridDBColumn;
    REQUEST_ID: TcxGridDBColumn;
    bbGo: TdxBarSubItem;
    bbGoRequest: TdxBarButton;
    bbGoContragent: TdxBarButton;
    bbGoRecord: TdxBarButton;
    PM: TdxBarPopupMenu;
    QW: TpFIBQuery;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbAllUsersClick(Sender: TObject);
    procedure bbCloseClick(Sender: TObject);
    procedure bBSetNotifyCompleteClick(Sender: TObject);
    procedure bbSetNotifyNewdateClick(Sender: TObject);
    procedure dsDATADataChange(Sender: TObject; Field: TField);
    procedure IS_REQUESTGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure bbGoRequestClick(Sender: TObject);
    procedure bbGoContragentClick(Sender: TObject);
    procedure bbGoRecordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmNotifycations: TfmNotifycations;

implementation
uses u_fmMain, u_fmRequestReestr, u_fmContragents;

{$R *.dfm}

procedure TfmNotifycations.bbCloseClick(Sender: TObject);
var
  T : integer;
begin
  if (Sender is TdxBarButton) then begin
    T := (Sender as TdxBarButton).Tag;
    if T>0 then begin
      fmMain.TimerAlerts.Enabled := false;
      fmMain.TimerAlerts.Interval := T * 60 * 1000;
      fmMain.TimerAlerts.Enabled := true;
    end else begin
      fmMain.TimerAlerts.Enabled := false;
    end;
  end;
  inherited;
end;

procedure TfmNotifycations.bbGoContragentClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  if fmMain.bbContragents.Visible = ivAlways then begin
    fmMain.bbContragents.Click;
    try
      _id := fmContragents.Contragents.FBN('ID').Value;
      fmContragents.Contragents.DisableControls;
      if not fmContragents.Contragents.Locate('ID', Data.FBN('CONTRAGENT_ID').Value, []) then
        fmContragents.Contragents.Locate('ID', _id, []);
    finally
      fmContragents.Contragents.EnableControls;
    end;
  end;
end;

procedure TfmNotifycations.bbGoRecordClick(Sender: TObject);
begin
  inherited;
  if DATA.FBN('CONTRAGENT_ID').Value > 0 then begin
    bbGoContragent.Click;
    fmContragents.Pages.ActivePage := fmContragents.tabJournal;
    fmContragents.frameJournal.Journal.Locate('ID', DATA.FBN('ID').Value, []);
  end else begin
    bbGoRequest.Click;
    fmRequestReestr.Pages.ActivePage := fmRequestReestr.tabJournal;
    fmRequestReestr.frameJournal.Journal.Locate('ID', DATA.FBN('ID').Value, []);
  end;
end;

procedure TfmNotifycations.bbGoRequestClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  if fmMain.bbRequestReestr.Visible=ivAlways then begin
    fmMain.bbRequestReestr.Click;
    try
      fmRequestReestr.Request.DisableControls;
      _id := fmRequestReestr.Request.FBN('ID').Value;
      if not fmRequestReestr.Request.Locate('ID', Data.FBN('REQUEST_ID').Value, []) then begin
        fmRequestReestr.Request.Close;
        fmRequestReestr.Request.MainWhereClause := fmRequestReestr.Request.MainWhereClause + ' or R.ID='+Data.FBN('REQUEST_ID').AsString;
        fmRequestReestr.Request.Open;
        if not fmRequestReestr.Request.Locate('ID', Data.FBN('REQUEST_ID').Value, []) then
          fmRequestReestr.Request.Locate('ID', _id, []);
      end;
    finally
      fmRequestReestr.Request.EnableControls;
    end;
  end;
end;

procedure TfmNotifycations.bbRefreshClick(Sender: TObject);
var
  _id : integer;
begin
  inherited;
  Wait(1);
  fmMain.CheckAlerts;
  DATA.DisableControls;
  try
    if not DATA.IsEmpty then
      _id := DATA.FBN('ID').Value
    else
      _id := -1;
    if not (bbAllusers.Down) then
      DATA.ParamByName('USER_ID').Value := bbUser.KeyValue
    else
      DATA.ParamByName('USER_ID').Value := null;
    DATA.ParamByName('DATE').Value := bbDate.Date;
    DATA.CloseOpen(TRUE);
    if _id>-1 then begin
      if not DATA.Locate('ID', _id, []) then
        DATA.First;
    end;
  finally
    DATA.EnableControls;
    Wait(0);
  end;
end;

procedure TfmNotifycations.bBSetNotifyCompleteClick(Sender: TObject);
begin
  inherited;
  QW.Close;
  QW.SQL.text := 'update CONTRAGENT_JOURNAL set COMPLETE_DT=current_timestamp, MESSAGE = MESSAGE||:M where ID=:ID';
  QW.ParamByname('ID').Value := DATA.FieldByname('ID').Value;
  QW.ParamByname('M').AsString := #10+DateTimeToStr(Now)+' пользователь '+User.Name+' отметил контроль выполенным';
  QW.ExecQuery;
  QW.Transaction.Commit;
  bbRefresh.Click;

end;

procedure TfmNotifycations.bbSetNotifyNewdateClick(Sender: TObject);
var
  NewDate, OldDate : TDateTime;
begin
  inherited;
  OldDate := DATA.FBN('CONTROL_DATE').AsDateTime;
  Newdate := OldDate;
  if DM.InputDate(NewDate, 'Перенос на дату') and (OldDate<>NewDate) then begin
    QW.Close;
    QW.SQL.text := 'update CONTRAGENT_JOURNAL set CONTROL_DATE=:D, MESSAGE = MESSAGE||:M where ID=:ID';
    QW.ParamByname('ID').AsInteger := DATA.FieldByname('ID').Value;
    QW.ParamByname('D').Value := NewDate;
    QW.ParamByname('M').AsString := #10+DateTimeToStr(Now)+' пользователь '+User.Name+' перенес контрольную дату с '+dateToStr(OldDate)+' на '+DateToStr(NewDate);
    QW.ExecQuery;
    QW.Transaction.Commit;
    QW.CLose;
    bbRefresh.Click;
  end;

end;

procedure TfmNotifycations.dsDATADataChange(Sender: TObject; Field: TField);
begin
  inherited;
  bbActions.Enabled := not DATA.isEmpty;
  bbGo.Enabled := not DATA.isEmpty;
  bbGoRecord.Enabled := not DATA.isEmpty;
  if not DATA.isEmpty then begin
    bbGoRequest.Enabled := DATA.FBN('IS_REQUEST').Value = 1;
    bbGoContragent.Enabled := DATA.FBN('IS_REQUEST').Value = 0;
  end;
end;

procedure TfmNotifycations.bbAllUsersClick(Sender: TObject);
begin
  inherited;
  bbUser.Enabled := not bbAllUsers.Down;
  bbRefresh.Click();
end;

procedure TfmNotifycations.FormShow(Sender: TObject);
begin
  inherited;
  fmMain.TimerAlerts.Enabled := false;
  bbUser.KeyValue := User.ID;
  if (not User.isAdmin) and (not User.isDirector) and (not User.isSysAdmin) and (not User.isOwner) then begin
    bbUser.Visible := ivNever;
    bbAllUsers.Visible := ivNever;
  end;
  bbRefresh.Click;
end;

procedure TfmNotifycations.IS_REQUESTGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  if ARecord.Values[IS_REQUEST.Index]=1 then begin
    AText := ARecord.Values[REQUEST_ID.Index];
  end else begin
    AText := '';
  end;
end;

end.
