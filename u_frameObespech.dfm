object frameObespech: TframeObespech
  Left = 0
  Top = 0
  Width = 870
  Height = 475
  TabOrder = 0
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 870
    Height = 31
    Align = dalTop
    BarManager = BMobespech
  end
  object Grid: TcxGrid
    Left = 0
    Top = 31
    Width = 870
    Height = 444
    Align = alClient
    TabOrder = 1
    object GridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsOBESPECH
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object GridDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object GridDBTableView1CONTRAGENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'CONTRAGENT_ID'
        Visible = False
        Width = 121
      end
      object GridDBTableView1LOCK_DATE: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1089#1090#1072#1074#1083#1077#1085#1080#1103
        DataBinding.FieldName = 'LOCK_DATE'
        MinWidth = 110
        Options.HorzSizing = False
        Width = 110
      end
      object GridDBTableView1UNLOCK_DATE: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1089#1085#1103#1090#1080#1103
        DataBinding.FieldName = 'UNLOCK_DATE'
        MinWidth = 110
        Options.HorzSizing = False
        Width = 110
      end
      object GridDBTableView1USER_ID: TcxGridDBColumn
        Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
        DataBinding.FieldName = 'USER_ID'
        RepositoryItem = DM.erUsers
        Width = 156
      end
      object GridDBTableView1AMOUNT: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'AMOUNT'
        Width = 128
      end
      object GridDBTableView1STATUS: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DM.ImageListStatuses
        Properties.Items = <
          item
            Description = #1063#1077#1088#1085#1086#1074#1080#1082
            ImageIndex = 18
            Value = 0
          end
          item
            Description = #1047#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1086
            ImageIndex = 31
            Value = 1
          end
          item
            Description = #1042#1077#1088#1085#1091#1083#1086#1089#1100
            ImageIndex = 26
            Value = 2
          end
          item
            Description = #1040#1088#1093#1080#1074
            ImageIndex = 32
            Value = 3
          end>
        Width = 168
      end
      object GridDBTableView1DESCRIPTION: TcxGridDBColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 200
      end
      object GridDBTableView1CREATED_BY: TcxGridDBColumn
        DataBinding.FieldName = 'CREATED_BY'
        Visible = False
      end
      object GridDBTableView1CREATED_DT: TcxGridDBColumn
        DataBinding.FieldName = 'CREATED_DT'
        Visible = False
      end
      object GridDBTableView1MODIFY_BY: TcxGridDBColumn
        DataBinding.FieldName = 'MODIFY_BY'
        Visible = False
      end
      object GridDBTableView1MODIFY_DT: TcxGridDBColumn
        DataBinding.FieldName = 'MODIFY_DT'
        Visible = False
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object OBESPECH: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE OBESPECH'
      'SET'
      '  REQUEST_ID=:REQUEST_ID,'
      '  CONTRAGENT_ID = :CONTRAGENT_ID,'
      '  USER_ID = :USER_ID,'
      '  AMOUNT = :AMOUNT,'
      '  STATUS = :STATUS,'
      '  LOCK_DATE = :LOCK_DATE,'
      '  UNLOCK_DATE = :UNLOCK_DATE,'
      '  DESCRIPTION = :DESCRIPTION'
      'WHERE'
      '    ID = :ID'
      '    ')
    DeleteSQL.Strings = (
      'delete from OBESPECH where ID=:OLD_ID')
    InsertSQL.Strings = (
      
        'INSERT INTO OBESPECH(ID, REQUEST_ID, CONTRAGENT_ID, USER_ID, AMO' +
        'UNT, STATUS, LOCK_DATE, UNLOCK_DATE, DESCRIPTION)'
      
        'VALUES(:ID, :REQUEST_ID, :CONTRAGENT_ID, :USER_ID, :AMOUNT, :STA' +
        'TUS, :LOCK_DATE, :UNLOCK_DATE, :DESCRIPTION)'
      'returning ID')
    RefreshSQL.Strings = (
      'select * from OBESPECH O where O.ID = :OLD_ID'
      '     '
      '')
    SelectSQL.Strings = (
      'select * from OBESPECH O'
      'where'
      '    O.CONTRAGENT_ID=coalesce(:CONTRAGENT_ID, 660)'
      '    or O.REQUEST_ID=coalesce(:REQUEST_ID, 660)')
    Transaction = trRObespech
    Database = DM.FB
    UpdateTransaction = trWObespech
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 216
    Top = 152
  end
  object dsOBESPECH: TDataSource
    DataSet = OBESPECH
    OnDataChange = dsOBESPECHDataChange
    Left = 264
    Top = 152
  end
  object BMobespech: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = DM.ToolImages
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 344
    Top = 152
    PixelsPerInch = 96
    object BMobespechBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 880
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          Visible = True
          ItemName = 'bbAdd'
        end
        item
          Visible = True
          ItemName = 'bbEdit'
        end
        item
          Visible = True
          ItemName = 'bbStatus'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object bbRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = bbRefreshClick
    end
    object bbAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbAddClick
    end
    object bbEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbEditClick
    end
    object bbStatus: TdxBarSubItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1090#1072#1090#1091#1089
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbObespechStatus0'
        end
        item
          Visible = True
          ItemName = 'bbObespechStatus1'
        end
        item
          Visible = True
          ItemName = 'bbObespechStatus2'
        end
        item
          Visible = True
          ItemName = 'bbObespechStatus3'
        end>
    end
    object bbObespechStatus0: TdxBarButton
      Caption = #1063#1077#1088#1085#1086#1074#1080#1082
      Category = 0
      Hint = #1063#1077#1088#1085#1086#1074#1080#1082
      Visible = ivAlways
      OnClick = bbObespechStatus0Click
    end
    object bbObespechStatus1: TdxBarButton
      Tag = 1
      Caption = #1047#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1080#1086
      Category = 0
      Hint = #1047#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1080#1086
      Visible = ivAlways
      OnClick = bbObespechStatus0Click
    end
    object bbObespechStatus2: TdxBarButton
      Tag = 2
      Caption = #1042#1077#1088#1085#1091#1083#1086#1089#1100
      Category = 0
      Hint = #1042#1077#1088#1085#1091#1083#1086#1089#1100
      Visible = ivAlways
      OnClick = bbObespechStatus0Click
    end
    object bbObespechStatus3: TdxBarButton
      Tag = 1
      Caption = #1040#1088#1093#1080#1074
      Category = 0
      Hint = #1040#1088#1093#1080#1074
      Visible = ivAlways
      OnClick = bbObespechStatus0Click
    end
  end
  object trRObespech: TpFIBTransaction
    DefaultDatabase = DM.FB
    TRParams.Strings = (
      'read'
      'nowait'
      'rec_version'
      'read_committed')
    TPBMode = tpbDefault
    Left = 208
    Top = 240
  end
  object trWObespech: TpFIBTransaction
    DefaultDatabase = DM.FB
    Left = 304
    Top = 240
  end
end
