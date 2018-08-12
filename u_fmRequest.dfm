inherited fmRequest: TfmRequest
  Left = 457
  Top = 208
  BorderIcons = [biSystemMenu]
  Caption = #1047#1072#1103#1074#1082#1072
  ClientHeight = 679
  ClientWidth = 807
  Position = poOwnerFormCenter
  ExplicitWidth = 823
  ExplicitHeight = 718
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 807
    ExplicitWidth = 807
  end
  object Pages: TcxPageControl [1]
    Left = 0
    Top = 31
    Width = 807
    Height = 648
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabOffer
    Properties.CustomButtons.Buttons = <>
    OnChange = PagesChange
    ClientRectBottom = 642
    ClientRectLeft = 2
    ClientRectRight = 801
    ClientRectTop = 27
    object tabMain: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxLabel1: TcxLabel
        Left = 13
        Top = 3
        Caption = #1044#1072#1090#1072' '#1079#1072#1103#1074#1082#1080
        Transparent = True
      end
      object REQUEST_DT: TcxDBDateEdit
        Left = 13
        Top = 18
        DataBinding.DataField = 'REQUEST_DT'
        DataBinding.DataSource = dsRequest
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 125
      end
      object cxLabel2: TcxLabel
        Left = 13
        Top = 40
        Caption = #1048#1089#1090#1086#1095#1085#1080#1082
        Transparent = True
      end
      object SOURCE: TcxDBImageComboBox
        Left = 13
        Top = 55
        RepositoryItem = DM.erRequestSource
        DataBinding.DataField = 'SOURCE'
        DataBinding.DataSource = dsRequest
        Properties.ImmediatePost = True
        Properties.Items = <>
        Properties.OnValidate = SOURCEPropertiesValidate
        TabOrder = 4
        Width = 125
      end
      object cxLabel3: TcxLabel
        Left = 272
        Top = 152
        Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object CONTACT: TcxDBTextEdit
        Left = 271
        Top = 167
        DataBinding.DataField = 'NAME'
        DataBinding.DataSource = dsRequest
        TabOrder = 13
        Width = 250
      end
      object cxLabel4: TcxLabel
        Left = 156
        Top = 3
        Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object MANAGER_ID: TcxDBLookupComboBox
        Left = 156
        Top = 18
        DataBinding.DataField = 'MANAGER_ID'
        DataBinding.DataSource = dsRequest
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediateDropDownWhenActivated = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.dsUSERS
        TabOrder = 2
        Width = 129
      end
      object cxLabel5: TcxLabel
        Left = 158
        Top = 114
        Caption = #1058#1077#1083#1077#1092#1086#1085
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object PHONE: TcxDBTextEdit
        Left = 156
        Top = 128
        DataBinding.DataField = 'PHONE'
        DataBinding.DataSource = dsRequest
        TabOrder = 10
        Width = 304
      end
      object cxGroupBox1: TcxGroupBox
        Left = 13
        Top = 413
        Caption = #1055#1077#1088#1074#1080#1095#1085#1072#1103' '#1079#1072#1103#1074#1082#1072
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 17
        Height = 190
        Width = 766
        object cxGrid1: TcxGrid
          Left = 3
          Top = 46
          Width = 760
          Height = 135
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsRequestDetail
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGrid1DBTableView1MAT_TYPE
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGrid1DBTableView1QTY
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGrid1DBTableView1CHANGES
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1AMOUNT
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1MAT_TYPE: TcxGridDBColumn
              Caption = #1058#1080#1087' '#1082#1086#1074#1088#1072
              DataBinding.FieldName = 'MAT_TYPE'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownSizeable = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'id'
              Properties.ListColumns = <
                item
                  Caption = #1050#1086#1074#1088#1080#1082
                  Fixed = True
                  Width = 150
                  FieldName = 'name'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = DM.dsRequestMatType
              Properties.PostPopupValueOnTab = True
              Properties.Revertable = True
              Properties.OnCloseUp = cxGrid1DBTableView1MAT_TYPEPropertiesCloseUp
              Options.Editing = False
              Width = 230
            end
            object cxGrid1DBTableView1QTY: TcxGridDBColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'QTY'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.ImmediatePost = True
              Properties.MaxValue = 9999.000000000000000000
              Properties.SpinButtons.Position = sbpHorzLeftRight
              Properties.OnEditValueChanged = cxGrid1DBTableView1QTYPropertiesEditValueChanged
              Options.ShowEditButtons = isebAlways
              Width = 69
            end
            object cxGrid1DBTableView1CHANGES: TcxGridDBColumn
              Caption = #1047#1072#1084#1077#1085
              DataBinding.FieldName = 'CHANGES'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = '1 '#1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
                  ImageIndex = 0
                  Value = 4
                end
                item
                  Description = '2 '#1088#1072#1079#1072' '#1074' '#1085#1077#1076#1077#1083#1102
                  Value = 8
                end
                item
                  Description = '3 '#1088#1072#1079#1072' '#1074' '#1085#1077#1076#1077#1083#1102
                  Value = 12
                end
                item
                  Description = '4 '#1088#1072#1079#1072' '#1074' '#1085#1077#1076#1077#1083#1102
                  Value = 16
                end
                item
                  Description = '5 '#1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
                  Value = 20
                end
                item
                  Description = '6 '#1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
                  Value = 24
                end
                item
                  Description = '7 '#1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
                  Value = 28
                end
                item
                  Description = '2 '#1088#1072#1079#1072' '#1074' '#1084#1077#1089#1103#1094
                  Value = 2
                end>
              Properties.PostPopupValueOnTab = True
              Properties.OnCloseUp = cxGrid1DBTableView1MAT_TYPEPropertiesCloseUp
              RepositoryItem = DM.erMatChanges
              Width = 126
            end
            object cxGrid1DBTableView1PRICE: TcxGridDBColumn
              Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
              DataBinding.FieldName = 'PRICE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Width = 135
            end
            object cxGrid1DBTableView1AMOUNT: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072
              DataBinding.FieldName = 'AMOUNT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Width = 121
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object DockDetail: TdxBarDockControl
          Left = 3
          Top = 15
          Width = 760
          Height = 31
          Align = dalTop
          BarManager = BM
          ExplicitLeft = 2
          ExplicitTop = -1
          ExplicitWidth = 762
        end
      end
      object EMAIL: TcxDBTextEdit
        Left = 476
        Top = 128
        DataBinding.DataField = 'EMAIL'
        DataBinding.DataSource = dsRequest
        TabOrder = 11
        Width = 303
      end
      object cxLabel8: TcxLabel
        Left = 476
        Top = 114
        Caption = 'EMail'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object IS_CLEANING: TcxDBCheckBox
        Left = 476
        Top = 19
        Caption = #1050#1083#1080#1085#1080#1085#1075#1086#1074#1072#1103' '#1082#1086#1084#1087#1072#1085#1080#1103
        DataBinding.DataField = 'IS_CLEANING'
        DataBinding.DataSource = dsRequest
        Properties.Alignment = taLeftJustify
        Properties.DisplayChecked = '1'
        Properties.DisplayUnchecked = '0'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 15
        Transparent = True
      end
      object cxLabel10: TcxLabel
        Left = 13
        Top = 114
        Caption = #1048#1053#1053
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object INN: TcxDBTextEdit
        Left = 13
        Top = 130
        DataBinding.DataField = 'INN'
        DataBinding.DataSource = dsRequest
        Properties.MaxLength = 20
        TabOrder = 9
        Width = 125
      end
      object COMPANY_NAME: TcxDBTextEdit
        Left = 13
        Top = 167
        DataBinding.DataField = 'COMPANY_NAME'
        DataBinding.DataSource = dsRequest
        TabOrder = 12
        Width = 250
      end
      object cxLabel11: TcxLabel
        Left = 11
        Top = 152
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel12: TcxLabel
        Left = 528
        Top = 151
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object CONTRAGENT_ID: TcxDBExtLookupComboBox
        Left = 529
        Top = 166
        Hint = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1088#1084' '#1087#1086' '#1048#1053#1053
        DataBinding.DataField = 'CONTRAGENT_ID'
        DataBinding.DataSource = dsRequest
        Properties.ClearKey = 46
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 600
        Properties.ImmediatePost = True
        Properties.View = GridContragentsPopupDBTableView1
        Properties.KeyFieldNames = 'ID'
        Properties.ListFieldItem = GridContragentsPopupDBTableView1NAME
        Properties.OnCloseUp = CONTRAGENT_IDPropertiesCloseUp
        Properties.OnInitPopup = CONTRAGENT_IDPropertiesInitPopup
        TabOrder = 14
        Width = 250
      end
      object cxLabel13: TcxLabel
        Left = 158
        Top = 40
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103' '#1087#1086' '#1080#1089#1090#1086#1095#1085#1080#1082#1091' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
        Transparent = True
      end
      object SOURCE_DESCRIPTION: TcxDBTextEdit
        Left = 156
        Top = 55
        DataBinding.DataField = 'SOURCE_DESCRIPTION'
        DataBinding.DataSource = dsRequest
        Properties.MaxLength = 20
        TabOrder = 5
        Width = 623
      end
      object cxLabel14: TcxLabel
        Left = 13
        Top = 76
        Caption = #1058#1077#1082#1091#1097#1080#1081' '#1089#1090#1072#1090#1091#1089
        Transparent = True
      end
      object STATUS: TcxDBImageComboBox
        Left = 13
        Top = 92
        RepositoryItem = DM.erRequestStatus
        DataBinding.DataField = 'STATUS'
        DataBinding.DataSource = dsRequest
        Enabled = False
        Properties.Items = <>
        TabOrder = 6
        Width = 125
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 237
        Top = 92
        DataBinding.DataField = 'STATUS_DESCRIPTION'
        DataBinding.DataSource = dsRequest
        Enabled = False
        Properties.MaxLength = 20
        TabOrder = 8
        Width = 542
      end
      object cxLabel15: TcxLabel
        Left = 238
        Top = 76
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103' '#1087#1086' '#1089#1090#1072#1090#1091#1089#1091
        Transparent = True
      end
      object btnStatus: TcxButton
        Left = 156
        Top = 90
        Width = 67
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 7
        OnClick = btnStatusClick
      end
      object cxLabel7: TcxLabel
        Left = 309
        Top = 3
        Caption = #1056#1077#1075#1080#1086#1085
        Transparent = True
      end
      object REGION_CODE: TcxDBLookupComboBox
        Left = 307
        Top = 18
        RepositoryItem = DM.erRegion
        DataBinding.DataField = 'REGION_CODE'
        DataBinding.DataSource = dsRequest
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 145
      end
      object IS_ONE_ADDRESS: TdxDBCheckGroupBox
        Left = 13
        Top = 230
        Caption = #1054#1076#1080#1085' '#1072#1076#1088#1077#1089
        DataBinding.DataField = 'IS_ONE_ADDRESS'
        DataBinding.DataSource = dsRequest
        Properties.ImmediatePost = True
        Properties.OnChange = IS_ONE_ADDRESSPropertiesChange
        TabOrder = 29
        Transparent = True
        Height = 57
        Width = 766
        object ONE_ADDRESS: TcxDBMemo
          Left = 3
          Top = 17
          Align = alClient
          DataBinding.DataField = 'ONE_ADDRESS'
          DataBinding.DataSource = dsRequest
          TabOrder = 0
          Height = 31
          Width = 760
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 13
        Top = 293
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1073#1080#1079#1085#1077#1089#1072
        TabOrder = 30
        Height = 114
        Width = 364
        object BUSINESS_DESCRIPTION: TcxDBMemo
          Left = 3
          Top = 15
          Align = alClient
          DataBinding.DataField = 'BUSINESS_DESCRIPTION'
          DataBinding.DataSource = dsRequest
          Properties.MaxLength = 200
          TabOrder = 0
          Height = 90
          Width = 358
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 383
        Top = 293
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
        TabOrder = 31
        Height = 114
        Width = 396
        object DESCRIPTION: TcxDBMemo
          Left = 3
          Top = 15
          Align = alClient
          DataBinding.DataField = 'DESCRIPTION'
          DataBinding.DataSource = dsRequest
          Properties.MaxLength = 200
          TabOrder = 0
          Height = 90
          Width = 390
        end
      end
      object cxLabel6: TcxLabel
        Left = 11
        Top = 190
        Caption = #1055#1086#1076#1087#1080#1089#1072#1085#1090
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object PODPISANT: TcxDBTextEdit
        Left = 13
        Top = 205
        DataBinding.DataField = 'PODPISANT'
        DataBinding.DataSource = dsRequest
        TabOrder = 33
        Width = 508
      end
    end
    object tabOffer: TcxTabSheet
      Caption = #1062#1077#1085#1086#1074#1086#1077' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077
      ImageIndex = 4
      inline frameRequestOffer: TframeRequestOffer
        Left = 0
        Top = 0
        Width = 799
        Height = 615
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 799
        ExplicitHeight = 615
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 799
          ExplicitWidth = 799
        end
        inherited Grid: TcxGrid
          Width = 799
          Height = 584
          ExplicitWidth = 799
          ExplicitHeight = 584
          inherited GridDBTableView1: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = frameRequestOffer.GridDBTableView1ID
              end>
          end
        end
        inherited BMOffer: TdxBarManager
          PixelsPerInch = 96
        end
      end
    end
    object tabJournal: TcxTabSheet
      Caption = #1046#1091#1088#1085#1072#1083
      ImageIndex = 1
      inline frameJournal: TframeJournal
        Left = 0
        Top = 0
        Width = 799
        Height = 615
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 799
        ExplicitHeight = 615
        inherited Grid: TcxGrid
          Width = 799
          Height = 584
          ExplicitWidth = 799
          ExplicitHeight = 584
          inherited GridDBTableView1: TcxGridDBTableView
            inherited GridDBTableView1CREATED_BY: TcxGridDBColumn [1]
              Caption = #1040#1074#1090#1086#1088
              Visible = True
              Width = 93
            end
            inherited GridDBTableView1RECORD_TYPE: TcxGridDBColumn [2]
            end
            inherited GridDBTableView1MESSAGE: TcxGridDBColumn [3]
            end
            inherited GridDBTableView1IS_REPORT: TcxGridDBColumn [4]
            end
            inherited GridDBTableView1IS_SYSTEM: TcxGridDBColumn [5]
            end
            inherited GridDBTableView1PROMISE_DATE: TcxGridDBColumn [6]
            end
            inherited GridDBTableView1RECORD_SUBTYPE_NAME: TcxGridDBColumn [7]
            end
            inherited GridDBTableView1CONTROL_DATE: TcxGridDBColumn [8]
            end
            inherited GridDBTableView1USER_ID: TcxGridDBColumn
              Visible = False
            end
          end
        end
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 799
          ExplicitWidth = 799
        end
        inherited BM: TdxBarManager
          PixelsPerInch = 96
          inherited bbAdd: TdxBarButton
            OnClick = frameJournalbbAddClick
          end
        end
        inherited Journal: TpFIBDataSet
          SelectSQL.Strings = (
            'select'
            '    J.*,'
            
              '    (select list(coalesce(u.fio, u.name)) from users u where u.I' +
              'D in (select um.USER_ID from USER_MASSEGES um where um.JOURNAL_I' +
              'D=J.ID)) users_list,'
            
              '    (select NAME from REFBOOK where ID=J.RECORD_TYPE) RECORD_TYP' +
              'E_NAME'
            'from CONTRAGENT_JOURNAL J'
            'where'
            '    J.REQUEST_ID = coalesce(:REQUEST_ID, 27)')
        end
      end
    end
    object tabSYSTEM: TcxTabSheet
      Caption = 'tabSYSTEM'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GridContragentsPopup: TcxGrid
        Left = 72
        Top = 280
        Width = 689
        Height = 233
        TabOrder = 0
        object GridContragentsPopupDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsContragents
          DataController.KeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object GridContragentsPopupDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object GridContragentsPopupDBTableView1CODE: TcxGridDBColumn
            Caption = #1050#1086#1076' 1'#1057
            DataBinding.FieldName = 'CODE'
            MinWidth = 49
            Options.HorzSizing = False
            Width = 49
          end
          object GridContragentsPopupDBTableView1NAME: TcxGridDBColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'NAME'
            Visible = False
            Width = 150
          end
          object GridContragentsPopupDBTableView1FULLNAME: TcxGridDBColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'NAME'
            Width = 115
          end
          object GridContragentsPopupDBTableView1INN: TcxGridDBColumn
            Caption = #1048#1053#1053
            DataBinding.FieldName = 'INN'
            MinWidth = 134
            Options.HorzSizing = False
            Width = 134
          end
          object GridContragentsPopupDBTableView1CREATED_DT: TcxGridDBColumn
            Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1086
            DataBinding.FieldName = 'CREATED_DT'
            MinWidth = 95
            Options.HorzSizing = False
            Width = 95
          end
          object GridContragentsPopupDBTableView1ORGANIZATION_NAME: TcxGridDBColumn
            Caption = #1044#1086#1087
            DataBinding.FieldName = 'ORGANIZATION_NAME'
            MinWidth = 152
            Options.HorzSizing = False
            Width = 152
          end
        end
        object GridContragentsPopupLevel1: TcxGridLevel
          GridView = GridContragentsPopupDBTableView1
        end
      end
    end
    object tabObespech: TcxTabSheet
      Caption = #1054#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077
      ImageIndex = 3
      inline frameObespech: TframeObespech
        Left = 0
        Top = 0
        Width = 799
        Height = 615
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 799
        ExplicitHeight = 615
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 799
          ExplicitWidth = 799
        end
        inherited Grid: TcxGrid
          Width = 799
          Height = 584
          ExplicitWidth = 799
          ExplicitHeight = 584
        end
        inherited BMobespech: TdxBarManager
          PixelsPerInch = 96
        end
      end
    end
  end
  inherited BM: TdxBarManager
    PixelsPerInch = 96
    object BMBar1: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1044#1077#1090#1072#1083#1080
      CaptionButtons = <>
      DockControl = DockDetail
      DockedDockControl = DockDetail
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 899
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDetailAdd'
        end
        item
          Visible = True
          ItemName = 'bbDetailDelete'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object bbStatusArchive: TdxBarButton
      Tag = 46
      Caption = #1042' '#1072#1088#1093#1080#1074
      Category = 0
      Hint = #1042' '#1072#1088#1093#1080#1074
      Visible = ivAlways
      ImageIndex = 44
      PaintStyle = psCaptionGlyph
      OnClick = bbStatusNewClick
    end
    object bbStatus: TdxBarSubItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1090#1072#1090#1091#1089
      Category = 0
      Visible = ivAlways
      ImageIndex = 49
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbStatusNew'
        end
        item
          Visible = True
          ItemName = 'bbStatusPrice'
        end
        item
          Visible = True
          ItemName = 'bbStatusDog'
        end
        item
          Visible = True
          ItemName = 'bbStatusArchive'
        end
        item
          Visible = True
          ItemName = 'bbStatusTrash'
        end>
    end
    object bbStatusTrash: TdxBarButton
      Tag = 47
      Caption = #1042' '#1082#1086#1088#1079#1080#1085#1091
      Category = 0
      Hint = #1042' '#1082#1086#1088#1079#1080#1085#1091
      Visible = ivAlways
      ImageIndex = 7
      OnClick = bbStatusNewClick
    end
    object bbDetailDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      OnClick = bbDetailDeleteClick
    end
    object bbStatusNew: TdxBarButton
      Tag = 44
      Caption = #1053#1086#1074#1072#1103' '#1079#1072#1103#1074#1082#1072
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1079#1072#1103#1074#1082#1072
      Visible = ivAlways
      ImageIndex = 17
      OnClick = bbStatusNewClick
    end
    object bbStatusPrice: TdxBarButton
      Tag = 45
      Caption = #1042#1099#1089#1090#1072#1074#1080#1083#1080' '#1062#1055
      Category = 0
      Hint = #1042#1099#1089#1090#1072#1074#1080#1083#1080' '#1062#1055
      Visible = ivAlways
      ImageIndex = 28
      OnClick = bbStatusNewClick
    end
    object bbStatusDog: TdxBarButton
      Tag = 48
      Caption = #1047#1072#1082#1083#1102#1095#1080#1083#1080' '#1076#1086#1075#1086#1074#1086#1088
      Category = 0
      Hint = #1047#1072#1082#1083#1102#1095#1080#1083#1080' '#1076#1086#1075#1086#1074#1086#1088
      Visible = ivAlways
      ImageIndex = 55
      OnClick = bbStatusNewClick
    end
    object bbDetailAdd: TdxBarListItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 48
      OnClick = bbDetailAddClick
    end
  end
  object Request: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE REQUEST'
      'SET'
      '    ID = :ID,'
      '    REQUEST_DT = :REQUEST_DT,'
      '    NAME = :NAME,'
      '    PHONE = :PHONE,'
      '    SOURCE = :SOURCE,'
      '    DESCRIPTION = :DESCRIPTION,'
      '    MANAGER_ID = :MANAGER_ID,'
      '    CONTRAGENT_ID = :CONTRAGENT_ID,'
      '    STATUS = :STATUS,'
      '    EMAIL = :EMAIL,'
      '    BUSINESS_DESCRIPTION = :BUSINESS_DESCRIPTION,'
      '    IS_CLEANING=:IS_CLEANING,'
      '    INN = :INN,'
      
        '    COMPANY_NAME = :COMPANY_NAME, COMPANY_NAME_FULL = :COMPANY_N' +
        'AME_FULL,'
      '    SOURCE_DESCRIPTION = :SOURCE_DESCRIPTION,'
      '    STATUS_DESCRIPTION = :STATUS_DESCRIPTION,'
      '    REGION_CODE = :REGION_CODE,'
      '    IS_ONE_ADDRESS=:IS_ONE_ADDRESS, ONE_ADDRESS=:ONE_ADDRESS,'
      '    PODPISANT = :PODPISANT'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'insert into request'
      
        '  (ID, REQUEST_DT, NAME, PHONE, SOURCE, DESCRIPTION, MANAGER_ID,' +
        ' CONTRAGENT_ID, STATUS, EMAIL, BUSINESS_DESCRIPTION, IS_CLEANING' +
        ', INN,'
      
        '  COMPANY_NAME, COMPANY_NAME_FULL, SOURCE_DESCRIPTION, STATUS_DE' +
        'SCRIPTION, REGION_CODE,'
      '  IS_ONE_ADDRESS, ONE_ADDRESS, PODPISANT)'
      'values'
      
        '  (:ID, :REQUEST_DT, :NAME, :PHONE, :SOURCE, :DESCRIPTION, :MANA' +
        'GER_ID, :CONTRAGENT_ID, :STATUS, :EMAIL, :BUSINESS_DESCRIPTION, ' +
        ':IS_CLEANING, :INN,'
      
        '  :COMPANY_NAME, :COMPANY_NAME_FULL, :SOURCE_DESCRIPTION, :STATU' +
        'S_DESCRIPTION, :REGION_CODE,'
      '  :IS_ONE_ADDRESS, :ONE_ADDRESS, :PODPISANT)'
      '')
    RefreshSQL.Strings = (
      'select'
      
        '  ID, REQUEST_DT, NAME, PHONE, SOURCE, DESCRIPTION, MANAGER_ID, ' +
        'CONTRAGENT_ID, STATUS, EMAIL, BUSINESS_DESCRIPTION,'
      '  coalesce(IS_CLEANING, 0) IS_CLEANING,'
      '  INN, COMPANY_NAME, COMPANY_NAME_FULL,'
      '  SOURCE_DESCRIPTION, STATUS_DESCRIPTION,'
      '  coalesce(REGION_CODE, '#39'moscow'#39') REGION_CODE,'
      '  coalesce(IS_ONE_ADDRESS, 0) IS_ONE_ADDRESS,'
      '  ONE_ADDRESS,'
      '  PODPISANT'
      ''
      'from'
      '  REQUEST'
      'where'
      '  ID=:OLD_ID'
      '')
    SelectSQL.Strings = (
      'select'
      
        '  REQUEST_DT, ID, NAME, PHONE, SOURCE, DESCRIPTION, MANAGER_ID, ' +
        'CONTRAGENT_ID, STATUS,'
      '  EMAIL, BUSINESS_DESCRIPTION,'
      '  coalesce(IS_CLEANING, 0) IS_CLEANING,'
      '  INN, COMPANY_NAME, COMPANY_NAME_FULL,'
      '  SOURCE_DESCRIPTION, STATUS_DESCRIPTION,'
      '  coalesce(REGION_CODE, '#39'moscow'#39') REGION_CODE,'
      '  coalesce(IS_ONE_ADDRESS, 0) IS_ONE_ADDRESS,'
      '  ONE_ADDRESS,'
      '  PODPISANT'
      'from'
      '  REQUEST where ID=coalesce(:ID, 972)')
    AutoUpdateOptions.UpdateTableName = 'REQUEST'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'G_REQUEST'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AfterPost = RequestAfterPost
    BeforePost = RequestBeforePost
    Transaction = trWrite
    Database = DM.FB
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 264
    Top = 96
  end
  object dsRequest: TDataSource
    DataSet = Request
    OnStateChange = dsRequestStateChange
    Left = 312
    Top = 96
  end
  object RequestDetail: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE REQUEST_DETAIL'
      'SET '
      '    MAT_TYPE = :MAT_TYPE,'
      '    CHANGES = :CHANGES,'
      '    QTY = :QTY,'
      '    PRICE = :PRICE'
      'WHERE'
      '    ID = :ID'
      '')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    REQUEST_DETAIL'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO REQUEST_DETAIL('
      '  PID,'
      '    MAT_TYPE,'
      '    CHANGES,'
      '    QTY,'
      '    PRICE'
      ')'
      'VALUES('
      '  :PID,'
      '  :MAT_TYPE,'
      '  :CHANGES,'
      '  :QTY,'
      '  :PRICE'
      ') returning id')
    RefreshSQL.Strings = (
      'select'
      '  ID,'
      '  D.MAT_TYPE,'
      '  D.CHANGES,'
      '  D.QTY, D.PRICE,'
      
        '  coalesce(coalesce(D.PRICE, 0)*coalesce(D.CHANGES, 0)*coalesce(' +
        'D.QTY,0), 0) AMOUNT'
      'from'
      '  REQUEST_DETAIL D'
      'where'
      '  D.ID = :OLD_ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  ID,'
      '  D.MAT_TYPE,'
      '  D.CHANGES,'
      '  D.QTY, D.PRICE,'
      
        '  coalesce(coalesce(D.PRICE, 0)*coalesce(D.CHANGES, 0)*coalesce(' +
        'D.QTY,0), 0) AMOUNT'
      'from'
      '  REQUEST_DETAIL D where D.PID = coalesce(:PID, 972)')
    AfterDelete = RequestDetailAfterDelete
    AfterPost = RequestAfterPost
    Transaction = trWrite
    Database = DM.FB
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 408
    Top = 96
    oRefreshAfterDelete = True
    oRefreshDeletedRecord = True
  end
  object dsRequestDetail: TDataSource
    DataSet = RequestDetail
    OnStateChange = dsRequestStateChange
    OnDataChange = dsRequestDetailDataChange
    Left = 464
    Top = 96
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 48
    Top = 336
    qoStartTransaction = True
  end
  object Contragents: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from (select'
      '  C.ID, C.CODE, '
      '  C.NAME,'
      
        '  (select O.DESCRIPTION from ORGANIZATIONS O where O.ID=coalesce' +
        '(C.ORGANIZATION_ID, 1)) ORGANIZATION_NAME,'
      '  C.CREATED_DT,'
      '  IIF(coalesce(C.INN, '#39#39')<>'#39#39', C.INN, A.INN) INN'
      'from'
      '  CONTRAGENTS C'
      '  left join CONTRAGENTS_ATTR A on A.ID=C.ID'
      'order by'
      '  C.ID'
      ')'
      ''
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 592
    Top = 96
  end
  object dsContragents: TDataSource
    DataSet = Contragents
    Left = 632
    Top = 96
  end
  object QR: TpFIBQuery
    Transaction = trRead
    Database = DM.FB
    SQL.Strings = (
      'select M.ID, M.NAME from REF_REQUEST_MAT_TYPE M')
    Left = 199
    Top = 399
    qoStartTransaction = True
  end
end
