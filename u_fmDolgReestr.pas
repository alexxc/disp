unit u_fmDolgReestr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, DB, FIBDataSet, pFIBDataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, dxBarExtItems, cxCurrencyEdit, cxPCdxBarPopupMenu,
  u_frameJournal, cxPC, cxImageComboBox, cxCheckBox, cxSplitter, ExtCtrls,
  cxNavigator, dxBarBuiltInMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin,
  dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, FIBDatabase, pFIBDatabase;

type
  TfmDolgReestr = class(TfmMDIChild)
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    GridDBTableView1NAME: TcxGridDBColumn;
    GridDBTableView1AMOUNT: TcxGridDBColumn;
    GridDBTableView1AMOUNT_REMAIN: TcxGridDBColumn;
    GridDBTableView1CONTRAGENT_ID: TcxGridDBColumn;
    GridDBTableView1MANAGER_ID: TcxGridDBColumn;
    GridDBTableView1ORGANIZATION_NAME: TcxGridDBColumn;
    bbDS: TdxBarDateCombo;
    bbDE: TdxBarDateCombo;
    bbExport: TdxBarButton;
    Pages: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    frameJournal: TframeJournal;
    tabDetail: TcxTabSheet;
    dsDetail: TDataSource;
    Detail: TpFIBDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DOC_DT: TcxGridDBColumn;
    cxGrid1DBTableView1DOC_NUM: TcxGridDBColumn;
    cxGrid1DBTableView1DELIVERY_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT_REMAIN: TcxGridDBColumn;
    GridDBTableView1IS_MAT_EXISTS: TcxGridDBColumn;
    GridDBTableView1JOURNAL_DOLG_DAYS: TcxGridDBColumn;
    GridDBTableView1PAYMENT_DAYS_DELAY: TcxGridDBColumn;
    cxTabSheet3: TcxTabSheet;
    GridDocuments: TcxGrid;
    GridDocumentsDBTableView1: TcxGridDBTableView;
    GridDocumentsDBTableView1STATUS: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_DATE: TcxGridDBColumn;
    GridDocumentsDBTableView1DELIVERY_DATE: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_NUM: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_TYPE: TcxGridDBColumn;
    GridDocumentsDBTableView1AMOUNT_IN: TcxGridDBColumn;
    GridDocumentsDBTableView1AMOUNT_OUT: TcxGridDBColumn;
    GridDocumentsDBTableView1AMOUNT_DOLG: TcxGridDBColumn;
    GridDocumentsDBTableView1DESCRIPTION: TcxGridDBColumn;
    GridDocumentsDBTableView1IN_CONTROL: TcxGridDBColumn;
    GridDocumentsDBTableView1DOC_DESCRIPTION: TcxGridDBColumn;
    GridDocumentsLevel1: TcxGridLevel;
    PanelTOP: TPanel;
    Balance: TpFIBDataSet;
    dsBalance: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    GridDBTableView1DEBTOR_TYPE: TcxGridDBColumn;
    GridDBTableView1GROUP_NAME: TcxGridDBColumn;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
    procedure dsDATADataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDolgReestr: TfmDolgReestr;

implementation
uses u_DM;
{$R *.dfm}

procedure TfmDolgReestr.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(Grid);
end;

procedure TfmDolgReestr.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  try
    DATA.DisableControls;
    DATA.Close;
    DATA.ParamByName('DS').AsDate := bbDS.Date;
    DATA.ParamByName('DE').AsDate := bbDE.Date;
    DATA.Open;
  finally
    DATA.EnableControls;
    Wait(0);
  end;

end;

procedure TfmDolgReestr.dsDATADataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not(DATA.EOF) then begin
    Wait(1);
    try
      frameJournal.ContragentID := DATA.FBN('CONTRAGENT_ID').Value;
      Detail.DisableControls;
      Balance.DisableControls;

      Detail.Close;
      Detail.ParamByName('DS').AsDate := DATA.ParamByName('DS').AsDate;
      Detail.ParamByName('DE').AsDate := DATA.ParamByName('DE').AsDate;
      Detail.ParamByName('CONTRAGENT_ID').Value := DATA.FieldByName('CONTRAGENT_ID').Value;
      Detail.Open;

      Balance.Close;
      Balance.ParamByName('CONTRAGENT_ID').Value := DATA.FieldByName('CONTRAGENT_ID').Value;
      Balance.Open;

    finally
      Detail.EnableControls;
      Balance.EnableControls;
      Wait(0);
    end;
  end else begin
    Detail.Close;
    Balance.Close;
    frameJournal.Enabled := false;
  end;
end;

procedure TfmDolgReestr.FormShow(Sender: TObject);
begin
  inherited;
  Pages.ActivePage := tabDetail;
end;

end.
