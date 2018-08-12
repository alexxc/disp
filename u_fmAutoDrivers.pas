unit u_fmAutoDrivers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, DB, FIBDataSet, pFIBDataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxNavigator, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, FIBDatabase,
  pFIBDatabase;

type
  TfmAutoDrivers = class(TfmMDIChild)
    AUTO_DRIVER: TpFIBDataSet;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    dsAUTO_DRIVER: TDataSource;
    GridDBTableView1ID: TcxGridDBColumn;
    GridDBTableView1NAME: TcxGridDBColumn;
    GridDBTableView1IS_ACTIVE: TcxGridDBColumn;
    GridDBTableView1FUEL_CARD_ID: TcxGridDBColumn;
    GridDBTableView1PRODUCTION_ID: TcxGridDBColumn;
    GridDBTableView1PHONE_MOBILE: TcxGridDBColumn;
    bbAdd: TdxBarButton;
    bbEdit: TdxBarButton;
    GridDBTableView1AUTO_LIST: TcxGridDBColumn;
    GridDBTableView1DESCRIPTION: TcxGridDBColumn;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
    procedure bbAddClick(Sender: TObject);
    procedure dsAUTO_DRIVERDataChange(Sender: TObject; Field: TField);
    procedure GridDBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAutoDrivers: TfmAutoDrivers;

implementation

uses u_DM, u_fmAutoDriverEdit;

{$R *.dfm}

procedure TfmAutoDrivers.bbAddClick(Sender: TObject);
begin
  inherited;
  fmAutoDriverEdit := TfmAutoDriverEdit.Create(self);
  try
    fmAutoDriverEdit.ID := 0;
    if fmAutoDriverEdit.ShowModal = mrOK then begin
      AUTO_DRIVER.DisableControls;
      Wait(1);
      try
        AUTO_DRIVER.CloseOpen(true);
        if not AUTO_DRIVER.Locate('ID', fmAutoDriverEdit.ID, []) then
          AUTO_DRIVER.First;
      finally
        AUTO_DRIVER.EnableControls;
        Wait(0);
      end;
    end;
  finally
    FreeAndNil(fmAutoDriverEdit);
  end;
end;

procedure TfmAutoDrivers.bbEditClick(Sender: TObject);
begin
  inherited;
  fmAutoDriverEdit := TfmAutoDriverEdit.Create(self);
  try
    fmAutoDriverEdit.ID := AUTO_DRIVER.FieldByname('ID').Value;
    if fmAutoDriverEdit.ShowModal = mrOK then begin
      AUTO_DRIVER.Refresh;
    end;
  finally
    FreeAndNil(fmAutoDriverEdit);
  end;
end;

procedure TfmAutoDrivers.bbRefreshClick(Sender: TObject);
begin
  inherited;
  Wait(1);
  AUTO_DRIVER.DisableControls;
  AUTO_DRIVER.Close;
  try
    AUTO_DRIVER.Open;

  finally
    AUTO_DRIVER.EnableControls;
    Wait(0);
  end;
end;

procedure TfmAutoDrivers.dsAUTO_DRIVERDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  bbEdit.Enabled := not AUTO_DRIVER.IsEmpty;
end;

procedure TfmAutoDrivers.FormShow(Sender: TObject);
begin
  inherited;
  bbRefresh.Click;
end;

procedure TfmAutoDrivers.GridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if bbEdit.Enabled then
    bbEdit.Click;
end;

end.
