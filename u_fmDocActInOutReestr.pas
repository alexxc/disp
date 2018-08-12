unit u_fmDocActInOutReestr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, DB, FIBDataSet, pFIBDataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxImageComboBox, cxCalendar,
  cxTextEdit, cxCurrencyEdit, dxBarExtItems, cxBarEditItem, cxGridDBTableView,
  cxSplitter, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid,
  FIBDatabase, pFIBDatabase,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmDocActInOutReestr = class(TfmMDIChild)
    DOC: TpFIBDataSet;
    dsDOC: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    GridDoc: TcxGridDBBandedTableView;
    GridDocID: TcxGridDBBandedColumn;
    GridDocDOC_DT: TcxGridDBBandedColumn;
    GridDocDOC_NUM: TcxGridDBBandedColumn;
    GridDocCONTRAGENT_ID: TcxGridDBBandedColumn;
    GridDocFROM_TYPE: TcxGridDBBandedColumn;
    GridDocFROM_ID: TcxGridDBBandedColumn;
    GridDocFROM_NAME: TcxGridDBBandedColumn;
    GridDocCONTRAGENT_NAME: TcxGridDBBandedColumn;
    cxSplitter1: TcxSplitter;
    Detail: TpFIBDataSet;
    dsDetail: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1DOC_DT: TcxGridDBColumn;
    cxGrid2DBTableView1DOC_NUM: TcxGridDBColumn;
    cxGrid2DBTableView1QTY_OUT: TcxGridDBColumn;
    cxGrid2DBTableView1QTY_IN: TcxGridDBColumn;
    cxGrid2DBTableView1ADDRESS: TcxGridDBColumn;
    cxGrid2DBTableView1MAT_NAME: TcxGridDBColumn;
    dxBarStatic1: TdxBarStatic;
    bbFilterClear: TdxBarButton;
    bbContragent: TcxBarEditItem;
    GridDocCODE: TcxGridDBBandedColumn;
    bbActPrint: TdxBarButton;
    GridDocQTY_IN: TcxGridDBBandedColumn;
    GridDocQTY_OUT: TcxGridDBBandedColumn;
    ORGNAME: TcxGridDBBandedColumn;
    GridDocSTATUS: TcxGridDBBandedColumn;
    GridDocCNT: TcxGridDBBandedColumn;
    GridDocADDRESS: TcxGridDBBandedColumn;
    cxGrid2DBTableView1SQYARE_OUT: TcxGridDBColumn;
    cxGrid2DBTableView1SQYARE_IN: TcxGridDBColumn;
    GridDocMANAGER_NAME: TcxGridDBBandedColumn;
    procedure bbRefreshClick(Sender: TObject);
    procedure GridDocSelectionChanged(Sender: TcxCustomGridTableView);
    procedure bbFilterClearClick(Sender: TObject);
    procedure bbContragentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbContragentPropertiesEditValueChanged(Sender: TObject);
    procedure bbContragentCurChange(Sender: TObject);
    procedure dsDOCDataChange(Sender: TObject; Field: TField);
    procedure GridDocDblClick(Sender: TObject);
    procedure bbActPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  fmDocActInOutReestr: TfmDocActInOutReestr;

implementation

uses u_DM, u_fmProgress, frxClass, cxProgressBar;

{$R *.dfm}

procedure TfmDocActInOutReestr.bbActPrintClick(Sender: TObject);
var
  _x : integer;
  _is_first : boolean;
begin
  inherited;
  if (GridDoc.Controller.SelectedRecordCount>0) then begin
    DM.LoadReport('Акт приема передачи', false);
    fmProgress := TfmProgress.Create(self);
    fmProgress.Caption := 'Формирование пакета документов';
    fmProgress.ProgressBar.Properties.Max := GridDoc.Controller.SelectedRecordCount;
    fmProgress.ProgressBar.Position := 0;
    fmProgress.ProgressBar.Properties.ShowTextStyle := cxtsText;
    fmProgress.Visible := true;
    Application.ProcessMessages;
    _is_first := true;
    try
      for _x := 0 to GridDoc.Controller.SelectedRecordCount - 1 do begin
        if not fmProgress.Visible then
          break;
        DM.Report.Variables.Variables['ID'] := GridDoc.Controller.SelectedRecords[_x].Values[GridDocID.Index];
        DM.Report.Variables.Variables['PREV'] := 0;
        DM.Report.PrepareReport(_is_first);
        if GridDoc.Controller.SelectedRecords[_x].Values[GridDocCNT.Index]<=3 then
          DM.Report.Variables.Variables['PREV'] := 1;
        DM.Report.PrepareReport(false);
        _is_first := false;
        fmProgress.ProgressBar.Position := fmProgress.ProgressBar.Position+1;
        fmProgress.ProgressBar.Properties.Text := 'Акт '+IntToStr(_x+1)+' из '+IntToStr(GridDoc.Controller.SelectedRecordCount);
        Application.ProcessMessages;
      end;
      fmProgress.Close();
    finally
      FreeAndNil(fmProgress);
    end;
    DM.Report.ShowPreparedReport;
  end;
end;

procedure TfmDocActInOutReestr.bbContragentCurChange(Sender: TObject);
begin
  inherited;
  bbContragent.EditValue := bbContragent.CurEditValue;
end;

procedure TfmDocActInOutReestr.bbContragentKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if KEY=VK_RETURN then
    bbRefresh.Click();

end;

procedure TfmDocActInOutReestr.bbRefreshClick(Sender: TObject);
var
  _contragent: string;
  _where :string;
begin
  inherited;
  self.SelectNext(ActiveControl, True, false);
  ActiveControl := cxGrid1;
  Wait(1);
  DOC.DisableControls;
  DOC.Close;
  bbContragent.Enabled := false;
  bbRefresh.Enabled := false;
  bbClose.Enabled := false;
  try
    _where := '1=1 ';
    _contragent := uppercase(trim(bbContragent.EditValue));
    if bbDateStart.Text<>'' then
       _where := _where + ' and cast(DOC.DOC_DT as T_DATE)>='''+DateToStr(bbDateStart.Date)+'''';
    if bbDateEnd.Text<>'' then
       _where := _where + ' and cast(DOC.DOC_DT as T_DATE)<='''+DateToStr(bbDateEnd.Date)+'''';
    if (_contragent<>'') then
      _where := _where + ' and DOC.STATUS=2 and upper(C.NAME) containing '''+_contragent+'''';
    DOC.MainWhereClause :=_where;
    DOC.Open;
  finally
    DOC.EnableControls;
    bbContragent.Enabled := true;
    bbRefresh.Enabled := true;
    bbClose.Enabled := true;
    Wait(0);
  end;
end;

procedure TfmDocActInOutReestr.dsDOCDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  bbActPrint.Enabled := not DOC.IsEmpty;
end;

procedure TfmDocActInOutReestr.bbContragentPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  bbContragent.EditValue := bbContragent.EditValue;
end;

procedure TfmDocActInOutReestr.bbFilterClearClick(Sender: TObject);
begin
  inherited;
  bbContragent.EditValue := '';
  bbDateStart.Text := '';
  bbDateEnd.Text := '';
end;

procedure TfmDocActInOutReestr.GridDocDblClick(Sender: TObject);
begin
  inherited;
  if bbActPrint.Enabled then
    bbActPrint.Click();
end;

procedure TfmDocActInOutReestr.GridDocSelectionChanged(
  Sender: TcxCustomGridTableView);
var
  _i : integer;
  _recs, _s : string;
begin
  inherited;
  Wait(1);
  Detail.DisableControls;
  Detail.Close;
  try
    if (Doc.IsEmpty or Doc.ControlsDisabled) then
      exit;
    _recs := '-1';
    for _i := 0 to GridDoc.Controller.SelectedRecordCount-1 do begin
      _s := GridDoc.Controller.SelectedRecords[_i].Values[GridDocID.Index];
      _recs := _recs + ', '+ _s;
    end;
    Detail.MainWhereClause := ' D.ID  in ('+_recs+')';
    Detail.open;
  finally
    Detail.EnableControls;
    Wait(0);
  end;
end;


end.
