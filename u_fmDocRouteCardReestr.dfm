inherited fmDocRouteCardReestr: TfmDocRouteCardReestr
  Left = 0
  Top = 187
  Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' - '#1052#1072#1088#1096#1088#1091#1090#1085#1099#1077' '#1082#1072#1088#1090#1099
  ClientHeight = 581
  ClientWidth = 1348
  OnCreate = FormCreate
  ExplicitWidth = 1364
  ExplicitHeight = 619
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1348
    ExplicitWidth = 1348
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 649
    Height = 550
    Align = alLeft
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsData
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'POSITION_COUNT'
          Column = cxGrid1DBTableView1POSITION_COUNT
          DisplayText = #1055#1086#1079#1080#1094#1080#1081': '
        end
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'MAT_COUNT'
          Column = cxGrid1DBTableView1MAT_COUNT
        end
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'CONTRAGENTS_COUNT'
          Column = cxGrid1DBTableView1CONTRAGENTS_COUNT
        end
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'ADDRESS_COUNT'
          Column = cxGrid1DBTableView1ADDRESS_COUNT
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          FieldName = 'MAT_SQUARE'
          Column = cxGrid1DBTableView1MAT_SQUARE
        end
        item
          Format = '#,##0'
          Kind = skCount
          FieldName = 'ID'
          Column = cxGrid1DBTableView1DOC_NUM
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skCount
          FieldName = 'ID'
          Column = cxGrid1DBTableView1DOC_NUM
        end
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'MAT_COUNT'
          Column = cxGrid1DBTableView1MAT_COUNT
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          FieldName = 'MAT_SQUARE'
          Column = cxGrid1DBTableView1MAT_SQUARE
        end
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'CONTRAGENTS_COUNT'
          Column = cxGrid1DBTableView1CONTRAGENTS_COUNT
        end
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'ADDRESS_COUNT'
          Column = cxGrid1DBTableView1ADDRESS_COUNT
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
              Column = cxGrid1DBTableView1POSITION_COUNT
            end>
          SummaryItems = <
            item
              Kind = skSum
              FieldName = 'POSITION_COUNT'
              Column = cxGrid1DBTableView1POSITION_COUNT
            end>
        end>
      OptionsBehavior.IncSearch = True
      OptionsBehavior.ImmediateEditor = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cxGrid1DBTableView1DOC_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DOC_DT'
        MinWidth = 65
        Options.Editing = False
        Options.HorzSizing = False
        Width = 65
      end
      object cxGrid1DBTableView1DOC_NUM: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'DOC_NUM'
        MinWidth = 65
        Options.Editing = False
        Options.HorzSizing = False
        Width = 65
      end
      object cxGrid1DBTableView1STORAGE_NAME: TcxGridDBColumn
        Caption = #1052#1077#1089#1090#1086' '#1093#1088#1072#1085#1077#1085#1080#1103
        DataBinding.FieldName = 'STORAGE_NAME'
        Visible = False
        GroupIndex = 0
        Width = 101
      end
      object cxGrid1DBTableView1ROUNE_NAME: TcxGridDBColumn
        Caption = #1052#1072#1088#1096#1088
        DataBinding.FieldName = 'ROUNE_NAME'
        MinWidth = 40
        Options.Editing = False
        Options.HorzSizing = False
        Width = 40
      end
      object DRIVER_ID: TcxGridDBColumn
        Caption = #1042#1086#1076#1080#1090#1077#1083#1100
        DataBinding.FieldName = 'DRIVER_NAME'
        PropertiesClassName = 'TcxPopupEditProperties'
        Properties.IncrementalSearch = False
        Properties.PopupClientEdge = True
        Properties.PopupControl = panelDriver
        Properties.OnInitPopup = DRIVER_IDPropertiesInitPopup
        Width = 138
      end
      object cxGrid1DBTableView1POSITION_COUNT: TcxGridDBColumn
        Caption = #1055#1086#1079#1080#1094#1080#1081
        DataBinding.FieldName = 'POSITION_COUNT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.Editing = False
        Options.HorzSizing = False
        Width = 60
      end
      object cxGrid1DBTableView1MAT_COUNT: TcxGridDBColumn
        Caption = #1050#1086#1074#1088#1086#1074
        DataBinding.FieldName = 'MAT_COUNT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.Editing = False
        Options.HorzSizing = False
        Width = 60
      end
      object cxGrid1DBTableView1CONTRAGENTS_COUNT: TcxGridDBColumn
        Caption = #1050#1083#1080#1077#1085#1090#1086#1074
        DataBinding.FieldName = 'CONTRAGENTS_COUNT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.Editing = False
        Options.HorzSizing = False
        Width = 60
      end
      object cxGrid1DBTableView1ADDRESS_COUNT: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089#1086#1074
        DataBinding.FieldName = 'ADDRESS_COUNT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.Editing = False
        Options.HorzSizing = False
        Width = 60
      end
      object cxGrid1DBTableView1MAT_SQUARE: TcxGridDBColumn
        Caption = #1055#1083#1086#1097#1072#1076#1100
        DataBinding.FieldName = 'MAT_SQUARE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
      end
      object cxGrid1DBTableView1KM: TcxGridDBColumn
        DataBinding.FieldName = 'KM'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Visible = False
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 52
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object panelDriver: TcxGroupBox [2]
    Left = 8
    Top = 190
    Caption = #1042#1099#1073#1086#1088' '#1074#1086#1076#1080#1090#1077#1083#1103
    PanelStyle.Active = True
    TabOrder = 2
    Visible = False
    Height = 273
    Width = 545
    object gridAutoDriver: TcxGrid
      Left = 3
      Top = 34
      Width = 539
      Height = 236
      Align = alClient
      TabOrder = 0
      object gridAutoDriverDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsAutoDrivers
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object gridAutoDriverDBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gridAutoDriverDBTableView1NAME: TcxGridDBColumn
          Caption = #1042#1086#1076#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 200
        end
        object gridAutoDriverDBTableView1PRODUCTION_ID: TcxGridDBColumn
          Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
          DataBinding.FieldName = 'PRODUCTION_ID'
          RepositoryItem = DM.erProduction
          Width = 144
        end
        object gridAutoDriverDBTableView1IS_ACTIVE: TcxGridDBColumn
          Caption = #1040#1082#1090#1080#1074
          DataBinding.FieldName = 'IS_ACTIVE'
          RepositoryItem = DM.erCheckGreen
          MinWidth = 40
          Options.Editing = False
          Options.HorzSizing = False
          Width = 40
        end
      end
      object gridAutoDriverLevel1: TcxGridLevel
        GridView = gridAutoDriverDBTableView1
      end
    end
    object dxBarDockControl3: TdxBarDockControl
      Left = 3
      Top = 3
      Width = 539
      Height = 31
      Align = dalTop
      BarManager = BM
    end
  end
  object pagesDetail: TcxPageControl [3]
    Left = 649
    Top = 31
    Width = 699
    Height = 550
    Align = alClient
    TabOrder = 3
    Properties.ActivePage = tabDetail
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 544
    ClientRectLeft = 2
    ClientRectRight = 693
    ClientRectTop = 27
    object tabDetail: TcxTabSheet
      Caption = #1057#1086#1089#1090#1072#1074' '#1052#1050
      ImageIndex = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 691
        Height = 517
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object cxGrid2: TcxGrid
          Left = 0
          Top = 31
          Width = 691
          Height = 486
          Align = alClient
          TabOrder = 0
          object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            OnDblClick = cxGrid2DBBandedTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDOC
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'ID'
                Column = cxGrid2DBBandedTableView1LINENO
              end
              item
                Format = '#,##0'
                Kind = skSum
                FieldName = 'COUNT_FACT'
                Column = cxGrid2DBBandedTableView1COUNT_FACT
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.ImmediateEditor = False
            OptionsCustomize.BandHiding = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            OptionsView.RowSeparatorWidth = 1
            OptionsView.BandHeaders = False
            OptionsView.FixedBandSeparatorWidth = 1
            Bands = <
              item
                FixedKind = fkLeft
              end
              item
                Width = 500
              end
              item
                Width = 250
              end>
            object cxGrid2DBBandedTableView1ID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1LINENO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'LINENO'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Styles.Content = DM.cxStyle3
              Width = 25
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object cxGrid2DBBandedTableView1COUNT_FACT: TcxGridDBBandedColumn
              Caption = #1055#1083#1072#1085
              DataBinding.FieldName = 'COUNT_FACT'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 40
              Options.HorzSizing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1STATUS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DELTA'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taBottomJustify
              Properties.Images = DM.ImageListStatuses
              Properties.Items = <
                item
                  Value = 0
                end
                item
                  ImageIndex = 29
                  Value = 1
                end>
              MinWidth = 22
              Options.HorzSizing = False
              Width = 22
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object cxGrid2DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DESCRIPTION'
              Visible = False
              Width = 52
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1ADDRESS: TcxGridDBBandedColumn
              Caption = #1040#1076#1088#1077#1089
              DataBinding.FieldName = 'ADDRESS'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 216
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1SERVICE_NAME: TcxGridDBBandedColumn
              Caption = #1059#1089#1083#1091#1075#1072
              DataBinding.FieldName = 'SERVICE_NAME'
              Visible = False
              MinWidth = 200
              Options.HorzSizing = False
              Width = 200
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1MAT_NAME: TcxGridDBBandedColumn
              Caption = #1050#1086#1074#1105#1088
              DataBinding.FieldName = 'MAT_NAME'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taRightJustify
              MinWidth = 150
              Options.HorzSizing = False
              Width = 150
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1CONTRAGENT_NAME: TcxGridDBBandedColumn
              Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
              DataBinding.FieldName = 'CONTRAGENT_NAME'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 185
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1FACT_STATUS: TcxGridDBBandedColumn
              Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
              DataBinding.FieldName = 'FACT_STATUS'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Width = 100
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1FACT_IN: TcxGridDBBandedColumn
              Caption = #1057#1085#1103#1083
              DataBinding.FieldName = 'FACT_IN'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderHint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1085#1103#1090#1099#1093' '#1082#1086#1074#1088#1086#1074
              MinWidth = 40
              Options.HorzSizing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1FACT_OUT: TcxGridDBBandedColumn
              Caption = #1056#1072#1079#1083
              DataBinding.FieldName = 'FACT_OUT'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              HeaderHint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1088#1072#1079#1083#1086#1078#1077#1085#1085#1099#1093' '#1082#1086#1074#1088#1086#1074
              MinWidth = 40
              Options.HorzSizing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBBandedTableView1
          end
        end
        object dockDetail: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 691
          Height = 31
          Align = dalTop
          BarManager = BM
        end
      end
    end
    object tabDocuments: TcxTabSheet
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      ImageIndex = 1
      inline frameDocuments: TframeDocuments
        Left = 0
        Top = 0
        Width = 691
        Height = 517
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 691
        ExplicitHeight = 517
        inherited dockDocuments: TdxBarDockControl
          Width = 691
          ExplicitWidth = 691
        end
        inherited cxGrid2: TcxGrid
          Width = 691
          Height = 486
          ExplicitWidth = 691
          ExplicitHeight = 486
        end
        inherited BM: TdxBarManager
          PixelsPerInch = 96
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
          ItemName = 'bbDateStart'
        end
        item
          Visible = True
          ItemName = 'bbDateEnd'
        end
        item
          Visible = True
          ItemName = 'bbMK'
        end
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object BMBar1: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'DOC'
      CaptionButtons = <>
      DockControl = dockDetail
      DockedDockControl = dockDetail
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1381
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRefreshDoc'
        end
        item
          Visible = True
          ItemName = 'bbRouteCardDelta'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object BMBar2: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1042#1099#1073#1086#1088' '#1074#1080#1076#1080#1090#1077#1083#1103
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1310
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDriverRefresh'
        end
        item
          Visible = True
          ItemName = 'bbDriverClear'
        end
        item
          Visible = True
          ItemName = 'bbDriverSave'
        end
        item
          Visible = True
          ItemName = 'bbDriverClose'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    inherited bbDateEnd: TdxBarDateCombo
      OnChange = bbDateStartChange
    end
    object bbRouteCardDelta: TdxBarButton
      Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077
      Category = 0
      Hint = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077
      Visible = ivAlways
      ImageIndex = 32
      PaintStyle = psCaptionGlyph
      OnClick = bbRouteCardDeltaClick
    end
    object bbRefreshDoc: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = bbRefreshDocClick
    end
    object bbDriverRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = bbDriverRefreshClick
    end
    object bbDriverSave: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 12
      PaintStyle = psCaptionGlyph
      OnClick = bbDriverSaveClick
    end
    object bbDriverClose: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      ImageIndex = 26
      PaintStyle = psCaptionGlyph
    end
    object bbDriverClear: TdxBarButton
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      Category = 0
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbDriverClearClick
    end
    object bbMK: TcxBarEditItem
      Caption = ', '#8470
      Category = 0
      Description = #1053#1086#1084#1077#1088' '#1084#1072#1088#1096#1088#1091#1090#1085#1086#1081' '#1082#1072#1088#1090#1099
      Hint = ', '#8470
      Visible = ivAlways
      OnKeyDown = bbMKKeyDown
      ShowCaption = True
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 45
          Kind = bkGlyph
        end>
      Properties.Images = DM.ToolImages
      Properties.IncrementalSearch = False
      Properties.MaxLength = 10
      Properties.OnButtonClick = bbMKPropertiesButtonClick
      Properties.OnChange = bbMKPropertiesChange
      InternalEditValue = nil
    end
  end
  object DATA: TpFIBDataSet
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      ''
      'select'
      '  D.ID, cast(D.DOC_DT as T_DATE) DOC_DT, D.DOC_NUM,'
      '  S.DESCRIPTION STORAGE_NAME,'
      '  R.DESCRIPTION ROUNE_NAME,'
      '  nullif(D.KM_FACT, 0) KM,'
      '  D.DRIVER_ID,'
      '  AD.NAME DRIVER_NAME,'
      ''
      '  sum(T.COUNT_FACT) MAT_COUNT,'
      
        '  sum(((MAT.WIDTH * MAT.HEIGHT) / 10000.000) * T.COUNT_FACT) MAT' +
        '_SQUARE,'
      '  count(T.ID) POSITION_COUNT,'
      '  count(distinct T.ADDRESS_ID) ADDRESS_COUNT,'
      '  count(distinct T.CLIENT_ID) CONTRAGENTS_COUNT'
      'from'
      '  doc_route_card D'
      'left join doc_route_card_T T on T.PID=D.ID'
      'left join REF_STORAGE S on S.ID=D.STORAGE_ID'
      'left join REF_ROUTES R on R.ID=D.ROUTE_ID'
      'left join ADDRESS_SERVICE SRV on SRV.ID=T.SERVICE_ID'
      'left join REF_MAT MAT on MAT.ID=SRV.MAT_ID'
      'left join AUTO_DRIVER AD on AD.ID=D.DRIVER_ID'
      'where'
      '  D.ID=:ID'
      'group by'
      '  1, 2, 3, 4, 5, 6, 7, 8'
      '')
    SelectSQL.Strings = (
      'select'
      '  D.ID, cast(D.DOC_DT as T_DATE) DOC_DT, D.DOC_NUM,'
      '  S.DESCRIPTION STORAGE_NAME,'
      '  R.DESCRIPTION ROUNE_NAME,'
      '  nullif(D.KM_FACT, 0) KM,'
      '  D.DRIVER_ID,'
      '  AD.NAME DRIVER_NAME,'
      ''
      '  sum(T.COUNT_FACT) MAT_COUNT,'
      
        '  sum(((MAT.WIDTH * MAT.HEIGHT) / 10000.000) * T.COUNT_FACT) MAT' +
        '_SQUARE,'
      '  count(T.ID) POSITION_COUNT,'
      '  count(distinct T.ADDRESS_ID) ADDRESS_COUNT,'
      '  count(distinct T.CLIENT_ID) CONTRAGENTS_COUNT'
      'from'
      '  doc_route_card D'
      'left join doc_route_card_T T on T.PID=D.ID'
      'left join REF_STORAGE S on S.ID=D.STORAGE_ID'
      'left join REF_ROUTES R on R.ID=D.ROUTE_ID'
      'left join ADDRESS_SERVICE SRV on SRV.ID=T.SERVICE_ID'
      'left join REF_MAT MAT on MAT.ID=SRV.MAT_ID'
      'left join AUTO_DRIVER AD on AD.ID=D.DRIVER_ID'
      ''
      'where'
      '  D.STATUS=2'
      '  and'
      '   ('
      
        '    (D.DOC_DT between :date_start and :date_end and coalesce(cas' +
        't(:MK as VARCHAR(20)), '#39#39')='#39#39')'
      '    OR'
      
        '    (D.DOC_NUM = :MK  /*and D.DOC_DT between dateadd(-12 month t' +
        'o current_date) and current_date*/)'
      '   )'
      ''
      '---  and D.DOC_NUM='#39'4540868991'#39
      ''
      'group by'
      '  1, 2, 3, 4, 5, 6, 7, 8')
    AfterScroll = DATAAfterScroll
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 64
    Top = 112
    WaitEndMasterScroll = True
    dcForceMasterRefresh = True
    dcForceOpen = True
  end
  object dsData: TDataSource
    DataSet = DATA
    Left = 96
    Top = 112
  end
  object DOC: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      ' T.ID, T.LINENO,'
      ' T.COUNT_FACT,'
      
        ' IIF((coalesce(T.FACT_OUT, T.COUNT_FACT)<>T.COUNT_FACT)  or (coa' +
        'lesce(T.FACT_IN, T.COUNT_FACT)<>T.COUNT_FACT), 1, 0 ) DELTA,'
      ' T.STATUS, T.DESCRIPTION,'
      ' A.NAME ADDRESS,'
      ' S.DESCRIPTION SERVICE_NAME,'
      ' MAT.DESCRIPTION MAT_NAME,'
      ' C.NAME CONTRAGENT_NAME,'
      ' (select NAME from REFBOOK where ID=T.FACT_STATUS) FACT_STATUS,'
      ' coalesce(T.FACT_IN, T.COUNT_FACT) FACT_IN,'
      ' coalesce(T.FACT_OUT, T.COUNT_FACT) FACT_OUT'
      ''
      'from'
      '  DOC_ROUTE_CARD_T T, CONTRAGENTS C, CONTRACT_ADDRESS A,'
      '  ADDRESS_SERVICE S, REF_MAT MAT'
      'where'
      '  T.ID=:ID'
      '  and C.ID=T.CLIENT_ID'
      '  and A.ID=T.ADDRESS_ID'
      '  and S.ID=T.SERVICE_ID'
      '  and MAT.ID=S.MAT_ID'
      '')
    SelectSQL.Strings = (
      'select'
      ' T.ID, T.LINENO,'
      ' T.COUNT_FACT,'
      
        ' IIF(exists(select CHG.ID from DOC_ROUTE_CARD_CHANGES CHG where ' +
        'CHG.ROUTE_CARD_T_ID=T.ID), 1, 0) DELTA,'
      ' T.STATUS, T.DESCRIPTION,'
      ' A.NAME ADDRESS,'
      ' S.DESCRIPTION SERVICE_NAME,'
      ' MAT.DESCRIPTION MAT_NAME,'
      ' C.NAME CONTRAGENT_NAME,'
      
        ' (select NAME from REFBOOK where ID=(select first 1 CHG.STATUS f' +
        'rom DOC_ROUTE_CARD_CHANGES CHG where CHG.ROUTE_CARD_T_ID=T.ID)) ' +
        'FACT_STATUS,'
      ' coalesce(T.FACT_IN, T.COUNT_FACT) FACT_IN,'
      ' coalesce(T.FACT_OUT, T.COUNT_FACT) FACT_OUT'
      'from'
      '  DOC_ROUTE_CARD_T T, CONTRAGENTS C, CONTRACT_ADDRESS A,'
      '  ADDRESS_SERVICE S, REF_MAT MAT'
      'where'
      '  T.PID=coalesce(:PID, 177552)'
      '  and C.ID=T.CLIENT_ID'
      '  and A.ID=T.ADDRESS_ID'
      '  and S.ID=T.SERVICE_ID'
      '  and MAT.ID=S.MAT_ID'
      'order by'
      '  T.LINENO')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 688
    Top = 168
    WaitEndMasterScroll = True
    dcForceMasterRefresh = True
    dcForceOpen = True
  end
  object dsDOC: TDataSource
    DataSet = DOC
    Left = 736
    Top = 168
  end
  object AutoDrivers: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select D.ID, D.NAME, D.PRODUCTION_ID, coalesce(D.IS_ACTIVE, 1) I' +
        'S_ACTIVE '
      'from AUTO_DRIVER D'
      'order by D.NAME')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 208
    Top = 120
  end
  object dsAutoDrivers: TDataSource
    DataSet = AutoDrivers
    OnDataChange = dsAutoDriversDataChange
    Left = 264
    Top = 120
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 328
    Top = 112
    qoStartTransaction = True
  end
end
