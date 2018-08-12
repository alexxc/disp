inherited fmContragentCooperation: TfmContragentCooperation
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1095#1077#1089#1090#1074#1086
  ClientHeight = 742
  ClientWidth = 1020
  ExplicitWidth = 1036
  ExplicitHeight = 781
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1020
    ExplicitWidth = 1020
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1020
    Height = 453
    Align = alClient
    TabOrder = 1
    object GridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object GridDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Width = 38
      end
      object GridDBTableView1NAME: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'NAME'
        Width = 219
      end
      object GridDBTableView1INN: TcxGridDBColumn
        Caption = #1048#1053#1053
        DataBinding.FieldName = 'INN'
        Width = 132
      end
      object GridDBTableView1DESCRIPTION: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'ORGANIZATION_NAME'
        Width = 176
      end
      object GridDBTableView1MANAGER_NAME: TcxGridDBColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'MANAGER_NAME'
        Width = 103
      end
      object GridDBTableView1IS_ACTIVE_MAT: TcxGridDBColumn
        Caption = #1050#1086#1074#1088#1099
        DataBinding.FieldName = 'IS_ACTIVE_MAT'
        RepositoryItem = DM.erCheckGreen
        Width = 40
      end
      object GridDBTableView1COOPERATION_STATUS_NAME: TcxGridDBColumn
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1095#1077#1089#1090#1074#1072
        DataBinding.FieldName = 'COOPERATION_STATUS_NAME'
        Width = 155
      end
      object GridDBTableView1LAST_CALL_USER: TcxGridDBColumn
        DataBinding.FieldName = 'LAST_CALL_USER'
        Width = 150
      end
      object GridDBTableView1LAST_CALL_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'LAST_CALL_DATE'
      end
      object GridDBTableView1LAST_CALL_MESSAGE: TcxGridDBColumn
        DataBinding.FieldName = 'LAST_CALL_MESSAGE'
      end
      object GridDBTableView1PLAN_USER: TcxGridDBColumn
        DataBinding.FieldName = 'PLAN_USER'
        Width = 150
      end
      object GridDBTableView1PLAN_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'PLAN_DATE'
      end
      object GridDBTableView1PLAN_MESSAGE: TcxGridDBColumn
        DataBinding.FieldName = 'PLAN_MESSAGE'
      end
      object GridDBTableView1PLAN_SECTION: TcxGridDBColumn
        DataBinding.FieldName = 'PLAN_SECTION'
        Width = 200
      end
    end
    object GridDBBandedTableView1: TcxGridDBBandedTableView
      OnDblClick = GridDBBandedTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          FieldName = 'ID'
          Column = GridDBBandedTableView1INN
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = GridDBBandedTableView1NAME
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
      Bands = <
        item
          Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
          HeaderAlignmentHorz = taLeftJustify
          Width = 797
        end
        item
          Caption = #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1089#1086#1073#1099#1090#1080#1077' '#1074' '#1078#1091#1088#1085#1072#1083#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1095#1077#1089#1090#1074#1072
          HeaderAlignmentHorz = taLeftJustify
          Width = 324
        end
        item
          Caption = #1047#1072#1087#1083#1072#1085#1080#1088#1086#1074#1072#1085#1086' '#1089#1086#1073#1099#1090#1080#1077' '#1087#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1095#1077#1089#1090#1074#1091
          HeaderAlignmentHorz = taLeftJustify
          Width = 592
        end>
      object GridDBBandedTableView1ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1NAME: TcxGridDBBandedColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'NAME'
        Width = 259
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1INN: TcxGridDBBandedColumn
        Caption = #1048#1053#1053
        DataBinding.FieldName = 'INN'
        Width = 132
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1MANAGER_NAME: TcxGridDBBandedColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'MANAGER_NAME'
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1ORGANIZATION_NAME: TcxGridDBBandedColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'ORGANIZATION_NAME'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1IS_ACTIVE_MAT: TcxGridDBBandedColumn
        Caption = #1050#1086#1074#1088#1099
        DataBinding.FieldName = 'IS_ACTIVE_MAT'
        RepositoryItem = DM.erCheckGreen
        Width = 41
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1COOPERATION_STATUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COOPERATION_STATUS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1COOPERATION_STATUS_NAME: TcxGridDBBandedColumn
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1095#1077#1089#1090#1074#1072
        DataBinding.FieldName = 'COOPERATION_STATUS_NAME'
        Width = 139
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1LAST_CALL_USER: TcxGridDBBandedColumn
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        DataBinding.FieldName = 'LAST_CALL_USER'
        Width = 84
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1LAST_CALL_DATE: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'LAST_CALL_DATE'
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1LAST_CALL_MESSAGE: TcxGridDBBandedColumn
        Caption = #1058#1077#1082#1089#1090
        DataBinding.FieldName = 'LAST_CALL_MESSAGE'
        Width = 163
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1PLAN_USER: TcxGridDBBandedColumn
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        DataBinding.FieldName = 'PLAN_USER'
        Width = 81
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1PLAN_DATE: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'PLAN_DATE'
        Width = 61
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1PLAN_MESSAGE: TcxGridDBBandedColumn
        Caption = #1058#1077#1082#1089#1090
        DataBinding.FieldName = 'PLAN_MESSAGE'
        Width = 389
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1PLAN_SECTION: TcxGridDBBandedColumn
        Caption = #1056#1072#1079#1076#1077#1083
        DataBinding.FieldName = 'PLAN_SECTION'
        Width = 61
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridDBBandedTableView1LAST_ACT_DATE: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1072#1082#1090#1072
        DataBinding.FieldName = 'LAST_ACT_DATE'
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBBandedTableView1
    end
  end
  object Pages: TcxPageControl [2]
    Left = 0
    Top = 489
    Width = 1020
    Height = 253
    Align = alBottom
    TabOrder = 2
    Properties.ActivePage = tabJournal
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 247
    ClientRectLeft = 2
    ClientRectRight = 1014
    ClientRectTop = 27
    object tabJournal: TcxTabSheet
      Caption = #1046#1091#1088#1085#1072#1083
      ImageIndex = 0
      inline frameJournal: TframeJournal
        Left = 0
        Top = 0
        Width = 1012
        Height = 220
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1012
        ExplicitHeight = 220
        inherited Grid: TcxGrid
          Width = 1012
          Height = 189
          ExplicitWidth = 1012
          ExplicitHeight = 189
          inherited GridDBTableView1: TcxGridDBTableView
            OptionsView.GroupByBox = False
          end
        end
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 1012
          ExplicitWidth = 1012
        end
        inherited BM: TdxBarManager
          PixelsPerInch = 96
          inherited bbCooperation: TdxBarButton
            OnClick = frameJournalbbCooperationClick
          end
        end
      end
    end
    object tabMoney: TcxTabSheet
      Caption = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1077#1090#1099
      ImageIndex = 1
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1012
        Height = 31
        Align = dalTop
        BarManager = BM
      end
      object GridDocuments: TcxGrid
        Left = 0
        Top = 31
        Width = 1012
        Height = 189
        Align = alClient
        TabOrder = 1
        object GridDocumentsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsBalanceDocuments
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'DOC_DATE'
              Column = GridDocumentsDBTableView1DOC_DATE
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'AMOUNT_IN'
              Column = GridDocumentsDBTableView1AMOUNT_IN
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'AMOUNT_OUT'
              Column = GridDocumentsDBTableView1AMOUNT_OUT
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'AMOUNT_DOLG'
              Column = GridDocumentsDBTableView1AMOUNT_DOLG
            end
            item
              Kind = skSum
              FieldName = 'IN_CONTROL'
              Column = GridDocumentsDBTableView1IN_CONTROL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          object GridDocumentsDBTableView1STATUS: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.DropDownRows = 3
            Properties.Images = DM.ImageListStatuses
            Properties.Items = <
              item
                Description = #1053#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
                ImageIndex = 20
                Value = 0
              end
              item
                Description = #1055#1088#1086#1074#1077#1076#1077#1085
                ImageIndex = 7
                Value = 2
              end
              item
                Description = #1053#1077' '#1087#1088#1086#1074#1077#1076#1077#1085
                Value = 1
              end>
            Properties.ShowDescriptions = False
            RepositoryItem = DM.erDocStatus
            MinWidth = 22
            Options.HorzSizing = False
            Width = 22
            IsCaptionAssigned = True
          end
          object GridDocumentsDBTableView1DOC_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'DOC_DATE'
            MinWidth = 100
            Options.Editing = False
            Options.HorzSizing = False
            Width = 100
          end
          object GridDocumentsDBTableView1DELIVERY_DATE: TcxGridDBColumn
            Caption = #1044#1086#1089#1090#1072#1074#1083#1077#1085
            DataBinding.FieldName = 'DELIVERY_DATE'
            MinWidth = 100
          end
          object GridDocumentsDBTableView1DOC_NUM: TcxGridDBColumn
            Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            DataBinding.FieldName = 'DOC_NUM'
            MinWidth = 100
            Options.Editing = False
            Options.HorzSizing = False
            Width = 100
          end
          object GridDocumentsDBTableView1DOC_TYPE: TcxGridDBColumn
            Caption = #1058#1080#1087
            DataBinding.FieldName = 'DOC_TYPE_NAME'
            MinWidth = 150
            Options.Editing = False
            Options.HorzSizing = False
            Width = 150
          end
          object GridDocumentsDBTableView1AMOUNT_IN: TcxGridDBColumn
            Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
            DataBinding.FieldName = 'AMOUNT_IN'
            MinWidth = 150
            Options.Editing = False
            Options.HorzSizing = False
            Width = 150
          end
          object GridDocumentsDBTableView1AMOUNT_OUT: TcxGridDBColumn
            Caption = #1054#1087#1083#1072#1095#1077#1085#1086
            DataBinding.FieldName = 'AMOUNT_OUT'
            MinWidth = 150
            Options.Editing = False
            Options.HorzSizing = False
            Width = 150
          end
          object GridDocumentsDBTableView1AMOUNT_DOLG: TcxGridDBColumn
            Caption = #1044#1086#1083#1075
            DataBinding.FieldName = 'AMOUNT_DOLG'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 42
          end
          object GridDocumentsDBTableView1DESCRIPTION: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 197
            IsCaptionAssigned = True
          end
          object GridDocumentsDBTableView1IN_CONTROL: TcxGridDBColumn
            Caption = #1050#1086#1085#1090#1088#1086#1083#1100
            DataBinding.FieldName = 'IN_CONTROL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 55
          end
          object GridDocumentsDBTableView1DOC_DESCRIPTION: TcxGridDBColumn
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
            DataBinding.FieldName = 'DOC_DESCRIPTION'
            Width = 352
          end
        end
        object GridDocumentsLevel1: TcxGridLevel
          GridView = GridDocumentsDBTableView1
        end
      end
    end
    object tabAddressService: TcxTabSheet
      Caption = #1040#1076#1088#1077#1089#1072' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1012
        Height = 220
        Align = alClient
        TabOrder = 0
        object cxGrid3DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsContractAddress
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'ID'
              Column = cxGrid3DBTableView1IS_ACTIVE
            end
            item
              Kind = skSum
              FieldName = 'QTY_MAT'
              Column = cxGrid3DBTableView1QTY_MAT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.HeaderAutoHeight = True
          object cxGrid3DBTableView1IS_ACTIVE: TcxGridDBColumn
            DataBinding.FieldName = 'IS_ACTIVE'
            RepositoryItem = DM.erCheckGreen
            Width = 34
            IsCaptionAssigned = True
          end
          object cxGrid3DBTableView1ADDRESS: TcxGridDBColumn
            Caption = #1040#1076#1088#1077#1089
            DataBinding.FieldName = 'ADDRESS'
            Width = 256
          end
          object cxGrid3DBTableView1MAT_NAME: TcxGridDBColumn
            Caption = #1050#1086#1074#1088#1080#1082
            DataBinding.FieldName = 'MAT_NAME'
            Width = 200
          end
          object cxGrid3DBTableView1DESCRIPTION: TcxGridDBColumn
            Caption = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'SERVICE_NAME'
            Width = 248
          end
          object cxGrid3DBTableView1PHONE: TcxGridDBColumn
            Caption = #1058#1077#1083#1077#1092#1086#1085
            DataBinding.FieldName = 'PHONE'
            Width = 191
          end
          object cxGrid3DBTableView1CONTACT_NAME: TcxGridDBColumn
            Caption = #1050#1086#1085#1090#1072#1082#1090
            DataBinding.FieldName = 'CONTACT_NAME'
            Width = 200
          end
          object cxGrid3DBTableView1QTY_MAT: TcxGridDBColumn
            Caption = #1050'-'#1074#1086
            DataBinding.FieldName = 'QTY_MAT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0;-,0'
          end
          object cxGrid3DBTableView1WEEKS: TcxGridDBColumn
            Caption = #1053#1077#1076#1077#1083#1080
            DataBinding.FieldName = 'WEEKS'
            MinWidth = 60
            Width = 60
          end
          object cxGrid3DBTableView1DAYS: TcxGridDBColumn
            Caption = #1044#1085#1080
            DataBinding.FieldName = 'DAYS'
            Width = 133
          end
          object cxGrid3DBTableView1REGION_NAME: TcxGridDBColumn
            Caption = #1056#1072#1081#1086#1085
            DataBinding.FieldName = 'REGION_NAME'
            Width = 200
          end
          object cxGrid3DBTableView1PRICE_REPLACE_SQUARE: TcxGridDBColumn
            Caption = #1047#1072#1084#1077#1085#1072' 1'#1084#178' ('#1073#1077#1079' '#1053#1044#1057')'
            DataBinding.FieldName = 'PRICE_REPLACE_SQUARE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            Width = 69
          end
          object cxGrid3DBTableView1SQUARE: TcxGridDBColumn
            Caption = #1055#1083#1086#1097#1072#1076#1100', '#1084#178
            DataBinding.FieldName = 'SQUARE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.000;-,0.000'
            Width = 88
          end
          object cxGrid3DBTableView1IS_MAT_FILTER: TcxGridDBColumn
            Caption = #1054#1090#1073#1080#1088#1072#1090#1100
            DataBinding.FieldName = 'IS_MAT_FILTER'
            RepositoryItem = DM.erCheckGreen
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter [3]
    Left = 0
    Top = 484
    Width = 1020
    Height = 5
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salBottom
    Control = Pages
    ExplicitWidth = 5
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
          Visible = True
          ItemName = 'bbOpen'
        end
        item
          Visible = True
          ItemName = 'bbProcess'
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
    object BMBar1: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1077#1090#1099
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1281
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MONEY_DATE_START'
        end
        item
          Visible = True
          ItemName = 'MONEY_DATE_END'
        end
        item
          Visible = True
          ItemName = 'bbMoneyRefresh'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object bbProcess: TdxBarButton
      Caption = #1054#1073#1088#1072#1073#1086#1090#1072#1090#1100
      Category = 0
      Hint = #1054#1073#1088#1072#1073#1086#1090#1072#1090#1100
      Visible = ivNever
      CloseSubMenuOnClick = False
      ImageIndex = 56
      PaintStyle = psCaptionGlyph
      OnClick = bbProcessClick
    end
    object bbOpen: TdxBarButton
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      Category = 0
      Hint = #1050#1072#1088#1090#1086#1095#1082#1072' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = bbOpenClick
    end
    object MONEY_DATE_START: TdxBarDateCombo
      Caption = #1055#1077#1088#1080#1076': '#1089
      Category = 0
      Hint = #1055#1077#1088#1080#1076': '#1089
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF0000
        00FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080FF0000
        80FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFF000080FF000080FF000080FF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FFFF000000FF800000FF8000
        00FF800000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FF800000FF8000
        00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF0000
        00FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      ShowCaption = True
      DateOnStart = bdsNullDate
    end
    object MONEY_DATE_END: TdxBarDateCombo
      Caption = #1087#1086
      Category = 0
      Hint = #1087#1086
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFF0000
        00FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080FF0000
        80FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFF000080FF000080FF000080FF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFF000080FF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FFFF000000FF800000FF8000
        00FF800000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FFFF000000FF800000FF8000
        00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF0000
        00FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      ShowCaption = True
      DateOnStart = bdsNullDate
    end
    object bbMoneyRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      OnClick = bbMoneyRefreshClick
    end
    object bbExport: TdxBarButton
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Hint = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Visible = ivNever
      ImageIndex = 28
      PaintStyle = psCaptionGlyph
      OnClick = bbExportClick
    end
  end
  object DATA: TpFIBDataSet
    RefreshSQL.Strings = (
      'execute block(OLD_ID T_PID=:OLD_ID)'
      '  returns('
      '    ID T_PID,'
      '    NAME T_NAME,'
      '    INN T_INN,'
      '    MANAGER_NAME T_NAME,'
      '    ORGANIZATION_NAME T_NAME,'
      '    IS_ACTIVE_MAT T_BOOLEAN,'
      '    COOPERATION_STATUS T_INT,'
      '    COOPERATION_STATUS_NAME T_NAME,'
      '    LAST_CALL_USER T_NAME,'
      '    LAST_CALL_DATE T_DATE,'
      '    LAST_CALL_MESSAGE T_MEMO,'
      '    PLAN_USER T_NAME,'
      '    PLAN_DATE T_DATE,'
      '    PLAN_MESSAGE T_MEMO,'
      '    PLAN_SECTION T_NAME,'
      '    LAST_ACT_DATE T_DATE'
      '  )'
      '  as'
      '    declare variable MAT_SERVICE_QTY T_INT;'
      '  begin'
      '    for select'
      '      V.ID, C.NAME, C.INN,'
      '      U.NAME MANAGER_NAME,'
      '      O.DESCRIPTION'
      '    from'
      '      VW_CONTRAGENTS_SELECT V,'
      '      contragents C,'
      '      users U, ORGANIZATIONS O'
      '    where'
      '      ((C.ID=:OLD_ID) or (:OLD_ID is null))'
      '      and c.IS_FOLDER=0'
      '      and C.ID=V.ID'
      '      and u.ID=c.MANAGER_ID'
      '      and o.ID=coalesce(c.ORGANIZATION_ID, 1)'
      '  --    and c.ID=2526'
      '    into'
      '      :ID, :NAME, :INN, :MANAGER_NAME, :ORGANIZATION_NAME'
      '    do begin'
      
        '      LAST_CALL_DATE = null; LAST_CALL_MESSAGE = null; LAST_CALL' +
        '_USER = null;'
      '      select first 1'
      
        '        J.CREATED_DT, J."MESSAGE", (select U.NAME from users u w' +
        'here u.ID=j.USER_ID)'
      '      from'
      '        CONTRAGENT_JOURNAL J'
      '      where'
      '        J.CONTRAGENT_ID=:ID'
      '        and coalesce(J.IS_COOPERATION, 0)=1'
      '      order by J.CREATED_DT desc'
      '      into'
      '        :LAST_CALL_DATE, :LAST_CALL_MESSAGE, :LAST_CALL_USER;'
      '  '
      
        '      PLAN_DATE = null; PLAN_MESSAGE= null; PLAN_USER= null; PLA' +
        'N_SECTION=null;'
      '  '
      '      select first 1'
      '        J.CONTROL_DATE, J."MESSAGE",'
      '        (select R.NAME from REFBOOK R where R.ID=J.RECORD_TYPE),'
      '        (select U.NAME from users u where u.ID=j.USER_ID)'
      '      from'
      '        CONTRAGENT_JOURNAL J'
      '      where'
      '        J.CONTRAGENT_ID=:ID'
      '        and coalesce(J.IS_COOPERATION, 0)=1'
      '        and J.CONTROL_DATE is not null'
      '        and J.COMPLETE_DT is null'
      '      order by J.CREATED_DT desc'
      '      into'
      '        :PLAN_DATE, :PLAN_MESSAGE, :PLAN_SECTION, :PLAN_USER;'
      '  '
      
        '      COOPERATION_STATUS = null;   COOPERATION_STATUS_NAME = nul' +
        'l;'
      '      select'
      '        A.COOPERATION_STATUS, r.NAME'
      '      from CONTRAGENTS_ATTR A, REFBOOK R'
      '      where'
      '        A.ID=:ID'
      '        and R.ID=A.COOPERATION_STATUS'
      '      into :COOPERATION_STATUS, :COOPERATION_STATUS_NAME;'
      '  '
      '      select'
      '        sum(ADDRESS_SERVICE.QTY_MAT)'
      '      from'
      
        '        CONTRAGENTS_CONTRACT, CONTRACT_ADDRESS, ADDRESS_SERVICE,' +
        ' REF_MAT'
      '      where'
      '        CONTRAGENTS_CONTRACT.CONTRAGENT_ID=:ID'
      
        '        and REF_MAT.ID=ADDRESS_SERVICE.MAT_ID and ADDRESS_SERVIC' +
        'E.ADDRESS_ID=CONTRACT_ADDRESS.ID and CONTRACT_ADDRESS.CONTRACT_I' +
        'D=CONTRAGENTS_CONTRACT.ID'
      
        '        and (ADDRESS_SERVICE.DAY_1+ADDRESS_SERVICE.DAY_2+ADDRESS' +
        '_SERVICE.DAY_3+ADDRESS_SERVICE.DAY_4+ADDRESS_SERVICE.DAY_5+ADDRE' +
        'SS_SERVICE.DAY_6+ADDRESS_SERVICE.DAY_7) >0'
      '      into MAT_SERVICE_QTY;'
      '      IS_ACTIVE_MAT = IIF(MAT_SERVICE_QTY>0, 1, 0);'
      '  '
      
        '      select max(D.DOC_DT) from DOC_ACT_IN_OUT D where D.CONTRAG' +
        'ENT_ID=:ID and D.STATUS=2 into :LAST_ACT_DATE;'
      '  '
      '      suspend;'
      '    end'
      '  end'
      '')
    SelectSQL.Strings = (
      'execute block(OLD_ID T_PID=:OLD_ID)'
      '  returns('
      '    ID T_PID,'
      '    NAME T_NAME,'
      '    INN T_INN,'
      '    MANAGER_NAME T_NAME,'
      '    ORGANIZATION_NAME T_NAME,'
      '    IS_ACTIVE_MAT T_BOOLEAN,'
      '    COOPERATION_STATUS T_INT,'
      '    COOPERATION_STATUS_NAME T_NAME,'
      '    LAST_CALL_USER T_NAME,'
      '    LAST_CALL_DATE T_DATE,'
      '    LAST_CALL_MESSAGE T_MEMO,'
      '    PLAN_USER T_NAME,'
      '    PLAN_DATE T_DATE,'
      '    PLAN_MESSAGE T_MEMO,'
      '    PLAN_SECTION T_NAME,'
      '    LAST_ACT_DATE T_DATE'
      '  )'
      '  as'
      '    declare variable MAT_SERVICE_QTY T_INT;'
      '  begin'
      '    for select'
      '      V.ID, C.NAME, C.INN,'
      '      U.NAME MANAGER_NAME,'
      '      O.DESCRIPTION'
      '    from'
      '      VW_CONTRAGENTS_SELECT V,'
      '      contragents C,'
      '      users U, ORGANIZATIONS O'
      '    where'
      '      ((C.ID=:OLD_ID) or (:OLD_ID is null))'
      '      and c.IS_FOLDER=0'
      '      and C.ID=V.ID'
      '      and u.ID=c.MANAGER_ID'
      '      and o.ID=coalesce(c.ORGANIZATION_ID, 1)'
      '  --    and c.ID=2526'
      '    into'
      '      :ID, :NAME, :INN, :MANAGER_NAME, :ORGANIZATION_NAME'
      '    do begin'
      
        '      LAST_CALL_DATE = null; LAST_CALL_MESSAGE = null; LAST_CALL' +
        '_USER = null;'
      '      select first 1'
      
        '        J.CREATED_DT, J."MESSAGE", (select U.NAME from users u w' +
        'here u.ID=j.USER_ID)'
      '      from'
      '        CONTRAGENT_JOURNAL J'
      '      where'
      '        J.CONTRAGENT_ID=:ID'
      '        and coalesce(J.IS_COOPERATION, 0)=1'
      '      order by J.CREATED_DT desc'
      '      into'
      '        :LAST_CALL_DATE, :LAST_CALL_MESSAGE, :LAST_CALL_USER;'
      '  '
      
        '      PLAN_DATE = null; PLAN_MESSAGE= null; PLAN_USER= null; PLA' +
        'N_SECTION=null;'
      '  '
      '      select first 1'
      '        J.CONTROL_DATE, J."MESSAGE",'
      '        (select R.NAME from REFBOOK R where R.ID=J.RECORD_TYPE),'
      '        (select U.NAME from users u where u.ID=j.USER_ID)'
      '      from'
      '        CONTRAGENT_JOURNAL J'
      '      where'
      '        J.CONTRAGENT_ID=:ID'
      '        and coalesce(J.IS_COOPERATION, 0)=1'
      '        and J.CONTROL_DATE is not null'
      '        and J.COMPLETE_DT is null'
      '      order by J.CREATED_DT desc'
      '      into'
      '        :PLAN_DATE, :PLAN_MESSAGE, :PLAN_SECTION, :PLAN_USER;'
      '  '
      
        '      COOPERATION_STATUS = null;   COOPERATION_STATUS_NAME = nul' +
        'l;'
      '      select'
      '        A.COOPERATION_STATUS, r.NAME'
      '      from CONTRAGENTS_ATTR A, REFBOOK R'
      '      where'
      '        A.ID=:ID'
      '        and R.ID=A.COOPERATION_STATUS'
      '      into :COOPERATION_STATUS, :COOPERATION_STATUS_NAME;'
      '  '
      '      select'
      '        sum(ADDRESS_SERVICE.QTY_MAT)'
      '      from'
      
        '        CONTRAGENTS_CONTRACT, CONTRACT_ADDRESS, ADDRESS_SERVICE,' +
        ' REF_MAT'
      '      where'
      '        CONTRAGENTS_CONTRACT.CONTRAGENT_ID=:ID'
      
        '        and REF_MAT.ID=ADDRESS_SERVICE.MAT_ID and ADDRESS_SERVIC' +
        'E.ADDRESS_ID=CONTRACT_ADDRESS.ID and CONTRACT_ADDRESS.CONTRACT_I' +
        'D=CONTRAGENTS_CONTRACT.ID'
      
        '        and (ADDRESS_SERVICE.DAY_1+ADDRESS_SERVICE.DAY_2+ADDRESS' +
        '_SERVICE.DAY_3+ADDRESS_SERVICE.DAY_4+ADDRESS_SERVICE.DAY_5+ADDRE' +
        'SS_SERVICE.DAY_6+ADDRESS_SERVICE.DAY_7) >0'
      '      into MAT_SERVICE_QTY;'
      '      IS_ACTIVE_MAT = IIF(MAT_SERVICE_QTY>0, 1, 0);'
      '  '
      
        '      select max(D.DOC_DT) from DOC_ACT_IN_OUT D where D.CONTRAG' +
        'ENT_ID=:ID and D.STATUS=2 into :LAST_ACT_DATE;'
      '  '
      '      suspend;'
      '    end'
      '  end'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 264
    Top = 112
  end
  object dsDATA: TDataSource
    DataSet = DATA
    OnDataChange = dsDATADataChange
    Left = 264
    Top = 160
  end
  object BalanceDocuments: TpFIBDataSet
    SelectSQL.Strings = (
      'execute block('
      '  CONTRAGENT_ID T_PID = :CONTRAGENT_ID,'
      '  DATE_START T_date = :DATE_START,'
      '  DATE_END T_date = :DATE_END'
      ') returns ('
      '  ID T_PID,'
      '  DOC_DATE T_DATE,'
      '  DELIVERY_DATE T_DATE,'
      '  DOC_NUM t_doc_num,'
      '  DOC_TYPE T_INT,         -- 1- '#1089#1095#1077#1090', 2 - '#1086#1087#1083#1072#1090#1072
      '  DOC_TYPE_NAME t_name,'
      '  AMOUNT_IN t_amount,'
      '  AMOUNT_OUT t_amount,'
      '  AMOUNT_DOLG T_AMOUNT,'
      '  DESCRIPTION t_description,'
      '  DOC_DESCRIPTION T_DESCRIPTION,'
      '  STATUS T_INT,'
      '  IN_CONTROL T_BOOLEAN'
      ')'
      'as'
      '  declare variable v_invoice_date t_date;'
      '  declare variable v_invoice_num t_doc_num;'
      '  declare variable v_invoice_id t_pid;'
      '  declare variable v_payment_type t_int;'
      '  declare variable D varchar(10);'
      'begin'
      '  for select * from ('
      '    select ID,'
      
        '      1 DOC_TYPE, I.doc_dt, I.DELIVERY_DATE, I.doc_num, I.amount' +
        ' AMOUNT_IN, null AMOUNT_OUT, description,'
      '      null invoice_id, null payment_type, I.STATUS,'
      '      coalesce(I.IN_CONTROL, 0) IN_CONTROL'
      '    from invoice I'
      '    where 1=1'
      '--      and I.STATUS=2'
      '      and I.contragent_id = :contragent_id'
      '      and (I.doc_dt >= :DATE_START or :DATE_START is null)'
      '      and (I.doc_dt <= :DATE_END or :DATE_END is null )'
      '--      and (cast(I.DOC_DT as T_DATE) <= current_date)'
      ''
      ''
      '    union all'
      ''
      '    select ID,'
      
        '      2 DOC_TYPE, P.doc_dt, null DELIVERY_DATE, P.doc_num, null ' +
        'AMOUNT_IN, P.amount AMOUNT_OUT, P.description,'
      
        '      P.invoice_id invoice_id, P.payment_type payment_type, P.ST' +
        'ATUS,'
      '      0 IN_CONTROL'
      '     from payments P'
      '     where  1=1'
      '--      and P.STATUS=2'
      '      and P.contragent_id = :contragent_id'
      '      and (P.doc_dt >= :DATE_START or :DATE_START is null)'
      '      and (P.doc_dt <= :DATE_END or :DATE_END is null )'
      ''
      '  ) DOCS'
      '  order by DOCS.DOC_DT, DOCS.DOC_NUM'
      '  into :ID,'
      
        '    :doc_type, :doc_date, :DELIVERY_DATE, :doc_num, :amount_in, ' +
        ':amount_out, :doc_description,'
      '    :v_invoice_id, :v_payment_type, :STATUS, :IN_CONTROL'
      '   do begin'
      '     description = '#39#39';'
      '    if (DOC_TYPE=1) then begin'
      '      DOC_TYPE_NAME = '#39#1057#1095#1077#1090' '#1085#1072' '#1086#1087#1083#1072#1090#1091#39';'
      
        '      select coalesce(sum(P.AMOUNT), 0) from PAYMENTS P where P.' +
        'INVOICE_ID=:ID and P.STATUS=2 into :AMOUNT_OUT;'
      '      AMOUNT_DOLG = AMOUNT_IN - AMOUNT_OUT;'
      '      AMOUNT_OUT = null;'
      '    end else begin'
      '      AMOUNT_DOLG = null;'
      
        '      DOC_TYPE_NAME = decode(:v_payment_type, 1, '#39#1054#1087#1083#1072#1090#1072' - '#1041#1072#1085#1082#39 +
        ', 2, '#39#1054#1087#1083#1072#1090#1072' - '#1050#1072#1089#1089#1072#39');'
      '      v_invoice_num = '#39#39';'
      '      if (:v_invoice_id is not null) then begin'
      
        '        select i.doc_dt, i.doc_num from invoice i where i.id = :' +
        'v_invoice_id into :v_invoice_date, :v_invoice_num;'
      '      end'
      '      select STR from SP_DATE_FORMAT(:v_invoice_date) into :d;'
      
        '      description = '#39#1054#1087#1083#1072#1090#1072' '#1089#1095#1077#1090#1072' '#39' || :v_invoice_num || '#39' '#1086#1090' '#39'|' +
        '| :d;'
      '    end'
      '    suspend;'
      '  end'
      ''
      ''
      ''
      'end')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 240
    Top = 248
  end
  object dsBalanceDocuments: TDataSource
    DataSet = BalanceDocuments
    Left = 280
    Top = 248
  end
  object ContractAddress: TpFIBDataSet
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      '')
    SelectSQL.Strings = (
      'select'
      '  SRV.ID,'
      '  C.NAME CONTRAGENT_NAME,'
      '  CA.NAME ADDRESS, CA.CONTACT_NAME, CA.PHONE,'
      '  M.DESCRIPTION MAT_NAME,'
      '  M.WIDTH, M.HEIGHT,'
      '  cast((M.WIDTH * M.HEIGHT) / 10000.000 as T_SQUARE) SQUARE,'
      ''
      
        '  cast(NULLIF((SRV.PRICE_REPLACE / (M.WIDTH * M.HEIGHT / 10000.0' +
        '00)), 0) as T_AMOUNT)  PRICE_REPLACE_SQUARE,'
      ''
      '  NULLIF(SRV.PRICE_REPLACE, 0) PRICE_REPLACE,'
      '  NULLIF(SRV.PRICE_PERIOD, 0) PRICE_PERIOD,'
      '  NULLIF(SRV.PRICE_REFUND, 0) PRICE_REFUND,'
      '  SRV.DESCRIPTION SERVICE_NAME,'
      '  nullif(SRV.QTY_MAT, 0) QTY_MAT ,'
      
        '  IIF(SRV.WEEK_1=1, '#39'1'#39', '#39' '#39')||IIF(SRV.WEEK_2=1, '#39'2'#39', '#39' '#39')||IIF(' +
        'SRV.WEEK_3=1, '#39'3'#39', '#39' '#39')||IIF(SRV.WEEK_4=1, '#39'4'#39', '#39' '#39') WEEKS,'
      
        '  IIF(SRV.DAY_1=1, '#39#1055#1085#39', '#39'  '#39')||IIF(SRV.DAY_2=1, '#39#1042#1090#39', '#39'  '#39')||II' +
        'F(SRV.DAY_3=1, '#39#1057#1088#39', '#39'  '#39')||IIF(SRV.DAY_4=1, '#39#1063#1090#39', '#39'  '#39')||IIF(SR' +
        'V.DAY_5=1, '#39#1055#1090#39', '#39'  '#39')||IIF(SRV.DAY_6=1, '#39#1057#1073#39', '#39'  '#39')||IIF(SRV.DA' +
        'Y_7=1, '#39#1042#1089#39', '#39'  '#39') DAYS,'
      
        '  IIF((SRV.DAY_1=1 or SRV.DAY_2=1 or SRV.DAY_3=1 or SRV.DAY_4=1 ' +
        'or SRV.DAY_5=1 or SRV.DAY_6=1 or SRV.DAY_7=1), 1, 0) IS_ACTIVE,'
      '  R.DESCRIPTION REGION_NAME,'
      '  coalesce(CA.IS_MAT_FILTER, 0) IS_MAT_FILTER'
      ''
      
        'from ADDRESS_SERVICE SRV, CONTRACT_ADDRESS  CA, CONTRAGENTS_CONT' +
        'RACT, CONTRAGENTS C, REF_MAT M, SERVICE_REGIONS R'
      'where 1=1'
      
        '--  (SRV.DAY_1>0 OR SRV.DAY_2>0 OR SRV.DAY_3>0 OR SRV.DAY_4>0 OR' +
        ' SRV.DAY_5>0 OR SRV.DAY_6>0 OR SRV.DAY_7>0)'
      '  and C.ID=coalesce(:CONTRAGENT_ID, 1461)'
      '  and CA.ID=SRV.ADDRESS_ID'
      '  and CONTRAGENTS_CONTRACT.ID=CA.CONTRACT_ID'
      '  and C.ID=CONTRAGENTS_CONTRACT.CONTRAGENT_ID'
      '  and M.ID=SRV.MAT_ID'
      '  and R.ID=CA.REGION_ID'
      '--  and C.NAME containing '#39#1082#1086#1085#1086#1074#1072#1083#1086#1074#39)
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 240
    Top = 336
    WaitEndMasterScroll = True
    dcForceMasterRefresh = True
    dcForceOpen = True
  end
  object dsContractAddress: TDataSource
    DataSet = ContractAddress
    Left = 272
    Top = 336
  end
end
