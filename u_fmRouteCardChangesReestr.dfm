inherited fmRouteCardChangesReestr: TfmRouteCardChangesReestr
  Left = 209
  Top = 106
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1087#1086' '#1084#1072#1088#1096#1088#1091#1090#1085#1099#1084' '#1082#1072#1088#1090#1072#1084
  ClientHeight = 675
  ClientWidth = 1346
  ExplicitWidth = 1362
  ExplicitHeight = 714
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1346
    ExplicitWidth = 1346
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1346
    Height = 396
    Align = alClient
    TabOrder = 1
    object GridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object GridView: TcxGridDBBandedTableView
      OnDblClick = GridViewDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = ',0;-,0'
          Kind = skSum
          Position = spFooter
          Column = COUNT_PLAN
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = COUNT_PLAN
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Position = spFooter
          Column = COUNT_FACT_OUT
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = COUNT_FACT_OUT
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Position = spFooter
          Column = COUNT_FACT_IN
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = COUNT_FACT_IN
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = COUNT_PLAN
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = COUNT_FACT_OUT
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = COUNT_FACT_IN
        end
        item
          Kind = skCount
          FieldName = 'ID'
          Column = DOC_DT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
      Bands = <
        item
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090
          HeaderAlignmentHorz = taLeftJustify
          Width = 800
        end
        item
          Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077
          FixedKind = fkRight
          HeaderAlignmentHorz = taLeftJustify
        end>
      object DOC_DT: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'ROUTE_CARD_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 59
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object DOC_NUM: TcxGridDBBandedColumn
        Caption = #1052'/'#1050' '#8470
        DataBinding.FieldName = 'ROUTE_CARD_NUM'
        PropertiesClassName = 'TcxTextEditProperties'
        SortIndex = 1
        SortOrder = soAscending
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object CONTRAGENT_NAME: TcxGridDBBandedColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'CONTRAGENT_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 128
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object SERVICE_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SERVICE_NAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object MAT_NAME: TcxGridDBBandedColumn
        Caption = #1050#1086#1074#1077#1088
        DataBinding.FieldName = 'MAT_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 135
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object ADDRESS_NAME: TcxGridDBBandedColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'ADDRESS_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 145
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object FACT_STATUS: TcxGridDBBandedColumn
        Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
        DataBinding.FieldName = 'STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        Options.SortByDisplayText = isbtOn
        Width = 200
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object COUNT_PLAN: TcxGridDBBandedColumn
        Caption = #1055#1083#1072#1085
        DataBinding.FieldName = 'COUNT_PLAN'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0;-,0'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 35
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object COUNT_FACT_IN: TcxGridDBBandedColumn
        Caption = #1057#1085#1103#1083
        DataBinding.FieldName = 'COUNT_FACT_IN'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 35
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object COUNT_FACT_OUT: TcxGridDBBandedColumn
        Caption = #1056#1072#1079#1083
        DataBinding.FieldName = 'COUNT_FACT_OUT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 35
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object DESCRIPTION: TcxGridDBBandedColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
        DataBinding.FieldName = 'DESCRIPTION'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object GridViewID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object GridViewROUTE_NAME: TcxGridDBBandedColumn
        Caption = #1052#1072#1088#1096#1088#1091#1090
        DataBinding.FieldName = 'ROUTE_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object GridViewPRODUCTION_NAME: TcxGridDBBandedColumn
        Caption = #1055#1088'-'#1074#1086
        DataBinding.FieldName = 'PRODUCTION_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridViewMANAGER_NAME: TcxGridDBBandedColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'MANAGER_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 152
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object DRIVER_ID: TcxGridDBBandedColumn
        Caption = #1042#1086#1076#1080#1090#1077#1083#1100
        DataBinding.FieldName = 'DRIVER_ID'
        RepositoryItem = DM.erAUTO_DRIVER
        Width = 115
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object GridViewMANAGE_STATUS_NAME: TcxGridDBBandedColumn
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
        DataBinding.FieldName = 'MANAGE_STATUS_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Width = 150
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridViewIS_CLOSED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MANAGE_STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DM.ImageListStatuses
        Properties.Items = <
          item
            Description = #1053#1086#1074#1099#1081
            ImageIndex = 17
            Value = '0'
          end
          item
            Description = #1042' '#1086#1073#1088#1072#1073#1086#1090#1082#1077
            ImageIndex = 22
            Value = '1'
          end
          item
            Description = #1047#1072#1082#1088#1099#1090#1086
            ImageIndex = 7
            Value = '2'
          end>
        Width = 22
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridView
    end
  end
  object cxPageControl1: TcxPageControl [2]
    Left = 0
    Top = 427
    Width = 1346
    Height = 248
    Align = alBottom
    TabOrder = 2
    Properties.ActivePage = tabJournal
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 242
    ClientRectLeft = 2
    ClientRectRight = 1340
    ClientRectTop = 27
    object tabInfo: TcxTabSheet
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxLabel1: TcxLabel
        Left = 3
        Top = 16
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        Transparent = True
      end
      object cxDBLabel1: TcxDBLabel
        Left = 12
        Top = 31
        DataBinding.DataField = 'CONTRAGENT_NAME'
        DataBinding.DataSource = dsDATA
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Transparent = True
        Height = 21
        Width = 800
      end
      object cxLabel2: TcxLabel
        Left = 3
        Top = 51
        Caption = #1040#1076#1088#1077#1089
        Transparent = True
      end
      object cxDBLabel2: TcxDBLabel
        Left = 12
        Top = 65
        DataBinding.DataField = 'ADDRESS_NAME'
        DataBinding.DataSource = dsDATA
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Transparent = True
        Height = 21
        Width = 800
      end
      object cxLabel3: TcxLabel
        Left = 0
        Top = 106
        Align = alBottom
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Transparent = True
        ExplicitTop = 102
      end
      object cxDBMemo1: TcxDBMemo
        AlignWithMargins = True
        Left = 3
        Top = 126
        Align = alBottom
        DataBinding.DataField = 'DESCRIPTION'
        DataBinding.DataSource = dsDATA
        Properties.ReadOnly = True
        TabOrder = 5
        Height = 86
        Width = 1332
      end
      object cxLabel4: TcxLabel
        Left = 3
        Top = 92
        Caption = #1055#1083#1072#1085#1086#1074#1086#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Transparent = True
      end
      object cxDBLabel3: TcxDBLabel
        Left = 133
        Top = 86
        DataBinding.DataField = 'COUNT_PLAN'
        DataBinding.DataSource = dsDATA
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Transparent = True
        Height = 21
        Width = 32
        AnchorX = 149
      end
      object cxLabel5: TcxLabel
        Left = 252
        Top = 88
        Caption = #1056#1072#1079#1083#1086#1078#1077#1085#1086
        Transparent = True
      end
      object cxLabel6: TcxLabel
        Left = 180
        Top = 88
        Caption = #1057#1085#1103#1090#1086
        Transparent = True
      end
      object cxDBLabel4: TcxDBLabel
        Left = 312
        Top = 86
        DataBinding.DataField = 'COUNT_FACT_OUT'
        DataBinding.DataSource = dsDATA
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Transparent = True
        Height = 21
        Width = 32
        AnchorX = 328
      end
      object cxDBLabel5: TcxDBLabel
        Left = 217
        Top = 86
        DataBinding.DataField = 'COUNT_FACT_IN'
        DataBinding.DataSource = dsDATA
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Transparent = True
        Height = 21
        Width = 30
        AnchorX = 232
      end
    end
    object tabJournal: TcxTabSheet
      Caption = #1046#1091#1088#1085#1072#1083' '#1080' '#1086#1073#1088#1072#1073#1086#1090#1082#1072
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inline frameJournal: TframeJournal
        Left = 0
        Top = 0
        Width = 1338
        Height = 215
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1338
        ExplicitHeight = 215
        inherited Grid: TcxGrid
          Width = 1338
          Height = 184
          ExplicitWidth = 1338
          ExplicitHeight = 184
          inherited GridDBTableView1: TcxGridDBTableView
            inherited GridDBTableView1RECORD_SUBTYPE_NAME: TcxGridDBColumn
              Visible = False
            end
          end
        end
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 1338
          ExplicitWidth = 1338
        end
        inherited BM: TdxBarManager
          PixelsPerInch = 96
          inherited BarJournal: TdxBar
            ItemLinks = <
              item
                Visible = True
                ItemName = 'bbRefresh'
              end
              item
                Visible = True
                ItemName = 'bbAdd'
              end>
          end
          inherited bbAdd: TdxBarButton
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
          end
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
          ItemName = 'bbPeriod'
        end
        item
          Visible = True
          ItemName = 'bbFilterNew'
        end
        item
          Visible = True
          ItemName = 'bbFilterProcess'
        end
        item
          Visible = True
          ItemName = 'bbFilterClosed'
        end
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          Visible = True
          ItemName = 'bbEdit'
        end
        item
          Visible = True
          ItemName = 'bbRestart'
        end
        item
          Visible = True
          ItemName = 'bbExport'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
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
    object bbPeriod: TdxBarSubItem
      Caption = #1055#1077#1088#1080#1086#1076
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbPeriod1'
        end
        item
          Visible = True
          ItemName = 'bbPeriod2'
        end
        item
          Visible = True
          ItemName = 'bbPeriod3'
        end
        item
          Visible = True
          ItemName = 'bbPeriod4'
        end
        item
          Visible = True
          ItemName = 'bbPeriod5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbPeriod6'
        end
        item
          Visible = True
          ItemName = 'bbPeriod7'
        end>
    end
    object bbPeriod1: TdxBarButton
      Tag = 1
      Caption = #1042#1095#1077#1088#1072
      Category = 0
      Hint = #1042#1095#1077#1088#1072
      Visible = ivAlways
      OnClick = bbPeriod1Click
    end
    object bbPeriod2: TdxBarButton
      Tag = 2
      Caption = #1057#1077#1075#1086#1076#1085#1103
      Category = 0
      Hint = #1057#1077#1075#1086#1076#1085#1103
      Visible = ivAlways
      OnClick = bbPeriod1Click
    end
    object bbPeriod3: TdxBarButton
      Tag = 3
      Caption = #1057' '#1085#1072#1095#1072#1083#1072' '#1085#1077#1076#1077#1083#1080
      Category = 0
      Hint = #1057' '#1085#1072#1095#1072#1083#1072' '#1085#1077#1076#1077#1083#1080
      Visible = ivAlways
      OnClick = bbPeriod1Click
    end
    object bbPeriod4: TdxBarButton
      Tag = 4
      Caption = #1057' '#1085#1072#1095#1072#1083#1072' '#1084#1077#1089#1103#1094#1072
      Category = 0
      Hint = #1057' '#1085#1072#1095#1072#1083#1072' '#1084#1077#1089#1103#1094#1072
      Visible = ivAlways
      OnClick = bbPeriod1Click
    end
    object bbPeriod6: TdxBarButton
      Tag = 6
      Caption = #1053#1072' '#1076#1072#1090#1091
      Category = 0
      Hint = #1053#1072' '#1076#1072#1090#1091
      Visible = ivAlways
      OnClick = bbPeriod1Click
    end
    object bbPeriod5: TdxBarButton
      Tag = 5
      Caption = #1057' '#1085#1072#1095#1072#1083#1072' '#1075#1086#1076#1072
      Category = 0
      Hint = #1057' '#1085#1072#1095#1072#1083#1072' '#1075#1086#1076#1072
      Visible = ivAlways
      OnClick = bbPeriod1Click
    end
    object bbExport: TdxBarButton
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Hint = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 28
      PaintStyle = psCaptionGlyph
      OnClick = bbExportClick
    end
    object bbPeriod7: TdxBarButton
      Tag = 7
      Caption = #1055#1088#1086#1080#1079#1074#1086#1083#1100#1085#1099#1081' '#1087#1077#1088#1080#1086#1076
      Category = 0
      Hint = #1055#1088#1086#1080#1079#1074#1086#1083#1100#1085#1099#1081' '#1087#1077#1088#1080#1086#1076
      Visible = ivAlways
      ImageIndex = 43
      OnClick = bbPeriod1Click
    end
    object bbFilterNew: TdxBarButton
      Caption = #1053#1086#1074#1099#1077
      Category = 0
      Hint = #1053#1086#1074#1099#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbFilterNewClick
    end
    object bbFilterProcess: TdxBarButton
      Caption = #1042' '#1086#1073#1088#1072#1073#1086#1090#1082#1077
      Category = 0
      Hint = #1042' '#1086#1073#1088#1072#1073#1086#1090#1082#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbFilterNewClick
    end
    object bbFilterClosed: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1099#1077
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1099#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbFilterNewClick
    end
    object bbRestart: TdxBarButton
      Caption = #1054#1073#1088#1072#1073#1086#1090#1072#1090#1100' '#1079#1072#1085#1086#1074#1086
      Category = 0
      Hint = #1054#1073#1088#1072#1073#1086#1090#1072#1090#1100' '#1079#1072#1085#1086#1074#1086
      Visible = ivNever
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      OnClick = bbRestartClick
    end
  end
  object DATA: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      '  CHG.ID,'
      '  CHG.ROUTE_CARD_T_ID,'
      '  CHG.PRODUCTION_ID,'
      '  P.SHORTNAME PRODUCTION_NAME,'
      '  CHG.ROUTE_CARD_DATE, CHG.ROUTE_CARD_NUM,'
      '  C.NAME CONTRAGENT_NAME,'
      '  M.DESCRIPTION MAT_NAME,'
      '  CA.NAME ADDRESS_NAME,'
      '  CHG.STATUS,'
      '  REF_STATUS.NAME STATUS_NAME,'
      '  CHG.COUNT_PLAN, CHG.COUNT_FACT_IN, CHG.COUNT_FACT_OUT,'
      '  coalesce(CHG.DESCRIPTION, '#39#39') DESCRIPTION,'
      '  R.DESCRIPTION ROUTE_NAME,'
      '  U.NAME MANAGER_NAME,'
      
        '  (select DOC.DRIVER_ID from DOC_ROUTE_CARD DOC where ID=CHG.ROU' +
        'TE_CARD_ID),'
      '  case'
      
        '    when CHG.STATUS=coalesce(CHG.MANAGE_STATUS, CHG.STATUS) then' +
        ' 0'
      
        '    when CHG.STATUS<>coalesce(CHG.MANAGE_STATUS, CHG.STATUS) and' +
        ' coalesce(CHG.IS_CLOSED, 0)=0  then 1'
      '    when coalesce(CHG.IS_CLOSED, 0)=1 then 2'
      '    else -1'
      '  end MANAGE_STATUS,'
      
        '  (select B.NAME from REFBOOK B where B.ID=IIF(CHG.MANAGE_STATUS' +
        '=CHG.STATUS, null, CHG.MANAGE_STATUS)) MANAGE_STATUS_NAME,'
      '  CHG.IS_CLOSED'
      ''
      'from'
      '  DOC_ROUTE_CARD_CHANGES CHG, VW_CONTRAGENTS_SELECT C,'
      '  REF_MAT M, CONTRACT_ADDRESS CA,'
      '  REFBOOK REF_STATUS, REF_ROUTES R, REF_PRODUCTIONS P, USERS U'
      'where'
      '  C.ID=CHG.CONTRAGENT_ID'
      '  and M.ID=CHG.MAT_ID'
      '  and CA.ID=CHG.ADDRESS_ID'
      '  and REF_STATUS.ID=CHG.STATUS'
      '  and R.ID=CHG.ROUTE_ID'
      '  and P.ID=CHG.PRODUCTION_ID'
      '  and U.ID=C.MANAGER_ID'
      ''
      '  AND CHG.ID=:ID')
    SelectSQL.Strings = (
      'select'
      '  CHG.ID,'
      '  CHG.ROUTE_CARD_T_ID,'
      '  CHG.PRODUCTION_ID,'
      '  P.SHORTNAME PRODUCTION_NAME,'
      '  CHG.ROUTE_CARD_DATE, CHG.ROUTE_CARD_NUM,'
      '  C.NAME CONTRAGENT_NAME,'
      '  M.DESCRIPTION MAT_NAME,'
      '  CA.NAME ADDRESS_NAME,'
      '  CHG.STATUS,'
      '  REF_STATUS.NAME STATUS_NAME,'
      '  CHG.COUNT_PLAN, CHG.COUNT_FACT_IN, CHG.COUNT_FACT_OUT,'
      '  coalesce(CHG.DESCRIPTION, '#39#39') DESCRIPTION,'
      '  R.DESCRIPTION ROUTE_NAME,'
      '  U.NAME MANAGER_NAME,'
      
        '  (select DOC.DRIVER_ID from DOC_ROUTE_CARD DOC where ID=CHG.ROU' +
        'TE_CARD_ID),'
      '  case'
      
        '    when CHG.STATUS=coalesce(CHG.MANAGE_STATUS, CHG.STATUS) then' +
        ' 0'
      
        '    when CHG.STATUS<>coalesce(CHG.MANAGE_STATUS, CHG.STATUS) and' +
        ' coalesce(CHG.IS_CLOSED, 0)=0  then 1'
      '    when coalesce(CHG.IS_CLOSED, 0)=1 then 2'
      '    else -1'
      '  end MANAGE_STATUS,'
      
        '  (select B.NAME from REFBOOK B where B.ID=IIF(CHG.MANAGE_STATUS' +
        '=CHG.STATUS, null, CHG.MANAGE_STATUS)) MANAGE_STATUS_NAME,'
      '  CHG.IS_CLOSED'
      ''
      'from'
      '  DOC_ROUTE_CARD_CHANGES CHG, VW_CONTRAGENTS_SELECT C,'
      '  REF_MAT M, CONTRACT_ADDRESS CA,'
      '  REFBOOK REF_STATUS, REF_ROUTES R, REF_PRODUCTIONS P, USERS U'
      'where'
      '    1=1'
      
        '  and ((CHG.STATUS=coalesce(CHG.MANAGE_STATUS, CHG.STATUS) and :' +
        'STATUS_NEW=1)'
      
        '  OR(CHG.STATUS<>coalesce(CHG.MANAGE_STATUS, CHG.STATUS) and :ST' +
        'ATUS_PROCESS=1 and coalesce(CHG.IS_CLOSED, 0)<>1)'
      '  OR (CHG.IS_CLOSED=1 and :STATUS_CLOSED=1))'
      ''
      
        '  and CHG.ROUTE_CARD_DATE between coalesce(:DATE_START, cast('#39'01' +
        '.01.2016'#39' as T_DATE)) and coalesce(:DATE_END, current_date)'
      '  and C.ID=CHG.CONTRAGENT_ID'
      '  and M.ID=CHG.MAT_ID'
      '  and CA.ID=CHG.ADDRESS_ID'
      '  and REF_STATUS.ID=CHG.STATUS'
      '  and R.ID=CHG.ROUTE_ID'
      '  and P.ID=CHG.PRODUCTION_ID'
      '  and U.ID=C.MANAGER_ID'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 256
    Top = 120
  end
  object dsDATA: TDataSource
    DataSet = DATA
    OnDataChange = dsDATADataChange
    Left = 304
    Top = 128
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 152
    Top = 144
    qoStartTransaction = True
  end
end
