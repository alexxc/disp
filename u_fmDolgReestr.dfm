inherited fmDolgReestr: TfmDolgReestr
  Caption = #1056#1077#1077#1089#1090#1088' '#1076#1086#1083#1075#1086#1074
  ClientHeight = 497
  ClientWidth = 922
  ExplicitWidth = 938
  ExplicitHeight = 536
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 922
    ExplicitWidth = 922
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 922
    Height = 209
    Align = alClient
    TabOrder = 1
    object GridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1AMOUNT
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridDBTableView1AMOUNT
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1AMOUNT_REMAIN
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridDBTableView1AMOUNT_REMAIN
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = GridDBTableView1NAME
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridDBTableView1AMOUNT
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridDBTableView1AMOUNT_REMAIN
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.HeaderAutoHeight = True
      object GridDBTableView1CONTRAGENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'CONTRAGENT_ID'
        Visible = False
        Width = 164
      end
      object GridDBTableView1ORGANIZATION_NAME: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'ORGANIZATION_NAME'
        Width = 80
      end
      object GridDBTableView1NAME: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'CONTRAGENT_NAME'
        Width = 115
      end
      object GridDBTableView1AMOUNT: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072' '#1089#1095#1077#1090#1086#1074
        DataBinding.FieldName = 'AMOUNT_INVOICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 90
      end
      object GridDBTableView1AMOUNT_REMAIN: TcxGridDBColumn
        Caption = #1044#1086#1083#1075
        DataBinding.FieldName = 'AMOUNT_DOLG'
        Width = 90
      end
      object GridDBTableView1MANAGER_ID: TcxGridDBColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'MANAGER_ID'
        RepositoryItem = DM.erUsers
        Visible = False
        GroupIndex = 0
        Width = 139
      end
      object GridDBTableView1IS_MAT_EXISTS: TcxGridDBColumn
        Caption = #1050#1086#1074#1088#1099
        DataBinding.FieldName = 'IS_MAT_EXISTS'
        RepositoryItem = DM.erCheckGreen
        Width = 40
      end
      object GridDBTableView1JOURNAL_DOLG_DAYS: TcxGridDBColumn
        Caption = #1046#1091#1088#1085#1072#1083', '#1076#1085#1077#1081
        DataBinding.FieldName = 'JOURNAL_DOLG_DAYS'
      end
      object GridDBTableView1PAYMENT_DAYS_DELAY: TcxGridDBColumn
        Caption = #1054#1090#1089#1088#1086#1095#1082#1072
        DataBinding.FieldName = 'PAYMENT_DAYS_DELAY'
        Width = 60
      end
      object GridDBTableView1DEBTOR_TYPE: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1076#1086#1083#1078#1085#1080#1082#1072
        DataBinding.FieldName = 'DEBTOR_TYPE'
        RepositoryItem = DM.erDebtorType
        Width = 128
      end
      object GridDBTableView1GROUP_NAME: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'GROUP_NAME'
        Width = 236
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object Pages: TcxPageControl [2]
    Left = 0
    Top = 240
    Width = 922
    Height = 257
    Align = alBottom
    TabOrder = 2
    Properties.ActivePage = tabDetail
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 251
    ClientRectLeft = 2
    ClientRectRight = 916
    ClientRectTop = 27
    object tabDetail: TcxTabSheet
      Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 914
        Height = 224
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1AMOUNT
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1AMOUNT_REMAIN
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object cxGrid1DBTableView1DOC_DT: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'DOC_DT'
            Width = 80
          end
          object cxGrid1DBTableView1DOC_NUM: TcxGridDBColumn
            Caption = #8470' '#1089#1095#1105#1090#1072
            DataBinding.FieldName = 'DOC_NUM'
            Width = 100
          end
          object cxGrid1DBTableView1DELIVERY_DATE: TcxGridDBColumn
            Caption = #1044#1086#1089#1090#1072#1074#1083#1077#1085
            DataBinding.FieldName = 'DELIVERY_DATE'
            Width = 80
          end
          object cxGrid1DBTableView1AMOUNT: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = 'AMOUNT'
            Width = 170
          end
          object cxGrid1DBTableView1AMOUNT_REMAIN: TcxGridDBColumn
            Caption = #1044#1086#1083#1075
            DataBinding.FieldName = 'AMOUNT_REMAIN'
            Width = 170
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = #1046#1091#1088#1085#1072#1083
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inline frameJournal: TframeJournal
        Left = 0
        Top = 0
        Width = 914
        Height = 224
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 914
        ExplicitHeight = 224
        inherited Grid: TcxGrid
          Width = 914
          Height = 193
          ExplicitWidth = 914
          ExplicitHeight = 193
        end
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 914
          ExplicitWidth = 914
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
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1077#1090#1099
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GridDocuments: TcxGrid
        Left = 0
        Top = 0
        Width = 914
        Height = 224
        Align = alClient
        TabOrder = 0
        object GridDocumentsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
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
            MinWidth = 40
            Options.HorzSizing = False
            Width = 40
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
      object PanelTOP: TPanel
        Left = 0
        Top = 0
        Width = 914
        Height = 224
        Align = alClient
        TabOrder = 1
        object cxGrid2: TcxGrid
          Left = 1
          Top = 1
          Width = 912
          Height = 222
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsBalance
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'DOC_DATE'
                Column = cxGridDBColumn2
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                FieldName = 'AMOUNT_IN'
                Column = cxGridDBColumn6
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                FieldName = 'AMOUNT_OUT'
                Column = cxGridDBColumn7
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                FieldName = 'AMOUNT_DOLG'
                Column = cxGridDBColumn8
              end
              item
                Kind = skSum
                FieldName = 'IN_CONTROL'
                Column = cxGridDBColumn10
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            object cxGridDBColumn1: TcxGridDBColumn
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
              Width = 40
              IsCaptionAssigned = True
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = #1044#1072#1090#1072
              DataBinding.FieldName = 'DOC_DATE'
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = #1044#1086#1089#1090#1072#1074#1083#1077#1085
              DataBinding.FieldName = 'DELIVERY_DATE'
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              DataBinding.FieldName = 'DOC_NUM'
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = #1058#1080#1087
              DataBinding.FieldName = 'DOC_TYPE_NAME'
              Options.Editing = False
              Width = 150
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
              DataBinding.FieldName = 'AMOUNT_IN'
              Options.Editing = False
              Width = 150
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = #1054#1087#1083#1072#1095#1077#1085#1086
              DataBinding.FieldName = 'AMOUNT_OUT'
              Options.Editing = False
              Width = 150
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = #1044#1086#1083#1075
              DataBinding.FieldName = 'AMOUNT_DOLG'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 42
            end
            object cxGridDBColumn9: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIPTION'
              Width = 197
              IsCaptionAssigned = True
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = #1050#1086#1085#1090#1088#1086#1083#1100
              DataBinding.FieldName = 'IN_CONTROL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              Width = 55
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
              DataBinding.FieldName = 'DOC_DESCRIPTION'
              Width = 352
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
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
          ItemName = 'bbDS'
        end
        item
          Visible = True
          ItemName = 'bbDE'
        end
        item
          Visible = True
          ItemName = 'bbRefresh'
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
    object bbDS: TdxBarDateCombo
      Caption = #1055#1077#1088#1080#1086#1076': '#1089
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076': '#1089
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
      ShowClearButton = False
      ShowDayText = False
    end
    object bbDE: TdxBarDateCombo
      Caption = ' '#1087#1086' '
      Category = 0
      Hint = ' '#1087#1086' '
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
      ShowClearButton = False
      ShowDayText = False
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
  end
  object DATA: TpFIBDataSet
    SelectSQL.Strings = (
      'execute block('
      '  DS T_DATE = :DS,'
      '  DE T_DATE = :DE'
      ') returns ('
      '  CONTRAGENT_ID T_PID,'
      '  CONTRAGENT_NAME T_NAME,'
      '  AMOUNT_INVOICE T_AMOUNT,'
      '  AMOUNT_DOLG T_AMOUNT,'
      '  MANAGER_ID T_PID,'
      '  ORGANIZATION_ID T_PID,'
      '  ORGANIZATION_NAME T_NAME,'
      '  IS_MAT_EXISTS T_BOOLEAN,'
      '  MAT_QTY T_INT,'
      '  JOURNAL_DOLG_DAYS T_INT,'
      '  PAYMENT_DAYS_DELAY T_INT,'
      '  DEBTOR_TYPE T_PID,'
      '  GROUP_NAME T_NAME'
      ')'
      'as'
      '  declare variable LAST_JOURNAL_DATE T_DATE;'
      'begin'
      '  DS = coalesce(:DS, '#39'01.04.2017'#39');'
      '  DE = coalesce(:DE, '#39'30.04.2017'#39');'
      '  for select'
      '    C.ID,'
      '    sum(I.AMOUNT) AMOUNT, sum(I.AMOUNT_REMAIN) AMOUNT_REMAIN'
      '  from invoice I, CONTRAGENTS C'
      '  where'
      '    C.ID=I.CONTRAGENT_ID'
      '    and I.DOC_DT between :DS and :DE'
      '    and i.AMOUNT_REMAIN>0'
      '    and i.STATUS=2'
      '  group by'
      '    1'
      '  order by'
      '    3 desc'
      '  into'
      '    :CONTRAGENT_ID, :AMOUNT_INVOICE, :AMOUNT_DOLG'
      '  do begin'
      ''
      '    select'
      '      C.NAME, C.MANAGER_ID, nullif(C.PAYMENT_DELAY_DAYS, 0),'
      
        '      coalesce(ORGANIZATION_ID, 1), (select O.DESCRIPTION from O' +
        'RGANIZATIONS O where O.ID=coalesce(C.ORGANIZATION_ID, 1)) ORGANI' +
        'ZATION_NAME,'
      '      C.DEBTOR_TYPE,'
      
        '      (select name from CONTRAGENT_GROUPS where ID=C.MASTER_PID)' +
        ' GROUP_NAME'
      '    from CONTRAGENTS C where C.ID=:CONTRAGENT_ID'
      '    into'
      
        '      :CONTRAGENT_NAME, :MANAGER_ID, :PAYMENT_DAYS_DELAY, :ORGAN' +
        'IZATION_ID, :ORGANIZATION_NAME,'
      '      :DEBTOR_TYPE, :GROUP_NAME;'
      ''
      '    select'
      '      sum(ADDRESS_SERVICE.QTY_MAT)'
      '    from'
      '      CONTRAGENTS_CONTRACT, CONTRACT_ADDRESS, ADDRESS_SERVICE'
      '    where'
      '      CONTRAGENTS_CONTRACT.CONTRAGENT_ID=:CONTRAGENT_ID'
      
        '      and ADDRESS_SERVICE.ADDRESS_ID=CONTRACT_ADDRESS.ID and CON' +
        'TRACT_ADDRESS.CONTRACT_ID=CONTRAGENTS_CONTRACT.ID'
      
        '      and (ADDRESS_SERVICE.DAY_1+ADDRESS_SERVICE.DAY_2+ADDRESS_S' +
        'ERVICE.DAY_3+ADDRESS_SERVICE.DAY_4+ADDRESS_SERVICE.DAY_5+ADDRESS' +
        '_SERVICE.DAY_6+ADDRESS_SERVICE.DAY_7) >0'
      '    into :MAT_QTY;'
      ''
      '    select max(J.CREATED_DT) from CONTRAGENT_JOURNAL J'
      '    where'
      
        '      J.CONTRAGENT_ID=:CONTRAGENT_ID and J.RECORD_TYPE=11 into :' +
        'LAST_JOURNAL_DATE;'
      '    JOURNAL_DOLG_DAYS = current_date - :LAST_JOURNAL_DATE;'
      '    IS_MAT_EXISTS = IIF(MAT_QTY>0, 1, 0);'
      '    suspend;'
      '  end'
      'end'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 64
    Top = 96
  end
  object dsDATA: TDataSource
    DataSet = DATA
    OnDataChange = dsDATADataChange
    Left = 104
    Top = 96
  end
  object dsDetail: TDataSource
    DataSet = Detail
    Left = 152
    Top = 288
  end
  object Detail: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  I.ID, I.DOC_DT, I.DOC_NUM, I.DELIVERY_DATE,'
      '   I.AMOUNT, I.AMOUNT_REMAIN'
      'from INVOICE I'
      'where'
      '  cast(I.DOC_DT as T_DATE) between :DS and :DE'
      '  and I.AMOUNT_REMAIN > 1'
      '  and I.CONTRAGENT_ID=:CONTRAGENT_ID')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 104
    Top = 288
  end
  object Balance: TpFIBDataSet
    SelectSQL.Strings = (
      'execute block('
      '  CONTRAGENT_ID T_PID = :CONTRAGENT_ID--,'
      '--  DATE_START T_date = :DATE_START,'
      '--  DATE_END T_date = :DATE_END'
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
      'begin'
      '  for select * from ('
      '    select ID,'
      
        '      1 DOC_TYPE, I.doc_dt, I.DELIVERY_DATE, I.doc_num, I.amount' +
        ' AMOUNT_IN, null AMOUNT_OUT, description,'
      '      null invoice_id, null payment_type, I.STATUS,'
      '      coalesce(I.IN_CONTROL, 0) IN_CONTROL'
      '    from invoice I'
      '    where 1=1'
      '      and I.STATUS=2'
      '      and I.contragent_id = :contragent_id'
      '--      and (I.doc_dt >= :DATE_START or :DATE_START is null)'
      '--      and (I.doc_dt <= :DATE_END or :DATE_END is null )'
      '      and (cast(I.DOC_DT as T_DATE) <= current_date)'
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
      '      and P.STATUS=2'
      '      and P.contragent_id = :contragent_id'
      '--      and (P.doc_dt >= :DATE_START or :DATE_START is null)'
      '--      and (P.doc_dt <= :DATE_END or :DATE_END is null )'
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
      '      description = '#39#1054#1087#1083#1072#1090#1072' '#1089#1095#1077#1090#1072' '#39' || :v_invoice_num;'
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
    Left = 104
    Top = 344
  end
  object dsBalance: TDataSource
    DataSet = Balance
    Left = 152
    Top = 344
  end
end
