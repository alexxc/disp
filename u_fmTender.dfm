inherited fmTender: TfmTender
  Left = 434
  Top = 263
  BorderIcons = [biSystemMenu]
  Caption = #1047#1072#1103#1074#1082#1072' '#1085#1072' '#1072#1091#1082#1094#1080#1086#1085
  ClientHeight = 668
  ClientWidth = 939
  OnCreate = FormCreate
  ExplicitWidth = 955
  ExplicitHeight = 707
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 939
    ExplicitWidth = 939
  end
  object Pages: TcxPageControl [1]
    Left = 0
    Top = 31
    Width = 939
    Height = 637
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabMain
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 631
    ClientRectLeft = 2
    ClientRectRight = 933
    ClientRectTop = 27
    object tabMain: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbTender: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' '#1040#1091#1082#1094#1080#1086#1085' '
        Style.TextStyle = [fsBold]
        TabOrder = 0
        Height = 172
        Width = 931
        object cxLabel4: TcxLabel
          Left = 12
          Top = 16
          Caption = #1042#1080#1076' '#1072#1091#1082#1094#1080#1086#1085#1072
          Transparent = True
        end
        object TENDER_TYPE: TcxDBImageComboBox
          Left = 12
          Top = 31
          DataBinding.DataField = 'TENDER_TYPE'
          DataBinding.DataSource = dsDATA
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <>
          TabOrder = 1
          Width = 240
        end
        object cxLabel5: TcxLabel
          Left = 263
          Top = 16
          Caption = #1055#1083#1086#1097#1072#1076#1082#1072
          Transparent = True
        end
        object TENDER_PLAYGROUND_ID: TcxDBImageComboBox
          Left = 263
          Top = 31
          DataBinding.DataField = 'TENDER_PLAYGROUND_ID'
          DataBinding.DataSource = dsDATA
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <>
          TabOrder = 2
          Width = 180
        end
        object cxLabel6: TcxLabel
          Left = 453
          Top = 16
          Caption = #1056#1077#1077#1089#1090#1088#1086#1074#1099#1081' '#8470
          Transparent = True
        end
        object REESTR_PURCHASE_NUMBER: TcxDBTextEdit
          Left = 453
          Top = 31
          DataBinding.DataField = 'REESTR_PURCHASE_NUMBER'
          DataBinding.DataSource = dsDATA
          TabOrder = 3
          Width = 123
        end
        object cxLabel7: TcxLabel
          Left = 12
          Top = 52
          Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1087#1086#1076#1072#1095#1080
          Transparent = True
        end
        object SUBMITION_STOP_DT: TcxDBDateEdit
          Left = 12
          Top = 68
          DataBinding.DataField = 'SUBMITION_STOP_DT'
          DataBinding.DataSource = dsDATA
          Properties.DateButtons = [btnClear, btnNow, btnToday]
          Properties.Kind = ckDateTime
          TabOrder = 5
          Width = 119
        end
        object TENDER_START_DT: TcxDBDateEdit
          Left = 133
          Top = 68
          DataBinding.DataField = 'TENDER_START_DT'
          DataBinding.DataSource = dsDATA
          Properties.DateButtons = [btnClear, btnNow, btnToday]
          Properties.Kind = ckDateTime
          TabOrder = 6
          Width = 119
        end
        object cxLabel8: TcxLabel
          Left = 133
          Top = 52
          Caption = #1053#1072#1095#1072#1083#1086' '#1090#1086#1088#1075#1086#1074
          Transparent = True
        end
        object cxLabel10: TcxLabel
          Left = 263
          Top = 52
          Caption = #1057#1090#1072#1088#1090#1086#1074#1072#1103' '#1094#1077#1085#1072
          Transparent = True
        end
        object START_PRICE: TcxDBCurrencyEdit
          Left = 263
          Top = 68
          DataBinding.DataField = 'START_PRICE'
          DataBinding.DataSource = dsDATA
          Properties.DisplayFormat = ',0.00;-,0.00'
          TabOrder = 7
          OnExit = START_PRICEExit
          OnKeyDown = CALC_PRICEKeyDown
          Width = 85
        end
        object cxLabel11: TcxLabel
          Left = 453
          Top = 51
          Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object MANAGER_ID: TcxDBLookupComboBox
          Left = 453
          Top = 68
          DataBinding.DataField = 'MANAGER_ID'
          DataBinding.DataSource = dsDATA
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
          TabOrder = 8
          Width = 123
        end
        object cxLabel18: TcxLabel
          Left = 583
          Top = 13
          Caption = #1058#1077#1082#1091#1097#1080#1081' '#1089#1090#1072#1090#1091#1089
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object STATUS: TcxDBImageComboBox
          Left = 583
          Top = 30
          DataBinding.DataField = 'STATUS'
          DataBinding.DataSource = dsDATA
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <>
          Properties.OnChange = STATUSPropertiesChange
          Properties.OnValidate = STATUSPropertiesValidate
          TabOrder = 4
          Width = 160
        end
        object cxLabel19: TcxLabel
          Left = 358
          Top = 52
          Caption = #1058#1077#1082#1091#1097#1072#1103' '#1094#1077#1085#1072
          Transparent = True
        end
        object cxLabel25: TcxLabel
          Left = 583
          Top = 52
          Caption = #1055#1086#1073#1077#1076#1080#1090#1077#1083#1100
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object cxLabel26: TcxLabel
          Left = 746
          Top = 52
          Caption = #1062#1077#1085#1072
          Transparent = True
        end
        object PRICE: TcxDBCurrencyEdit
          Left = 746
          Top = 67
          DataBinding.DataField = 'PRICE'
          DataBinding.DataSource = dsDATA
          Properties.DisplayFormat = ',0.00;-,0.00'
          TabOrder = 10
          OnExit = START_PRICEExit
          OnKeyDown = CALC_PRICEKeyDown
          Width = 85
        end
        object PRICE_M2: TcxDBCurrencyEdit
          Left = 833
          Top = 67
          DataBinding.DataField = 'PRICE_M2'
          DataBinding.DataSource = dsDATA
          Properties.DisplayFormat = ',0.00;-,0.00'
          Properties.ReadOnly = True
          TabOrder = 11
          OnExit = START_PRICEExit
          OnKeyDown = CALC_PRICEKeyDown
          Width = 50
        end
        object cxLabel32: TcxLabel
          Left = 887
          Top = 68
          Caption = '/'#1084'2'
          Transparent = True
        end
        object ORGANIZATION_ID: TcxDBLookupComboBox
          Left = 583
          Top = 67
          DataBinding.DataField = 'ORGANIZATION_ID'
          DataBinding.DataSource = dsDATA
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 15
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ORGANIZATION_ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsORG
          Properties.OnInitPopup = ORGANIZATION_IDPropertiesInitPopup
          TabOrder = 9
          Width = 160
        end
        object cxLabel33: TcxLabel
          Left = 12
          Top = 91
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          Transparent = True
        end
        object DESCRIPTION: TcxDBMemo
          Left = 12
          Top = 108
          DataBinding.DataField = 'DESCRIPTION'
          DataBinding.DataSource = dsDATA
          TabOrder = 24
          Height = 54
          Width = 914
        end
        object cxDBCurrencyEdit8: TcxDBCurrencyEdit
          Left = 358
          Top = 68
          DataBinding.DataField = 'CURRENT_PRICE'
          DataBinding.DataSource = dsDATA
          Properties.DisplayFormat = ',0.00;-,0.00'
          Properties.ReadOnly = True
          StyleDisabled.TextColor = clNavy
          StyleDisabled.TextStyle = [fsBold]
          TabOrder = 25
          Width = 85
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 172
        Width = 931
        Height = 432
        Align = alClient
        BevelOuter = bvNone
        BorderStyle = bsSingle
        TabOrder = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 480
          Height = 428
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object gbOrganizator: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = ' '#1054#1088#1075#1072#1085#1080#1079#1072#1090#1086#1088' '
            Style.TextStyle = [fsBold]
            TabOrder = 0
            Height = 93
            Width = 480
            object cxLabel1: TcxLabel
              Left = 12
              Top = 18
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Transparent = True
            end
            object CLIENT_NAME: TcxDBTextEdit
              Left = 12
              Top = 33
              DataBinding.DataField = 'CLIENT_NAME'
              DataBinding.DataSource = dsDATA
              TabOrder = 1
              Width = 325
            end
            object cxLabel2: TcxLabel
              Left = 343
              Top = 18
              Caption = #1048#1053#1053
              Transparent = True
            end
            object CLIENT_INN: TcxDBTextEdit
              Left = 343
              Top = 33
              DataBinding.DataField = 'CLIENT_INN'
              DataBinding.DataSource = dsDATA
              TabOrder = 2
              Width = 124
            end
            object cxLabel3: TcxLabel
              Left = 12
              Top = 60
              Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
              Transparent = True
            end
            object CONTRAGENT_ID: TcxDBExtLookupComboBox
              Left = 82
              Top = 58
              Hint = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1088#1084' '#1087#1086' '#1048#1053#1053
              DataBinding.DataField = 'CONTRAGENT_ID'
              DataBinding.DataSource = dsDATA
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
              TabOrder = 3
              Width = 385
            end
          end
          object cxGroupBox3: TcxGroupBox
            Left = 0
            Top = 93
            Align = alTop
            Caption = ' '#1054#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077' '
            Style.TextStyle = [fsBold]
            TabOrder = 1
            Height = 91
            Width = 480
            object cxLabel12: TcxLabel
              Left = 214
              Top = 21
              Caption = ', '#1089#1090#1086#1080#1084#1086#1089#1090#1100
              Transparent = True
            end
            object CONTRACT_OBESP_AMOUNT: TcxDBCurrencyEdit
              Left = 275
              Top = 19
              DataBinding.DataField = 'CONTRACT_OBESP_AMOUNT'
              DataBinding.DataSource = dsDATA
              TabOrder = 2
              OnExit = START_PRICEExit
              OnKeyDown = CALC_PRICEKeyDown
              Width = 85
            end
            object cxLabel14: TcxLabel
              Left = 30
              Top = 39
              Caption = #1047#1072#1103#1074#1082#1080
              Transparent = True
            end
            object cxLabel15: TcxLabel
              Left = 11
              Top = 58
              Caption = #1050#1086#1085#1090#1088#1072#1082#1090#1072
              Transparent = True
            end
            object REQUEST_OBESPECH_PERCENT: TcxDBCurrencyEdit
              Left = 164
              Top = 38
              TabStop = False
              DataBinding.DataField = 'REQUEST_OBESPECH_PERCENT'
              DataBinding.DataSource = dsDATA
              Properties.AssignedValues.MaxValue = True
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.Nullable = False
              Properties.ReadOnly = True
              TabOrder = 6
              Width = 38
            end
            object CONTRACT_OBESPECH_PERCENT: TcxDBCurrencyEdit
              Left = 164
              Top = 57
              TabStop = False
              DataBinding.DataField = 'CONTRACT_OBESPECH_PERCENT'
              DataBinding.DataSource = dsDATA
              Properties.AssignedValues.MaxValue = True
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.Nullable = False
              Properties.ReadOnly = True
              TabOrder = 7
              Width = 38
            end
            object cxLabel16: TcxLabel
              Left = 153
              Top = 39
              Caption = '='
              Transparent = True
            end
            object cxLabel17: TcxLabel
              Left = 201
              Top = 58
              Caption = '%'
              Transparent = True
            end
            object REQUEST_OBESPECH_AMOUNT: TcxDBCurrencyEdit
              Left = 70
              Top = 38
              DataBinding.DataField = 'REQUEST_OBESPECH_AMOUNT'
              DataBinding.DataSource = dsDATA
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.Nullable = False
              TabOrder = 3
              OnExit = START_PRICEExit
              OnKeyDown = CALC_PRICEKeyDown
              Width = 85
            end
            object CONTRACT_OBESPECH_AMOUNT: TcxDBCurrencyEdit
              Left = 70
              Top = 57
              DataBinding.DataField = 'CONTRACT_OBESPECH_AMOUNT'
              DataBinding.DataSource = dsDATA
              Properties.MaxLength = 0
              Properties.Nullable = False
              Properties.ReadOnly = False
              TabOrder = 4
              OnExit = START_PRICEExit
              OnKeyDown = CALC_PRICEKeyDown
              Width = 85
            end
            object cxDBImageComboBox1: TcxDBImageComboBox
              Left = 70
              Top = 19
              DataBinding.DataField = 'CONTRACT_OBESP_TYPE'
              DataBinding.DataSource = dsDATA
              Properties.Alignment.Horz = taLeftJustify
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = #1041#1072#1085#1082#1086#1074#1089#1082#1072#1103' '#1075#1072#1088#1072#1085#1090#1080#1103
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = #1055#1083#1072#1090#1077#1078#1085#1086#1077' '#1087#1086#1088#1091#1095#1077#1085#1080#1077
                  Value = 1
                end>
              TabOrder = 1
              Width = 144
            end
            object cxLabel27: TcxLabel
              Left = 201
              Top = 39
              Caption = '%'
              Transparent = True
            end
            object cxLabel28: TcxLabel
              Left = 152
              Top = 58
              Caption = '='
              Transparent = True
            end
            object cxLabel29: TcxLabel
              Left = 244
              Top = 55
              Caption = #1060#1072#1082#1090
              Transparent = True
            end
            object CONTRACT_OBESPECH_FACT_PERCENT: TcxDBCurrencyEdit
              Left = 369
              Top = 54
              TabStop = False
              DataBinding.DataField = 'CONTRACT_OBESPECH_FACT_PERCENT'
              DataBinding.DataSource = dsDATA
              Properties.AssignedValues.MaxValue = True
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.Nullable = False
              Properties.ReadOnly = True
              TabOrder = 8
              Width = 38
            end
            object cxLabel30: TcxLabel
              Left = 408
              Top = 55
              Caption = '%'
              Transparent = True
            end
            object CONTRACT_OBESPECH_FACT_AMOUNT: TcxDBCurrencyEdit
              Left = 273
              Top = 54
              DataBinding.DataField = 'CONTRACT_OBESPECH_FACT_AMOUNT'
              DataBinding.DataSource = dsDATA
              Properties.MaxLength = 0
              Properties.Nullable = False
              Properties.ReadOnly = False
              TabOrder = 5
              OnExit = START_PRICEExit
              OnKeyDown = CALC_PRICEKeyDown
              Width = 85
            end
            object cxLabel31: TcxLabel
              Left = 357
              Top = 55
              Caption = '='
              Transparent = True
            end
          end
          object gbService: TcxGroupBox
            Left = 0
            Top = 184
            Align = alClient
            Caption = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
            Style.TextStyle = [fsBold]
            TabOrder = 2
            Height = 244
            Width = 480
            object cxLabel9: TcxLabel
              Left = 291
              Top = 18
              Caption = #1055#1077#1088#1080#1086#1076' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
              Style.TextStyle = [fsBold]
              Transparent = True
            end
            object SERVICE_PERIOD_START: TcxDBDateEdit
              Left = 291
              Top = 35
              DataBinding.DataField = 'SERVICE_PERIOD_START'
              DataBinding.DataSource = dsDATA
              Properties.ImmediatePost = True
              Properties.SaveTime = False
              Properties.ShowTime = False
              TabOrder = 1
              Width = 80
            end
            object SERVICE_PERIOD_END: TcxDBDateEdit
              Left = 380
              Top = 35
              DataBinding.DataField = 'SERVICE_PERIOD_END'
              DataBinding.DataSource = dsDATA
              Properties.ImmediatePost = True
              Properties.SaveTime = False
              Properties.ShowTime = False
              TabOrder = 2
              Width = 80
            end
            object gridDetail: TcxGrid
              AlignWithMargins = True
              Left = 6
              Top = 18
              Width = 232
              Height = 214
              Align = alLeft
              TabOrder = 10
              ExplicitLeft = 5
              ExplicitTop = 2
              ExplicitHeight = 237
              object gridDetailDBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.First.Visible = True
                Navigator.Buttons.PriorPage.Visible = True
                Navigator.Buttons.Prior.Visible = True
                Navigator.Buttons.Next.Visible = True
                Navigator.Buttons.NextPage.Visible = True
                Navigator.Buttons.Last.Visible = True
                Navigator.Buttons.Insert.Visible = True
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.Visible = True
                Navigator.Buttons.Edit.Visible = True
                Navigator.Buttons.Post.Visible = True
                Navigator.Buttons.Cancel.Visible = True
                Navigator.Buttons.Refresh.Visible = True
                Navigator.Buttons.SaveBookmark.Visible = True
                Navigator.Buttons.GotoBookmark.Visible = True
                Navigator.Buttons.Filter.Visible = True
                OnEditKeyDown = gridDetailDBTableView1EditKeyDown
                DataController.DataSource = dsDetail
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '#,##0.000'
                    Kind = skSum
                    Column = gridDetailDBTableView1SquareChanges
                  end
                  item
                    Format = '#'
                    Kind = skSum
                    Column = gridDetailDBTableView1QTY
                  end
                  item
                    Format = '#'
                    Kind = skSum
                    Column = gridDetailDBTableView1Changes
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Deleting = False
                OptionsData.Inserting = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object gridDetailDBTableView1RecId: TcxGridDBColumn
                  DataBinding.FieldName = 'RecId'
                  Visible = False
                end
                object gridDetailDBTableView1name: TcxGridDBColumn
                  Caption = #1050#1086#1074#1077#1088
                  DataBinding.FieldName = 'name'
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 56
                end
                object gridDetailDBTableView1width: TcxGridDBColumn
                  DataBinding.FieldName = 'width'
                  Visible = False
                end
                object gridDetailDBTableView1height: TcxGridDBColumn
                  DataBinding.FieldName = 'height'
                  Visible = False
                end
                object gridDetailDBTableView1QTY: TcxGridDBColumn
                  Caption = #1050#1086#1083'-'#1074#1086
                  DataBinding.FieldName = 'QTY'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 0
                  Properties.DisplayFormat = ',0;-,0'
                  Options.Filtering = False
                  Width = 46
                end
                object gridDetailDBTableView1Changes: TcxGridDBColumn
                  Caption = #1047#1072#1084#1077#1085
                  DataBinding.FieldName = 'Changes'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 0
                  Properties.DisplayFormat = ',0;-,0'
                  Options.Filtering = False
                  Width = 47
                end
                object gridDetailDBTableView1SquareChanges: TcxGridDBColumn
                  Caption = #1050#1086#1074#1088#1086#1079#1072#1084#1077#1085
                  DataBinding.FieldName = 'QTY_SQUARE'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 81
                end
              end
              object gridDetailLevel1: TcxGridLevel
                GridView = gridDetailDBTableView1
              end
            end
            object cxLabel13: TcxLabel
              Left = 250
              Top = 134
              Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080' '#1087#1086' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1102
              Transparent = True
            end
            object SERVICE_DESCRIPTION: TcxDBMemo
              Left = 250
              Top = 151
              DataBinding.DataField = 'SERVICE_DESCRIPTION'
              DataBinding.DataSource = dsDATA
              TabOrder = 9
              Height = 81
              Width = 220
            end
            object cxLabel20: TcxLabel
              Left = 254
              Top = 115
              Caption = #1056#1072#1089#1095#1105#1090
              Style.TextStyle = [fsBold]
              StyleDisabled.TextStyle = []
              Transparent = True
            end
            object cxLabel21: TcxLabel
              Left = 387
              Top = 61
              Caption = #1057#1091#1084#1084#1072' '
              Transparent = True
            end
            object cxLabel22: TcxLabel
              Left = 313
              Top = 61
              Caption = #1062#1077#1085#1072' '#1079#1072' '#1084'2'
              Transparent = True
            end
            object cxDBCurrencyEdit5: TcxDBCurrencyEdit
              Left = 381
              Top = 78
              DataBinding.DataField = 'START_PRICE'
              DataBinding.DataSource = dsDATA
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.ReadOnly = True
              StyleDisabled.TextColor = clNavy
              StyleDisabled.TextStyle = [fsBold]
              TabOrder = 4
              Width = 85
            end
            object START_PRICE_M2: TcxDBCurrencyEdit
              Left = 298
              Top = 78
              DataBinding.DataField = 'START_PRICE_M2'
              DataBinding.DataSource = dsDATA
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.ReadOnly = True
              StyleDisabled.TextColor = clNavy
              StyleDisabled.TextStyle = [fsBold]
              TabOrder = 3
              Width = 74
            end
            object CURRENT_PRICE_M2: TcxDBCurrencyEdit
              Left = 298
              Top = 96
              DataBinding.DataField = 'CURRENT_PRICE_M2'
              DataBinding.DataSource = dsDATA
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.ReadOnly = True
              StyleDisabled.TextColor = clNavy
              StyleDisabled.TextStyle = [fsBold]
              TabOrder = 5
              Width = 74
            end
            object CALC_PRICE_M2: TcxDBCurrencyEdit
              Left = 298
              Top = 114
              DataBinding.DataField = 'CALC_PRICE_M2'
              DataBinding.DataSource = dsDATA
              Properties.DisplayFormat = ',0.00;-,0.00'
              StyleDisabled.TextColor = clNavy
              StyleDisabled.TextStyle = [fsBold]
              TabOrder = 7
              OnExit = START_PRICEExit
              OnKeyDown = CALC_PRICEKeyDown
              Width = 74
            end
            object CALC_PRICE: TcxDBCurrencyEdit
              Left = 381
              Top = 114
              DataBinding.DataField = 'CALC_PRICE'
              DataBinding.DataSource = dsDATA
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.ReadOnly = True
              StyleDisabled.TextColor = clNavy
              StyleDisabled.TextStyle = [fsBold]
              TabOrder = 8
              OnExit = START_PRICEExit
              OnKeyDown = CALC_PRICEKeyDown
              Width = 85
            end
            object cxLabel23: TcxLabel
              Left = 264
              Top = 79
              Caption = #1057#1090#1072#1088#1090
              Transparent = True
            end
            object cxLabel24: TcxLabel
              Left = 250
              Top = 97
              Caption = #1058#1077#1082#1091#1097#1072#1103
              Transparent = True
            end
            object CURRENT_PRICE: TcxDBCurrencyEdit
              Left = 381
              Top = 96
              DataBinding.DataField = 'CURRENT_PRICE'
              DataBinding.DataSource = dsDATA
              Properties.DisplayFormat = ',0.00;-,0.00'
              TabOrder = 6
              OnExit = START_PRICEExit
              OnKeyDown = CALC_PRICEKeyDown
              Width = 85
            end
          end
        end
        object Panel3: TPanel
          Left = 480
          Top = 0
          Width = 447
          Height = 428
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object gbOrganizations: TcxGroupBox
            Left = 0
            Top = 0
            Align = alClient
            Caption = ' '#1059#1095#1072#1089#1090#1085#1080#1082#1080' '
            Style.TextStyle = [fsBold]
            TabOrder = 0
            Height = 248
            Width = 447
            object gridOrganizations: TcxGrid
              Left = 3
              Top = 15
              Width = 114
              Height = 224
              Align = alLeft
              TabOrder = 0
              ExplicitLeft = 2
              ExplicitTop = -1
              ExplicitHeight = 247
              object cxGridDBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.First.Visible = True
                Navigator.Buttons.PriorPage.Visible = True
                Navigator.Buttons.Prior.Visible = True
                Navigator.Buttons.Next.Visible = True
                Navigator.Buttons.NextPage.Visible = True
                Navigator.Buttons.Last.Visible = True
                Navigator.Buttons.Insert.Visible = True
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.Visible = True
                Navigator.Buttons.Edit.Visible = True
                Navigator.Buttons.Post.Visible = True
                Navigator.Buttons.Cancel.Visible = True
                Navigator.Buttons.Refresh.Visible = True
                Navigator.Buttons.SaveBookmark.Visible = True
                Navigator.Buttons.GotoBookmark.Visible = True
                Navigator.Buttons.Filter.Visible = True
                OnCellDblClick = cxGridDBTableView1CellDblClick
                DataController.DataSource = dsOrganizations
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '#'
                    Kind = skSum
                    FieldName = 'Selected'
                    Column = cxGridDBColumn3
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.GridLines = glHorizontal
                OptionsView.GroupByBox = False
                object cxGridDBColumn1: TcxGridDBColumn
                  DataBinding.FieldName = 'RecId'
                  Visible = False
                end
                object cxGridDBColumn3: TcxGridDBColumn
                  DataBinding.FieldName = 'Selected'
                  RepositoryItem = DM.erCheckBox
                  MinWidth = 30
                  Options.Editing = False
                  Width = 30
                  IsCaptionAssigned = True
                end
                object cxGridDBColumn4: TcxGridDBColumn
                  Caption = #1053#1072#1096#1080
                  DataBinding.FieldName = 'NAME'
                  Options.Editing = False
                  Width = 95
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxGridDBTableView1
              end
            end
            object gridConcurents: TcxGrid
              Left = 117
              Top = 15
              Width = 327
              Height = 224
              Align = alClient
              TabOrder = 1
              ExplicitLeft = 116
              ExplicitTop = -1
              ExplicitWidth = 329
              ExplicitHeight = 247
              object gridConcurentsDBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.First.Visible = True
                Navigator.Buttons.PriorPage.Visible = True
                Navigator.Buttons.Prior.Visible = True
                Navigator.Buttons.Next.Visible = True
                Navigator.Buttons.NextPage.Visible = True
                Navigator.Buttons.Last.Visible = True
                Navigator.Buttons.Insert.Visible = True
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.Visible = True
                Navigator.Buttons.Edit.Visible = True
                Navigator.Buttons.Post.Visible = True
                Navigator.Buttons.Cancel.Visible = True
                Navigator.Buttons.Refresh.Visible = True
                Navigator.Buttons.SaveBookmark.Visible = True
                Navigator.Buttons.GotoBookmark.Visible = True
                Navigator.Buttons.Filter.Visible = True
                OnCellDblClick = gridConcurentsDBTableView1CellDblClick
                DataController.DataSource = dsConcurents
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '#'
                    Kind = skSum
                    FieldName = 'Selected'
                    Column = gridConcurentsDBTableView1Selected
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.GridLines = glHorizontal
                OptionsView.GroupByBox = False
                object gridConcurentsDBTableView1RecId: TcxGridDBColumn
                  DataBinding.FieldName = 'RecId'
                  Visible = False
                end
                object gridConcurentsDBTableView1Selected: TcxGridDBColumn
                  DataBinding.FieldName = 'Selected'
                  RepositoryItem = DM.erCheckBox
                  MinWidth = 30
                  Options.Editing = False
                  Width = 30
                  IsCaptionAssigned = True
                end
                object gridConcurentsDBTableView1NAME: TcxGridDBColumn
                  Caption = #1050#1086#1085#1082#1091#1088#1077#1085#1090#1099
                  DataBinding.FieldName = 'NAME'
                  Options.Editing = False
                  Width = 136
                end
                object gridConcurentsDBTableView1INN: TcxGridDBColumn
                  Caption = #1048#1053#1053
                  DataBinding.FieldName = 'INN'
                  Options.Editing = False
                  Width = 82
                end
              end
              object gridConcurentsLevel1: TcxGridLevel
                GridView = gridConcurentsDBTableView1
              end
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 0
            Top = 368
            Align = alBottom
            Caption = ' '#1050#1086#1084#1087#1077#1085#1089#1072#1094#1080#1103' '#1079#1072' '#1082#1086#1074#1088#1099' '
            TabOrder = 2
            Height = 60
            Width = 447
            object COMPENSATION_DESCRIPTION: TcxDBMemo
              Left = 3
              Top = 15
              Align = alClient
              DataBinding.DataField = 'COMPENSATION_DESCRIPTION'
              DataBinding.DataSource = dsDATA
              TabOrder = 0
              Height = 36
              Width = 441
            end
          end
          object cxGroupBox4: TcxGroupBox
            Left = 0
            Top = 308
            Align = alBottom
            Caption = ' '#1055#1086#1088#1103#1076#1086#1082' '#1086#1087#1083#1072#1090#1099' '
            TabOrder = 3
            Height = 60
            Width = 447
            object PAYMENT_DESCRIPTION: TcxDBMemo
              Left = 3
              Top = 15
              Align = alClient
              DataBinding.DataField = 'PAYMENT_DESCRIPTION'
              DataBinding.DataSource = dsDATA
              TabOrder = 0
              Height = 36
              Width = 441
            end
          end
          object cxGroupBox1: TcxGroupBox
            Left = 0
            Top = 248
            Margins.Top = 0
            Align = alBottom
            Caption = ' '#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080' '#1087#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1095#1077#1089#1090#1074#1091' '
            Style.BorderStyle = ebsNone
            TabOrder = 1
            Height = 60
            Width = 447
            object SOTRUDN_DESCRIPTION: TcxDBMemo
              Left = 3
              Top = 15
              Align = alClient
              DataBinding.DataField = 'SOTRUDN_DESCRIPTION'
              DataBinding.DataSource = dsDATA
              TabOrder = 0
              Height = 36
              Width = 441
            end
          end
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = #1046#1091#1088#1085#1072#1083
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inline frameJournal: TframeJournal
        Left = 0
        Top = 0
        Width = 931
        Height = 604
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 931
        ExplicitHeight = 604
        inherited Grid: TcxGrid
          Width = 931
          Height = 573
          ExplicitWidth = 931
          ExplicitHeight = 573
        end
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 931
          ExplicitWidth = 931
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
    object cxTabSheet2: TcxTabSheet
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inline frameDocuments: TframeDocuments
        Left = 0
        Top = 0
        Width = 931
        Height = 604
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 931
        ExplicitHeight = 604
        inherited dockDocuments: TdxBarDockControl
          Width = 931
          ExplicitWidth = 931
        end
        inherited cxGrid2: TcxGrid
          Width = 931
          Height = 573
          ExplicitWidth = 931
          ExplicitHeight = 573
        end
        inherited BM: TdxBarManager
          PixelsPerInch = 96
          inherited BMBar1: TdxBar
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
                ItemName = 'bbView'
              end>
          end
        end
      end
    end
    object tabSystem: TcxTabSheet
      Caption = 'tabSystem'
      ImageIndex = 3
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
      ImageIndex = 4
      inline frameObespech: TframeObespech
        Left = 0
        Top = 0
        Width = 931
        Height = 604
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 931
        ExplicitHeight = 604
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 931
          ExplicitWidth = 931
        end
        inherited Grid: TcxGrid
          Width = 931
          Height = 573
          ExplicitWidth = 931
          ExplicitHeight = 573
        end
        inherited BMobespech: TdxBarManager
          PixelsPerInch = 96
        end
      end
    end
  end
  inherited BM: TdxBarManager
    Left = 896
    Top = 320
    PixelsPerInch = 96
  end
  object dsOrganizations: TDataSource
    DataSet = Organizations
    Left = 96
    Top = 496
  end
  object dsDetail: TDataSource
    DataSet = Detail
    Left = 152
    Top = 408
  end
  object DATA: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute block('
      '  REQUEST_ID T_PID = :REQUEST_ID,'
      '  TENDER_ID T_PID = :TENDER_ID,'
      '  STATUS T_PID=:STATUS,'
      '  MANAGER_ID T_PID=:MANAGER_ID,'
      '  START_PRICE T_AMOUNT = :START_PRICE, PRICE T_AMOUNT=:PRICE,'
      
        '  CURRENT_PRICE T_AMOUNT=:CURRENT_PRICE, CALC_PRICE T_AMOUNT=:CA' +
        'LC_PRICE,'
      ''
      '  CONTRAGENT_ID T_PID=:CONTRAGENT_ID,'
      '  ORGANIZATION_ID T_PID=:ORGANIZATION_ID,'
      '  CLIENT_NAME T_NAME=:CLIENT_NAME, CLIENT_INN T_INN=:CLIENT_INN,'
      
        '  TENDER_TYPE T_PID=:TENDER_TYPE, TENDER_PLAYGROUND_ID T_PID=:TE' +
        'NDER_PLAYGROUND_ID, REESTR_PURCHASE_NUMBER T_NAME=:REESTR_PURCHA' +
        'SE_NUMBER,'
      
        '  SUBMITION_STOP_DT T_DATETIME=:SUBMITION_STOP_DT, TENDER_START_' +
        'DT T_DATETIME=:TENDER_START_DT,'
      
        '  SERVICE_PERIOD_START T_DATE=:SERVICE_PERIOD_START, SERVICE_PER' +
        'IOD_END T_DATE=:SERVICE_PERIOD_END,'
      '  SERVICE_DESCRIPTION T_DESCRIPTION=:SERVICE_DESCRIPTION,'
      '  DESCRIPTION T_DESCRIPTION=:DESCRIPTION,'
      
        '  COMPENSATION_DESCRIPTION T_DESCRIPTION=:COMPENSATION_DESCRIPTI' +
        'ON, PAYMENT_DESCRIPTION T_DESCRIPTION=:PAYMENT_DESCRIPTION, SOTR' +
        'UDN_DESCRIPTION T_DESCRIPTION=:SOTRUDN_DESCRIPTION,'
      
        '  REQUEST_OBESP_DATE T_DATE=:REQUEST_OBESP_DATE, REQUEST_OBESP_A' +
        'MOUT T_AMOUNT=:REQUEST_OBESP_AMOUT,'
      
        '  CONTRACT_OBESP_TYPE T_PID=:CONTRACT_OBESP_TYPE, CONTRACT_OBESP' +
        '_AMOUNT T_AMOUNT=:CONTRACT_OBESP_AMOUNT,'
      
        '  CONTRACT_OBESPECH_PERCENT T_AMOUNT=:CONTRACT_OBESPECH_PERCENT,' +
        ' REQUEST_OBESPECH_PERCENT T_AMOUNT=:REQUEST_OBESPECH_PERCENT,'
      
        '  CONTRACT_OBESPECH_AMOUNT T_AMOUNT=:CONTRACT_OBESPECH_AMOUNT, R' +
        'EQUEST_OBESPECH_AMOUNT T_AMOUNT=:REQUEST_OBESPECH_AMOUNT,'
      
        '  CONTRACT_OBESPECH_FACT_AMOUNT T_AMOUNT=:CONTRACT_OBESPECH_FACT' +
        '_AMOUNT, CONTRACT_OBESPECH_FACT_PERCENT T_AMOUNT=:CONTRACT_OBESP' +
        'ECH_FACT_PERCENT,'
      '  CALC_PRICE_M2 T_AMOUNT=:CALC_PRICE_M2'
      ')'
      'as'
      'begin'
      '  update REQUEST set'
      '    MANAGER_ID=:MANAGER_ID, STATUS=:STATUS,'
      
        '    COMPANY_NAME=:CLIENT_NAME, INN=:CLIENT_INN, CONTRAGENT_ID=:C' +
        'ONTRAGENT_ID'
      '  where'
      '    ID=:REQUEST_ID;'
      '    '
      '  update REQUEST_TENDER set'
      '    STATUS = :STATUS,'
      '    START_PRICE = :START_PRICE, PRICE = :PRICE,'
      '    CURRENT_PRICE = :CURRENT_PRICE, CALC_PRICE = :CALC_PRICE,'
      '    ORGANIZATION_ID = :ORGANIZATION_ID,'
      '    CLIENT_NAME = :CLIENT_NAME, CLIENT_INN = :CLIENT_INN,'
      
        '    TENDER_TYPE = :TENDER_TYPE, TENDER_PLAYGROUND_ID = :TENDER_P' +
        'LAYGROUND_ID, REESTR_PURCHASE_NUMBER = :REESTR_PURCHASE_NUMBER,'
      
        '    SUBMITION_STOP_DT = :SUBMITION_STOP_DT, TENDER_START_DT = :T' +
        'ENDER_START_DT,'
      
        '    SERVICE_PERIOD_START = :SERVICE_PERIOD_START, SERVICE_PERIOD' +
        '_END = :SERVICE_PERIOD_END, SERVICE_DESCRIPTION = :SERVICE_DESCR' +
        'IPTION,'
      '    DESCRIPTION = :DESCRIPTION,'
      
        '    COMPENSATION_DESCRIPTION = :COMPENSATION_DESCRIPTION, PAYMEN' +
        'T_DESCRIPTION = :PAYMENT_DESCRIPTION, SOTRUDN_DESCRIPTION = :SOT' +
        'RUDN_DESCRIPTION,'
      
        '    REQUEST_OBESP_DATE = :REQUEST_OBESP_DATE, REQUEST_OBESP_AMOU' +
        'T = :REQUEST_OBESP_AMOUT,'
      
        '    CONTRACT_OBESP_TYPE = :CONTRACT_OBESP_TYPE, CONTRACT_OBESP_A' +
        'MOUNT  =:CONTRACT_OBESP_AMOUNT,'
      
        '    CONTRACT_OBESPECH_PERCENT = :CONTRACT_OBESPECH_PERCENT, REQU' +
        'EST_OBESPECH_PERCENT = :REQUEST_OBESPECH_PERCENT,'
      
        '    CONTRACT_OBESPECH_AMOUNT = :CONTRACT_OBESPECH_AMOUNT, REQUES' +
        'T_OBESPECH_AMOUNT = :REQUEST_OBESPECH_AMOUNT,'
      
        '    CONTRACT_OBESPECH_FACT_AMOUNT=:CONTRACT_OBESPECH_FACT_AMOUNT' +
        ', CONTRACT_OBESPECH_FACT_PERCENT =:CONTRACT_OBESPECH_FACT_PERCEN' +
        'T,'
      '    CALC_PRICE_M2 = :CALC_PRICE_M2'
      ''
      '  where'
      '    REQUEST_TENDER.ID=:TENDER_ID;'
      ''
      'end'
      ''
      ''
      ''
      '')
    InsertSQL.Strings = (
      'execute block('
      '  STATUS T_PID=:STATUS,'
      '  MANAGER_ID T_PID=:MANAGER_ID,'
      '  START_PRICE T_AMOUNT = :START_PRICE, PRICE T_AMOUNT=:PRICE,'
      
        '  CURRENT_PRICE T_AMOUNT=:CURRENT_PRICE, CALC_PRICE T_AMOUNT=:CA' +
        'LC_PRICE,'
      ''
      '  CONTRAGENT_ID T_PID = :CONTRAGENT_ID,'
      '  ORGANIZATION_ID T_PID=:ORGANIZATION_ID,'
      '  CLIENT_NAME T_NAME=:CLIENT_NAME, CLIENT_INN T_INN=:CLIENT_INN,'
      
        '  TENDER_TYPE T_PID=:TENDER_TYPE, TENDER_PLAYGROUND_ID T_PID=:TE' +
        'NDER_PLAYGROUND_ID, REESTR_PURCHASE_NUMBER T_NAME=:REESTR_PURCHA' +
        'SE_NUMBER,'
      
        '  SUBMITION_STOP_DT T_DATETIME=:SUBMITION_STOP_DT, TENDER_START_' +
        'DT T_DATETIME=:TENDER_START_DT,'
      
        '  SERVICE_PERIOD_START T_DATE=:SERVICE_PERIOD_START, SERVICE_PER' +
        'IOD_END T_DATE=:SERVICE_PERIOD_END,'
      '  SERVICE_DESCRIPTION T_DESCRIPTION=:SERVICE_DESCRIPTION,'
      '  DESCRIPTION T_DESCRIPTION=:DESCRIPTION,'
      
        '  COMPENSATION_DESCRIPTION T_DESCRIPTION=:COMPENSATION_DESCRIPTI' +
        'ON, PAYMENT_DESCRIPTION T_DESCRIPTION=:PAYMENT_DESCRIPTION, SOTR' +
        'UDN_DESCRIPTION T_DESCRIPTION=:SOTRUDN_DESCRIPTION,'
      
        '  REQUEST_OBESP_DATE T_DATE=:REQUEST_OBESP_DATE, REQUEST_OBESP_A' +
        'MOUT T_AMOUNT=:REQUEST_OBESP_AMOUT,'
      
        '  CONTRACT_OBESP_TYPE T_PID=:CONTRACT_OBESP_TYPE, CONTRACT_OBESP' +
        '_AMOUNT T_AMOUNT=:CONTRACT_OBESP_AMOUNT,'
      
        '  CONTRACT_OBESPECH_PERCENT T_AMOUNT=:CONTRACT_OBESPECH_PERCENT,' +
        ' REQUEST_OBESPECH_PERCENT T_AMOUNT=:REQUEST_OBESPECH_PERCENT,'
      
        '  CONTRACT_OBESPECH_AMOUNT T_AMOUNT=:CONTRACT_OBESPECH_AMOUNT, R' +
        'EQUEST_OBESPECH_AMOUNT T_AMOUNT=:REQUEST_OBESPECH_AMOUNT,'
      
        '  CONTRACT_OBESPECH_FACT_AMOUNT T_AMOUNT=:CONTRACT_OBESPECH_FACT' +
        '_AMOUNT, CONTRACT_OBESPECH_FACT_PERCENT T_AMOUNT=:CONTRACT_OBESP' +
        'ECH_FACT_PERCENT,'
      '  CALC_PRICE_M2 T_AMOUNT = :CALC_PRICE_M2'
      ')'
      'returns ('
      '  REQUEST_ID T_ID,'
      '  TENDER_ID T_ID'
      ')'
      'as'
      'begin'
      
        '  insert into request(SOURCE, STATUS, MANAGER_ID, COMPANY_NAME, ' +
        'INN, CONTRAGENT_ID) values (134, :STATUS, :MANAGER_ID, :CLIENT_N' +
        'AME, :CLIENT_INN, :CONTRAGENT_ID) returning ID into :REQUEST_ID;'
      '  insert into REQUEST_TENDER('
      '    REQUEST_ID, STATUS,'
      '    START_PRICE, PRICE, CURRENT_PRICE, CALC_PRICE,'
      '    ORGANIZATION_ID, CLIENT_NAME, CLIENT_INN,'
      '    TENDER_TYPE, TENDER_PLAYGROUND_ID, REESTR_PURCHASE_NUMBER,'
      '    SUBMITION_STOP_DT, TENDER_START_DT,'
      
        '    SERVICE_PERIOD_START, SERVICE_PERIOD_END, SERVICE_DESCRIPTIO' +
        'N,'
      '    DESCRIPTION,'
      
        '    COMPENSATION_DESCRIPTION, PAYMENT_DESCRIPTION, SOTRUDN_DESCR' +
        'IPTION,'
      '    REQUEST_OBESP_DATE, REQUEST_OBESP_AMOUT,'
      '    CONTRACT_OBESP_TYPE, CONTRACT_OBESP_AMOUNT,'
      '    CONTRACT_OBESPECH_PERCENT, REQUEST_OBESPECH_PERCENT,'
      '    CONTRACT_OBESPECH_AMOUNT, REQUEST_OBESPECH_AMOUNT,'
      
        '    CONTRACT_OBESPECH_FACT_AMOUNT, CONTRACT_OBESPECH_FACT_PERCEN' +
        'T,'
      '    CALC_PRICE_M2'
      '  )'
      '  values('
      '    :REQUEST_ID, 145,'
      '    :START_PRICE, :PRICE, :CURRENT_PRICE, :CALC_PRICE,'
      '    :ORGANIZATION_ID, :CLIENT_NAME, :CLIENT_INN,'
      
        '    :TENDER_TYPE, :TENDER_PLAYGROUND_ID, :REESTR_PURCHASE_NUMBER' +
        ','
      '    :SUBMITION_STOP_DT, :TENDER_START_DT,'
      
        '    :SERVICE_PERIOD_START, :SERVICE_PERIOD_END, :SERVICE_DESCRIP' +
        'TION,'
      '    :DESCRIPTION,'
      
        '    :COMPENSATION_DESCRIPTION, :PAYMENT_DESCRIPTION, :SOTRUDN_DE' +
        'SCRIPTION,'
      '    :REQUEST_OBESP_DATE, :REQUEST_OBESP_AMOUT,'
      '    :CONTRACT_OBESP_TYPE, :CONTRACT_OBESP_AMOUNT,'
      '    :CONTRACT_OBESPECH_PERCENT, :REQUEST_OBESPECH_PERCENT,'
      '    :CONTRACT_OBESPECH_AMOUNT, :REQUEST_OBESPECH_AMOUNT,'
      
        '    :CONTRACT_OBESPECH_FACT_AMOUNT, :CONTRACT_OBESPECH_FACT_PERC' +
        'ENT,'
      '    :CALC_PRICE_M2'
      '  ) returning id into :TENDER_ID;'
      '  suspend;'
      'end')
    RefreshSQL.Strings = (
      'select'
      '  R.ID REQUEST_ID,'
      '  T.ID TENDER_ID,'
      '  R.CONTRAGENT_ID,'
      
        '  cast(T.START_PRICE/(select sum(D.QTY*D.CHANGES*M.WIDTH*M.HEIGH' +
        'T/10000.000) from REQUEST_DETAIL D, REF_REQUEST_MAT_TYPE M where' +
        ' D.PID=R.ID and M.ID=D.MAT_TYPE and D.QTY>0 and D.CHANGES>0) as ' +
        'T_AMOUNT) START_PRICE_M2,'
      
        '  cast(T.CURRENT_PRICE/(select sum(D.QTY*D.CHANGES*M.WIDTH*M.HEI' +
        'GHT/10000.000) from REQUEST_DETAIL D, REF_REQUEST_MAT_TYPE M whe' +
        're D.PID=R.ID and M.ID=D.MAT_TYPE and D.QTY>0 and D.CHANGES>0) a' +
        's T_AMOUNT) CURRENT_PRICE_M2,'
      
        '  cast(T.PRICE/(select sum(D.QTY*D.CHANGES*M.WIDTH*M.HEIGHT/1000' +
        '0.000) from REQUEST_DETAIL D, REF_REQUEST_MAT_TYPE M where D.PID' +
        '=R.ID and M.ID=D.MAT_TYPE and D.QTY>0 and D.CHANGES>0) as T_AMOU' +
        'NT) PRICE_M2,'
      '  T.CALC_PRICE_M2,'
      '  R.MANAGER_ID,'
      '  T.START_PRICE, T.PRICE,'
      '  T.CURRENT_PRICE, T.CALC_PRICE,'
      '  T.STATUS,'
      '  T.ORGANIZATION_ID, T.CLIENT_NAME, T.CLIENT_INN,'
      
        '  T.TENDER_TYPE, T.TENDER_PLAYGROUND_ID, T.REESTR_PURCHASE_NUMBE' +
        'R,'
      '  T.SUBMITION_STOP_DT, T.TENDER_START_DT,'
      
        '  T.SERVICE_PERIOD_START, T.SERVICE_PERIOD_END, T.SERVICE_DESCRI' +
        'PTION,'
      '  T.DESCRIPTION,'
      
        '  T.COMPENSATION_DESCRIPTION, T.PAYMENT_DESCRIPTION, T.SOTRUDN_D' +
        'ESCRIPTION,'
      '  T.REQUEST_OBESP_DATE, T.REQUEST_OBESP_AMOUT,'
      
        '  coalesce(T.CONTRACT_OBESP_TYPE, 0) CONTRACT_OBESP_TYPE, T.CONT' +
        'RACT_OBESP_AMOUNT,'
      '  T.CONTRACT_OBESPECH_PERCENT, T.REQUEST_OBESPECH_PERCENT,'
      '  T.CONTRACT_OBESPECH_AMOUNT, T.REQUEST_OBESPECH_AMOUNT,'
      
        '  T.CONTRACT_OBESPECH_FACT_AMOUNT, T.CONTRACT_OBESPECH_FACT_PERC' +
        'ENT'
      ''
      'from'
      '  REQUEST R, REQUEST_TENDER T'
      'where'
      '  R.ID=coalesce(:REQUEST_ID, 1002)'
      '  and R.ID=T.REQUEST_ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  R.ID REQUEST_ID,'
      '  T.ID TENDER_ID,'
      '  R.CONTRAGENT_ID,'
      
        '  cast(T.START_PRICE/(select sum(D.QTY*D.CHANGES*M.WIDTH*M.HEIGH' +
        'T/10000.000) from REQUEST_DETAIL D, REF_REQUEST_MAT_TYPE M where' +
        ' D.PID=R.ID and M.ID=D.MAT_TYPE and D.QTY>0 and D.CHANGES>0) as ' +
        'T_AMOUNT) START_PRICE_M2,'
      
        '  cast(T.CURRENT_PRICE/(select sum(D.QTY*D.CHANGES*M.WIDTH*M.HEI' +
        'GHT/10000.000) from REQUEST_DETAIL D, REF_REQUEST_MAT_TYPE M whe' +
        're D.PID=R.ID and M.ID=D.MAT_TYPE and D.QTY>0 and D.CHANGES>0) a' +
        's T_AMOUNT) CURRENT_PRICE_M2,'
      
        '  cast(T.PRICE/(select sum(D.QTY*D.CHANGES*M.WIDTH*M.HEIGHT/1000' +
        '0.000) from REQUEST_DETAIL D, REF_REQUEST_MAT_TYPE M where D.PID' +
        '=R.ID and M.ID=D.MAT_TYPE and D.QTY>0 and D.CHANGES>0) as T_AMOU' +
        'NT) PRICE_M2,'
      '  T.CALC_PRICE_M2,'
      '  R.MANAGER_ID,'
      '  T.START_PRICE, T.PRICE,'
      '  T.CURRENT_PRICE, T.CALC_PRICE,'
      '  T.STATUS,'
      '  T.ORGANIZATION_ID, T.CLIENT_NAME, T.CLIENT_INN,'
      
        '  T.TENDER_TYPE, T.TENDER_PLAYGROUND_ID, T.REESTR_PURCHASE_NUMBE' +
        'R,'
      '  T.SUBMITION_STOP_DT, T.TENDER_START_DT,'
      
        '  T.SERVICE_PERIOD_START, T.SERVICE_PERIOD_END, T.SERVICE_DESCRI' +
        'PTION,'
      '  T.DESCRIPTION,'
      
        '  T.COMPENSATION_DESCRIPTION, T.PAYMENT_DESCRIPTION, T.SOTRUDN_D' +
        'ESCRIPTION,'
      '  T.REQUEST_OBESP_DATE, T.REQUEST_OBESP_AMOUT,'
      
        '  coalesce(T.CONTRACT_OBESP_TYPE, 0) CONTRACT_OBESP_TYPE, T.CONT' +
        'RACT_OBESP_AMOUNT,'
      '  T.CONTRACT_OBESPECH_PERCENT, T.REQUEST_OBESPECH_PERCENT,'
      '  T.CONTRACT_OBESPECH_AMOUNT, T.REQUEST_OBESPECH_AMOUNT,'
      ''
      
        '  T.CONTRACT_OBESPECH_FACT_AMOUNT, T.CONTRACT_OBESPECH_FACT_PERC' +
        'ENT'
      ''
      ''
      'from'
      '  REQUEST R, REQUEST_TENDER T'
      'where'
      '  R.ID=coalesce(:REQUEST_ID, 1002)'
      '  and R.ID=T.REQUEST_ID')
    AfterPost = DATAAfterPost
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 32
    Top = 408
  end
  object dsDATA: TDataSource
    DataSet = DATA
    OnStateChange = dsDATAStateChange
    Left = 80
    Top = 456
  end
  object dsConcurents: TDataSource
    DataSet = Concurents
    Left = 176
    Top = 496
  end
  object Detail: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'update or insert into REQUEST_DETAIL(PID, MAT_TYPE, CHANGES, QTY' +
        ')'
      'values (:PID, :ID, :CHANGES, :QTY)'
      'matching (PID, MAT_TYPE)'
      '')
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'select'
      '  M.ID, M.NAME, M.WIDTH, M.HEIGHT,'
      '  coalesce(D.CHANGES, 0) CHANGES,'
      '  coalesce(D.QTY, 0) QTY,'
      
        '  cast((M.WIDTH * M.HEIGHT) / 10000.000 as T_SQUARE)*D.QTY SQUAR' +
        'E,'
      
        '  cast((M.WIDTH * M.HEIGHT) / 10000.000 as T_SQUARE)*D.QTY * D.C' +
        'HANGES QTY_SQUARE'
      'from'
      '    REF_REQUEST_MAT_TYPE M'
      
        '    left join REQUEST_DETAIL D on D.MAT_TYPE=M.ID and D.PID=coal' +
        'esce(:PID, 1002)'
      'where M.ID=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  M.ID,'
      '  M.NAME, M.WIDTH, M.HEIGHT,'
      '  coalesce(D.CHANGES, 0) CHANGES,'
      '  coalesce(D.QTY, 0) QTY,'
      
        '  cast((M.WIDTH * M.HEIGHT) / 10000.000 as T_SQUARE)*D.QTY SQUAR' +
        'E,'
      
        '  cast((M.WIDTH * M.HEIGHT) / 10000.000 as T_SQUARE)*D.QTY * D.C' +
        'HANGES QTY_SQUARE'
      'from'
      '    REF_REQUEST_MAT_TYPE M'
      
        '    left join REQUEST_DETAIL D on D.MAT_TYPE=M.ID and D.PID=coal' +
        'esce(:PID, 1002)')
    AfterPost = DetailAfterPost
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 112
    Top = 408
  end
  object Concurents: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute block('
      '  TENDER_ID T_PID = :TENDER_ID,'
      '  ORGANIZATION_ID T_PID = :ORGANIZATION_ID,'
      '  SELECTED T_INT = :SELECTED'
      ')'
      'as'
      '  declare variable OLD_SELECTED T_BOOLEAN;'
      'begin'
      
        '  select count(1) from TENDER_LINKS L where L.TENDER_ID=:TENDER_' +
        'ID and L.ORGANIZATION_ID=:ORGANIZATION_ID into :OLD_SELECTED;'
      '  if ((SELECTED=1) and (OLD_SELECTED=0)) then begin'
      
        '    insert into TENDER_LINKS (TENDER_ID, ORGANIZATION_ID) values' +
        ' (:TENDER_ID, :ORGANIZATION_ID);'
      '  end else begin'
      
        '    delete from TENDER_LINKS where TENDER_ID=:TENDER_ID and ORGA' +
        'NIZATION_ID=:ORGANIZATION_ID;'
      '  end'
      'end'
      '')
    RefreshSQL.Strings = (
      'select'
      '  O.ID ORGANIZATION_ID,'
      '  O.NAME, O.INN,'
      '  IIF(L.TENDER_ID is null, 0, 1) SELECTED'
      'from'
      '    REF_TENDER_CONCURENT O'
      
        'left join TENDER_LINKS L on L.TENDER_ID=coalesce(:TENDER_ID, 4) ' +
        'and L.ORGANIZATION_ID=O.ID'
      'where'
      '  O.ID=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  O.ID ORGANIZATION_ID,'
      '  O.NAME, O.INN,'
      '  IIF(L.TENDER_ID is null, 0, 1) SELECTED'
      'from REF_TENDER_CONCURENT O'
      
        'left join TENDER_LINKS L on L.TENDER_ID=coalesce(:TENDER_ID, 4) ' +
        'and L.ORGANIZATION_ID=O.ID'
      'order by 2')
    AfterPost = DetailAfterPost
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 136
    Top = 496
  end
  object Organizations: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute block('
      '  TENDER_ID T_PID = :TENDER_ID,'
      '  ORGANIZATION_ID T_PID = :ORGANIZATION_ID,'
      '  SELECTED T_BOOLEAN = :SELECTED'
      ')'
      'as'
      '  declare variable OLD_SELECTED T_BOOLEAN;'
      'begin'
      
        '  select count(1) from TENDER_LINKS L where L.TENDER_ID=:TENDER_' +
        'ID and L.ORGANIZATION_ID=:ORGANIZATION_ID into :OLD_SELECTED;'
      '  if ((SELECTED=1) and (OLD_SELECTED=0)) then begin'
      
        '    insert into TENDER_LINKS (TENDER_ID, ORGANIZATION_ID) values' +
        ' (:TENDER_ID, :ORGANIZATION_ID);'
      '  end else begin'
      
        '    delete from TENDER_LINKS where TENDER_ID=:TENDER_ID and ORGA' +
        'NIZATION_ID=:ORGANIZATION_ID;'
      '  end'
      'end'
      '')
    RefreshSQL.Strings = (
      'select'
      '  O.ID ORGANIZATION_ID,'
      '  O.SHORTNAME NAME, IIF(L.TENDER_ID is null, 0, 1) SELECTED'
      'from ORGANIZATIONS O'
      
        'left join TENDER_LINKS L on L.TENDER_ID=coalesce(:TENDER_ID, 4) ' +
        'and L.ORGANIZATION_ID=O.ID'
      'where O.ID=:ORGANIZATION_ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  O.ID ORGANIZATION_ID,'
      '  O.SHORTNAME NAME, IIF(L.TENDER_ID is null, 0, 1) SELECTED'
      'from ORGANIZATIONS O'
      
        'left join TENDER_LINKS L on L.TENDER_ID=coalesce(:TENDER_ID, 4) ' +
        'and L.ORGANIZATION_ID=O.ID'
      'where coalesce(O.SHORTNAME, '#39#39')<>'#39#39
      'order by 2')
    AfterPost = DetailAfterPost
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 64
    Top = 496
  end
  object ORG: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  L.ORGANIZATION_ID,'
      '  coalesce(O.SHORTNAME, C.NAME) NAME'
      'from TENDER_LINKS L'
      'left join REF_TENDER_CONCURENT C on C.ID=L.ORGANIZATION_ID'
      'left join ORGANIZATIONS O on O.ID=L.ORGANIZATION_ID'
      'where L.TENDER_ID=:ID')
    Transaction = trWrite
    Database = DM.FB
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 784
    Top = 80
  end
  object dsORG: TDataSource
    DataSet = ORG
    Left = 816
    Top = 80
  end
  object QR: TpFIBQuery
    Transaction = trRead
    Database = DM.FB
    Left = 488
    Top = 8
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
end
