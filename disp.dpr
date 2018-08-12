program disp;
uses
  Forms,
  Classes,
  Controls,
  SysUtils,
  FN in 'FN.pas',
  Crc32,
  u_DM in 'u_DM.pas' {DM: TDataModule},
  u_user in 'u_user.pas',
  u_fmMain in 'u_fmMain.pas' {fmMain},
  u_fmMDIChild in 'u_fmMDIChild.pas' {fmMDIChild},
  u_fmContragents in 'u_fmContragents.pas' {fmContragents},
  u_fmLog in 'u_fmLog.pas' {fmLog},
  u_fmProgress in 'u_fmProgress.pas' {fmProgress},
  u_fmSettings in 'u_fmSettings.pas' {fmSettings},
  u_fmBalance in 'u_fmBalance.pas' {fmBalance},
  u_fmContragentEdit in 'u_fmContragentEdit.pas' {fmContragentEdit},
  u_fmLogin in 'u_fmLogin.pas' {fmLogin},
  u_fmJournalRecord in 'u_fmJournalRecord.pas' {fmJournalRecord},
  u_fmUpgradeEXE in 'u_fmUpgradeEXE.pas' {fmUpgradeEXE},
  u_fmDogUpload in 'u_fmDogUpload.pas' {fmDogUpload},
  u_fmPaymentsList in 'u_fmPaymentsList.pas' {fmPaymentsList},
  u_fmMATXChangeReestr in 'u_fmMATXChangeReestr.pas' {fmMATXChangeReestr},
  u_fmConfirmAlers in 'u_fmConfirmAlers.pas' {fmConfirmAlerts},
  u_fmReports in 'u_fmReports.pas' {fmReports},
  u_fmAutomobile in 'u_fmAutomobile.pas' {fmAutomobile},
  u_fmAutoDrivers in 'u_fmAutoDrivers.pas' {fmAutoDrivers},
  u_fmObespechEdit in 'u_fmObespechEdit.pas' {fmObespechEdit},
  u_fmJournal in 'u_fmJournal.pas' {fmJournal},
  u_fmDocumentUpload in 'u_fmDocumentUpload.pas' {fmDocumentUpload},
  u_fmScanDogReestr in 'u_fmScanDogReestr.pas' {fmScanDogReestr},
  u_fmSysTask in 'u_fmSysTask.pas' {fmSysTask},
  u_fmMATReestr in 'u_fmMATReestr.pas' {fmMATReestr},
  u_fmDocActInOutReestr in 'u_fmDocActInOutReestr.pas' {fmDocActInOutReestr},
  u_fmDocRouteCardReestr in 'u_fmDocRouteCardReestr.pas' {fmDocRouteCardReestr},
  u_fmAutoEdit in 'u_fmAutoEdit.pas' {fmAutoEdit},
  u_fmAutoStatusEdit in 'u_fmAutoStatusEdit.pas' {fmAutoStatusEdit},
  u_fmFuelCardReestr in 'u_fmFuelCardReestr.pas' {fmFuelCardReestr},
  u_fmAutoDriverEdit in 'u_fmAutoDriverEdit.pas' {fmAutoDriverEdit},
  u_fmInvoiceReestr in 'u_fmInvoiceReestr.pas' {fmInvoiceReestr},
  u_fmNotifycations in 'u_fmNotifycations.pas' {fmNotifycations},
  u_fmFuelReestr in 'u_fmFuelReestr.pas' {fmFuelReestr},
  u_fmCooperationEdit in 'u_fmCooperationEdit.pas' {fmCooperationEdit},
  u_fmRequestReestr in 'u_fmRequestReestr.pas' {fmRequestReestr},
  u_fmRequest in 'u_fmRequest.pas' {fmRequest},
  u_fmSQLMonitor in 'u_fmSQLMonitor.pas' {fmSQLMonitor},
  u_fmRequestChangeStatus in 'u_fmRequestChangeStatus.pas' {fmRequestChangeStatus},
  u_fmRouteCardChanges in 'u_fmRouteCardChanges.pas' {fmRouteCardChanges},
  u_fmReportAct in 'u_fmReportAct.pas' {fmReportAct},
  u_fmInvoiceGenerator in 'u_fmInvoiceGenerator.pas' {fmInvoiceGenerator},
  u_fmContragentActAnalyze in 'u_fmContragentActAnalyze.pas' {fmContragentActAnalyze},
  u_fmRefProductions in 'u_fmRefProductions.pas' {fmRefProductions},
  u_fmRouteCardChangesReestr in 'u_fmRouteCardChangesReestr.pas' {fmRouteCardChangesReestr},
  u_fmInputDateRange in 'u_fmInputDateRange.pas' {fmInputDateRange},
  u_fmInputDate in 'u_fmInputDate.pas' {fmInputDate},
  u_fmDolgReestr in 'u_fmDolgReestr.pas' {fmDolgReestr},
  u_fmPolis in 'u_fmPolis.pas' {fmPolis},
  u_fmTextEdit in 'u_fmTextEdit.pas' {fmTextEdit},
  u_fmInvoiceAnalize in 'u_fmInvoiceAnalize.pas' {fmInvoiceAnalize},
  u_fmContragentCooperation in 'u_fmContragentCooperation.pas' {fmContragentCooperation},
  u_fmForm in 'u_fmForm.pas' {fmForm},
  u_fmModal in 'u_fmModal.pas' {fmModal},
  u_fmCooperationProcess in 'u_fmCooperationProcess.pas' {fmCooperationProcess},
  u_fmAutoServiceEdit in 'u_fmAutoServiceEdit.pas' {fmAutoServiceEdit},
  u_fmTender in 'u_fmTender.pas' {fmTender},
  u_fmDebitorReport in 'u_fmDebitorReport.pas' {fmDebitorReport},
  u_fmManagersCalendar in 'u_fmManagersCalendar.pas' {fmManagersCalendar},
  u_fmRequestOffer in 'u_fmRequestOffer.pas' {fmRequestOffer},
  u_dmSysFias in 'u_dmSysFias.pas' {dmSysFias},
  u_fmUser in 'u_fmUser.pas' {fmUser},
  u_fmUsers in 'u_fmUsers.pas' {fmUsers},
  u_fmRequestOfferItemEdit in 'u_fmRequestOfferItemEdit.pas' {fmRequestOfferItemEdit},
  u_frameAutoServiceReestr in 'u_frameAutoServiceReestr.pas' {frameAutoServiceReestr: TFrame},
  u_frameDocuments in 'u_frameDocuments.pas' {frameDocuments: TFrame},
  u_frameJournal in 'u_frameJournal.pas' {frameJournal: TFrame},
  u_frameObespech in 'u_frameObespech.pas' {frameObespech: TFrame},
  u_frameRequestOffer in 'u_frameRequestOffer.pas' {frameRequestOffer: TFrame},
  u_fmAddressServiceEdit in 'u_fmAddressServiceEdit.pas' {fmAddressServiceEdit},
  u_fmActTemplates in 'u_fmActTemplates.pas' {fmActTemplates},
  u_fmMatQTYReport in 'u_fmMatQTYReport.pas' {fmMatQTYReport},
  u_fmUserPlan in 'u_fmUserPlan.pas' {fmUserPlan},
  u_fmPlanEdit in 'u_fmPlanEdit.pas' {fmPlanEdit},
  u_fmDocInOut in 'u_fmDocInOut.pas' {fmDocInOut},
  u_fmDocInOutEdit in 'u_fmDocInOutEdit.pas' {fmDocInOutEdit},
  u_fmObespechReestr in 'u_fmObespechReestr.pas' {fmObespechReestr},
  u_fmMakeDog in 'u_fmMakeDog.pas' {fmMakeDog},
  u_fmAutoJournal in 'u_fmAutoJournal.pas' {fmAutoJournal};

{$R *.res}

var
  _i : integer;
  RunParams : TStringList;

begin
  Application.Initialize;
  Application.ShowMainForm:= false;
  Application.MainFormOnTaskbar := false;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmLogin, fmLogin);
  RunParams := TStringList.Create;
  try
    for _i := 0 to ParamCount do begin
      RunParams.Add(ParamStr(_i));
    end;
    DM.isTest := (RunParams.IndexOf('/TEST')<>-1);

    for _i := 0 to RunParams.Count-1 do begin
      if UpperCase(copy(RunParams[_i], 1, 3))='/U:' then
        fmLogin.UserName.Text := copy(RunParams[_i], 4, length(RunParams[_i]))
      else if UpperCase(copy(RunParams[_i], 1, 3))='/P:' then
        fmLogin.Password.Text := copy(RunParams[_i], 4, length(RunParams[_i]))
    end;
    if ((fmLogin.Username.Text<>'') and (fmLogin.Password.Text<>'')) then begin
      fmLogin.buttonLoginClick(Application);
      if not DM.FB.Connected then
        fmLogin.ShowModal;
    end  else
      fmLogin.ShowModal;
    if not DM.FB.Connected then begin
      FreeAndNil(fmLogin);
    end;
    Application.Run;
  finally
    FreeAndNil(RunParams);
  end;
end.

