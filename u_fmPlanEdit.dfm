inherited fmPlanEdit: TfmPlanEdit
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 317
  ClientWidth = 583
  OnCreate = FormCreate
  ExplicitWidth = 599
  ExplicitHeight = 355
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 583
    ExplicitWidth = 583
  end
  object Pages: TcxPageControl [1]
    Left = 0
    Top = 31
    Width = 583
    Height = 181
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet6
    Properties.CustomButtons.Buttons = <>
    Properties.HotTrack = True
    Properties.NavigatorPosition = npLeftBottom
    Properties.Style = 11
    Properties.TabCaptionAlignment = taLeftJustify
    OnChange = PagesChange
    ClientRectBottom = 175
    ClientRectLeft = 2
    ClientRectRight = 577
    ClientRectTop = 27
    object tab0: TcxTabSheet
      Tag = 181
      Caption = #1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077
      ImageIndex = 0
      object cxLabel8: TcxLabel
        Left = 15
        Top = 23
        Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
        Transparent = True
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 101
        Top = 22
        DataBinding.DataField = 'START_DT'
        DataBinding.DataSource = dsDATA
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DisplayFormat = 'dd.mm.yyyy hh:MM'
        Properties.EditFormat = 'dd.mm.yyyy hh:MM'
        Properties.ImmediatePost = True
        Properties.Kind = ckDateTime
        Properties.UseLeftAlignmentOnEditing = False
        Properties.View = cavModern
        TabOrder = 1
        Width = 110
      end
      object cxLabel10: TcxLabel
        Left = 46
        Top = 60
        Caption = #1047#1072#1103#1074#1082#1072
        Transparent = True
      end
      object cxDBExtLookupComboBox3: TcxDBExtLookupComboBox
        Left = 101
        Top = 59
        DataBinding.DataField = 'REQUEST_ID'
        DataBinding.DataSource = dsDATA
        Properties.ClearKey = 46
        Properties.DropDownRows = 15
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 300
        Properties.ImmediatePost = True
        Properties.View = GridViewRepositoryRequestList
        Properties.KeyFieldNames = 'ID'
        Properties.ListFieldItem = GridViewRepositoryRequestListID
        TabOrder = 3
        Width = 110
      end
      object cxLabel11: TcxLabel
        Left = 22
        Top = 95
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        Transparent = True
      end
      object cxDBExtLookupComboBox4: TcxDBExtLookupComboBox
        Left = 101
        Top = 94
        DataBinding.DataField = 'CONTRAGENT_ID'
        DataBinding.DataSource = dsDATA
        Properties.DropDownRows = 15
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 350
        Properties.ImmediatePost = True
        Properties.View = GridViewRepositoryContragents
        Properties.KeyFieldNames = 'ID'
        Properties.ListFieldItem = GridViewRepositoryContragentsNAME
        TabOrder = 5
        Width = 284
      end
    end
    object cxTabSheet2: TcxTabSheet
      Tag = 176
      Caption = #1042#1089#1090#1088#1077#1095#1072
      ImageIndex = 1
      object cxLabel12: TcxLabel
        Left = 15
        Top = 23
        Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
        Transparent = True
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 101
        Top = 22
        DataBinding.DataField = 'START_DT'
        DataBinding.DataSource = dsDATA
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DisplayFormat = 'dd.mm.yyyy hh:MM'
        Properties.EditFormat = 'dd.mm.yyyy hh:MM'
        Properties.ImmediatePost = True
        Properties.Kind = ckDateTime
        Properties.UseLeftAlignmentOnEditing = False
        Properties.View = cavModern
        TabOrder = 1
        Width = 110
      end
      object cxLabel7: TcxLabel
        Left = 46
        Top = 60
        Caption = #1047#1072#1103#1074#1082#1072
        Transparent = True
      end
      object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox
        Left = 101
        Top = 59
        DataBinding.DataField = 'REQUEST_ID'
        DataBinding.DataSource = dsDATA
        Properties.ClearKey = 46
        Properties.DropDownRows = 15
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 300
        Properties.ImmediatePost = True
        Properties.View = GridViewRepositoryRequestList
        Properties.KeyFieldNames = 'ID'
        Properties.ListFieldItem = GridViewRepositoryRequestListID
        TabOrder = 2
        Width = 110
      end
      object cxLabel9: TcxLabel
        Left = 22
        Top = 95
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        Transparent = True
      end
      object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox
        Left = 101
        Top = 94
        DataBinding.DataField = 'CONTRAGENT_ID'
        DataBinding.DataSource = dsDATA
        Properties.DropDownRows = 15
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 350
        Properties.ImmediatePost = True
        Properties.View = GridViewRepositoryContragents
        Properties.KeyFieldNames = 'ID'
        Properties.ListFieldItem = GridViewRepositoryContragentsNAME
        TabOrder = 3
        Width = 284
      end
      object END_DT_1: TcxDBDateEdit
        Left = 303
        Top = 22
        DataBinding.DataField = 'END_DT'
        DataBinding.DataSource = dsDATA
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DisplayFormat = 'dd.mm.yyyy hh:MM'
        Properties.EditFormat = 'dd.mm.yyyy hh:MM'
        Properties.ImmediatePost = True
        Properties.Kind = ckDateTime
        Properties.UseLeftAlignmentOnEditing = False
        Properties.View = cavModern
        TabOrder = 6
        Width = 110
      end
      object IS_ALL_DAY: TcxDBCheckBox
        Left = 422
        Top = 22
        RepositoryItem = DM.erCheckBox
        Caption = #1042#1077#1089#1100' '#1076#1077#1085#1100
        DataBinding.DataField = 'IS_ALL_DAY'
        DataBinding.DataSource = dsDATA
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Properties.OnChange = IS_ALL_DAY_1PropertiesChange
        TabOrder = 7
        Transparent = True
      end
      object buttonStartToEnd: TcxButton
        Left = 276
        Top = 23
        Width = 25
        Height = 21
        OptionsImage.ImageIndex = 49
        OptionsImage.Images = DM.ToolImages
        TabOrder = 8
        OnClick = buttonStartToEndClick
      end
      object cxLabel13: TcxLabel
        Left = 215
        Top = 23
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        Transparent = True
      end
    end
    object cxTabSheet3: TcxTabSheet
      Tag = 177
      Caption = #1047#1074#1086#1085#1086#1082
      ImageIndex = 2
      object cxLabel16: TcxLabel
        Left = 15
        Top = 23
        Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
        Transparent = True
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 101
        Top = 22
        DataBinding.DataField = 'START_DT'
        DataBinding.DataSource = dsDATA
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DisplayFormat = 'dd.mm.yyyy hh:MM'
        Properties.EditFormat = 'dd.mm.yyyy hh:MM'
        Properties.ImmediatePost = True
        Properties.Kind = ckDateTime
        Properties.UseLeftAlignmentOnEditing = False
        Properties.View = cavModern
        TabOrder = 1
        Width = 110
      end
      object cxLabel3: TcxLabel
        Left = 46
        Top = 60
        Caption = #1047#1072#1103#1074#1082#1072
        Transparent = True
      end
      object cxDBExtLookupComboBox5: TcxDBExtLookupComboBox
        Left = 101
        Top = 59
        DataBinding.DataField = 'REQUEST_ID'
        DataBinding.DataSource = dsDATA
        Properties.ClearKey = 46
        Properties.DropDownRows = 15
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 300
        Properties.ImmediatePost = True
        Properties.View = GridViewRepositoryRequestList
        Properties.KeyFieldNames = 'ID'
        Properties.ListFieldItem = GridViewRepositoryRequestListID
        TabOrder = 3
        Width = 110
      end
      object cxLabel4: TcxLabel
        Left = 22
        Top = 95
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        Transparent = True
      end
      object cxDBExtLookupComboBox6: TcxDBExtLookupComboBox
        Left = 101
        Top = 94
        DataBinding.DataField = 'CONTRAGENT_ID'
        DataBinding.DataSource = dsDATA
        Properties.DropDownRows = 15
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 350
        Properties.ImmediatePost = True
        Properties.View = GridViewRepositoryContragents
        Properties.KeyFieldNames = 'ID'
        Properties.ListFieldItem = GridViewRepositoryContragentsNAME
        TabOrder = 5
        Width = 284
      end
    end
    object cxTabSheet6: TcxTabSheet
      Tag = 180
      Caption = #1050#1086#1084#1084#1072#1085#1076#1080#1088#1086#1074#1082#1072
      ImageIndex = 5
      object cxLabel28: TcxLabel
        Left = 42
        Top = 25
        Caption = #1053#1072#1095#1072#1083#1086
        Transparent = True
      end
      object cxDBDateEdit6: TcxDBDateEdit
        Left = 98
        Top = 24
        DataBinding.DataField = 'START_DT'
        DataBinding.DataSource = dsDATA
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DisplayFormat = 'dd.mm.yyyy'
        Properties.EditFormat = 'dd.mm.yyyy'
        Properties.ImmediatePost = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.View = cavModern
        TabOrder = 1
        Width = 90
      end
      object cxLabel29: TcxLabel
        Left = 43
        Top = 61
        Caption = #1047#1072#1103#1074#1082#1072
        Transparent = True
      end
      object cxDBExtLookupComboBox11: TcxDBExtLookupComboBox
        Left = 99
        Top = 60
        DataBinding.DataField = 'REQUEST_ID'
        DataBinding.DataSource = dsDATA
        Properties.ClearKey = 46
        Properties.DropDownRows = 15
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 300
        Properties.ImmediatePost = True
        Properties.View = GridViewRepositoryRequestList
        Properties.KeyFieldNames = 'ID'
        Properties.ListFieldItem = GridViewRepositoryRequestListID
        TabOrder = 3
        Width = 89
      end
      object cxLabel30: TcxLabel
        Left = 19
        Top = 100
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        Transparent = True
      end
      object cxDBExtLookupComboBox12: TcxDBExtLookupComboBox
        Left = 98
        Top = 99
        DataBinding.DataField = 'CONTRAGENT_ID'
        DataBinding.DataSource = dsDATA
        Properties.DropDownRows = 15
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 350
        Properties.ImmediatePost = True
        Properties.View = GridViewRepositoryContragents
        Properties.KeyFieldNames = 'ID'
        Properties.ListFieldItem = GridViewRepositoryContragentsNAME
        TabOrder = 4
        Width = 268
      end
      object cxLabel25: TcxLabel
        Left = 207
        Top = 25
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        Transparent = True
      end
      object cxDBDateEdit9: TcxDBDateEdit
        Left = 296
        Top = 24
        DataBinding.DataField = 'END_DT'
        DataBinding.DataSource = dsDATA
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DisplayFormat = 'dd.mm.yyyy'
        Properties.EditFormat = 'dd.mm.yyyy'
        Properties.ImmediatePost = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.View = cavModern
        TabOrder = 2
        Width = 90
      end
      object cxButton1: TcxButton
        Left = 269
        Top = 23
        Width = 25
        Height = 21
        OptionsImage.ImageIndex = 49
        OptionsImage.Images = DM.ToolImages
        TabOrder = 8
        OnClick = buttonStartToEndClick
      end
    end
    object cxTabSheet4: TcxTabSheet
      Tag = 178
      Caption = #1054#1090#1087#1091#1089#1082
      ImageIndex = 3
      object cxLabel1: TcxLabel
        Left = 22
        Top = 29
        Caption = #1053#1072#1095#1072#1083#1086
        Transparent = True
      end
      object cxDBDateEdit4: TcxDBDateEdit
        Left = 71
        Top = 28
        DataBinding.DataField = 'START_DT'
        DataBinding.DataSource = dsDATA
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DisplayFormat = 'dd.mm.yyyy'
        Properties.EditFormat = 'dd.mm.yyyy'
        Properties.ImmediatePost = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.View = cavModern
        TabOrder = 1
        Width = 90
      end
      object cxLabel2: TcxLabel
        Left = 189
        Top = 29
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        Transparent = True
      end
      object cxDBDateEdit5: TcxDBDateEdit
        Left = 280
        Top = 28
        DataBinding.DataField = 'END_DT'
        DataBinding.DataSource = dsDATA
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DisplayFormat = 'dd.mm.yyyy'
        Properties.EditFormat = 'dd.mm.yyyy'
        Properties.ImmediatePost = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.View = cavModern
        TabOrder = 3
        Width = 90
      end
      object cxButton2: TcxButton
        Left = 255
        Top = 28
        Width = 25
        Height = 21
        OptionsImage.ImageIndex = 49
        OptionsImage.Images = DM.ToolImages
        TabOrder = 4
        OnClick = buttonStartToEndClick
      end
    end
    object cxTabSheet5: TcxTabSheet
      Tag = 179
      Caption = #1041#1086#1083#1100#1085#1080#1095#1085#1099#1081
      ImageIndex = 4
      object cxLabel5: TcxLabel
        Left = 22
        Top = 29
        Caption = #1053#1072#1095#1072#1083#1086
        Transparent = True
      end
      object cxDBDateEdit7: TcxDBDateEdit
        Left = 71
        Top = 28
        DataBinding.DataField = 'START_DT'
        DataBinding.DataSource = dsDATA
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DisplayFormat = 'dd.mm.yyyy'
        Properties.EditFormat = 'dd.mm.yyyy'
        Properties.ImmediatePost = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.View = cavModern
        TabOrder = 1
        Width = 90
      end
      object cxLabel6: TcxLabel
        Left = 189
        Top = 29
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        Transparent = True
      end
      object cxDBDateEdit8: TcxDBDateEdit
        Left = 280
        Top = 28
        DataBinding.DataField = 'END_DT'
        DataBinding.DataSource = dsDATA
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DisplayFormat = 'dd.mm.yyyy'
        Properties.EditFormat = 'dd.mm.yyyy'
        Properties.ImmediatePost = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.View = cavModern
        TabOrder = 3
        Width = 90
      end
      object cxButton3: TcxButton
        Left = 255
        Top = 28
        Width = 25
        Height = 21
        OptionsImage.ImageIndex = 49
        OptionsImage.Images = DM.ToolImages
        TabOrder = 4
        OnClick = buttonStartToEndClick
      end
    end
    object cxTabSheet1: TcxTabSheet
      Tag = 182
      Caption = #1053#1077#1074#1099#1093#1086#1076
      ImageIndex = 6
      object cxLabel14: TcxLabel
        Left = 30
        Top = 29
        Caption = #1044#1072#1090#1072
        Transparent = True
      end
      object cxDBDateEdit10: TcxDBDateEdit
        Left = 79
        Top = 28
        DataBinding.DataField = 'START_DT'
        DataBinding.DataSource = dsDATA
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DisplayFormat = 'dd.mm.yyyy'
        Properties.EditFormat = 'dd.mm.yyyy'
        Properties.ImmediatePost = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.View = cavModern
        TabOrder = 1
        Width = 90
      end
    end
    object tabJournal: TcxTabSheet
      Tag = -1
      Caption = #1046#1091#1088#1085#1072#1083
      ImageIndex = 7
      object gbJournal: TcxGroupBox
        Left = 0
        Top = 79
        Align = alClient
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        PanelStyle.Active = True
        TabOrder = 0
        Height = 69
        Width = 575
        object cxDBMemo1: TcxDBMemo
          AlignWithMargins = True
          Left = 6
          Top = 23
          Margins.Top = 20
          Align = alClient
          DataBinding.DataField = 'DESCRIPTION'
          DataBinding.DataSource = dsDATA
          TabOrder = 0
          Height = 40
          Width = 563
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 575
        Height = 79
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object cxLabel15: TcxLabel
          Left = 6
          Top = 9
          Caption = #1044#1072#1090#1072' '#1085#1072#1087#1086#1084#1080#1085#1072#1085#1080#1103
          Transparent = True
        end
        object cbJournal: TcxDBCheckBox
          Left = 245
          Top = 7
          Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1086
          DataBinding.DataField = 'STATUS'
          DataBinding.DataSource = dsDATA
          Properties.Alignment = taRightJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          Transparent = True
        end
        object cxLabel17: TcxLabel
          Left = 41
          Top = 32
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          Transparent = True
        end
        object cxDBLabel1: TcxDBLabel
          Left = 118
          Top = 32
          DataBinding.DataField = 'CONTRAGENT_NAME'
          DataBinding.DataSource = dsDATA
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 427
        end
        object cxLabel18: TcxLabel
          Left = 61
          Top = 55
          Caption = #1047#1072#1103#1074#1082#1072
          Transparent = True
        end
        object cxDBLabel2: TcxDBLabel
          Left = 118
          Top = 55
          DataBinding.DataField = 'REQUEST_ID'
          DataBinding.DataSource = dsDATA
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 51
          AnchorX = 169
        end
        object cxDBLabel3: TcxDBLabel
          Left = 175
          Top = 55
          DataBinding.DataField = 'REQUEST_DT'
          DataBinding.DataSource = dsDATA
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 64
        end
        object cxDBLabel4: TcxDBLabel
          Left = 245
          Top = 55
          DataBinding.DataField = 'REQUEST_NAME'
          DataBinding.DataSource = dsDATA
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 300
        end
        object JOURNAL_DATE: TcxDBDateEdit
          Left = 118
          Top = 5
          DataBinding.DataField = 'START_DT'
          DataBinding.DataSource = dsDATA
          Properties.DateButtons = [btnClear, btnNow, btnToday]
          Properties.DisplayFormat = 'dd.mm.yyyy'
          Properties.EditFormat = 'dd.mm.yyyy'
          Properties.ImmediatePost = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.View = cavModern
          TabOrder = 8
          Width = 90
        end
      end
    end
  end
  object USER_ID: TcxDBLookupComboBox [2]
    Left = 157
    Top = 4
    RepositoryItem = DM.erUsers
    DataBinding.DataField = 'USER_ID'
    DataBinding.DataSource = dsDATA
    Properties.ListColumns = <>
    TabOrder = 2
    Width = 156
  end
  object gbNotes: TcxGroupBox [3]
    Left = 0
    Top = 212
    Align = alBottom
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
    PanelStyle.Active = True
    TabOrder = 3
    Height = 105
    Width = 583
    object DESCRIPTION: TcxDBMemo
      AlignWithMargins = True
      Left = 6
      Top = 23
      Margins.Top = 20
      Align = alClient
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsDATA
      Properties.MaxLength = 500
      TabOrder = 0
      Height = 76
      Width = 571
    end
  end
  inherited trRead: TpFIBTransaction
    Left = 440
    Top = 40
  end
  inherited trWrite: TpFIBTransaction
    Left = 480
    Top = 40
  end
  inherited BM: TdxBarManager
    Left = 544
    Top = 48
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end
        item
          Visible = True
          ItemName = 'bbSave'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      Category = 0
      Hint = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      Visible = ivAlways
      Control = USER_ID
    end
    object dxBarStatic1: TdxBarStatic
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      Category = 0
      Hint = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      Style = DM.cxStyleBold
      Visible = ivAlways
    end
  end
  object dsDATA: TDataSource
    DataSet = fmUserPlan.DATA
    OnDataChange = dsDATADataChange
    OnUpdateData = dsDATAUpdateData
    Left = 432
    Top = 96
  end
  object REF_REQUEST: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  R.ID,'
      '  R.STATUS,'
      '  cast(R.REQUEST_DT as T_DATE) REQUEST_DT,'
      '  IIF(T.ID is not null, '#39'T'#39', '#39#39') IS_TENDER,'
      '  coalesce(R.COMPANY_NAME, T.CLIENT_NAME) NAME,'
      '  R.PHONE,'
      '  B.NAME STATUS_NAME'
      'from'
      '  SP_GET_REQUEST_LIST L'
      '  left join request R on R.ID=L.ID'
      '  left join REFBOOK B on B.ID=R.STATUS'
      '  left join REQUEST_TENDER T on T.ID=R.ID'
      'where'
      '  R.STATUS in (44, 45, 145, 146, 147, 148, 149, 156)'
      ''
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    Left = 417
    Top = 154
  end
  object dsREF_REQUEST: TDataSource
    DataSet = REF_REQUEST
    Left = 449
    Top = 154
  end
  object GridViewRepository: TcxGridViewRepository
    Left = 360
    Top = 90
    object GridViewRepositoryRequestList: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsREF_REQUEST
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object GridViewRepositoryRequestListID: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'ID'
        SortIndex = 0
        SortOrder = soAscending
      end
      object GridViewRepositoryRequestListREQUEST_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'REQUEST_DT'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object GridViewRepositoryRequestListNAME: TcxGridDBColumn
        Caption = #1048#1084#1103
        DataBinding.FieldName = 'NAME'
        Width = 200
      end
      object GridViewRepositoryRequestListPHONE: TcxGridDBColumn
        Caption = #1058#1077#1083#1077#1092#1086#1085
        DataBinding.FieldName = 'PHONE'
        Width = 200
      end
      object GridViewRepositoryRequestListSTATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = DM.erRequestStatus
      end
    end
    object GridViewRepositoryContragents: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCONTRAGENTS
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object GridViewRepositoryContragentsID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 80
      end
      object GridViewRepositoryContragentsNAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 316
      end
      object GridViewRepositoryContragentsINN: TcxGridDBColumn
        DataBinding.FieldName = 'INN'
        Width = 144
      end
    end
  end
  object CONTRAGENTS: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  SP.ID, C.NAME, C.INN'
      'from SP_GET_CONTRAGENTS_ID(NULL, NULL) SP'
      'left join CONTRAGENTS C on C.ID=SP.ID'
      'order by C.NAME')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    Left = 504
    Top = 152
  end
  object dsCONTRAGENTS: TDataSource
    DataSet = CONTRAGENTS
    Left = 536
    Top = 152
  end
end
