inherited fmUserPlan: TfmUserPlan
  Caption = #1055#1083#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 653
  ClientWidth = 1172
  OnCreate = FormCreate
  ExplicitWidth = 1188
  ExplicitHeight = 692
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1172
    ExplicitWidth = 1172
  end
  object Scheduler: TcxScheduler [1]
    Left = 0
    Top = 31
    Width = 1172
    Height = 622
    DateNavigator.ShowWeekNumbers = False
    ViewAgenda.DisplayMode = avmSelectedDays
    ViewAgenda.ShowLocations = False
    ViewAgenda.ShowResources = False
    ViewTimeGrid.EventDetailInfo = True
    ViewWeek.GroupingKind = gkNone
    ViewWeek.ShowEndTime = False
    ViewWeeks.ShowEndTime = False
    ViewYear.Active = True
    ViewYear.Scale = 3
    Align = alClient
    BorderStyle = cxcbsNone
    ContentPopupMenu.UseBuiltInPopupMenu = False
    ControlBox.Control = NavBar
    EventOperations.Creating = False
    EventOperations.Deleting = False
    EventOperations.DialogEditing = False
    EventOperations.DialogShowing = False
    EventOperations.InplaceEditing = False
    EventOperations.Intersection = False
    EventOperations.MovingBetweenResources = False
    EventOperations.Moving = False
    EventOperations.Recurrence = False
    EventOperations.Sizing = False
    EventPopupMenu.UseBuiltInPopupMenu = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    OptionsBehavior.SelectOnRightClick = True
    OptionsView.GroupingKind = gkNone
    OptionsView.ViewPosition = vpRight
    OptionsView.WorkStart = 0.416666666666666700
    OptionsView.WorkFinish = 0.791666666666666600
    ResourceNavigator.Visibility = snvNever
    ShowHint = True
    Storage = Storage
    TabOrder = 1
    OnDblClick = SchedulerDblClick
    OnEventSelectionChanged = SchedulerEventSelectionChanged
    OnGetEventDisplayText = SchedulerGetEventDisplayText
    OnGetEventModernStyleHintInfo = SchedulerGetEventModernStyleHintInfo
    OnViewTypeChanged = SchedulerViewTypeChanged
    ExplicitTop = 37
    Splitters = {
      000000007D0000008F000000820000008F00000000000000940000006E020000}
    StoredClientBounds = {0000000000000000940400006E020000}
    object NavBar: TdxNavBar
      Left = 0
      Top = 0
      Width = 143
      Height = 492
      Align = alClient
      ActiveGroupIndex = 0
      TabOrder = 0
      View = 20
      OptionsImage.SmallImages = DM.ToolImages
      object nbgView: TdxNavBarGroup
        Caption = #1042#1080#1076
        SelectedLinkIndex = -1
        SmallImageIndex = 43
        TopVisibleLinkIndex = 0
        OptionsGroupControl.ShowControl = True
        OptionsGroupControl.UseControl = True
        Links = <>
      end
      object nbgPeriod: TdxNavBarGroup
        Caption = #1055#1077#1088#1080#1086#1076
        SelectedLinkIndex = -1
        SmallImageIndex = 56
        TopVisibleLinkIndex = 0
        OptionsGroupControl.ShowControl = True
        OptionsGroupControl.UseControl = True
        Links = <>
      end
      object nbgFilter: TdxNavBarGroup
        Caption = #1060#1080#1083#1100#1090#1088
        SelectedLinkIndex = -1
        SmallImageIndex = 5
        TopVisibleLinkIndex = 0
        OptionsGroupControl.ShowControl = True
        OptionsGroupControl.UseControl = True
        Links = <>
      end
      object nbgViewControl: TdxNavBarGroupControl
        Left = 2
        Top = 41
        Width = 122
        Height = 126
        TabOrder = 1
        GroupIndex = 0
        OriginalHeight = 126
        object bDay: TcxButton
          Left = 0
          Top = 0
          Width = 122
          Height = 25
          Align = alTop
          Caption = #1044#1077#1085#1100
          OptionsImage.Images = DM.ImageListStatuses
          TabOrder = 0
          OnClick = bDayClick
          ExplicitTop = -6
          ExplicitWidth = 117
        end
        object bWeeks: TcxButton
          Left = 0
          Top = 50
          Width = 122
          Height = 25
          Align = alTop
          Caption = #1055#1086' '#1085#1077#1076#1077#1083#1103#1084
          OptionsImage.Images = DM.ImageListStatuses
          TabOrder = 1
          OnClick = bWeeksClick
          ExplicitTop = 8
          ExplicitWidth = 117
        end
        object bWeek: TcxButton
          Left = 0
          Top = 25
          Width = 122
          Height = 25
          Align = alTop
          Caption = #1053#1077#1076#1077#1083#1103
          OptionsImage.Images = DM.ImageListStatuses
          TabOrder = 2
          OnClick = bWeekClick
          ExplicitTop = 8
          ExplicitWidth = 117
        end
        object bYear: TcxButton
          Left = 0
          Top = 100
          Width = 122
          Height = 25
          Align = alTop
          Caption = #1043#1086#1076
          OptionsImage.Images = DM.ImageListStatuses
          TabOrder = 3
          OnClick = bYearClick
          ExplicitTop = 115
          ExplicitWidth = 100
        end
        object bQuarter: TcxButton
          Left = 0
          Top = 75
          Width = 122
          Height = 25
          Align = alTop
          Caption = #1050#1074#1072#1088#1090#1072#1083
          OptionsImage.Images = DM.ImageListStatuses
          TabOrder = 4
          OnClick = bQuarterClick
          ExplicitTop = 115
          ExplicitWidth = 100
        end
      end
      object nbgPeriodControl: TdxNavBarGroupControl
        Left = 2
        Top = 218
        Width = 122
        Height = 50
        TabOrder = 2
        GroupIndex = 1
        OriginalHeight = 50
        object bDateToday: TcxButton
          Left = 0
          Top = 0
          Width = 122
          Height = 25
          Align = alTop
          Caption = #1057#1077#1075#1086#1076#1085#1103
          OptionsImage.Images = DM.ImageListStatuses
          TabOrder = 0
          OnClick = bDateTodayClick
          ExplicitTop = 8
          ExplicitWidth = 100
        end
        object bDateWeek: TcxButton
          Left = 0
          Top = 25
          Width = 122
          Height = 25
          Align = alTop
          Caption = #1069#1090#1072' '#1085#1077#1076#1077#1083#1103
          OptionsImage.Images = DM.ImageListStatuses
          TabOrder = 1
          OnClick = bDateWeekClick
          ExplicitTop = 33
          ExplicitWidth = 100
        end
      end
      object nbgFilterControl: TdxNavBarGroupControl
        Left = 2
        Top = 319
        Width = 122
        Height = 192
        TabOrder = 0
        GroupIndex = 2
        OriginalHeight = 192
        object cbOnlyMy: TcxCheckBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = #1058#1086#1083#1100#1082#1086' '#1084#1086#1080
          State = cbsChecked
          TabOrder = 0
          OnClick = cbOnlyMyClick
          ExplicitLeft = 16
          ExplicitTop = 16
          ExplicitWidth = 86
        end
        object cgResourceFilter: TcxCheckGroup
          Left = 0
          Top = 19
          Align = alClient
          Caption = #1057#1086#1073#1099#1090#1080#1103
          Properties.EditValueFormat = cvfInteger
          Properties.ImmediatePost = True
          Properties.Items = <
            item
            end
            item
            end
            item
            end>
          Properties.OnChange = cgResourceFilterPropertiesChange
          TabOrder = 1
          ExplicitLeft = 24
          ExplicitTop = 40
          Height = 171
          Width = 122
        end
      end
    end
  end
  inherited BM: TdxBarManager
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbAddEvent'
        end
        item
          Visible = True
          ItemName = 'bbEdit'
        end
        item
          Visible = True
          ItemName = 'bbDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object bbAddEvent: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1073#1099#1090#1080#1077
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbAddEventClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1042#1080#1076
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object bbEdit: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbEditClick
    end
    object bbDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      OnClick = bbDeleteClick
    end
    object bbViewGantt: TdxBarButton
      Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1072
      Category = 0
      Hint = #1044#1080#1072#1075#1088#1072#1084#1084#1072
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbViewGanttClick
    end
  end
  object Storage: TcxSchedulerStorage
    CustomFields = <>
    Reminders.Active = False
    Resources.Items = <
      item
        Name = #1042#1089#1090#1088#1077#1095#1072
        ResourceID = 176
      end
      item
        Name = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1081' '#1079#1074#1086#1085#1086#1082
        ResourceID = 177
      end
      item
        Name = #1054#1090#1087#1091#1089#1082
        ResourceID = '178'
      end
      item
        Name = #1041#1086#1083#1100#1085#1080#1095#1085#1099#1081
        ResourceID = '179'
      end
      item
        Name = #1050#1086#1084#1084#1072#1085#1076#1080#1088#1086#1074#1082#1072
        ResourceID = '180'
      end
      item
        Name = #1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077
        ResourceID = '181'
      end
      item
        Name = #1055#1088#1086#1075#1091#1083
        ResourceID = '182'
      end
      item
        Name = #1046#1091#1088#1085#1072#1083
        ResourceID = '-1'
      end>
    Left = 584
    Top = 80
  end
  object DATA: TpFIBDataSet
    UpdateSQL.Strings = (
      'update USER_PLAN'
      'set PID = :PID,'
      '    USER_ID = :USER_ID,'
      '    ACTION_ID = :ACTION_ID,'
      '    START_DT = :START_DT,'
      '    END_DT = :END_DT,'
      '    STATUS = :STATUS,'
      '    REQUEST_ID = :REQUEST_ID,'
      '    CONTRAGENT_ID = :CONTRAGENT_ID,'
      '    DESCRIPTION = :DESCRIPTION,'
      '    IS_ALL_DAY = :IS_ALL_DAY'
      'where (ID = :ID)')
    DeleteSQL.Strings = (
      'execute block(ID T_ID=:ID)'
      'as begin'
      '  if (:ID>0) then begin'
      '  end else begin'
      ''
      '  end'
      'end')
    InsertSQL.Strings = (
      
        'insert into USER_PLAN (PID, USER_ID, ACTION_ID, START_DT, END_DT' +
        ', STATUS, REQUEST_ID, CONTRAGENT_ID, DESCRIPTION, IS_ALL_DAY)'
      
        'values (:PID, :USER_ID, :ACTION_ID, :START_DT, :END_DT, :STATUS,' +
        ' :REQUEST_ID, :CONTRAGENT_ID, :DESCRIPTION, :IS_ALL_DAY)'
      'returning ID'
      '')
    RefreshSQL.Strings = (
      'select * from ('
      ''
      '  select P.ID, P.PID,'
      '      0 JOURNAL_ID,'
      '      P.ACTION_ID, REFBOOK.NAME ACTION_NAME,'
      
        '      IIF(COALESCE(P.IS_ALL_DAY, 0)=0, P.START_DT, cast((extract' +
        '(DAY from P.START_DT)||'#39'.'#39'||extract(MONTH from P.START_DT)||'#39'.'#39'|' +
        '|extract(YEAR from P.START_DT)||'#39' 00:00'#39') as T_DATETIME)) START_' +
        'DT,'
      
        '      IIF(COALESCE(P.IS_ALL_DAY, 0)=0, P.END_DT, cast((extract(D' +
        'AY from P.END_DT)||'#39'.'#39'||extract(MONTH from P.END_DT)||'#39'.'#39'||extra' +
        'ct(YEAR from P.END_DT)||'#39' 23:59'#39') as T_DATETIME)) END_DT,'
      '      P.STATUS,'
      '      P.REQUEST_ID, R.REQUEST_DT, r.NAME REQUEST_NAME,'
      '      P.CONTRAGENT_ID, C.NAME CONTRAGENT_NAME,'
      '      P.USER_ID, U.FIO USER_NAME,'
      '      cast(P.DESCRIPTION as T_DESCRIPTION) DESCRIPTION,'
      '      coalesce(REFBOOK.DESCRIPTION, '#39'clSilver'#39') ACTION_COLOR,'
      '      coalesce(P.IS_ALL_DAY, 0) IS_ALL_DAY'
      '    from USER_PLAN P'
      '    left join REQUEST R on R.ID=P.REQUEST_ID'
      '    left join CONTRAGENTS C on C.ID=P.CONTRAGENT_ID'
      '    left join REFBOOK on REFBOOK.ID=P.ACTION_ID'
      '    left join USERS U on U.ID=P.USER_ID'
      '    where 1=1'
      '      and (P.ID=:ID)'
      ''
      'union all'
      ''
      '  select'
      '    0-J.ID ID, 0 PID,'
      '    J.ID JOURNAL_ID,'
      '    -1 ACTION_ID, '#39#1046#1091#1088#1085#1072#1083': '#39'||B.NAME ACTION_NAME,'
      
        '    cast((extract(DAY from J.CONTROL_DATE)||'#39'.'#39'||extract(MONTH f' +
        'rom J.CONTROL_DATE)||'#39'.'#39'||extract(YEAR from J.CONTROL_DATE)||'#39' 1' +
        '0:00'#39') as T_DATETIME) START_DT,'
      
        '    cast((extract(DAY from J.CONTROL_DATE)||'#39'.'#39'||extract(MONTH f' +
        'rom J.CONTROL_DATE)||'#39'.'#39'||extract(YEAR from J.CONTROL_DATE)||'#39' 1' +
        '0:00'#39') as T_DATETIME) END_DT,'
      '    0 STATUS,'
      
        '    R.ID REQUEST_ID, R.REQUEST_DT REQUEST_DT, R.NAME REQUEST_NAM' +
        'E,'
      '    J.CONTRAGENT_ID, C.NAME  CONTRAGENT_NAME,'
      '    J.USER_ID, U.NAME USER_NAME,'
      
        '    cast(substring(J."MESSAGE" from 1 for 500) as T_DESCRIPTION)' +
        ' DESCRIPTION,'
      '    '#39'clSilver'#39' ACTION_COLOR,'
      '    0 IS_ALL_DAY'
      '  from CONTRAGENT_JOURNAL J'
      '  left join REFBOOK B on B.ID=J.RECORD_TYPE'
      '  left join REQUEST R on R.ID=J.REQUEST_ID'
      '  left join CONTRAGENTS C on C.ID=J.CONTRAGENT_ID'
      '  left join USERS U on U.ID=J.USER_ID'
      '  where'
      '   J.ID=0-:ID'
      ')'
      'order by START_DT'
      '')
    SelectSQL.Strings = (
      'select * from ('
      ''
      '  select P.ID, P.PID,'
      '      0 JOURNAL_ID,'
      '      P.ACTION_ID, REFBOOK.NAME ACTION_NAME,'
      
        '      IIF(COALESCE(P.IS_ALL_DAY, 0)=0, P.START_DT, cast((extract' +
        '(DAY from P.START_DT)||'#39'.'#39'||extract(MONTH from P.START_DT)||'#39'.'#39'|' +
        '|extract(YEAR from P.START_DT)||'#39' 00:00'#39') as T_DATETIME)) START_' +
        'DT,'
      
        '      IIF(COALESCE(P.IS_ALL_DAY, 0)=0, P.END_DT, cast((extract(D' +
        'AY from P.END_DT)||'#39'.'#39'||extract(MONTH from P.END_DT)||'#39'.'#39'||extra' +
        'ct(YEAR from P.END_DT)||'#39' 23:59'#39') as T_DATETIME)) END_DT,'
      '      P.STATUS,'
      '      P.REQUEST_ID, R.REQUEST_DT, r.NAME REQUEST_NAME,'
      '      P.CONTRAGENT_ID, C.NAME CONTRAGENT_NAME,'
      '      P.USER_ID, U.FIO USER_NAME,'
      '      cast(P.DESCRIPTION as T_DESCRIPTION) DESCRIPTION,'
      '      coalesce(REFBOOK.DESCRIPTION, '#39'clSilver'#39') ACTION_COLOR,'
      '      coalesce(P.IS_ALL_DAY, 0) IS_ALL_DAY'
      '    from USER_PLAN P'
      '    left join REQUEST R on R.ID=P.REQUEST_ID'
      '    left join CONTRAGENTS C on C.ID=P.CONTRAGENT_ID'
      '    left join REFBOOK on REFBOOK.ID=P.ACTION_ID'
      '    left join USERS U on U.ID=P.USER_ID'
      '    where 1=1'
      '      and ((P.USER_ID = :USER_ID) or (:USER_ID is null))'
      ''
      'union all'
      ''
      '  select'
      '    0-J.ID ID, 0 PID,'
      '    J.ID JOURNAL_ID,'
      '    -1 ACTION_ID, '#39#1046#1091#1088#1085#1072#1083': '#39'||B.NAME ACTION_NAME,'
      
        '    cast((extract(DAY from J.CONTROL_DATE)||'#39'.'#39'||extract(MONTH f' +
        'rom J.CONTROL_DATE)||'#39'.'#39'||extract(YEAR from J.CONTROL_DATE)||'#39' 1' +
        '0:00'#39') as T_DATETIME) START_DT,'
      
        '    cast((extract(DAY from J.CONTROL_DATE)||'#39'.'#39'||extract(MONTH f' +
        'rom J.CONTROL_DATE)||'#39'.'#39'||extract(YEAR from J.CONTROL_DATE)||'#39' 1' +
        '0:00'#39') as T_DATETIME) END_DT,'
      '    0 STATUS,'
      
        '    R.ID REQUEST_ID, R.REQUEST_DT REQUEST_DT, R.NAME REQUEST_NAM' +
        'E,'
      '    J.CONTRAGENT_ID, C.NAME  CONTRAGENT_NAME,'
      '    J.USER_ID, U.NAME USER_NAME,'
      
        '    cast(substring(J."MESSAGE" from 1 for 500) as T_DESCRIPTION)' +
        ' DESCRIPTION,'
      '    '#39'clSilver'#39' ACTION_COLOR,'
      '    0 IS_ALL_DAY'
      '  from CONTRAGENT_JOURNAL J'
      '  left join REFBOOK B on B.ID=J.RECORD_TYPE'
      '  left join REQUEST R on R.ID=J.REQUEST_ID'
      '  left join CONTRAGENTS C on C.ID=J.CONTRAGENT_ID'
      '  left join USERS U on U.ID=J.USER_ID'
      '  where'
      '    J.CONTROL_DATE is not null and j.COMPLETE_DT is null'
      '    and ((J.USER_ID = :USER_ID) or (:USER_ID is null))'
      ')'
      'order by START_DT')
    AfterPost = DATAAfterPost
    BeforeDelete = DATABeforeDelete
    AfterRefresh = DATAAfterPost
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    Left = 592
    Top = 216
  end
  object QR: TpFIBQuery
    Transaction = trRead
    Database = DM.FB
    Left = 408
    Top = 184
    qoStartTransaction = True
  end
end
