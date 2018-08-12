unit u_frameAutoServiceReestr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, u_DM, cxClasses, dxBar, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, FIBDataSet, pFIBDataSet, cxImageComboBox, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, FIBDatabase, pFIBDatabase;

type
  TframeAutoServiceReestr = class(TFrame)
    Dock: TdxBarDockControl;
    BM: TdxBarManager;
    BMBar1: TdxBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    bbRefresh: TdxBarButton;
    bbAdd: TdxBarButton;
    bbEdit: TdxBarButton;
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    SERVICE_TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1DATE_START: TcxGridDBColumn;
    cxGrid1DBTableView1DATE_PLAN: TcxGridDBColumn;
    cxGrid1DBTableView1DATE_END: TcxGridDBColumn;
    cxGrid1DBTableView1NOTES: TcxGridDBColumn;
    cxGrid1DBTableView1NOTES_STO: TcxGridDBColumn;
    cxGrid1DBTableView1NONES_BOSS_PRODUTION: TcxGridDBColumn;
    trAutoServiceReestrRead: TpFIBTransaction;
    trAutoServiceReestrWrite: TpFIBTransaction;
    procedure bbAddClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
    procedure dsDATADataChange(Sender: TObject; Field: TField);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    FAutoID: integer;
    procedure SetAutoID(const Value: integer);
    { Private declarations }
  public
    property AutoID : integer read FAutoID write SetAutoID;
    procedure AfterConstruction; override;
  end;

implementation

uses u_fmAutoServiceEdit;

{$R *.dfm}

{ TframeAutoServiceReestr }

procedure TframeAutoServiceReestr.AfterConstruction;
begin
  inherited;
  DM.LoadEditRepoImageCombo(TcxImageComboBoxProperties(SERVICE_TYPE.Properties), 117);
end;

procedure TframeAutoServiceReestr.bbAddClick(Sender: TObject);
begin
  fmAutoServiceEdit := TfmAutoServiceEdit.Create(self);
  try
    fmAutoServiceEdit.AutoID := self.AutoID;
    fmAutoServiceEdit.ShowModal;
    bbRefresh.Click();
  finally
    FreeAndNil(fmAutoServiceEdit);
  end;
end;

procedure TframeAutoServiceReestr.bbEditClick(Sender: TObject);
begin
  fmAutoServiceEdit := TfmAutoServiceEdit.Create(self);
  try
    fmAutoServiceEdit.AutoID := self.AutoID;
    fmAutoServiceEdit.ID := DATA.FBN('ID').Value;
    fmAutoServiceEdit.ShowModal;
    bbRefresh.Click();
  finally
    FreeAndNil(fmAutoServiceEdit);
  end;
end;

procedure TframeAutoServiceReestr.bbRefreshClick(Sender: TObject);
var
  _id : Integer;
begin
  _id := 0;
  if ((DATA.Active) and (DATA.FBN('ID').Value<>NULL))then
    _id := DATA.FBN('ID').Value;
  try
    Wait(1);
    DATA.DisableControls;
    DATA.CloseOpen(false);
    if _id>0 then
      DATA.Locate('ID', _id, []);
  finally
    DATA.EnableControls;
    Wait(0);
  end;
end;

procedure TframeAutoServiceReestr.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if bbEdit.Enabled then
    bbEdit.Click;
end;

procedure TframeAutoServiceReestr.dsDATADataChange(Sender: TObject;
  Field: TField);
begin
  bbEdit.Enabled := not DATA.isEmpty;
end;

procedure TframeAutoServiceReestr.SetAutoID(const Value: integer);
begin
  DATA.ParamByname('AUTO_ID').Value := Value;
  FAutoID := Value;
  bbRefresh.Click();
end;

end.
