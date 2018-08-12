unit u_fmFuelCardReestr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_fmMDIChild, dxBar, cxClasses, u_DM, DB, FIBDataSet, pFIBDataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, FIBDatabase,
  pFIBDatabase, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxMaskEdit,
  cxImageComboBox, cxGridLevel, cxGridDBTableView, cxGridCustomView, cxGrid,
  dxBarExtItems;

type
  TfmFuelCardReestr = class(TfmMDIChild)
    DATA: TpFIBDataSet;
    dsDATA: TDataSource;
    Grid1DBTableView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Grid1DBTableViewID: TcxGridDBColumn;
    Grid1DBTableViewCARD_NUMBER: TcxGridDBColumn;
    Grid1DBTableViewDESCRIPTION: TcxGridDBColumn;
    Grid1DBTableViewPRODUCTION_ID: TcxGridDBColumn;
    Grid1DBTableViewIS_ACTIVE: TcxGridDBColumn;
    bbDelete: TdxBarButton;
    bbAdd: TdxBarButton;
    Grid1DBTableViewFUEL_TYPE: TcxGridDBColumn;
    Grid1DBTableViewPIN: TcxGridDBColumn;
    procedure DATAAfterPost(DataSet: TDataSet);
    procedure DATAAfterInsert(DataSet: TDataSet);
    procedure DATAAfterDelete(DataSet: TDataSet);
    procedure DATABeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure DATABeforePost(DataSet: TDataSet);
    procedure bbDeleteClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FDataChanged: boolean;
  public
    procedure SetDataChanged(const Value: boolean); override;
    property DataChanged : boolean read FDataChanged write SetDataChanged default false;
  end;

var
  fmFuelCardReestr: TfmFuelCardReestr;

implementation

{$R *.dfm}

{ TfmFuelCardReestr }

procedure TfmFuelCardReestr.bbDeleteClick(Sender: TObject);
begin
  inherited;
  DATA.Delete;
end;

procedure TfmFuelCardReestr.bbRefreshClick(Sender: TObject);
begin
  inherited;
  if (DataChanged and (Application.MessageBox('Все изменения будут потеряну. Продолжить?', 'Внимание', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDNO)) then
      Abort;
  DATA.ReopenLocate('ID');
end;

procedure TfmFuelCardReestr.bbSaveClick(Sender: TObject);
begin
  inherited;
  if DATA.State in [dsEdit, dsInsert] then
    DATA.Post;
  if DATA.UpdateTransaction.InTransaction then
    DATA.UpdateTransaction.Commit;
  DataChanged := FALSE;
  bbRefresh.Click;
end;

procedure TfmFuelCardReestr.DATAAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dataChanged := TRUE;
end;

procedure TfmFuelCardReestr.DATAAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dataChanged := TRUE;
end;

procedure TfmFuelCardReestr.DATAAfterPost(DataSet: TDataSet);
begin
  inherited;
  dataChanged := TRUE;
end;

procedure TfmFuelCardReestr.DATABeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if Application.MessageBox('Удалить запись?',  'Внимание', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDNO then
    Abort;
  ShowMessage('Delete');
end;

procedure TfmFuelCardReestr.DATABeforePost(DataSet: TDataSet);
begin
  inherited;
  if trim(DATA.FieldByname('CARD_NUMBER').Value) = '' then begin
    Application.MessageBox('Не введён номер карты', 'Ошибка', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
    Abort;
  end;
end;

procedure TfmFuelCardReestr.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
	if DataChanged then begin
  	case MessageBox(0, 'Данные изменились. Сохранить?', 'Внимание', MB_ICONQUESTION or MB_YESNOCANCEL or MB_DEFBUTTON1) of
    	mrYES: begin
      	bbSave.Click();
        CanClose := TRUE;
      end;
      mrNO : begin
        CanClose := TRUE;
      end;
      mrCancel : begin
        CanClose := FALSE;
      end;
    end;
  end;
end;

procedure TfmFuelCardReestr.FormShow(Sender: TObject);
begin
  inherited;
  bbRefresh.Click;
  dataChanged := false;
end;

procedure TfmFuelCardReestr.SetdataChanged(const Value: boolean);
begin
  bbSave.Enabled := Value;
  FDataChanged := Value;
end;

end.
