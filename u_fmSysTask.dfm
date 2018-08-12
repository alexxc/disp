inherited fmSysTask: TfmSysTask
  Caption = #1057#1080#1089#1090#1077#1084#1085#1099#1081' '#1087#1083#1072#1085#1080#1088#1086#1074#1097#1080#1082
  ClientHeight = 389
  ClientWidth = 1059
  OnCreate = FormCreate
  ExplicitWidth = 1075
  ExplicitHeight = 428
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1059
    ExplicitWidth = 1059
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1059
    Height = 358
    Align = alClient
    TabOrder = 1
    object GridView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsTask
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = GridViewStylesGetContentStyle
      object GridViewID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object GridViewPLAN_DT: TcxGridDBColumn
        Caption = #1050#1086#1075#1076#1072' '#1079#1072#1087#1083#1072#1085#1080#1088#1086#1074#1072#1085#1086
        DataBinding.FieldName = 'PLAN_DT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ImmediateDropDownWhenActivated = True
        Properties.ImmediateDropDownWhenKeyPressed = True
        Properties.ImmediatePost = True
        Properties.Kind = ckDateTime
        MinWidth = 120
        Options.HorzSizing = False
        Width = 120
      end
      object GridViewCMD: TcxGridDBColumn
        Caption = #1063#1090#1086' '#1089#1076#1077#1083#1072#1090#1100
        DataBinding.FieldName = 'CMD'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items.Strings = (
          'FULL SYNC'
          'PARTIAL SYNC')
        MinWidth = 162
        Options.HorzSizing = False
        Width = 162
      end
      object GridViewSTART_DT: TcxGridDBColumn
        Caption = #1053#1072#1095#1072#1083#1086
        DataBinding.FieldName = 'START_DT'
        MinWidth = 120
        Options.Editing = False
        Options.HorzSizing = False
        Width = 120
      end
      object GridViewFACT_DT: TcxGridDBColumn
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'FACT_DT'
        PropertiesClassName = 'TcxDateEditProperties'
        MinWidth = 120
        Options.Editing = False
        Options.HorzSizing = False
        Width = 120
      end
      object GridViewRES: TcxGridDBColumn
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
        DataBinding.FieldName = 'RES'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = DM.ImageListStatuses
        Properties.Items = <
          item
            Description = #1042#1099#1087#1086#1083#1085#1077#1085#1086
            ImageIndex = 19
            Value = 2
          end
          item
            Description = #1054#1096#1080#1073#1082#1072
            ImageIndex = 16
            Value = 3
          end
          item
            Description = #1042#1099#1087#1086#1083#1085#1103#1077#1090#1089#1103
            ImageIndex = 13
            Value = 1
          end
          item
            Description = #1054#1078#1080#1076#1072#1085#1080#1077
            ImageIndex = 17
            Value = 0
          end>
        Properties.ReadOnly = True
        MinWidth = 100
        Options.Editing = False
        Options.HorzSizing = False
        Width = 100
      end
      object GridViewRES_TEXT: TcxGridDBColumn
        Caption = #1042#1099#1074#1086#1076
        DataBinding.FieldName = 'RES_TEXT'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ReadOnly = True
        OnGetCellHint = GridViewRES_TEXTGetCellHint
        Options.Filtering = False
        Options.ShowEditButtons = isebAlways
        Options.Sorting = False
        Width = 187
      end
      object GridViewCREATED_BY: TcxGridDBColumn
        Caption = #1050#1090#1086' '#1076#1086#1073#1072#1074#1080#1083
        DataBinding.FieldName = 'CREATED_BY'
        PropertiesClassName = 'TcxTextEditProperties'
        MinWidth = 100
        Options.Editing = False
        Options.HorzSizing = False
        Width = 100
      end
      object GridViewCREATED_DT: TcxGridDBColumn
        Caption = #1050#1086#1075#1076#1072' '#1076#1086#1073#1072#1074#1080#1083
        DataBinding.FieldName = 'CREATED_DT'
        PropertiesClassName = 'TcxDateEditProperties'
        MinWidth = 120
        Options.Editing = False
        Options.HorzSizing = False
        Width = 120
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = GridView
    end
  end
  inherited BM: TdxBarManager
    Left = 224
    Top = 176
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          Visible = True
          ItemName = 'bbNew'
        end
        item
          Visible = True
          ItemName = 'bbSave'
        end
        item
          Visible = True
          ItemName = 'bbDelete'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    inherited bbSave: TdxBarButton
      PaintStyle = psCaptionGlyph
    end
    object bbDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      OnClick = bbDeleteClick
    end
    object bbNew: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbNewClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1055#1077#1088#1080#1086#1076
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbPeriodToday'
        end
        item
          Visible = True
          ItemName = 'bbPeriod3Days'
        end
        item
          Visible = True
          ItemName = 'bbPeriodAll'
        end>
    end
    object bbPeriodToday: TdxBarButton
      Caption = #1057#1077#1075#1086#1076#1085#1103
      Category = 0
      Hint = #1057#1077#1075#1086#1076#1085#1103
      Visible = ivAlways
      OnClick = bbPeriodTodayClick
    end
    object bbPeriod3Days: TdxBarButton
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1077' 3 '#1089#1091#1090#1086#1082
      Category = 0
      Hint = #1055#1086#1089#1083#1077#1076#1085#1080#1077' 3 '#1089#1091#1090#1086#1082
      Visible = ivAlways
      OnClick = bbPeriod3DaysClick
    end
    object bbPeriodAll: TdxBarButton
      Caption = #1042#1089#1077
      Category = 0
      Hint = #1042#1089#1077
      Visible = ivAlways
      OnClick = bbPeriodAllClick
    end
  end
  object dsTask: TDataSource
    DataSet = SysTask
    OnStateChange = dsTaskStateChange
    Left = 288
    Top = 176
  end
  object SysTask: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SYS_TASK'
      'SET '
      '    PLAN_DT = :PLAN_DT,'
      '    CMD = :CMD'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM SYS_TASK WHERE ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SYS_TASK('
      '    PLAN_DT,'
      '    CMD'
      ')'
      'VALUES('
      '    :PLAN_DT,'
      '    :CMD'
      ') returning ID')
    RefreshSQL.Strings = (
      'SELECT'
      '  PLAN_DT,'
      '  START_DT,'
      '  FACT_DT,'
      '  CREATED_BY,'
      '  CREATED_DT,'
      '  CMD, RES, RES_TEXT'
      'FROM'
      '  SYS_TASK'
      ' WHERE'
      '  SYS_TASK.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    PLAN_DT,'
      '    START_DT,'
      '    FACT_DT,'
      '    CREATED_BY,'
      '    CREATED_DT,'
      '    CMD, RES, RES_TEXT'
      'FROM'
      '    SYS_TASK'
      'where'
      
        '  (cast(START_DT as T_DATE) between coalesce(:DATE_START, curren' +
        't_date) and coalesce(:DATE_END, current_date)) or'
      
        '  (cast(PLAN_DT as T_DATE) between coalesce(:DATE_START, current' +
        '_date) and coalesce(:DATE_END, current_date))')
    AfterOpen = SysTaskAfterOpen
    AfterScroll = SysTaskAfterScroll
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 336
    Top = 176
  end
  object Timer: TTimer
    Interval = 5000
    OnTimer = TimerTimer
    Left = 392
    Top = 232
  end
  object RefreshQuery: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    PLAN_DT,'
      '    START_DT,'
      '    FACT_DT,'
      '    CREATED_BY,'
      '    CREATED_DT,'
      '    CMD, RES, RES_TEXT'
      'FROM'
      '    SYS_TASK T'
      'where'
      '  T.MODIFY_DT >= :DT'
      '')
    Left = 336
    Top = 232
    qoStartTransaction = True
  end
end
