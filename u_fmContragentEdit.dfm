inherited fmContragentEdit: TfmContragentEdit
  Left = 400
  Top = 78
  Caption = 'fmContragentEdit'
  ClientHeight = 651
  ClientWidth = 1078
  FormStyle = fsNormal
  Visible = False
  OnCreate = FormCreate
  ExplicitWidth = 1094
  ExplicitHeight = 689
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1078
    ExplicitWidth = 1078
  end
  object Pages: TcxPageControl [1]
    Left = 0
    Top = 31
    Width = 1078
    Height = 620
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabAttr
    Properties.CustomButtons.Buttons = <>
    OnChange = PagesChange
    ClientRectBottom = 614
    ClientRectLeft = 2
    ClientRectRight = 1072
    ClientRectTop = 27
    object tabMain: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 0
      object cxLabel1: TcxLabel
        Left = 14
        Top = 51
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Style.TextStyle = [fsBold]
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 102
      end
      object cxLabel2: TcxLabel
        Left = 62
        Top = 487
        Caption = #1050#1086#1076' 1'#1057
        FocusControl = cxDBTextEdit2
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 102
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 108
        Top = 483
        DataBinding.DataField = 'CODE'
        DataBinding.DataSource = dsContragent
        Enabled = False
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 49
      end
      object cxLabel3: TcxLabel
        Left = 77
        Top = 213
        Caption = #1048#1053#1053
        Transparent = True
      end
      object cxLabel4: TcxLabel
        Left = 355
        Top = 23
        Caption = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
        Transparent = True
      end
      object SERVICE_STATE: TcxDBImageComboBox
        Left = 440
        Top = 19
        RepositoryItem = DM.erServiceType
        DataBinding.DataField = 'SERVICE_STATE'
        DataBinding.DataSource = dsContragent
        Properties.Items = <>
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Width = 121
      end
      object cxLabel5: TcxLabel
        Left = 24
        Top = 84
        Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084'-'#1077
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 102
      end
      object MANAGER_ID: TcxDBLookupComboBox
        Left = 108
        Top = 399
        RepositoryItem = DM.erUsers
        DataBinding.DataField = 'MANAGER_ID'
        DataBinding.DataSource = dsContragent
        Properties.ListColumns = <>
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Width = 349
      end
      object cxLabel7: TcxLabel
        Left = 45
        Top = 403
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 102
      end
      object labelREWARD_PERCENT: TcxLabel
        Left = 475
        Top = 401
        Caption = '%%'
        Transparent = True
      end
      object REWARD_PERCENT: TcxDBTextEdit
        Left = 504
        Top = 399
        DataBinding.DataField = 'REWARD_PERCENT'
        DataBinding.DataSource = dsContragent
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Width = 57
      end
      object INVOICE_DESCRIPTION: TcxDBMemo
        Left = 108
        Top = 427
        DataBinding.DataField = 'INVOICE_DESCRIPTION'
        DataBinding.DataSource = dsContragent
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        Height = 35
        Width = 453
      end
      object cxLabel6: TcxLabel
        Left = 37
        Top = 427
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 102
      end
      object cxLabel11: TcxLabel
        Left = 25
        Top = 272
        Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 102
      end
      object cxLabel14: TcxLabel
        Left = 45
        Top = 118
        Caption = #1070#1088'. '#1072#1076#1088#1077#1089
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 102
      end
      object cxLabel15: TcxLabel
        Left = 36
        Top = 166
        Caption = #1055#1086#1095#1090'. '#1072#1076#1088#1077#1089
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 102
      end
      object cxLabel16: TcxLabel
        Left = 26
        Top = 299
        Caption = #1043#1083'. '#1073#1091#1093#1075#1072#1083#1090#1077#1088
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 102
      end
      object cxLabel17: TcxLabel
        Left = 46
        Top = 243
        Caption = #1058#1077#1083#1077#1092#1086#1085#1099
        Transparent = True
      end
      object cxLabel8: TcxLabel
        Left = 65
        Top = 327
        Caption = #1042' '#1083#1080#1094#1077
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 102
      end
      object cxLabel9: TcxLabel
        Left = 34
        Top = 372
        Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 102
      end
      object cxLabel10: TcxLabel
        Left = 47
        Top = 440
        Caption = #1076#1083#1103' '#1089#1095#1105#1090#1072
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 102
      end
      object DEBTOR_TYPE: TcxDBImageComboBox
        Left = 653
        Top = 87
        RepositoryItem = DM.erDebtorType
        DataBinding.DataField = 'DEBTOR_TYPE'
        DataBinding.DataSource = dsContragent
        Properties.ClearKey = 46
        Properties.Items = <>
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 21
        Width = 225
      end
      object labelDEBTOR_TYPE: TcxLabel
        Left = 574
        Top = 87
        Caption = #1058#1080#1087' '#1076#1086#1083#1078#1085#1080#1082#1072
        Transparent = True
      end
      object CLIENT_TYPE: TcxDBImageComboBox
        Left = 653
        Top = 50
        RepositoryItem = DM.erClientType
        DataBinding.DataField = 'CLIENT_TYPE'
        DataBinding.DataSource = dsContragent
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <>
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 23
        Width = 225
      end
      object labelCLIENT_TYPE: TcxLabel
        Left = 583
        Top = 56
        Caption = #1058#1080#1087' '#1082#1083#1080#1077#1085#1090#1072
        Transparent = True
      end
      object labelMASTER_PID: TcxLabel
        Left = 610
        Top = 21
        Caption = #1043#1088#1091#1087#1087#1072
        Transparent = True
      end
      object MASTER_PID: TcxDBLookupComboBox
        Left = 653
        Top = 19
        DataBinding.DataField = 'MASTER_PID'
        DataBinding.DataSource = dsContragent
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsGROUPS
        Properties.OnPopup = cxDBLookupComboBox2PropertiesPopup
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 26
        Width = 333
      end
      object labelDESCRIPTION: TcxLabel
        Left = 575
        Top = 355
        Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088
        Transparent = True
      end
      object DESCRIPTION: TcxDBMemo
        Left = 653
        Top = 355
        DataBinding.DataField = 'DESCRIPTION'
        DataBinding.DataSource = dsContragent
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 28
        Height = 81
        Width = 404
      end
      object buttonMASTER_PID: TcxButton
        Left = 992
        Top = 18
        Width = 65
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 29
        OnClick = buttonMASTER_PIDClick
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 888
        Top = 50
        Caption = #1050#1083#1080#1085#1080#1085#1075
        DataBinding.DataField = 'IS_CLEANING'
        DataBinding.DataSource = dsContragent
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 30
        Transparent = True
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 953
        Top = 50
        Caption = #1043#1050
        DataBinding.DataField = 'IS_GK'
        DataBinding.DataSource = dsContragent
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 31
        Transparent = True
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 992
        Top = 50
        Caption = 'VIP'
        DataBinding.DataField = 'IS_VIP'
        DataBinding.DataSource = dsContragent
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 32
        Transparent = True
      end
      object BUSINES_DESCRIPTION: TcxDBMemo
        Left = 653
        Top = 129
        DataBinding.DataField = 'BUSINES_DESCRIPTION'
        DataBinding.DataSource = dsContragent
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 33
        Height = 81
        Width = 404
      end
      object cxLabel12: TcxLabel
        Left = 597
        Top = 129
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Transparent = True
      end
      object cxLabel13: TcxLabel
        Left = 606
        Top = 142
        Caption = #1073#1080#1079#1085#1077#1089#1072
        Transparent = True
      end
      object cxLabel18: TcxLabel
        Left = 595
        Top = 222
        Caption = #1050#1086#1085#1090#1072#1082#1090#1099
        Transparent = True
      end
      object CONTACTS: TcxDBMemo
        Left = 653
        Top = 221
        DataBinding.DataField = 'CONTACTS'
        DataBinding.DataSource = dsContragent
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 37
        Height = 60
        Width = 404
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 108
        Top = 212
        DataBinding.DataField = 'INN'
        DataBinding.DataSource = dsContragent
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 38
        Width = 151
      end
      object cxLabel32: TcxLabel
        Left = 888
        Top = 87
        Caption = #1054#1090#1089#1088#1086#1095#1082#1072' '#1087#1083#1072#1090#1077#1078#1072
        Transparent = True
      end
      object PAYMENT_DELAY_DAYS: TcxDBTextEdit
        Left = 990
        Top = 86
        DataBinding.DataField = 'PAYMENT_DELAY_DAYS'
        DataBinding.DataSource = dsContragent
        Enabled = False
        TabOrder = 40
        Width = 34
      end
      object cxLabel33: TcxLabel
        Left = 1026
        Top = 87
        Caption = #1076#1085#1077#1081
        Transparent = True
      end
      object cxLabel34: TcxLabel
        Left = 585
        Top = 291
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
        Transparent = True
      end
      object MANAGER_DESCRIPTION: TcxDBMemo
        Left = 653
        Top = 291
        DataBinding.DataField = 'MANAGER_DESCRIPTION'
        DataBinding.DataSource = dsContragent
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 43
        Height = 53
        Width = 404
      end
      object IS_INVOICE_LAST_DAY: TcxDBCheckBox
        Left = 653
        Top = 442
        Caption = #1057#1095#1077#1090' '#1074' '#1087#1086#1089#1083#1077#1076#1085#1080#1081' '#1076#1077#1085#1100
        DataBinding.DataField = 'IS_INVOICE_LAST_DAY'
        DataBinding.DataSource = dsContragent
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 44
        Transparent = True
      end
      object IS_SF_LAST_DAY: TcxDBCheckBox
        Left = 653
        Top = 459
        Caption = #1057#1060' '#1074' '#1087#1086#1089#1083#1077#1076#1085#1080#1081' '#1076#1077#1085#1100
        DataBinding.DataField = 'IS_SF_LAST_DAY'
        DataBinding.DataSource = dsContragent
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 45
        Transparent = True
      end
      object cxLabel22: TcxLabel
        Left = 898
        Top = 484
        Caption = #1056#1077#1075#1080#1086#1085
        Transparent = True
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 943
        Top = 482
        RepositoryItem = DM.erRegion
        DataBinding.DataField = 'REGION_CODE'
        DataBinding.DataSource = dsContragent
        Properties.ListColumns = <>
        TabOrder = 47
        Width = 114
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 821
        Top = 442
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1087#1086' EMAIL'
        DataBinding.DataField = 'IS_DOC_TO_EMAIL'
        DataBinding.DataSource = dsContragent
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 48
        Transparent = True
      end
      object cxLabel46: TcxLabel
        Left = 592
        Top = 484
        Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
        Transparent = True
      end
      object cxDBImageComboBox4: TcxDBImageComboBox
        Left = 653
        Top = 482
        RepositoryItem = DM.erInvoiceCategory
        Enabled = False
        Properties.Items = <>
        TabOrder = 50
        Width = 233
      end
      object NAME: TcxDBTextEdit
        Left = 108
        Top = 50
        DataBinding.DataField = 'NAME'
        DataBinding.DataSource = dsContragent
        TabOrder = 51
        Width = 453
      end
      object FULLNAME: TcxDBTextEdit
        Left = 108
        Top = 83
        DataBinding.DataField = 'FULLNAME'
        DataBinding.DataSource = dsContragent
        TabOrder = 52
        Width = 453
      end
      object UR_ADDRESS: TcxDBMemo
        Left = 108
        Top = 117
        DataBinding.DataField = 'UR_ADDRESS'
        DataBinding.DataSource = dsContragent
        TabOrder = 53
        Height = 36
        Width = 453
      end
      object POST_ADDRESS: TcxDBMemo
        Left = 108
        Top = 165
        DataBinding.DataField = 'POST_ADDRESS'
        DataBinding.DataSource = dsContragent
        TabOrder = 54
        Height = 36
        Width = 453
      end
      object cxLabel50: TcxLabel
        Left = 276
        Top = 213
        Caption = #1050#1055#1055
        Transparent = True
      end
      object KPP: TcxDBTextEdit
        Left = 305
        Top = 212
        DataBinding.DataField = 'KPP'
        DataBinding.DataSource = dsATTR
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 56
        Width = 151
      end
      object PHONES: TcxDBTextEdit
        Left = 108
        Top = 242
        DataBinding.DataField = 'PHONES'
        DataBinding.DataSource = dsContragent
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 57
        Width = 453
      end
      object DIRECTOR_NAME: TcxDBTextEdit
        Left = 108
        Top = 271
        DataBinding.DataField = 'DIRECTOR_NAME'
        DataBinding.DataSource = dsContragent
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 58
        Width = 453
      end
      object ACCOUNTANT_NAME: TcxDBTextEdit
        Left = 108
        Top = 298
        DataBinding.DataField = 'ACCOUNTANT_NAME'
        DataBinding.DataSource = dsContragent
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 59
        Width = 453
      end
      object PERSON_NAME: TcxDBTextEdit
        Left = 106
        Top = 326
        DataBinding.DataField = 'PERSON_NAME'
        DataBinding.DataSource = dsContragent
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 60
        Width = 453
      end
      object DEFAULT_CONTRACT: TcxDBTextEdit
        Left = 108
        Top = 371
        DataBinding.DataField = 'DEFAULT_CONTRACT'
        DataBinding.DataSource = dsContragent
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 61
        Width = 151
      end
      object cxLabel51: TcxLabel
        Left = 23
        Top = 26
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        FocusControl = cxDBTextEdit2
        Style.TextStyle = [fsBold]
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 102
      end
      object ORGANIZATION_ID: TcxDBLookupComboBox
        Left = 108
        Top = 22
        RepositoryItem = DM.erOrganization
        DataBinding.DataField = 'ORGANIZATION_ID'
        DataBinding.DataSource = dsContragent
        Properties.ListColumns = <>
        TabOrder = 63
        Width = 151
      end
    end
    object tabRequest: TcxTabSheet
      Caption = #1047#1072#1103#1074#1082#1072
      ImageIndex = 4
      object cxLabel35: TcxLabel
        Left = 13
        Top = 8
        Caption = #1044#1072#1090#1072' '#1079#1072#1087#1088#1086#1089#1072
        Transparent = True
      end
      object REQUEST_DT: TcxDBDateEdit
        Left = 13
        Top = 24
        DataBinding.DataField = 'REQUEST_DT'
        DataBinding.DataSource = dsRequest
        Enabled = False
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 125
      end
      object cxLabel36: TcxLabel
        Left = 13
        Top = 52
        Caption = #1048#1089#1090#1086#1095#1085#1080#1082
        Transparent = True
      end
      object SOURCE: TcxDBImageComboBox
        Left = 13
        Top = 67
        RepositoryItem = DM.erRequestSource
        DataBinding.DataField = 'SOURCE'
        DataBinding.DataSource = dsRequest
        Enabled = False
        Properties.ImmediatePost = True
        Properties.Items = <>
        TabOrder = 3
        Width = 125
      end
      object cxLabel37: TcxLabel
        Left = 408
        Top = 164
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
        Left = 407
        Top = 179
        DataBinding.DataField = 'NAME'
        DataBinding.DataSource = dsRequest
        Properties.ReadOnly = True
        TabOrder = 5
        Width = 370
      end
      object cxLabel38: TcxLabel
        Left = 154
        Top = 8
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
      object REQEST_MANAGER_ID: TcxDBLookupComboBox
        Left = 154
        Top = 23
        DataBinding.DataField = 'MANAGER_ID'
        DataBinding.DataSource = dsRequest
        Enabled = False
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
        TabOrder = 7
        Width = 129
      end
      object cxLabel39: TcxLabel
        Left = 156
        Top = 128
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
        Left = 154
        Top = 142
        DataBinding.DataField = 'PHONE'
        DataBinding.DataSource = dsRequest
        Properties.ReadOnly = True
        TabOrder = 9
        Width = 304
      end
      object cxGroupBox2: TcxGroupBox
        Left = 13
        Top = 389
        Caption = ' '#1057#1086#1089#1090#1072#1074' '#1079#1072#1103#1074#1082#1080' '
        TabOrder = 10
        Transparent = True
        Height = 185
        Width = 766
        object cxGrid4: TcxGrid
          Left = 3
          Top = 15
          Width = 760
          Height = 161
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
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
            OptionsData.Editing = False
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
              Options.Editing = False
              Width = 230
            end
            object cxGrid1DBTableView1QTY: TcxGridDBColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'QTY'
              PropertiesClassName = 'TcxTextEditProperties'
              Options.Editing = False
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
              Options.Editing = False
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
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object EMAIL: TcxDBTextEdit
        Left = 474
        Top = 142
        DataBinding.DataField = 'EMAIL'
        DataBinding.DataSource = dsRequest
        Properties.ReadOnly = True
        TabOrder = 11
        Width = 303
      end
      object cxLabel42: TcxLabel
        Left = 474
        Top = 128
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
        Left = 291
        Top = 25
        Caption = #1050#1083#1080#1085#1080#1085#1075#1086#1074#1072#1103' '#1082#1086#1084#1087#1072#1085#1080#1103
        DataBinding.DataField = 'IS_CLEANING'
        DataBinding.DataSource = dsRequest
        Properties.Alignment = taLeftJustify
        Properties.DisplayChecked = '1'
        Properties.DisplayUnchecked = '0'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ReadOnly = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 13
        Transparent = True
      end
      object cxLabel44: TcxLabel
        Left = 13
        Top = 128
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
        Top = 142
        DataBinding.DataField = 'INN'
        DataBinding.DataSource = dsRequest
        Properties.MaxLength = 20
        Properties.ReadOnly = True
        TabOrder = 15
        Width = 125
      end
      object COMPANY_NAME: TcxDBTextEdit
        Left = 13
        Top = 179
        DataBinding.DataField = 'COMPANY_NAME'
        DataBinding.DataSource = dsRequest
        Properties.ReadOnly = True
        TabOrder = 16
        Width = 370
      end
      object cxLabel45: TcxLabel
        Left = 13
        Top = 164
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
      object cxLabel47: TcxLabel
        Left = 156
        Top = 52
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103' '#1087#1086' '#1080#1089#1090#1086#1095#1085#1080#1082#1091' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
        Transparent = True
      end
      object SOURCE_DESCRIPTION: TcxDBTextEdit
        Left = 154
        Top = 67
        DataBinding.DataField = 'SOURCE_DESCRIPTION'
        DataBinding.DataSource = dsRequest
        Properties.MaxLength = 20
        Properties.ReadOnly = True
        TabOrder = 19
        Width = 623
      end
      object cxLabel48: TcxLabel
        Left = 13
        Top = 90
        Caption = #1058#1077#1082#1091#1097#1080#1081' '#1089#1090#1072#1090#1091#1089
        Transparent = True
      end
      object STATUS: TcxDBImageComboBox
        Left = 13
        Top = 105
        RepositoryItem = DM.erRequestStatus
        DataBinding.DataField = 'STATUS'
        DataBinding.DataSource = dsRequest
        Enabled = False
        Properties.Items = <>
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 21
        Width = 125
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 156
        Top = 106
        DataBinding.DataField = 'STATUS_DESCRIPTION'
        DataBinding.DataSource = dsRequest
        Properties.MaxLength = 20
        Properties.ReadOnly = True
        TabOrder = 22
        Width = 621
      end
      object cxLabel49: TcxLabel
        Left = 157
        Top = 90
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103' '#1087#1086' '#1089#1090#1072#1090#1091#1089#1091
        Transparent = True
      end
      object IS_ONE_ADDRESS: TdxDBCheckGroupBox
        Left = 13
        Top = 244
        Caption = #1054#1076#1080#1085' '#1072#1076#1088#1077#1089
        DataBinding.DataField = 'IS_ONE_ADDRESS'
        DataBinding.DataSource = dsRequest
        Enabled = False
        Properties.ImmediatePost = True
        TabOrder = 24
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
      object cxGroupBox3: TcxGroupBox
        Left = 13
        Top = 306
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1073#1080#1079#1085#1077#1089#1072
        Enabled = False
        TabOrder = 25
        Height = 78
        Width = 364
        object BUSINESS_DESCRIPTION: TcxDBMemo
          Left = 3
          Top = 15
          Align = alClient
          DataBinding.DataField = 'BUSINESS_DESCRIPTION'
          DataBinding.DataSource = dsRequest
          Properties.MaxLength = 200
          TabOrder = 0
          Height = 54
          Width = 358
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 383
        Top = 306
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
        Enabled = False
        TabOrder = 26
        Height = 78
        Width = 396
        object cxDBMemo2: TcxDBMemo
          Left = 3
          Top = 15
          Align = alClient
          DataBinding.DataField = 'DESCRIPTION'
          DataBinding.DataSource = dsRequest
          Properties.MaxLength = 200
          TabOrder = 0
          Height = 54
          Width = 390
        end
      end
      object cxLabel40: TcxLabel
        Left = 13
        Top = 201
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
        Top = 216
        DataBinding.DataField = 'PODPISANT'
        DataBinding.DataSource = dsRequest
        TabOrder = 28
        Width = 370
      end
    end
    object tabAttr: TcxTabSheet
      Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1076#1083#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      ImageIndex = 1
      object cxLabel23: TcxLabel
        Left = 536
        Top = 31
        Caption = #1048#1053#1053
        Style.TextStyle = [fsBold]
        Transparent = True
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 536
        Top = 46
        DataBinding.DataField = 'INN'
        DataBinding.DataSource = dsATTR
        Properties.MaxLength = 0
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 672
        Top = 46
        DataBinding.DataField = 'KPP'
        DataBinding.DataSource = dsATTR
        TabOrder = 2
        Width = 121
      end
      object cxLabel24: TcxLabel
        Left = 672
        Top = 31
        Caption = #1050#1055#1055
        Style.TextStyle = [fsBold]
        Transparent = True
      end
      object cxLabel25: TcxLabel
        Left = 17
        Top = 293
        Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1081' '#1089#1095#1077#1090
        Style.TextStyle = [fsBold]
        Transparent = True
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 17
        Top = 309
        DataBinding.DataField = 'RS'
        DataBinding.DataSource = dsATTR
        Properties.MaxLength = 0
        TabOrder = 5
        Width = 150
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 185
        Top = 308
        DataBinding.DataField = 'KS'
        DataBinding.DataSource = dsATTR
        Properties.MaxLength = 0
        TabOrder = 6
        Width = 150
      end
      object cxLabel26: TcxLabel
        Left = 185
        Top = 293
        Caption = #1050#1086#1088#1088#1089#1095#1077#1090
        Style.TextStyle = [fsBold]
        Transparent = True
      end
      object cxLabel27: TcxLabel
        Left = 350
        Top = 293
        Caption = #1041#1048#1050
        Style.TextStyle = [fsBold]
        Transparent = True
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 350
        Top = 308
        DataBinding.DataField = 'BIK'
        DataBinding.DataSource = dsATTR
        TabOrder = 9
        Width = 150
      end
      object cxLabel28: TcxLabel
        Left = 17
        Top = 336
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1073#1072#1085#1082#1072
        Style.TextStyle = [fsBold]
        Transparent = True
      end
      object cxDBMemo4: TcxDBMemo
        Left = 17
        Top = 351
        DataBinding.DataField = 'BANK_NAME'
        DataBinding.DataSource = dsATTR
        TabOrder = 11
        Height = 42
        Width = 481
      end
      object ATTR_NAME: TcxDBTextEdit
        AlignWithMargins = True
        Left = 15
        Top = 46
        Margins.Left = 15
        Margins.Top = 0
        Margins.Right = 15
        DataBinding.DataField = 'NAME'
        DataBinding.DataSource = dsATTR
        TabOrder = 12
        Width = 474
      end
      object cxLabel19: TcxLabel
        AlignWithMargins = True
        Left = 15
        Top = 31
        Margins.Left = 15
        Margins.Top = 0
        Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1085#1086#1077
        Style.TextStyle = [fsBold]
        Transparent = True
      end
      object cxLabel29: TcxLabel
        AlignWithMargins = True
        Left = 15
        Top = 78
        Margins.Left = 15
        Margins.Top = 0
        Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Style.TextStyle = [fsBold]
        Transparent = True
      end
      object attr_FULLNAME: TcxDBTextEdit
        AlignWithMargins = True
        Left = 15
        Top = 94
        Margins.Left = 15
        Margins.Top = 0
        Margins.Right = 15
        DataBinding.DataField = 'FULLNAME'
        DataBinding.DataSource = dsATTR
        TabOrder = 15
        Width = 1001
      end
      object cxLabel20: TcxLabel
        Left = 17
        Top = 121
        Caption = #1042' '#1083#1080#1094#1077
        Style.TextStyle = [fsBold]
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 234
        Top = 138
        DataBinding.DataField = 'DIRECTOR_NAME_RP'
        DataBinding.DataSource = dsATTR
        Properties.MaxLength = 0
        TabOrder = 17
        Width = 559
      end
      object cxDBImageComboBox2: TcxDBImageComboBox
        Left = 17
        Top = 138
        RepositoryItem = DM.erDirectorPosition
        DataBinding.DataField = 'DIRECTOR_POSITION_ID'
        DataBinding.DataSource = dsATTR
        Properties.Items = <>
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 18
        Width = 194
      end
      object cxLabel30: TcxLabel
        Left = 235
        Top = 121
        Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' ('#1074' '#1088#1086#1076#1080#1090#1077#1083#1100#1085#1086#1084' '#1087#1072#1076#1077#1078#1077')'
        Style.TextStyle = [fsBold]
        Transparent = True
      end
      object cxLabel31: TcxLabel
        Left = 822
        Top = 121
        Caption = #1044#1077#1081#1089#1090#1074#1091#1102#1097#1077#1075#1086' '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080
        Style.TextStyle = [fsBold]
        Transparent = True
      end
      object cxDBImageComboBox3: TcxDBImageComboBox
        Left = 822
        Top = 138
        RepositoryItem = DM.erDirectorOsnov
        DataBinding.DataField = 'DIRECTOR_OSNOV'
        DataBinding.DataSource = dsATTR
        Properties.Items = <>
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 21
        Width = 194
      end
      object cxGroupBox1: TcxGroupBox
        Left = 536
        Top = 308
        Caption = ' '#1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1074' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1093' '
        TabOrder = 22
        Transparent = True
        Height = 85
        Width = 480
        object IS_SERVICE_PRINT_DOG: TcxDBCheckBox
          Left = 16
          Top = 24
          Caption = #1044#1086#1075#1086#1074#1086#1088
          DataBinding.DataField = 'IS_SERVICE_PRINT_DOG'
          DataBinding.DataSource = dsContragent
          Properties.Alignment = taRightJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 0
          Transparent = True
        end
        object IS_SERVICE_PRINT_PERIOD: TcxDBCheckBox
          Left = 96
          Top = 24
          Caption = #1055#1077#1088#1080#1086#1076
          DataBinding.DataField = 'IS_SERVICE_PRINT_PERIOD'
          DataBinding.DataSource = dsContragent
          Properties.Alignment = taRightJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          Transparent = True
        end
        object IS_SERVICE_PRINT_ADDRESS: TcxDBCheckBox
          Left = 184
          Top = 24
          Caption = #1040#1076#1088#1077#1089
          DataBinding.DataField = 'IS_SERVICE_PRINT_ADDRESS'
          DataBinding.DataSource = dsContragent
          Properties.Alignment = taRightJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 2
          Transparent = True
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 17
        Top = 217
        Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089
        TabOrder = 23
        Height = 70
        Width = 489
        object ATTR_UR_ADDRESS: TcxDBMemo
          Left = 3
          Top = 15
          Align = alClient
          DataBinding.DataField = 'UR_ADDRESS'
          DataBinding.DataSource = dsATTR
          TabOrder = 0
          Height = 46
          Width = 483
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 536
        Top = 217
        Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
        TabOrder = 24
        Height = 67
        Width = 480
        object ATTR_POST_ADDRESS: TcxDBMemo
          Left = 3
          Top = 15
          Align = alClient
          DataBinding.DataField = 'POST_ADDRESS'
          DataBinding.DataSource = dsATTR
          TabOrder = 0
          Height = 43
          Width = 474
        end
      end
      object cxLabel21: TcxLabel
        Left = 824
        Top = 30
        Caption = #1056#1077#1075#1080#1086#1085
        Transparent = True
      end
      object REGION_CODE: TcxDBLookupComboBox
        Left = 822
        Top = 45
        RepositoryItem = DM.erRegion
        DataBinding.DataField = 'REGION_CODE'
        DataBinding.DataSource = dsContragent
        Properties.ListColumns = <>
        TabOrder = 26
        Width = 194
      end
      object IS_ACT_TEMPLATE_ACTIVE: TcxDBCheckBox
        Left = 20
        Top = 410
        Caption = #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1072#1103' '#1092#1086#1088#1084#1072' '#1072#1082#1090#1072
        DataBinding.DataField = 'IS_ACT_TEMPLATE_ACTIVE'
        DataBinding.DataSource = dsContragent
        Properties.Alignment = taRightJustify
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        TabOrder = 27
        Transparent = True
      end
      object btnACT_TEMPLATE: TcxButton
        Left = 208
        Top = 404
        Width = 185
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1096#1072#1073#1083#1086#1085' '#1072#1082#1090#1072
        OptionsImage.ImageIndex = 44
        OptionsImage.Images = DM.ToolImages
        TabOrder = 28
        OnClick = btnACT_TEMPLATEClick
      end
      object cxLabel41: TcxLabel
        AlignWithMargins = True
        Left = 26
        Top = 448
        Margins.Left = 15
        Margins.Top = 0
        Caption = 'EMAIL '#1076#1083#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
        Style.TextStyle = [fsBold]
        Transparent = True
      end
      object cxDBTextEdit12: TcxDBTextEdit
        AlignWithMargins = True
        Left = 18
        Top = 464
        Margins.Left = 15
        Margins.Top = 0
        Margins.Right = 15
        DataBinding.DataField = 'DOC_EMAIL'
        DataBinding.DataSource = dsATTR
        TabOrder = 30
        Width = 317
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 17
        Top = 179
        DataBinding.DataField = 'DIRECTOR_NAME'
        DataBinding.DataSource = dsATTR
        Properties.MaxLength = 0
        TabOrder = 31
        Width = 559
      end
      object cxLabel43: TcxLabel
        Left = 18
        Top = 162
        Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' ('#1074' '#1080#1084#1077#1087#1085#1080#1090#1077#1083#1100#1085#1086#1084' '#1087#1072#1076#1077#1078#1077')'
        Style.TextStyle = [fsBold]
        Transparent = True
      end
    end
    object tabDOG: TcxTabSheet
      Caption = #1044#1086#1075#1086#1074#1086#1088#1099' '#1080' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
      ImageIndex = 2
      object dockDOG: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1070
        Height = 31
        Align = dalTop
        BarManager = BM
      end
      object gridContracts: TcxGrid
        Left = 0
        Top = 31
        Width = 1070
        Height = 130
        Align = alTop
        TabOrder = 1
        object gridContractsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCONTRACTS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object gridContractsDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gridContractsDBTableView1ORGANIZATION_ID: TcxGridDBColumn
            Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
            DataBinding.FieldName = 'ORGANIZATION_ID'
            RepositoryItem = DM.erOrganization
            Width = 140
          end
          object gridContractsDBTableView1DOG_NUM: TcxGridDBColumn
            Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
            DataBinding.FieldName = 'DOG_NUM'
            Width = 95
          end
          object gridContractsDBTableView1DOG_DATE_START: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103
            DataBinding.FieldName = 'DOG_DATE_START'
            Width = 113
          end
          object gridContractsDBTableView1DOG_DATE_END: TcxGridDBColumn
            Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
            DataBinding.FieldName = 'DOG_DATE_END'
            Width = 122
          end
          object gridContractsDBTableView1ADDRESS_COUNT: TcxGridDBColumn
            Caption = #1040#1076#1088#1077#1089#1086#1074
            DataBinding.FieldName = 'ADDRESS_COUNT'
          end
        end
        object gridContractsLevel1: TcxGridLevel
          GridView = gridContractsDBTableView1
        end
      end
      object gridServices: TcxGrid
        Left = 0
        Top = 197
        Width = 1070
        Height = 390
        Align = alClient
        TabOrder = 2
        object gridServicesDBTableView1: TcxGridDBTableView
          OnDblClick = gridServicesDBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsSERVICES
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              Column = gridServicesDBTableView1QTY_MAT
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = gridServicesDBTableView1QTY_REPLACE
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = gridServicesDBTableView1PRICE_PERIOD
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          object gridServicesDBTableView1ADDRESS_NAME: TcxGridDBColumn
            Caption = #1040#1076#1088#1077#1089
            DataBinding.FieldName = 'ADDRESS_NAME'
            Width = 222
          end
          object gridServicesDBTableView1MAT_NAME: TcxGridDBColumn
            Caption = #1050#1086#1074#1105#1088
            DataBinding.FieldName = 'MAT_NAME'
            Width = 130
          end
          object gridServicesDBTableView1QTY_MAT: TcxGridDBColumn
            Caption = #1050#1086#1074#1088#1086#1074
            DataBinding.FieldName = 'QTY_MAT'
            Width = 50
          end
          object gridServicesDBTableView1QTY_REPLACE: TcxGridDBColumn
            Caption = #1047#1072#1084#1077#1085
            DataBinding.FieldName = 'QTY_REPLACE'
            Width = 50
          end
          object gridServicesDBTableView1PRICE_REPLACE: TcxGridDBColumn
            Caption = #1057#1090'-'#1090#1100' '#1079#1072#1084#1077#1085#1099
            DataBinding.FieldName = 'PRICE_REPLACE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 79
          end
          object gridServicesDBTableView1PRICE_PERIOD: TcxGridDBColumn
            Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076
            DataBinding.FieldName = 'PRICE_PERIOD'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 80
          end
          object gridServicesDBTableView1SERVICE_DESCRIPTION: TcxGridDBColumn
            Caption = #1059#1089#1083#1091#1075#1072
            DataBinding.FieldName = 'SERVICE_DESCRIPTION'
            Width = 209
          end
          object gridServicesDBTableView1DOC_DESCRIPTION: TcxGridDBColumn
            Caption = #1059#1089#1083#1091#1075#1072' ('#1076#1083#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074')'
            DataBinding.FieldName = 'DOC_DESCRIPTION'
            Width = 664
          end
        end
        object gridServicesLevel1: TcxGridLevel
          GridView = gridServicesDBTableView1
        end
      end
      object dockDogDetail: TdxBarDockControl
        Left = 0
        Top = 166
        Width = 1070
        Height = 31
        Align = dalTop
        BarManager = BM
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 161
        Width = 1070
        Height = 5
        HotZoneClassName = 'TcxSimpleStyle'
        AlignSplitter = salTop
        Control = gridContracts
      end
    end
    object tabObespech: TcxTabSheet
      Caption = #1054#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077
      ImageIndex = 3
      inline frameObespech: TframeObespech
        Left = 0
        Top = 0
        Width = 1070
        Height = 587
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1070
        ExplicitHeight = 587
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 1070
          ExplicitWidth = 1070
        end
        inherited Grid: TcxGrid
          Width = 1070
          Height = 556
          ExplicitWidth = 1070
          ExplicitHeight = 556
        end
        inherited BMobespech: TdxBarManager
          PixelsPerInch = 96
        end
      end
    end
    object tabLAW: TcxTabSheet
      Caption = #1057#1091#1076#1099
      ImageIndex = 5
      object LAW_IS_RESHENIE: TcxDBCheckBox
        Left = 32
        Top = 32
        RepositoryItem = DM.erCheckBox
        Caption = #1055#1088#1080#1085#1103#1090#1086' '#1088#1077#1096#1077#1085#1080#1077' '#1086' '#1089#1091#1076#1077
        DataBinding.DataField = 'LAW_IS_RESHENIE'
        DataBinding.DataSource = dsContragent
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        TabOrder = 0
        Transparent = True
      end
      object LAW_IS_DOC_OUT: TcxDBCheckBox
        Left = 32
        Top = 72
        RepositoryItem = DM.erCheckBox
        Caption = #1054#1090#1087#1088#1072#1074#1083#1077#1085#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1087#1086#1095#1090#1086#1081
        DataBinding.DataField = 'LAW_IS_DOC_OUT'
        DataBinding.DataSource = dsContragent
        Properties.ImmediatePost = True
        TabOrder = 1
        Transparent = True
      end
      object LAW_IS_ISK: TcxDBCheckBox
        Left = 32
        Top = 112
        RepositoryItem = DM.erCheckBox
        Caption = #1055#1086#1076#1072#1085' '#1080#1089#1082' '#1074' '#1089#1091#1076
        DataBinding.DataField = 'LAW_IS_ISK'
        DataBinding.DataSource = dsContragent
        Properties.ImmediatePost = True
        TabOrder = 2
        Transparent = True
      end
      object LAW_RESHENIE_DATE: TcxDBDateEdit
        Left = 272
        Top = 30
        DataBinding.DataField = 'LAW_RESHENIE_DATE'
        DataBinding.DataSource = dsContragent
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        TabOrder = 3
        Width = 121
      end
      object LAW_DOC_OUT_DATE: TcxDBDateEdit
        Left = 272
        Top = 70
        DataBinding.DataField = 'LAW_DOC_OUT_DATE'
        DataBinding.DataSource = dsContragent
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        TabOrder = 4
        Width = 121
      end
      object LAW_ISK_DATE: TcxDBDateEdit
        Left = 272
        Top = 110
        DataBinding.DataField = 'LAW_ISK_DATE'
        DataBinding.DataSource = dsContragent
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        TabOrder = 5
        Width = 121
      end
      object cxGroupBox7: TcxGroupBox
        Left = 432
        Top = 30
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
        TabOrder = 6
        Transparent = True
        Height = 217
        Width = 337
        object LAW_DESCRIPTION: TcxDBMemo
          Left = 3
          Top = 15
          Align = alClient
          DataBinding.DataField = 'LAW_DESCRIPTION'
          DataBinding.DataSource = dsContragent
          TabOrder = 0
          Height = 193
          Width = 331
        end
      end
    end
  end
  inherited trRead: TpFIBTransaction
    Left = 752
    Top = 304
  end
  inherited trWrite: TpFIBTransaction
    Left = 824
    Top = 312
  end
  inherited BM: TdxBarManager
    Left = 96
    Top = 516
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          Visible = True
          ItemName = 'bbSave'
        end
        item
          Visible = True
          ItemName = 'bbBalance'
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
      Caption = #1044#1086#1075#1086#1074#1086#1088#1099
      CaptionButtons = <>
      DockControl = dockDOG
      DockedDockControl = dockDOG
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1118
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDogRefresh'
        end
        item
          Visible = True
          ItemName = 'bbDogEdit'
        end
        item
          Visible = True
          ItemName = 'bbDogCreate'
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
      Caption = #1050#1086#1074#1088#1099' '#1074' '#1076#1086#1075#1086#1074#1086#1088#1077
      CaptionButtons = <>
      DockControl = dockDogDetail
      DockedDockControl = dockDogDetail
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1118
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDogDetailRefresh'
        end
        item
          Visible = True
          ItemName = 'bbEditService'
        end
        item
          Visible = True
          ItemName = 'bbServiceReport'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    inherited bbSave: TdxBarButton
      PaintStyle = psCaptionGlyph
    end
    object bbBalance: TdxBarButton
      Caption = #1040#1082#1090' '#1089#1074#1077#1088#1082#1080
      Category = 0
      Hint = #1040#1082#1090' '#1089#1074#1077#1088#1082#1080
      Visible = ivAlways
      ImageIndex = 27
      PaintStyle = psCaptionGlyph
      OnClick = bbBalanceClick
    end
    object bbDogRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
    end
    object bbDogEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Enabled = False
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
    end
    object bbDogCreate: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088
      Category = 0
      Enabled = False
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088
      Visible = ivAlways
      ImageIndex = 15
      PaintStyle = psCaptionGlyph
    end
    object bbDogDetailRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
    end
    object bbEditService: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1079#1074#1072#1085#1080#1077
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1079#1074#1072#1085#1080#1077
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbEditServiceClick
    end
    object bbServiceReport: TdxBarButton
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1102
      Category = 0
      Hint = #1054#1090#1095#1077#1090' '#1087#1086' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1102
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = bbServiceReportClick
    end
  end
  object CONTRAGENT: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute block('
      '  ID T_PID=:ID,'
      '  NAME TYPE OF column contragents.NAME=:NAME,'
      '  FULLNAME TYPE OF column contragents.FULLNAME=:FULLNAME,'
      
        '  DEBTOR_TYPE TYPE OF column contragents.DEBTOR_TYPE=:DEBTOR_TYP' +
        'E,'
      
        '  CLIENT_TYPE TYPE OF column contragents.CLIENT_TYPE=:CLIENT_TYP' +
        'E,'
      '  MASTER_PID TYPE OF column contragents.MASTER_PID=:MASTER_PID,'
      
        '  DESCRIPTION TYPE OF column contragents.DESCRIPTION=:DESCRIPTIO' +
        'N,'
      
        '  INVOICE_CONTROL TYPE OF column contragents.INVOICE_CONTROL=:IN' +
        'VOICE_CONTROL,'
      
        '  IS_CLEANING TYPE OF column contragents.IS_CLEANING=:IS_CLEANIN' +
        'G,'
      '  IS_GK TYPE OF column contragents.IS_GK=:IS_GK,'
      '  IS_VIP TYPE OF column contragents.IS_VIP=:IS_VIP,'
      
        '  BUSINES_DESCRIPTION TYPE OF column contragents.BUSINES_DESCRIP' +
        'TION=:BUSINES_DESCRIPTION,'
      '  CONTACTS TYPE OF column contragents.CONTACTS=:CONTACTS,'
      
        '  PAYMENT_DELAY_DAYS TYPE OF column contragents.PAYMENT_DELAY_DA' +
        'YS=:PAYMENT_DELAY_DAYS,'
      
        '  MANAGER_DESCRIPTION TYPE OF column contragents.MANAGER_DESCRIP' +
        'TION=:MANAGER_DESCRIPTION,'
      
        '  IS_INVOICE_LAST_DAY TYPE OF column contragents.IS_INVOICE_LAST' +
        '_DAY=:IS_INVOICE_LAST_DAY,'
      
        '  IS_SF_LAST_DAY TYPE OF column contragents.IS_SF_LAST_DAY=:IS_S' +
        'F_LAST_DAY,'
      
        '  REGION_CODE TYPE OF column contragents.REGION_CODE=:REGION_COD' +
        'E,'
      
        '  IS_ACT_TEMPLATE_ACTIVE TYPE OF column contragents.IS_ACT_TEMPL' +
        'ATE_ACTIVE=:IS_ACT_TEMPLATE_ACTIVE,'
      
        '  IS_DOC_TO_EMAIL TYPE OF column contragents.IS_DOC_TO_EMAIL=:IS' +
        '_DOC_TO_EMAIL,'
      
        '  LAW_IS_RESHENIE TYPE OF column contragents.LAW_IS_RESHENIE=:LA' +
        'W_IS_RESHENIE,'
      
        '  LAW_RESHENIE_DATE TYPE OF column contragents.LAW_RESHENIE_DATE' +
        '=:LAW_RESHENIE_DATE,'
      
        '  LAW_IS_DOC_OUT TYPE OF column contragents.LAW_IS_DOC_OUT=:LAW_' +
        'IS_DOC_OUT,'
      
        '  LAW_DOC_OUT_DATE TYPE OF column contragents.LAW_DOC_OUT_DATE=:' +
        'LAW_DOC_OUT_DATE,'
      '  LAW_IS_ISK TYPE OF column contragents.LAW_IS_ISK=:LAW_IS_ISK,'
      
        '  LAW_ISK_DATE TYPE OF column contragents.LAW_ISK_DATE=:LAW_ISK_' +
        'DATE,'
      
        '  LAW_DESCRIPTION TYPE OF column contragents.LAW_DESCRIPTION=:LA' +
        'W_DESCRIPTION,'
      
        '  REWARD_PERCENT TYPE OF column contragents.REWARD_PERCENT=:REWA' +
        'RD_PERCENT,'
      '  UR_ADDRESS TYPE OF column contragents.UR_ADDRESS=:UR_ADDRESS,'
      
        '  POST_ADDRESS TYPE OF column contragents.POST_ADDRESS=:POST_ADD' +
        'RESS,'
      '  INN TYPE OF column contragents.INN=:INN,'
      '  KPP TYPE OF column contragents_attr.KPP=:KPP,'
      '  PHONES TYPE OF column contragents.PHONES=:PHONES,'
      
        '  DIRECTOR_NAME TYPE OF column contragents.DIRECTOR_NAME=:DIRECT' +
        'OR_NAME,'
      
        '  ACCOUNTANT_NAME TYPE OF column contragents.ACCOUNTANT_NAME=:AC' +
        'COUNTANT_NAME,'
      
        '  PERSON_NAME TYPE OF column contragents.PERSON_NAME=:PERSON_NAM' +
        'E,'
      
        '  DEFAULT_CONTRACT TYPE OF column contragents.DEFAULT_CONTRACT=:' +
        'DEFAULT_CONTRACT,'
      
        '  INVOICE_DESCRIPTION TYPE OF column contragents.INVOICE_DESCRIP' +
        'TION=:INVOICE_DESCRIPTION,'
      
        '  SERVICE_STATE TYPE OF column contragents.SERVICE_STATE=:SERVIC' +
        'E_STATE,'
      '  MANAGER_ID TYPE OF column contragents.MANAGER_ID=:MANAGER_ID'
      ''
      ''
      ')'
      'as'
      'begin'
      ''
      '  UPDATE CONTRAGENTS SET'
      
        '    NAME=:NAME, FULLNAME=:FULLNAME, DEBTOR_TYPE = :DEBTOR_TYPE, ' +
        'CLIENT_TYPE = :CLIENT_TYPE, MASTER_PID = :MASTER_PID, DESCRIPTIO' +
        'N = :DESCRIPTION,'
      '      INVOICE_CONTROL = :INVOICE_CONTROL,'
      '      IS_CLEANING= :IS_CLEANING, IS_GK=:IS_GK, IS_VIP=:IS_VIP,'
      '      BUSINES_DESCRIPTION = :BUSINES_DESCRIPTION,'
      '      CONTACTS=:CONTACTS,'
      '      PAYMENT_DELAY_DAYS = :PAYMENT_DELAY_DAYS,'
      '      MANAGER_DESCRIPTION=:MANAGER_DESCRIPTION,'
      '      IS_INVOICE_LAST_DAY=:IS_INVOICE_LAST_DAY,'
      '      IS_SF_LAST_DAY=:IS_SF_LAST_DAY,'
      '      REGION_CODE = :REGION_CODE,'
      '      IS_ACT_TEMPLATE_ACTIVE = :IS_ACT_TEMPLATE_ACTIVE,'
      '      IS_DOC_TO_EMAIL = :IS_DOC_TO_EMAIL,'
      '      LAW_IS_RESHENIE=:LAW_IS_RESHENIE,'
      '      LAW_RESHENIE_DATE=:LAW_RESHENIE_DATE,'
      '      LAW_IS_DOC_OUT=:LAW_IS_DOC_OUT,'
      '      LAW_DOC_OUT_DATE=:LAW_DOC_OUT_DATE,'
      '      LAW_IS_ISK=:LAW_IS_ISK,'
      '      LAW_ISK_DATE=:LAW_ISK_DATE,'
      '      LAW_DESCRIPTION=:LAW_DESCRIPTION,'
      '      REWARD_PERCENT=:REWARD_PERCENT,'
      '      UR_ADDRESS=:UR_ADDRESS, POST_ADDRESS=:POST_ADDRESS,'
      '      INN=:INN,'
      '      PHONES=:PHONES,'
      
        '      DIRECTOR_NAME=:DIRECTOR_NAME, ACCOUNTANT_NAME=:ACCOUNTANT_' +
        'NAME, PERSON_NAME=:PERSON_NAME,'
      
        '      DEFAULT_CONTRACT=:DEFAULT_CONTRACT, INVOICE_DESCRIPTION=:I' +
        'NVOICE_DESCRIPTION,'
      '      SERVICE_STATE=:SERVICE_STATE, MANAGER_ID=:MANAGER_ID'
      '  '
      '  WHERE'
      '      ID=:ID;'
      '  UPDATE OR insert into CONTRAGENTS_ATTR'
      '    (ID,  NAME, FULLNAME, UR_ADDRESS, POST_ADDRESS, KPP)'
      '  values'
      '    (:ID, :NAME, :FULLNAME, :UR_ADDRESS, :POST_ADDRESS, :KPP);'
      ''
      ''
      'end'
      ''
      '')
    RefreshSQL.Strings = (
      'select'
      '  V.*,'
      '  C.INVOICE_CATEGORY,'
      '  coalesce(C.IS_SERVICE_PRINT_DOG, 1) IS_SERVICE_PRINT_DOG,'
      
        '  coalesce(C.IS_SERVICE_PRINT_PERIOD, 1) IS_SERVICE_PRINT_PERIOD' +
        ','
      
        '  coalesce(C.IS_SERVICE_PRINT_ADDRESS, 1) IS_SERVICE_PRINT_ADDRE' +
        'SS,'
      '  coalesce(C.PAYMENT_DELAY_DAYS, 0) PAYMENT_DELAY_DAYS,'
      '  MANAGER_DESCRIPTION,'
      '  coalesce(IS_INVOICE_LAST_DAY, 0) IS_INVOICE_LAST_DAY,'
      '  coalesce(IS_SF_LAST_DAY, 0) IS_SF_LAST_DAY,'
      '  C.REGION_CODE,'
      '  coalesce(IS_ACT_TEMPLATE_ACTIVE, 0) IS_ACT_TEMPLATE_ACTIVE,'
      '  coalesce(C.IS_DOC_TO_EMAIL, 0) IS_DOC_TO_EMAIL,'
      '  coalesce(C.LAW_IS_RESHENIE, 0) LAW_IS_RESHENIE,'
      '  C.LAW_RESHENIE_DATE,'
      '  coalesce(C.LAW_IS_DOC_OUT, 0) LAW_IS_DOC_OUT,'
      '  C.LAW_DOC_OUT_DATE,'
      '  coalesce(C.LAW_IS_ISK, 0) LAW_IS_ISK,'
      '  C.LAW_ISK_DATE,'
      '  C.LAW_DESCRIPTION'
      'from vw_contragents V, contragents C'
      'where'
      '  C.ID=V.ID'
      '  and V.id = :ID'
      ''
      '')
    SelectSQL.Strings = (
      'select'
      '  V.*,'
      '  C.INVOICE_CATEGORY,'
      '  coalesce(C.IS_SERVICE_PRINT_DOG, 1) IS_SERVICE_PRINT_DOG,'
      
        '  coalesce(C.IS_SERVICE_PRINT_PERIOD, 1) IS_SERVICE_PRINT_PERIOD' +
        ','
      
        '  coalesce(C.IS_SERVICE_PRINT_ADDRESS, 1) IS_SERVICE_PRINT_ADDRE' +
        'SS,'
      '  coalesce(C.PAYMENT_DELAY_DAYS, 0) PAYMENT_DELAY_DAYS,'
      '  MANAGER_DESCRIPTION,'
      '  coalesce(IS_INVOICE_LAST_DAY, 0) IS_INVOICE_LAST_DAY,'
      '  coalesce(IS_SF_LAST_DAY, 0) IS_SF_LAST_DAY,'
      '  C.REGION_CODE,'
      '  coalesce(IS_ACT_TEMPLATE_ACTIVE, 0) IS_ACT_TEMPLATE_ACTIVE,'
      '  coalesce(C.IS_DOC_TO_EMAIL, 0) IS_DOC_TO_EMAIL,'
      '  coalesce(C.LAW_IS_RESHENIE, 0) LAW_IS_RESHENIE,'
      '  C.LAW_RESHENIE_DATE,'
      '  coalesce(C.LAW_IS_DOC_OUT, 0) LAW_IS_DOC_OUT,'
      '  C.LAW_DOC_OUT_DATE,'
      '  coalesce(C.LAW_IS_ISK, 0) LAW_IS_ISK,'
      '  C.LAW_ISK_DATE,'
      '  C.LAW_DESCRIPTION'
      ''
      'from vw_contragents V, contragents C'
      'where'
      '  C.ID=V.ID'
      '  and V.id = coalesce(:ID, 377)')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 208
    Top = 452
  end
  object dsContragent: TDataSource
    DataSet = CONTRAGENT
    OnStateChange = dsContragentStateChange
    OnDataChange = dsContragentDataChange
    Left = 208
    Top = 500
  end
  object GROUPS: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE CONTRAGENT_GROUPS'
      'SET '
      '    NAME = :NAME'
      'WHERE'
      '    ID = :ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    CONTRAGENT_GROUPS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO CONTRAGENT_GROUPS(NAME) VALUES(:NAME) returning ID')
    RefreshSQL.Strings = (
      'select'
      '  id, name'
      'from'
      '  CONTRAGENT_GROUPS'
      'WHERE'
      '  CONTRAGENT_GROUPS.ID = :ID'
      '')
    SelectSQL.Strings = (
      'select id, name from CONTRAGENT_GROUPS order by name')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 208
    Top = 576
  end
  object dsGROUPS: TDataSource
    DataSet = GROUPS
    OnStateChange = dsContragentStateChange
    OnDataChange = dsContragentDataChange
    Left = 240
    Top = 576
  end
  object ATTR: TpFIBDataSet
    UpdateSQL.Strings = (
      'update or insert into CONTRAGENTS_ATTR'
      
        '  (ID, NAME, FULLNAME, DIRECTOR_NAME, DIRECTOR_NAME_RP, DIRECTOR' +
        '_POSITION_ID, DIRECTOR_OSNOV, UR_ADDRESS, POST_ADDRESS, INN, KPP' +
        ', RS, KS, BANK_NAME, BIK,'
      '  DOC_EMAIL)'
      'values'
      
        '  (:ID, :NAME, :FULLNAME, :DIRECTOR_NAME, :DIRECTOR_NAME_RP, :DI' +
        'RECTOR_POSITION_ID, :DIRECTOR_OSNOV, :UR_ADDRESS, :POST_ADDRESS,' +
        ' :INN, :KPP, :RS, :KS, :BANK_NAME, :BIK,'
      '  :DOC_EMAIL)'
      'returning new.ID')
    InsertSQL.Strings = (
      'update or insert into CONTRAGENTS_ATTR'
      
        '  (ID, NAME, FULLNAME, DIRECTOR_NAME, DIRECTOR_NAME_RP, DIRECTOR' +
        '_POSITION_ID, DIRECTOR_OSNOV, UR_ADDRESS, POST_ADDRESS, INN, KPP' +
        ', RS, KS, BANK_NAME, BIK,'
      '  DOC_EMAIL)'
      'values'
      
        '  (:ID, :NAME, :FULLNAME, :DIRECTOR_NAME, :DIRECTOR_NAME_RP, :DI' +
        'RECTOR_POSITION_ID, :DIRECTOR_OSNOV, :UR_ADDRESS, :POST_ADDRESS,' +
        ' :INN, :KPP, :RS, :KS, :BANK_NAME, :BIK,'
      '  :DOC_EMAIL)'
      'returning new.ID')
    RefreshSQL.Strings = (
      'select'
      '  C.ID,'
      '  coalesce(A.NAME, C.NAME) NAME,'
      '  coalesce(A.FULLNAME, C.FULLNAME) FULLNAME,'
      '  coalesce(A.DIRECTOR_NAME, C.DIRECTOR_NAME) DIRECTOR_NAME,'
      '  A.DIRECTOR_NAME_RP,'
      '  A.DIRECTOR_POSITION_ID, A.DIRECTOR_OSNOV,'
      '  coalesce(A.UR_ADDRESS, C.UR_ADDRESS) UR_ADDRESS,'
      '  coalesce(A.POST_ADDRESS, C.POST_ADDRESS) POST_ADDRESS,'
      
        '  coalesce(A.INN, C.INN) INN, A.KPP, A.RS, A.KS, A.BANK_NAME, A.' +
        'BIK,'
      '  A.DOC_EMAIL'
      'from CONTRAGENTS C'
      'left join CONTRAGENTS_ATTR A on A.ID=C.ID'
      'where'
      '  C.ID= :ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  C.ID,'
      '  coalesce(A.NAME, C.NAME) NAME,'
      '  coalesce(A.FULLNAME, C.FULLNAME) FULLNAME,'
      '  coalesce(A.DIRECTOR_NAME, C.DIRECTOR_NAME) DIRECTOR_NAME,'
      '  A.DIRECTOR_NAME_RP,'
      '  A.DIRECTOR_POSITION_ID, A.DIRECTOR_OSNOV,'
      '  coalesce(A.UR_ADDRESS, C.UR_ADDRESS) UR_ADDRESS,'
      '  coalesce(A.POST_ADDRESS, C.POST_ADDRESS) POST_ADDRESS,'
      
        '  coalesce(A.INN, C.INN) INN, A.KPP, A.RS, A.KS, A.BANK_NAME, A.' +
        'BIK,'
      '  A.DOC_EMAIL'
      'from CONTRAGENTS C'
      'left join CONTRAGENTS_ATTR A on A.ID=C.ID'
      'where'
      '  C.ID= coalesce(:ID, 377)')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 560
    Top = 552
  end
  object dsATTR: TDataSource
    DataSet = ATTR
    OnStateChange = dsContragentStateChange
    Left = 584
    Top = 552
  end
  object CONTRACTS: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  ID,'
      '  coalesce(CC.DOG_NUM, CC.CONTRACT_NUM) DOG_NUM,'
      '  coalesce(CC.DOG_DATE_START, CC.CONTRACT_DATE) DOG_DATE_START,'
      '  coalesce(ORGANIZATION_ID, 1) ORGANIZATION_ID,'
      
        '  (select count(id) from contract_address A where A.CONTRACT_ID=' +
        'cc.id) ADDRESS_COUNT'
      'from'
      '  CONTRAGENTS_CONTRACT cc'
      'where'
      '  cc.CONTRAGENT_ID=coalesce(:contragent_id, 660)')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 336
    Top = 448
  end
  object dsCONTRACTS: TDataSource
    DataSet = CONTRACTS
    Left = 336
    Top = 496
  end
  object OBESPECH: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE OBESPECH'
      'SET'
      '  CONTRAGENT_ID = :CONTRAGENT_ID,'
      '    USER_ID = :USER_ID,'
      '    AMOUNT = :AMOUNT,'
      '    STATUS = :STATUS,'
      '    LOCK_DATE = :LOCK_DATE,'
      '    UNLOCK_DATE = :UNLOCK_DATE,'
      '    DESCRIPTION = :DESCRIPTION'
      'WHERE'
      '    ID = :ID'
      '    ')
    DeleteSQL.Strings = (
      'delete from OBESPECH where ID=:OLD_ID')
    InsertSQL.Strings = (
      
        'INSERT INTO OBESPECH(ID, CONTRAGENT_ID, USER_ID, AMOUNT, STATUS,' +
        ' LOCK_DATE, UNLOCK_DATE, DESCRIPTION)'
      
        'VALUES(:ID, :CONTRAGENT_ID, :USER_ID, :AMOUNT, :STATUS, :LOCK_DA' +
        'TE, :UNLOCK_DATE, :DESCRIPTION)'
      'returning ID')
    RefreshSQL.Strings = (
      'select * from OBESPECH O where O.ID = :OLD_ID'
      '     '
      '')
    SelectSQL.Strings = (
      
        'select * from OBESPECH O where O.CONTRAGENT_ID=coalesce(:CONTRAG' +
        'ENT_ID, 660)')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 816
    Top = 592
  end
  object dsOBESPECH: TDataSource
    DataSet = OBESPECH
    Left = 864
    Top = 592
  end
  object Request: TpFIBDataSet
    UpdateSQL.Strings = (
      '')
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'select first 1'
      
        '  REQUEST_DT, ID, NAME, PHONE, SOURCE, DESCRIPTION, MANAGER_ID, ' +
        'CONTRAGENT_ID, STATUS,'
      '  EMAIL, BUSINESS_DESCRIPTION,'
      '  coalesce(IS_CLEANING, 0) IS_CLEANING,'
      '  INN, COMPANY_NAME, COMPANY_NAME_FULL,'
      '  SOURCE_DESCRIPTION, STATUS_DESCRIPTION,'
      '  coalesce(IS_ONE_ADDRESS, 0) IS_ONE_ADDRESS,'
      '  ONE_ADDRESS, PODPISANT'
      ''
      'from'
      '  REQUEST where REQUEST.CONTRAGENT_ID=:ID'
      '')
    SelectSQL.Strings = (
      'select first 1'
      
        '  REQUEST_DT, ID, NAME, PHONE, SOURCE, DESCRIPTION, MANAGER_ID, ' +
        'CONTRAGENT_ID, STATUS,'
      '  EMAIL, BUSINESS_DESCRIPTION,'
      '  coalesce(IS_CLEANING, 0) IS_CLEANING,'
      '  INN, COMPANY_NAME, COMPANY_NAME_FULL,'
      '  SOURCE_DESCRIPTION, STATUS_DESCRIPTION,'
      '  coalesce(IS_ONE_ADDRESS, 0) IS_ONE_ADDRESS,'
      '  ONE_ADDRESS,'
      '  PODPISANT'
      ''
      'from'
      '  REQUEST'
      '  where REQUEST.CONTRAGENT_ID=:PID'
      '  and REQUEST.source<>134'
      '')
    AutoUpdateOptions.UpdateTableName = 'REQUEST'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'G_REQUEST'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 744
    Top = 448
  end
  object dsRequest: TDataSource
    DataSet = Request
    Left = 784
    Top = 456
  end
  object RequestDetail: TpFIBDataSet
    UpdateSQL.Strings = (
      '')
    DeleteSQL.Strings = (
      '')
    InsertSQL.Strings = (
      '')
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
      '  REQUEST_DETAIL D where D.PID = :PID')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 888
    Top = 448
    oRefreshAfterDelete = True
    oRefreshDeletedRecord = True
  end
  object dsRequestDetail: TDataSource
    DataSet = RequestDetail
    Left = 928
    Top = 456
  end
  object QR: TpFIBQuery
    Transaction = trRead
    Database = DM.FB
    Left = 984
    Top = 192
    qoStartTransaction = True
  end
  object FR: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43157.619306666670000000
    ReportOptions.LastChange = 43157.619306666670000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 402
    Top = 418
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object FRDesigner: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    OnSaveReport = FRDesignerSaveReport
    Left = 442
    Top = 418
  end
  object SD: TFileSaveDialog
    DefaultExtension = '*.FR3'
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'FastReport'
        FileMask = '*.FR3'
      end>
    Options = [fdoPathMustExist]
    Left = 402
    Top = 466
  end
  object SERVICES: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'update ADDRESS_SERVICE S set S.DOC_DESCRIPTION=:DOC_DESCRIPTION ' +
        'where ID=:ID')
    RefreshSQL.Strings = (
      'select'
      '  S.ID,'
      '  CA.ID ADDRESS_ID, CA.NAME ADDRESS_NAME,'
      
        '  S.MAT_ID, S.QTY_MAT, S.QTY_REPLACE, S.PRICE_REPLACE, S.PRICE_P' +
        'ERIOD,'
      '  S.DESCRIPTION SERVICE_DESCRIPTION,'
      '  S.DOC_DESCRIPTION,'
      '  M.DESCRIPTION MAT_NAME,'
      '  M.WIDTH MAT_WIDTH, M.HEIGHT MAT_HEIGHT,'
      
        '  IIF(S.DOC_DESCRIPTION is not null and S.DOC_DESCRIPTION<>S.DES' +
        'CRIPTION, 1, 0) DOC_DESCRIPTION_CHANGED'
      'from'
      '  CONTRACT_ADDRESS CA, ADDRESS_SERVICE S, REF_MAT M'
      'where'
      '  S.ID=:ID'
      '  and S.ADDRESS_ID=CA.ID'
      '  and CA.IS_ACTIVE=1'
      '  and S.IS_ACTIVE=1'
      '  and M.ID=S.MAT_ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  S.ID,'
      '  CA.ID ADDRESS_ID, CA.NAME ADDRESS_NAME,'
      
        '  S.MAT_ID, S.QTY_MAT, S.QTY_REPLACE, S.PRICE_REPLACE, S.PRICE_P' +
        'ERIOD,'
      '  S.DESCRIPTION SERVICE_DESCRIPTION,'
      '  coalesce(S.DOC_DESCRIPTION, S.DESCRIPTION) DOC_DESCRIPTION,'
      '  M.DESCRIPTION MAT_NAME,'
      '  M.WIDTH MAT_WIDTH, M.HEIGHT MAT_HEIGHT,'
      
        '  IIF(S.DOC_DESCRIPTION is not null and S.DOC_DESCRIPTION<>S.DES' +
        'CRIPTION, 1, 0) DOC_DESCRIPTION_CHANGED  '
      'from'
      '  CONTRACT_ADDRESS CA, ADDRESS_SERVICE S, REF_MAT M'
      'where'
      '  CA.CONTRAGENT_ID=coalesce(:CONTRAGENT_ID, 4222)'
      '  and S.ADDRESS_ID=CA.ID'
      '  and CA.IS_ACTIVE=1'
      '  and S.IS_ACTIVE=1'
      '  and M.ID=S.MAT_ID'
      '')
    AfterScroll = SERVICESAfterScroll
    Transaction = DM.trRead
    Database = DM.FB
    UpdateTransaction = DM.trWrite
    Left = 562
    Top = 386
  end
  object dsSERVICES: TDataSource
    DataSet = SERVICES
    Left = 602
    Top = 386
  end
  object qTEMPLATE: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute block('
      '  ID T_PID=:ID,'
      '  BODY T_BIN=:BODY'
      ')'
      'as'
      '  declare variable REPORT_ID T_PID;'
      '  declare variable CONTRAGENT_NAME T_NAME;'
      'begin'
      
        '  select C.NAME, coalesce(C.ACT_TEMPLATE_ID, 0) from CONTRAGENTS' +
        ' C where C.ID=:ID into :CONTRAGENT_NAME, :REPORT_ID;'
      '  if (:REPORT_ID=0) then begin'
      
        '    insert into REPORTS(NAME, BODY, IS_SYSTEM) values ('#39#1064#1072#1073#1083#1086#1085' '#1072 +
        #1082#1090#1072' '#1076#1083#1103' '#39'||:CONTRAGENT_NAME||'#39' ('#39'||:ID||'#39')'#39', :BODY,  1) returnin' +
        'g ID into :REPORT_ID;'
      
        '    update CONTRAGENTS C set C.ACT_TEMPLATE=:BODY, c.ACT_TEMPLAT' +
        'E_ID=:REPORT_ID where C.ID=:ID;'
      '  end else begin'
      '    update reports R set R.BODY=:BODY where R.ID=:REPORT_ID;'
      
        '    update CONTRAGENTS C set C.ACT_TEMPLATE=:BODY where C.ID=:ID' +
        ';'
      '  end'
      'end')
    SelectSQL.Strings = (
      'select'
      '  C.ID, C.ACT_TEMPLATE_ID,'
      '  C.NAME,'
      '  C.ACT_TEMPLATE,'
      
        '  coalesce((select first 1 I.ID from INVOICE I where I.CONTRAGEN' +
        'T_ID=C.ID and I.STATUS=2 order by I.ID desc), 0) INVOICE_ID,'
      
        '  (select R.BODY from REPORTS R where R.ID=C.ACT_TEMPLATE_ID) BO' +
        'DY'
      'from CONTRAGENTS C'
      'where'
      '  C.ID=:ID'
      ''
      ''
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    Left = 338
    Top = 562
  end
end
