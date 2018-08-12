unit u_fmScanDogReestr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, FIBDataSet, pFIBDataSet,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxImageComboBox, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxNavigator, FIBDatabase,
  pFIBDatabase;

type
  TfmScanDogReestr = class(TfmMDIChild)
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    dsDATA: TDataSource;
    DATA: TpFIBDataSet;
    GridDBTableView1EXT: TcxGridDBColumn;
    GridDBTableView1CREATED_BY_USER_ID: TcxGridDBColumn;
    GridDBTableView1NOMER_DOG: TcxGridDBColumn;
    GridDBTableView1DATE_START: TcxGridDBColumn;
    GridDBTableView1DATE_END: TcxGridDBColumn;
    GridDBTableView1DOG_TYPE: TcxGridDBColumn;
    GridDBTableView1DESCRIPTION: TcxGridDBColumn;
    GridDBTableView1NAME: TcxGridDBColumn;
    bbExport: TdxBarButton;
    bbEdit: TdxBarButton;
    bbViewDoc: TdxBarButton;
    bbAddScan: TdxBarButton;
    GridDBTableView1DOC_DT: TcxGridDBColumn;
    GridDBTableView1SUMMER_DATE: TcxGridDBColumn;
    GridDBTableView1WINTER_DATE: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure bbViewDocClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
    procedure bbExportClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure dsDATADataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    procedure ApplyRights; override;
  end;

var
  fmScanDogReestr: TfmScanDogReestr;

implementation
uses u_DM, u_fmDogUpload;

{$R *.dfm}

procedure TfmScanDogReestr.ApplyRights;
begin
  inherited;
  if not (user.isAdmin or user.isOwner or user.isDirector) then begin
    bbExport.Visible := ivNever;
    bbEdit.Visible := ivNever;
  end;

end;

procedure TfmScanDogReestr.bbEditClick(Sender: TObject);
begin
  inherited;
  fmDogUpload := TfmDogUpload.Create(Application);
  try
    fmDogUpload.ContragentID := DATA.FieldByName('CONTRAGENT_ID').Value;
    fmDogUpload.ID := DATA.FieldByName('ID').Value;
    if fmDogUpload.ShowModal = mrOK then begin
      try
        DATA.DisableControls;
        DATA.CloseOpen(true);
        if not DATA.Locate('ID', fmDogUpload.ID, []) then
          DATA.First;
      finally
        DATA.EnableControls;
      end;
    end;
  finally
    FreeAndNil(fmDogUpload);
  end;
end;

procedure TfmScanDogReestr.bbExportClick(Sender: TObject);
begin
  inherited;
  ExportGrid(Grid);
end;

procedure TfmScanDogReestr.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  try
    DATA.DisableControls;
    DATA.ReopenLocate('ID');
  finally
    DATA.EnableControls;
    Wait(0);
  end;

end;

procedure TfmScanDogReestr.bbViewDocClick(Sender: TObject);
begin
  inherited;
  try
    DM.ViewDoc(DATA.FieldByName('ID').Value);
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfmScanDogReestr.dsDATADataChange(Sender: TObject; Field: TField);
begin
  inherited;
  bbViewDoc.Enabled := not DATA.IsEmpty;
  bbEdit.Enabled := not DATA.IsEmpty;

end;

procedure TfmScanDogReestr.FormShow(Sender: TObject);
begin
  inherited;
  bbRefresh.Click;
  Wait(0);
end;

end.
