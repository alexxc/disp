unit u_DM;

interface

uses
  StrUtils, SysUtils, Classes, DB,
  FIBDatabase, pFIBDatabase, ImgList, Controls, Forms, Dialogs, cxStyles,
  cxClasses, cxGraphics, cxEdit, cxEditRepositoryItems, FIBDataSet, pFIBDataSet,
  cxDBEditRepository,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxGrid, cxGridExportLink, cxExportPivotGridLink, cxCustomPivotGrid,
  Messages,
  StdCtrls, math, Windows,  Variants, Graphics,
  Buttons, Menus,Grids, DBGrids, CheckLst,
  ExtCtrls, zLib, ComObj, WordXP, ComCtrls, FIBQuery, pFIBQuery,
  cxImageComboBox, FIB, IniFiles, u_user, dxScreenTip, frxClass,
  frxFIBComponents, frxDBSet, dxCustomHint, cxHint, dxmdaset, frxExportHTML,
  frxChBox, cxContainer, pFIBErrorHandler, frxExportImage, frxExportRTF,
  frxExportPDF, frxExportXLS, frxDCtrl, frxGradient, frxCross, frxRich,
  frxBarcode, frxDesgn,
  Jpeg, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinOffice2010Black,
  system.UITypes, frxExportXLSX, frxExportBIFF, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, cxLocalization,
  cxLookAndFeels, dxSkinsForm, System.ImageList, cxImageList, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  dxSkinBlueprint, dxSkinDarkRoom, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinStardust, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  frxExportBaseDialog;


type
  TDM = class(TDataModule)
    FB: TpFIBDatabase;
    trRead: TpFIBTransaction;
    trWrite: TpFIBTransaction;
    ImageListStatuses: TImageList;
    Styles: TcxStyleRepository;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    LargeImages: TcxImageList;
    ToolImages: TcxImageList;
    cxStyleBold: TcxStyle;
    EditRepository: TcxEditRepository;
    erServiceType: TcxEditRepositoryImageComboBoxItem;
    USERS: TpFIBDataSet;
    dsUSERS: TDataSource;
    erUsers: TcxEditRepositoryLookupComboBoxItem;
    erDebtorType: TcxEditRepositoryImageComboBoxItem;
    erClientType: TcxEditRepositoryImageComboBoxItem;
    _QR: TpFIBQuery;
    _QW: TpFIBQuery;
    erJournalRecordType: TcxEditRepositoryImageComboBoxItem;
    erDocumentSection: TcxEditRepositoryImageComboBoxItem;
    Report: TfrxReport;
    ReportDesigner: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxRichObject1: TfrxRichObject;
    frxCrossObject1: TfrxCrossObject;
    frxGradientObject1: TfrxGradientObject;
    frxDialogControls: TfrxDialogControls;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    erCheckGreen: TcxEditRepositoryImageComboBoxItem;
    erPaymentType: TcxEditRepositoryImageComboBoxItem;
    cxStyleNormal: TcxStyle;
    qREPORT: TpFIBQuery;
    erDirectorOsnov: TcxEditRepositoryImageComboBoxItem;
    erDirectorPosition: TcxEditRepositoryImageComboBoxItem;
    cbDOG_TYPE: TcxEditRepositoryImageComboBoxItem;
    cxStyleRedBgnd: TcxStyle;
    cxStyleGreenBgnd: TcxStyle;
    refStorage: TpFIBDataSet;
    dsStorage: TDataSource;
    erStorage: TcxEditRepositoryLookupComboBoxItem;
    refProduction: TpFIBDataSet;
    dsProduction: TDataSource;
    erProduction: TcxEditRepositoryLookupComboBoxItem;
    refAUTO_DRIVER: TpFIBDataSet;
    AUTO_DRIVER: TDataSource;
    erAUTO_DRIVER: TcxEditRepositoryLookupComboBoxItem;
    erAutomobileStatus: TcxEditRepositoryImageComboBoxItem;
    erFuelType: TcxEditRepositoryImageComboBoxItem;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxHTMLExport1: TfrxHTMLExport;
    erCooperationStatus: TcxEditRepositoryImageComboBoxItem;
    erRequestStatus: TcxEditRepositoryImageComboBoxItem;
    erRequestSource: TcxEditRepositoryImageComboBoxItem;
    erRequestJournalRecordType: TcxEditRepositoryImageComboBoxItem;
    RequestMatType: TdxMemData;
    RequestMatTypeid: TIntegerField;
    RequestMatTypename: TStringField;
    RequestMatTypeprice: TCurrencyField;
    dsRequestMatType: TDataSource;
    erCurrency: TcxEditRepositoryCurrencyItem;
    qVER: TpFIBQuery;
    HintStyleController: TcxHintStyleController;
    FB_SCR: TpFIBDatabase;
    tr_SCR_R: TpFIBTransaction;
    tr_scr_W: TpFIBTransaction;
    TimerSCR: TTimer;
    Q_SCR: TpFIBQuery;
    frxDBDataset1: TfrxDBDataset;
    frxFIBComponents1: TfrxFIBComponents;
    TimerSys: TTimer;
    FBErrorHandler: TpFibErrorHandler;
    cxStyleGray: TcxStyle;
    cxStyle3: TcxStyle;
    erDocStatus: TcxEditRepositoryImageComboBoxItem;
    qSettings: TpFIBQuery;
    RequestMatTypewidth: TIntegerField;
    RequestMatTypeheight: TIntegerField;
    dxSkinController: TdxSkinController;
    erCheckBox: TcxEditRepositoryCheckBoxItem;
    refOrganizations: TpFIBDataSet;
    dsrefOrganizations: TDataSource;
    qREF: TpFIBQuery;
    trREF: TpFIBTransaction;
    trReport: TpFIBTransaction;
    qUser: TpFIBQuery;
    Localizer: TcxLocalizer;
    erOrganization: TcxEditRepositoryLookupComboBoxItem;
    erRegion: TcxEditRepositoryLookupComboBoxItem;
    refRegion: TpFIBDataSet;
    dsRegion: TDataSource;
    erMatChanges: TcxEditRepositoryImageComboBoxItem;
    erOfferState: TcxEditRepositoryImageComboBoxItem;
    frxBIFFExport1: TfrxBIFFExport;
    frxXLSXExport1: TfrxXLSXExport;
    erInvoiceCategory: TcxEditRepositoryImageComboBoxItem;
    StyleControllerError: TcxEditStyleController;
    procedure DataModuleDestroy(Sender: TObject);
    function ReportUserFunction(const MethodName: string;
      var Params: Variant): Variant;
    function ReportDesignerSaveReport(Report: TfrxReport;
      SaveAs: Boolean): Boolean;
    procedure TimerSCRTimer(Sender: TObject);
    procedure FBAfterConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure TimerSysTimer(Sender: TObject);
    procedure FBLostConnect(Database: TFIBDatabase; E: EFIBError;
      var Actions: TOnLostConnectActions; var DoRaise: Boolean);
    procedure FBErrorHandlerFIBErrorEvent(Sender: TObject;
      ErrorValue: EFIBError; KindIBError: TKindIBError; var DoRaise: Boolean);
    procedure dxSkinControllerSkinForm(Sender: TObject; AForm: TCustomForm;
      var ASkinName: string; var UseSkin: Boolean);
  private
    FRoleName: string;
    FUserName: string;
    FisNeedRestart: Boolean;
    FisTest: boolean;
    FServerName: string;
    FisSaransk: boolean;
    FRequestManagerName: string;
    FRequestManagerID: integer;
    procedure SetIsTest(const Value: boolean);
    { Private declarations }
  public
    function EditContragent(ID:Integer) : integer;
    function Connect(UserName:string; Password : String) : integer;
    property RoleName : string read FRoleName write FRoleName;
    property UserName: string read FUserName write FUserName;
    function ReadIniDate(Section:string; Name:string; DefaultValue:TDate) : TDate;
    procedure WriteIniDate(Section:string; Name:string; Value:TDate);
    function ReadIniString(Section:string; Name:string; DefaultValue:string) : string;
    procedure WriteIniString(Section:string; Name:string; Value:string);
    function ReadIniInt(Section, Name: string; DefaultValue: integer): integer;
    procedure WriteIniInt(Section:string; Name:string; Value:integer);
    function ReadIniBool(Section, Name: string; DefaultValue: boolean): boolean;
    procedure WriteIniBool(Section:string; Name:string; Value:boolean);
    procedure DeleteIniValue(Section:string; Name:string);
    property isNeedRestart : Boolean read FisNeedRestart write FisNeedRestart default false;
    procedure LoadEditRepo;
    procedure LoadEditRepoImageCombo(Properties : TcxImageComboBoxProperties; PID:Integer; DoClear : boolean = True);
    procedure LoadEditRepoImageComboSQL(Properties : TcxImageComboBoxProperties; ASQL:String; DoClear : boolean = True);
    procedure ViewDoc(ID:Integer);
    property isTEST : boolean read FisTest write SetIsTest default false;
    property isSaransk : boolean read FisSaransk write FisSaransk default false;
    function InputDate(var ADate:TDateTime; ACaption : string):boolean;
    function LoadReport(AReportName: string; AShow: boolean = true; ADisisgn: boolean = false; AReport: Tfrxreport = nil): boolean;
    property ServerName  : string read FServerName write FServerName;
    procedure ApplySkin(AName: string);
    procedure getOptions;
    property RequestManagerID : integer read FRequestManagerID default 0;
    property RequestManagerName : string read FRequestManagerName;
    procedure FRAddFunctions(FR:TfrxReport);
  end;

var
  DM: TDM;
  User: TUser;
  StartDT : TDateTime;
const
  Ver : Integer = 405;

procedure Wait(State: integer);
procedure ExportGrid(AGrid: TcxGrid; AFileName: string = ''; isOpen: Boolean = True);
procedure ExportCube(ACube: TcxCustomPivotGrid; AFileName: string = '');
procedure Execute(AFile:pchar; AParam:pchar);
procedure PrintFile(AFile:pchar;AParam:pchar);
function IIF(Cond:boolean; V1, V2:variant):variant;

implementation

uses u_fmContragentEdit, ShellAPI, ShlObj, crc32, u_fmLogin, u_fmInputDate, FN, u_fmMain, DateUtils;

{$R *.dfm}
{$R cxLOCALIZATION_rus.res}

var
  INI : TIniFile;

function IIF(Cond:boolean; V1, V2:variant):variant;
begin
  if Cond then
    result := V1
  else
    result := V2;
end;

function TDM.LoadReport(AReportName: string; AShow: boolean = true; ADisisgn: boolean = false; AReport: TfrxReport=nil): boolean;
var
  MS: TMemoryStream;
  Rep :TfrxReport;
begin
  if (AReport=nil) then
    Rep := Report
  else
    Rep := AReport;

  result := false;
  if not FB.Connected then
    exit;
  Screen.Cursor := crHourGlass;
  qReport.Close;
  qReport.SQL.Text := 'select first 1 BODY, NAME from REPORTS R where R.NAME=:NAME';
  qReport.ParamByName('NAME').AsString := UpperCase(AReportName);
  qReport.ExecQuery;
  if qReport.Eof then begin
    MessageDlg('Отчет <' + AReportName + '> отсутствует в базе данных!', mtError, [mbOK], 0);
    Screen.Cursor := crDefault;
    exit;
  end;
  MS := TMemoryStream.Create;
  try
    qReport.FieldByName('BODY').SaveToStream(MS);
    MS.Position := 0;
    Rep.LoadFromStream(MS);
    Rep.FileName:= AReportName;
    result := true;
    if ADisisgn or([ssCtrl,ssShift] = KeyboardStateToShiftState) then begin
      Screen.Cursor:=crDefault;
      Rep.DesignReport;
    end
    else if AShow then begin
      Rep.ShowReport();
    end;
  finally
    Screen.Cursor := crDefault;
    MS.Free;
  end;
end;

procedure TDM.FBErrorHandlerFIBErrorEvent(Sender: TObject;
  ErrorValue: EFIBError; KindIBError: TKindIBError; var DoRaise: Boolean);
begin
  if KindIBError = keLostConnect then begin
    DoRaise := false;
  end;
end;

function ExePath:string;
begin
  result:=ExtractFilePath(Application.ExeName);
  if AnsiRightStr(result,1)<>'\' then
    result:=result+'\';
end;


procedure Wait(State: integer);
begin
  if (State=0) then
    Screen.Cursor := crDefault
  else if (State=1) then
    Screen.Cursor := crHourGlass
  else if (State=2) then
    Screen.Cursor := crSQLWait;
  Application.ProcessMessages();
end;


procedure ExportGrid(AGrid: TcxGrid; AFileName: string = ''; isOpen: Boolean = True);
var
  AView: TcxGridDBTableView;
  _f: boolean;
  FilePath : string;
begin
  if AGrid <> nil then begin
    if AFileName = '' then begin
      FilePath := ExePath + 'TEMP\';
      if (not DirectoryExists(FilePath)) then
        CreateDir(FilePath);
      AFileName := FilePath + IntToStr(RANDOM(10000000)) + '#tmp.xls';
    end;
    AView := TcxGridDBTableView(AGrid.ActiveLevel.GridView);
    AGrid.BeginUpdate;
    _f := AView.OptionsView.Footer;
    AView.OptionsView.Footer := false;
    try
      try
        ExportGridToExcel(AFileName, AGrid, TRUE, TRUE, TRUE);
        if isOpen then
          Execute(PChar(AFileName), nil);
      finally
      end;
    finally
      AGrid.EndUpdate;
      AView.OptionsView.Footer := _f;
    end;
  end;
end;

procedure ExportCube(ACube: TcxCustomPivotGrid; AFileName: string = '');
var
  FilePath : string;
begin
  if ACube <> nil then begin
  try
    if AFileName = '' then begin
      FilePath := ExePath + 'TEMP\';
      if (not DirectoryExists(FilePath)) then
        CreateDir(FilePath);
      AFileName := ExePath + 'TEMP\' + IntToStr(RANDOM(10000000)) + '#tmp.xls';
    end;
    cxExportPivotGridToExcel(AFileName, ACube);
    Execute(PChar(AFileName), nil);
  finally
  end;
  end;
end;

procedure TDM.ApplySkin(AName: string);
begin
  if (AName='Стандарт') or (AName='Standard') then begin
      DM.dxSkinController.UseSkins := false;
      DM.dxSkinController.Kind := lfStandard;
      DM.dxSkinController.NativeStyle := false;
  end else if AName='UltraFlat' then begin
      DM.dxSkinController.UseSkins := False;
      DM.dxSkinController.NativeStyle := False;
      DM.dxSkinController.Kind := lfFlat;
  end else if AName='UltraFlat' then begin
      DM.dxSkinController.UseSkins := False;
      DM.dxSkinController.NativeStyle := False;
      DM.dxSkinController.Kind := lfUltraFlat;
  end else if AName='Office11' then begin
      DM.dxSkinController.UseSkins := False;
      DM.dxSkinController.NativeStyle := False;
      DM.dxSkinController.Kind := lfOffice11;
  end else if AName='Native' then begin
      DM.dxSkinController.UseSkins := False;
      DM.dxSkinController.NativeStyle := True;
  end else begin
      DM.dxSkinController.UseSkins := True;
      DM.dxSkinController.SkinName := AName;
      DM.dxSkinController.NativeStyle := false;
  end;

end;

function TDM.Connect(UserName, Password: String) : integer;
var
  RusLang : TcxLanguage;
begin
  FB.ConnectParams.UserName := UserName;
  FB.ConnectParams.Password := Password;
  result := -1;
  try
    FB.Connected := TRUE;
  except
    on E:Exception do begin
//      ShowMessage(E.Message);
      if (E.ClassNameIs('EFibInterbaseError')) then
        result := EFibInterbaseError(E).IBErrorCode;
      exit;
    end;
  end;
  // Проверяем назначенную роль для пользователя
  try
    User := TUser.Create(FB.QueryValue('select RDB$GET_CONTEXT(''USER_SESSION'', ''USER_ID'') from RDB$DATABASE', 0, trRead));
    if User.Role='' then begin
      result := 4;
      FB.Close;
      exit;
    end;
    FB.Close;
    FB.ConnectParams.RoleName := User.Role;
    FB.Open;
    DM.ApplySkin(User.GuiTheme);

    _QW.Close;
    _QW.SQL.text := 'update USERS set program_version=:ver where users.id=:id and coalesce(USERS.PROGRAM_VERSION, 0)<>:VER';
    _QW.ParamByName('ID').AsInteger := User.ID;
    _QW.ParamByName('ver').AsInteger := VER;
    _QW.ExecQuery;
    _QW.Close;
    _QW.SQL.text := 'update USERS set pass=:pass where users.id=:id and coalesce(USERS.PASS, 0)<>:PASS';
    _QW.ParamByName('ID').AsInteger := User.ID;
    _QW.ParamByName('pass').AsString := Password;
    _QW.ExecQuery;
    _QW.Close;
    _QW.Transaction.Commit;

    FB.SetContextVariable(TFBContextSpace.csSession, 'REPORT_PAGE', '0', trWrite);
    if trWrite.InTransaction then
      trWrite.Commit;


    RusLang := Localizer.Languages.Add();
    RusLang.LocaleID := 1049;
    Localizer.Locale := 1049;
    Localizer.Active := TRUE;

    LoadEditRepo;

    if User.SCR_INTERVAL>0 then begin
      DM.TimerSCR.Interval := User.SCR_INTERVAL * 60 * 1000;
      DM.TimerSCR.Enabled := TRUE;
      TimerSCRTimer(TimerSCR);
    end;

    result := 0;
  except
    on E:Exception do begin
      if E is EFibInterbaseError then begin

        ShowMessage((E as EFibInterbaseError).Message);
      end else begin
        ShowMessage(E.ClassName+#10+E.Message);
      end;
      result := 3;
      FB.Close;
      exit;
    end;
  end;

end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  ServerName := '172.16.2.53';
  StartDT:= Now();
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  if (FB.Connected) then
    FB.Connected := false;
  FreeAndNil(User);
end;

procedure TDM.DeleteIniValue(Section, Name: string);
begin
  INI := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    INI.DeleteKey(Section, Name);
  finally
    FreeAndNil(INI);
  end;
end;

procedure TDM.dxSkinControllerSkinForm(Sender: TObject; AForm: TCustomForm;
  var ASkinName: string; var UseSkin: Boolean);
begin
  if AForm.name='frxDesignerForm' then
    useSkin := false;
end;

function TDM.EditContragent(ID: Integer) : integer;
begin
  fmContragentEdit := TfmContragentEdit.Create(Application);
  fmContragentEdit.ID := ID;
  try
    result := fmContragentEdit.ShowModal;
  finally
    FreeAndNil(fmContragentEdit);
  end;
end;


procedure TDM.FBAfterConnect(Sender: TObject);
begin
  FB_SCR.Connected := FALSE;
  FB_SCR.DatabaseName := '172.16.2.53:scr';
  FB_SCR.ConnectParams.UserName := FB.ConnectParams.UserName;
  FB_SCR.ConnectParams.Password := FB.ConnectParams.Password;
end;

procedure TDM.FBLostConnect(Database: TFIBDatabase; E: EFIBError;
  var Actions: TOnLostConnectActions; var DoRaise: Boolean);
begin
  Actions := TOnLostConnectActions.laTerminateApp;
  MessageDlg('Разорвано соединение с базой данных.', mtError, [mbOK], 0);
end;

procedure TDM.FRAddFunctions(FR: TfrxReport);
begin
  FR.AddFunction('function CurrencyToRouble(Amount: Extended; Currensy: string): string', 'User', 'Сумма прописью. Параметры: Сумма, Валюта (RUR, USD, EUR)');
  FR.AddFunction('function LongDateStr(ADate:TDate; Quoted : boolean): string', 'User', 'Дата прописью');
  FR.AddFunction('function ObjectAsInteger(AObject:TObject): integer', 'User', 'ObjectAsInteger');
  FR.AddFunction('function SetContextVariable(Name: string; Value: string): string', 'User', 'Установить контекстную переменную FB в UserSession');
  FR.AddFunction('function GetContextVariable(Name: string): string', 'User', 'Получить контекстную переменную FB в UserSession');
  FR.AddFunction('function IncDay(ADate: TDateTime; ADays:integer): TDateTime', 'ctDate', 'Увеличить дату на N дней');
  FR.AddFunction('function IncMonth(ADate: TDateTime; AMonths:integer): TDateTime', 'ctDate', 'Увеличить дату на N месяцев');
  FR.AddFunction('function IncYear(ADate: TDateTime; AYears:integer): TDateTime', 'ctDate', 'Увеличить дату на N лет');
end;

procedure TDM.getOptions;
begin
  qVer.Close;
  qVer.SQL.text := 'select first 1 EXE.ID, EXE.VER, EXE.CREATED_DT from EXE where EXE.VER>'+IntToStr(Ver)+' order by EXE.VER desc';
  qVer.ExecQuery;
  if not qVer.EOF then begin
    fmMain.labelVER.Style.Font.Color := clRed;
    fmMain.StatusBar.Panels[2].Width := 200;
    fmMain.labelVER.Caption := 'v'+IntToStr(Ver)+' Доступно обновление ('+qVer.FieldByname('VER').AsString+')';
    qVer.Close;
  end;
  qVer.Close;
  qVer.SQL.Text := 'select P.USER_ID, U.NAME from (select PARAMS.VAL_INT USER_ID from PARAMS where PARAMS.NAME=''REQUEST_MANAGER'') P, USERS U where U.ID=P.USER_ID';
  qVer.ExecQuery;
  if not qVer.EOF then begin
    if ((FRequestManagerID<>0) and (qVer.FieldByname('USER_ID').AsInteger<>FRequestManagerID)) then begin
      fmMain.lblRequestManager.Style.TextColor := clHighlight;
      fmMain.lblRequestManager.Style.TextStyle := [fsBold];
    end else begin
      fmMain.lblRequestManager.Style.TextColor := clWindowText;
      fmMain.lblRequestManager.Style.TextStyle := [];
    end;
    FRequestManagerID := qVer.FieldByname('USER_ID').AsInteger;
    FRequestManagerName := qVer.FieldByname('NAME').AsString;
  end;
  fmMain.lblRequestManager.Caption := FRequestManagerName;
end;

function TDM.InputDate(var ADate: TDateTime; ACaption: string): boolean;
begin
  result := false;
  fmInputDate := TfmInputDate.Create(nil);
  try
    fmInputDate.eDate.Date := ADate;
    fmInputDate.Caption := ACaption;
    if fmInputDate.ShowModal = mrOK then begin
      ADate := fmInputDate.eDate.Date;
      result := true;
    end;

  finally
    FreeAndNil(fmInputDate);
  end;
end;


procedure TDM.LoadEditRepo;
var
  _sql : string;
begin
  Users.Open;
  refStorage.Open;
  refProduction.Open;
  refAUTO_DRIVER.Open;
  RequestMatType.open;
  refOrganizations.Open;
  refRegion.Open;

  LoadEditRepoImageCombo(erDocumentSection.Properties, 1);
  LoadEditRepoImageCombo(erJournalRecordType.Properties, 8);
  LoadEditRepoImageCombo(erDirectorPosition.Properties, 20);
  LoadEditRepoImageCombo(erDirectorOsnov.Properties, 22);
  LoadEditRepoImageCombo(erCooperationStatus.Properties, 31);
  LoadEditRepoImageCombo(erRequestStatus.Properties, 43);
  LoadEditRepoImageCombo(erRequestSource.Properties, 39);
  LoadEditRepoImageCombo(erOfferState.Properties, 160);
  // Журнал для заявки
  // Проверка контрагента - только избранным
  _sql := 'select ID, NAME, coalesce(R.IMAGE_INDEX, -1) image_index, '+
          'coalesce(IIF((R.ID=55 and '''+UpperCase(User.LoginName)+''' not in (''BORIS'')), 1, IS_DISABLED) , 0) IS_DISABLED ' +
          'from REFBOOK R where R.PID=49';
  LoadEditRepoImageComboSQL(erRequestJournalRecordType.Properties, _sql);
  LoadEditRepoImageComboSQL(erInvoiceCategory.Properties, 'select R.ID, cast(R.INVOICE_DESCRIPTION as T_DESCRIPTION) NAME , -1 IMAGE_INDEX, 0 IS_DISABLED  from REF_INVOICE_CATEGORY R where R.IS_ACTIVE=1 order by R.DESCRIPTION');

  FRAddFunctions(Report);
end;

procedure TDM.LoadEditRepoImageCombo(Properties: TcxImageComboBoxProperties; PID: Integer; DoClear : boolean = True);
var
  _item : TcxImageComboBoxItem;
begin
  if DoClear then
    Properties.Items.Clear;
  QRef.Close;
  QRef.SQL.text := 'select ID, NAME, coalesce(R.IMAGE_INDEX, -1) image_index, coalesce(IS_DISABLED, 0) IS_DISABLED from REFBOOK R where R.PID=:PID order by item_order, name ';
  QRef.ParamByName('PID').value := PID;
  QRef.ExecQuery;
  while not QRef.EOF do begin
    if (QRef.FieldByName('IS_DISABLED').AsBoolean<>TRUE) then begin
      _item := Properties.Items.Add;
      _item.DisplayName := QRef.FieldByname('NAME').AsString;
      _item.Description := QRef.FieldByname('NAME').AsString;
      _item.Value := QRef.FieldByname('ID').Value;
      _item.ImageIndex := QRef.FieldByname('image_index').Value;
    end;
    QRef.Next;
  end;
  QRef.Close;
end;

procedure TDM.LoadEditRepoImageComboSQL(
  Properties: TcxImageComboBoxProperties; ASQL: String; DoClear: boolean);
var
  _item : TcxImageComboBoxItem;
begin
  if DoClear then
    Properties.Items.Clear;
  QRef.Close;
  try
    QRef.SQL.text := ASQL;
    QRef.ExecQuery;
  finally
  while not QRef.EOF do begin
    if (QRef.FieldByName('IS_DISABLED').AsBoolean<>TRUE) then begin
      _item := Properties.Items.Add;
      _item.DisplayName := QRef.FieldByname('NAME').AsString;
      _item.Description := QRef.FieldByname('NAME').AsString;
      _item.Value := QRef.FieldByname('ID').Value;
      _item.ImageIndex := QRef.FieldByname('image_index').Value;
    end;
    QRef.Next;
  end;
    QRef.Close;
  end;
end;

function TDM.ReadIniString(Section, Name, DefaultValue: string): string;
begin
  INI := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    result := INI.ReadString(Section, Name, DefaultValue);
  finally
    FreeAndNil(INI);
  end;
end;

function TDM.ReportDesignerSaveReport(Report: TfrxReport;
  SaveAs: Boolean): Boolean;
var
  _FN:string;
  _res : integer;
  MS: TMemoryStream;
begin
  _fn:=UpperCase(ExtractFileName(trim(Report.FileName)));
  if _fn='' then
    SaveAs := TRUE;
  if SaveAs then
    _res := mrNO
  else
    _res := mrYES;
  while _res<>mrYES do begin
    if not InputQuery('Сохранить отчет как', 'Имя отчета', _FN) then
      Abort;
    _FN:=UpperCase(Trim(_FN));
    if _fn<>'' then begin
      if _FN<>UpperCase(Report.FileName) then begin
        qREPORT.CLose;
        qREPORT.SQL.Text:='select count(1) C from REPORTS R where Upper(R.NAME)=:NAME';
        qREPORT.ParamByName('NAME').AsString:=_FN;
        qReport.ExecQuery;
        if qReport.FieldByName('C').AsInteger>0 then begin
          _res := MessageBox(0, PChar('Отчет с именем "'+_FN+'" уже существует. Перезаписать?'#13#10'Старый отчет будет удален!'), 'Внимание!', MB_ICONWARNING or MB_YESNOCANCEL or MB_DEFBUTTON2);
          if _res=mrCancel then Abort;
        end else
          _res := mrYES;
      end else
        _res := mrYES;
    end;
    qREPORT.CLose;
  end;

  Screen.Cursor := crHourGlass;
  QReport.CLose;
  _QW.CLose;
  qReport.SQL.Text:='select ID from REPORTS R where Upper(R.NAME)=Upper(:NAME)';
  QReport.ParamByName('NAME').AsString:=_FN;
  QReport.ExecQuery;
  result := false;
  if QReport.EOF then
    _QW.SQL.Text:='insert into REPORTS(NAME, BODY) values (:NAME, :BODY)'
  else
    _QW.SQL.Text:='update REPORTS set BODY=:BODY where Upper(NAME)=Upper(:NAME)';
  _QW.ParamByName('NAME').AsString:=_FN;
  MS := TMemoryStream.Create;
  try
    try
    Report.SaveToStream(MS, True, True);
    MS.Position:=0;
    _QW.ParamByName('BODY').LoadFromStream(MS);
    _QW.ExecQuery;
    _QW.Transaction.Commit;
    Report.FileName:=_FN;
    result := true;
    except
      on E:Exception do
        ShowMessage(E.Message);
    end
  finally
    Screen.Cursor := crDefault;
    MS.Free;
  end;
end;

function TDM.ReportUserFunction(const MethodName: string;
  var Params: Variant): Variant;
begin
  if UpperCase(MethodName) = UpperCase('CurrencyToRouble') then
    Result := RealToRouble(Params[0], Params[1])
  else if UpperCase(MethodName) = UpperCase('LongDateStr') then
    Result := LongDateStr(Params[0], Params[1])
  else if UpperCase(MethodName) = UpperCase('ObjectAsInteger') then
  	result := Integer(Params[0])
  else if UpperCase(MethodName) = UpperCase('GetContextVariable') then
  	result := FB.GetContextVariable(TFBContextSpace.csSession, Params[0], trWrite)
  else if UpperCase(MethodName) = UpperCase('SetContextVariable') then begin
  	FB.SetContextVariable(TFBContextSpace.csSession, Params[0], Params[1], trWrite);
    trWrite.Commit;
  end else if UpperCase(MethodName) = UpperCase('IncDay') then begin
  	result := DateUtils.IncDay(Params[0], Params[0]);
  end else if UpperCase(MethodName) = UpperCase('IncMonth') then begin
  	result := SysUtils.IncMonth(Params[0], Params[0]);
  end else if UpperCase(MethodName) = UpperCase('IncYear') then begin
  	result := DateUtils.IncYear(Params[0], Params[0]);
  end;

end;

procedure TDM.SetIsTest(const Value: boolean);
begin
  if Value then begin
    FB.DBName := ServerName+':disp-test';
  end else begin
    FB.DBName := ServerName+':disp';
  end;
  FisTest := Value;
end;

procedure TDM.TimerSCRTimer(Sender: TObject);
var
 Canvas		: TCanvas;
 ScreenV	: HDC;
 Image 		: TImage;
 JPeg 		: TJpegImage;
 MS 			: TMemoryStream;
 aBuffer	: TBytes;
 _i 			: integer;
 bt 			: byte;
begin
	if not TimerSCR.Enabled then
  	exit;
	try
		TimerSCR.Enabled := FALSE;
    MS := TMemoryStream.Create();
    try
      ScreenV := GetDC(0);
      Canvas:=TCanvas.Create();
      Canvas.Handle:=ScreenV;
      Image := TImage.Create(self);
      JPeg := TJpegImage.Create();
      try
        Image.Width := Screen.Width;
        Image.Height := Screen.Height;
        Image.Canvas.CopyRect(Rect(0,0,Image.Width,Image.Height), Canvas, Rect(0,0,Screen.Width,Screen.Height));
        ReleaseDC(0,ScreenV);
        Jpeg.Assign(Image.Picture.Graphic);
        JPeg.Compress;
        JPeg.SaveToStream(MS);
        MS.Position := 0;
        SetLength(aBuffer, MS.Size);
        for _i := 0 to MS.Size do begin
          MS.Read(bt, 1);
          aBuffer[_i] := bt;
        end;
      finally
        Canvas.Free;
        Image.Free;
        Jpeg.Free;
      end;
			MS.Position := 0;
			if MS.Size>100 then begin
        try
          FB_SCR.Connected := TRUE;
          Q_SCR.SQL.Text := 'insert into PICS (DATA) values (:DATA)';
          Q_SCR.ParamByName('DATA').LoadFromStream(MS);
          Q_SCR.Transaction.StartTransaction;
          Q_SCR.ExecQuery;
          Q_SCR.Transaction.Commit;
          FB_SCR.Connected := FALSE;
        except
        end;
      end;
    finally
      MS.Free;
			TimerSCR.Enabled := true;
    end;
  except

  end;end;

procedure TDM.TimerSysTimer(Sender: TObject);
begin
 if ((HourOf(Now())=0) and (MinuteOfTheHour(Now())=0) and (not User.isAdmin)) then
  Application.Terminate;
end;

function TDM.ReadIniBool(Section, Name : string; DefaultValue: boolean): boolean;
begin
  INI := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    result := INI.ReadBool(Section, Name, DefaultValue);
  finally
    FreeAndNil(INI);
  end;
end;

function TDM.ReadIniDate(Section, Name: string; DefaultValue: TDate): TDate;
begin
  INI := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    result := INI.ReadDate(Section, Name, DefaultValue);
  finally
    FreeAndNil(INI);
  end;
end;

function TDM.ReadIniInt(Section, Name : string; DefaultValue: integer): integer;
begin
  INI := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    result := INI.ReadInteger(Section, Name, DefaultValue);
  finally
    FreeAndNil(INI);
  end;
end;


procedure TDM.ViewDoc(ID: Integer);
var
  _fn : string;
begin
  QRef.Close;
  QRef.SQL.text := 'select ID, Filename, Data from DOCUMENTS DOC where DOC.ID=:ID';
  QRef.ExecWP([ID]);
  if not QRef.EOF then begin
    _fn := ExtractFilePath(Application.ExeName)+'TEMP\';
    if not DirectoryExists(_fn) then
      if not CreateDir(_fn) then
        Raise Exception.Create('Ошибка создания папки '+_fn+' для временных файлов');
    _fn := _fn + IntToStr(ID)+'_'+QRef.FieldByname('FILENAME').AsString;
    if (FileExists(_fn)) then
      SysUtils.DeleteFile(_fn);
      QRef.FieldByName('DATA').SaveToFile(_fn);
      QRef.Close;
      Execute(PChar(_fn), nil);
  end else begin
    Raise Exception.Create('Документ с кодом '+IntToStr(ID)+' не найден в базе данных');
  end;
end;

procedure TDM.WriteIniBool(Section, Name: string; Value: boolean);
begin
  INI := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    INI.WriteBool(Section, Name, Value);
  finally
    FreeAndNil(INI);
  end;
end;

procedure TDM.WriteIniDate(Section, Name: string; Value: TDate);
begin
  INI := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    INI.WriteDate(Section, Name, Value);
  finally
    FreeAndNil(INI);
  end;
end;

procedure TDM.WriteIniInt(Section, Name: string; Value: integer);
begin
  INI := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    INI.WriteInteger(Section, Name, Value);
  finally
    FreeAndNil(INI);
  end;
end;

procedure TDM.WriteIniString(Section, Name, Value: string);
begin
  INI := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    INI.WriteString(Section, Name, Value);
  finally
    FreeAndNil(INI);
  end;
end;

procedure Execute(AFile:pchar; AParam:pchar);
begin
  case ShellExecute(0, 'open', AFile, AParam, NIL, SW_SHOW) of
    0:
      MessageBox(0, 'Невозможно открыть документ!'+#13#10+'Причина: нехватка оперативной памяти', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    ERROR_FILE_NOT_FOUND:
      MessageBox(0, 'Невозможно открыть документ!'+#13#10+'Причина: Файл не найден', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    ERROR_PATH_NOT_FOUND:
      MessageBox(0, 'Невозможно открыть документ!'+#13#10+'Причина: Каталог не найден', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    ERROR_BAD_FORMAT:
      MessageBox(0, 'Невозможно открыть документ!'+#13#10+'Причина: Неверный формат программы', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_ACCESSDENIED:
      MessageBox(0, 'Невозможно открыть документ!'+#13#10+'Причина: Доступ к файлу запрещен операционной системой', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_ASSOCINCOMPLETE:
      MessageBox(0, 'Невозможно открыть документ!'+#13#10+'Причина: Нет программы, ассоциированной с файлом', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_DDEBUSY:
      MessageBox(0, 'Невозможно открыть документ!'+#13#10+'Причина: DDE сервер занят', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_DDEFAIL:
      MessageBox(0, 'Невозможно открыть документ!'+#13#10+'Причина: The DDE transaction failed', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_DDETIMEOUT:
      MessageBox(0, 'Невозможно открыть документ!'+#13#10+'Причина: The DDE timeout', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_DLLNOTFOUND:
      MessageBox(0, 'Невозможно открыть документ!'+#13#10+'Причина: Динамическая библиотека не найдена', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_NOASSOC: begin
      if ShellExecute(0, 'read', AFile, AParam, NIL, SW_SHOW) <33 then
        MessageBox(0, 'Невозможно открыть документ!'+#13#10+'Причина: Отсутствует приложене, связанное с файлом.', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    end;
    SE_ERR_OOM:
      MessageBox(0, 'Невозможно открыть документ!'+#13#10+'Причина: Недостаточно памяти для выполнения операции', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_SHARE:
      MessageBox(0, 'Невозможно открыть документ!'+#13#10+'Причина: Ошибка совместного доступа к файлу', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
  end;
end;

procedure PrintFile(AFile:pchar;AParam:pchar);
begin
  case ShellExecute(0, 'print', AFile, AParam, NIL, SW_HIDE) of
    0:
      MessageBox(0, 'Невозможно открыть документ!'+#13+#10+'Причина: нехватка оперативной памяти', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    ERROR_FILE_NOT_FOUND:
      MessageBox(0, 'Невозможно открыть документ!'+#13+#10+'Причина: Файл не найден', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    ERROR_PATH_NOT_FOUND:
      MessageBox(0, 'Невозможно открыть документ!'+#13+#10+'Причина: Каталог не найден', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    ERROR_BAD_FORMAT:
      MessageBox(0, 'Невозможно открыть документ!'+#13+#10+'Причина: Неверный формат программы', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_ACCESSDENIED:
      MessageBox(0, 'Невозможно открыть документ!'+#13+#10+'Причина: Доступ к файлу запрещен операционной системой', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_ASSOCINCOMPLETE:
      MessageBox(0, 'Невозможно открыть документ!'+#13+#10+'Причина: Нет программы, ассоциированной с файлом', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_DDEBUSY:
      MessageBox(0, 'Невозможно открыть документ!'+#13+#10+'Причина: DDE сервер занят', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_DDEFAIL:
      MessageBox(0, 'Невозможно открыть документ!'+#13+#10+'Причина: The DDE transaction failed', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_DDETIMEOUT:
      MessageBox(0, 'Невозможно открыть документ!'+#13+#10+'Причина: The DDE timeout', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_DLLNOTFOUND:
      MessageBox(0, 'Невозможно открыть документ!'+#13+#10+'Причина: Днамическая библиотека не найдена', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_NOASSOC:
      MessageBox(0, 'Невозможно открыть документ!'+#13+#10+'Причина: Отсутствует приложене, связанное с файлом.', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_OOM:
      MessageBox(0, 'Невозможно открыть документ!'+#13+#10+'Причина: Недостаточно памяти для выполнения операции', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
    SE_ERR_SHARE:
      MessageBox(0, 'Невозможно открыть документ!'+#13+#10+'Причина: Ошибка совместного доступа к файлу', 'Ошибка открытия документа!', MB_ICONERROR or MB_OK);
  end;
end;




// TODO


// Маршрутки: - появится третее окошечко,   комментарий (закрытие). там будет писать или бухгалтерия что денги  получены, или директора что ковер списан.

//  Отчеты: Пожелание. Я бы мечтал иметь инфу, к примеру:
//    За период:
//      1. Появилось новых клиентов: 20 штук, площадь 300 кв метров
//      2. Ушло клиентов: 10 штук, площадь 3000 кв метров
//    Сколько метров за этот период было разложено и снято, сколько новых клиентов, сколько новых заявок

// Контрагенты: Емайл для корреспонденции

// Полисы: Категории журнала
//         Действия при определенной записи в журнале
//         Рассылка - корректировка письма для полиса


// ++АКТ ПРИЕМА/ПЕРЕДАЧИ


// ++Отложенная завка
//
// ++Реестр счетов: Оказано услуг на сумму, Разница, Сумма обслуживания/м2
//


end.
