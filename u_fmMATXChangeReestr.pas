unit u_fmMATXChangeReestr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_DM, u_fmMDIChild, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FIBDataSet, pFIBDataSet, cxGridLevel,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxNavigator, cxTextEdit,
  cxCurrencyEdit, cxImageComboBox, cxCheckBox, dxBarExtItems, dxBar,
  cxBarEditItem, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, FIBDatabase, pFIBDatabase,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmMATXChangeReestr = class(TfmMDIChild)
    TableView: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    TableViewID: TcxGridDBColumn;
    TableViewCONTRAGENT_NAME: TcxGridDBColumn;
    TableViewADDRESS: TcxGridDBColumn;
    TableViewMAT_NAME: TcxGridDBColumn;
    TableViewSQUARE: TcxGridDBColumn;
    TableViewSQUARE_ALL: TcxGridDBColumn;
    TableViewPRICE_REPLACE_SQUARE: TcxGridDBColumn;
    TableViewPRICE_REPLACE: TcxGridDBColumn;
    TableViewPRICE_PERIOD: TcxGridDBColumn;
    TableViewPRICE_REFUND: TcxGridDBColumn;
    TableViewSERVICE_NAME: TcxGridDBColumn;
    TableViewQTY_MAT: TcxGridDBColumn;
    TableViewWEEKS: TcxGridDBColumn;
    TableViewIS_ACTIVE: TcxGridDBColumn;
    TableViewREGION_NAME: TcxGridDBColumn;
    bbExport: TdxBarButton;
    bbActiveOnly: TdxBarButton;
    TableViewDAYS_PIC: TcxGridDBColumn;
    TableViewDAYS_INT: TcxGridDBColumn;
    TableViewROUTE_NAME: TcxGridDBColumn;
    TableViewSTORAGE_NAME: TcxGridDBColumn;
    bbDay1: TcxBarEditItem;
    dxBarStatic1: TdxBarStatic;
    bbDay2: TcxBarEditItem;
    bbDay3: TcxBarEditItem;
    bbDay4: TcxBarEditItem;
    bbDay5: TcxBarEditItem;
    bbDay6: TcxBarEditItem;
    bbDay7: TcxBarEditItem;
    TableViewMANAGER_ID: TcxGridDBColumn;
    TableViewSQUARE_IN_WEEK: TcxGridDBColumn;
    TableViewPRICE_IN_WEEK: TcxGridDBColumn;
    TableViewDESCRIPTION_ADD: TcxGridDBColumn;
    TableViewIS_MAT_FILTER: TcxGridDBColumn;
    bbResetGrid: TdxBarButton;
    TableViewORGANIZATION_NAME: TcxGridDBColumn;
    TableViewGROUP_NAME: TcxGridDBColumn;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
    procedure bbActiveOnlyClick(Sender: TObject);
    procedure cxGrid1DBTableView1DAYSGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure TableViewDAYS_PICCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure TableViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbResetGridClick(Sender: TObject);
  private
    GridSettingToSave : boolean;
  public
    procedure ApplyRights; override;
  end;

var
  fmMATXChangeReestr: TfmMATXChangeReestr;

implementation

{$R *.dfm}

procedure TfmMATXChangeReestr.ApplyRights;
begin
  inherited;
  if (user.isManager or User.isHManager) and (User.LoginName<>'VEDENEVA') then begin
    bbExport.Visible := ivNever;
  end;
end;

procedure TfmMATXChangeReestr.bbActiveOnlyClick(Sender: TObject);
begin
  inherited;
  bbrefresh.Click();
end;

procedure TfmMATXChangeReestr.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(Grid);
end;

procedure TfmMATXChangeReestr.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  Data.DisableControls;
  try
    DATA.Close;
    DATA.ParamByName('IS_DAY1').Value := bbday1.EditValue;
    DATA.ParamByName('IS_DAY2').Value := bbday2.EditValue;
    DATA.ParamByName('IS_DAY3').Value := bbday3.EditValue;
    DATA.ParamByName('IS_DAY4').Value := bbday4.EditValue;
    DATA.ParamByName('IS_DAY5').Value := bbday5.EditValue;
    DATA.ParamByName('IS_DAY6').Value := bbday6.EditValue;
    DATA.ParamByName('IS_DAY7').Value := bbday7.EditValue;
    if (bbActiveOnly.Down) then
      DATA.ParamByName('ACTIVE_ONLY').AsInteger := 1
    else
      DATA.ParamByName('ACTIVE_ONLY').AsInteger := 0;
    DATA.Open;
  finally
    Data.EnableControls;
    Wait(0);
  end;
end;

procedure TfmMATXChangeReestr.bbResetGridClick(Sender: TObject);
var
  fn : string;
begin
  inherited;
  if (MessageBox(0, 'Сбросить настройки колонок?', 'Подтвердите', MB_ICONQUESTION or MB_YESNO) = idYes) then begin
    fn := ChangeFileExt(Application.ExeName, '.MATXCHANGE.ini');
    if FileExists(fn) then
      DeleteFile(fn);
      GridSettingToSave := false;
      MessageBox(0, 'Для завершения откройте окно заново', 'Настройки колонок', MB_ICONINFORMATION or MB_OK);
  end;
end;

procedure TfmMATXChangeReestr.cxGrid1DBTableView1DAYSGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  _s : string;
begin
  inherited;
  _s := '{\rtf1\fbidis\ansi\ansicpg1251\deff0{\fonttbl{\f0\fswiss\fprq2\fcharset204 Calibri;}{\f1\fnil Tahoma;}} '+
        '{\colortbl ;\red191\green191\blue191;\red148\green54\blue52;}'+
        '\viewkind4\uc1\pard\ltrpar'+
//        '\sa200\sl276\slmult1'+
        '\fi000\li000\ri000\sb000\sa000\sl000'+
        '\lang1049\f0\fs18\b';

  if AText[1] = '1' then _s := _s+ '\cf2' else _s := _s+'\cf1'; _s := _s + '\''cf\''cd\~';
  if AText[2] = '1' then _s := _s+ '\cf2' else _s := _s+'\cf1'; _s := _s+'\''c2\''d2\~';
  if AText[3] = '1' then _s := _s+ '\cf2' else _s := _s+'\cf1'; _s := _s+'\''d1\''d0\~';
  if AText[4] = '1' then _s := _s+ '\cf2' else _s := _s+'\cf1'; _s := _s+'\''d7\''d2\~';
  if AText[5] = '1' then _s := _s+ '\cf2' else _s := _s+'\cf1'; _s := _s+'\''cf\''cd\~';
  if AText[6] = '1' then _s := _s+ '\cf2' else _s := _s+'\cf1'; _s := _s+'\''d1\''c1\~';
  if AText[7] = '1' then _s := _s+ '\cf2' else _s := _s+'\cf1'; _s := _s+'\''c2\''d1\~';

  _s := _s + '\f1\fs16\par}';
  AText := _s;

end;

procedure TfmMATXChangeReestr.TableViewDAYS_PICCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  R:TRect;
  PenWidth : integer;
  BoxWidth : integer;
  val : variant;
  V : string;
  procedure Draw(T:string; AFlag: integer);
  begin
    if AFlag=1 then begin
        ACanvas.Canvas.Font.Color := clBlack;
        ACanvas.Pen.Color := TColor($000090);
        ACanvas.Canvas.Font.Style := [fsBold];
        ACanvas.Pen.Width := 1;
        ACanvas.Canvas.RoundRect(R, 4, 4);
    end else begin
        ACanvas.Pen.Color := TColor($B0B0B0);
        ACanvas.Pen.Width := 1;
        ACanvas.Canvas.Font.Style := [];
        ACanvas.Canvas.Font.Color := ACanvas.Pen.Color;
    end;

    ACanvas.Canvas.TextOut(R.Left+2, R.Top+2, T);
    R.Left := R.Left+BoxWidth;  R.Right := R.Left + BoxWidth - 4;
  end;

begin
  inherited;
  if not Assigned(AViewInfo) then
    exit;
  PenWidth := ACanvas.Pen.Width;
  try
    ACanvas.FillRect(AViewInfo.Bounds);
    ACanvas.Brush.Color := clWhite;
    val := AViewInfo.RecordViewInfo.GridRecord.Values[TableViewDAYS_INT.Index];
    if ((not VarIsNull(val)) and (Length(val)=7)) then begin
        V := Val;

        SetBkMode(ACanvas.Canvas.Handle,TRANSPARENT);
        R := AViewInfo.Bounds;

        BoxWidth := 22;
        R.Left := R.Left+2;  R.Right := R.Left + BoxWidth - 4;
        Inc(R.Top, 1); Dec(R.Bottom, 2);

        Draw('Пн', StrToInt(V[1]));
        Draw('Вт', StrToInt(V[2]));
        Draw('Ср', StrToInt(V[3]));
        Draw('Чт', StrToInt(V[4]));
        Draw('Пт', StrToInt(V[5]));
        Draw('Сб', StrToInt(V[6]));
        Draw('Вс', StrToInt(V[7]));
    end;
  except
    on e:Exception do Sleep(0);
  end;
  ACanvas.Pen.Width := PenWidth;
  ADone := true;// в этой строке не уверен
end;

procedure TfmMATXChangeReestr.TableViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
//var
//  vSQ : Variant;
//  vprice : Variant;
//  V : Currency;
begin
  inherited;
{  vPrice := TableView.DataController.Summary.FooterSummaryValues[3];
  vSQ := TableView.DataController.Summary.FooterSummaryValues[2];
  AText := '';
  if (not VarIsNull(vPrice)) and (not VarIsNull(vSQ) and vSQ<>0) then begin
    V := vPrice / vSQ;
    AText :=  FormatCurr('#,##0.00', V);
  end;
  }
end;

procedure TfmMATXChangeReestr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if GridSettingToSave then
    TableView.StoreToIniFile(ChangeFileExt(Application.ExeName, '.MATXCHANGE.ini'));
end;

procedure TfmMATXChangeReestr.FormShow(Sender: TObject);
begin
  inherited;
  TableView.RestoreFromIniFile(ChangeFileExt(Application.ExeName, '.MATXCHANGE.ini'));
  GridSettingToSave := true;
  bbrefresh.Click();
end;

end.
