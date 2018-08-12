unit u_fmObespechReestr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_fmMDIChild, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, dxBar, cxClasses,
  FIBDatabase, pFIBDatabase, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet, cxCurrencyEdit,
  cxImageComboBox, cxCalendar, cxTextEdit, cxContainer, cxSplitter, cxMemo,
  cxDBEdit;

type
  TfmObespechReestr = class(TfmMDIChild)
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1CONTRAGENT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1USER_ID: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1LOCK_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1UNLOCK_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1ORGANIZATION_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1MANAGER_NAME: TcxGridDBColumn;
    bbFilter: TdxBarSubItem;
    bbFilter0: TdxBarButton;
    bbFilter1: TdxBarButton;
    bbFilter2: TdxBarButton;
    bbFilter3: TdxBarButton;
    DESCRIPTION: TcxDBMemo;
    cxSplitter1: TcxSplitter;
    bbContragent: TdxBarButton;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsDATADataChange(Sender: TObject; Field: TField);
    procedure bbContragentClick(Sender: TObject);
    procedure bbFilterCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmObespechReestr: TfmObespechReestr;

implementation
uses u_DM;
{$R *.dfm}

procedure TfmObespechReestr.bbContragentClick(Sender: TObject);
begin
  inherited;
  try
    DM.EditContragent(DATA.FieldByName('CONTRAGENT_ID').Value);
  finally
    DATA.Refresh;
  end;
end;

procedure TfmObespechReestr.bbFilterCloseUp(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

procedure TfmObespechReestr.bbRefreshClick(Sender: TObject);
var
  _s, _s1 : string;
  _id : integer;
begin
  inherited;
  if not DATA.isEmpty then
    _id := DATA.FBN('ID').AsInteger
  else
    _id := 0;

  DATA.DisableControls;
  Wait(1);
  DATA.Close;
  try
    _s := '-1';
    _s1 := '';
    if bbFilter0.Down then begin
      _s := _s+', 0';
      _s1 := _s1+' Черновик'
    end;
    if bbFilter1.Down then begin
      _s := _s+', 1';
      _s1 := _s1+' Заблокировано'
    end;
    if bbFilter2.Down then begin
      _s := _s+', 2';
      _s1 := _s1+' Вернулось'
    end;
    if bbFilter3.Down then begin
      _s := _s+', 3';
      _s1 := _s1+' Архив'
    end;
    DATA.MainWhereClause := 'O.STATUS in ('+_s+')';
    if _s1<>'' then
      bbFilter.Caption := 'Фильтр: '+_s1
    else
      bbFilter.Caption := 'Фильтр: ---';
    DATA.Open;
    if _id>0 then begin
      if not DATA.Locate('ID', _id, []) then
        DATA.First;

    end;
  finally
    Data.EnableControls;
    Wait(0);
  end;
end;

procedure TfmObespechReestr.dsDATADataChange(Sender: TObject; Field: TField);
begin
  inherited;
  bbContragent.Enabled := ((not DATA.isEmpty) and (DATA.FBN('CONTRAGENT_ID').Value<>NULL));

end;

procedure TfmObespechReestr.FormShow(Sender: TObject);
begin
  inherited;
  bbRefresh.Click();
end;

end.
