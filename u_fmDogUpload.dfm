inherited fmDogUpload: TfmDogUpload
  AlphaBlendValue = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
  ClientHeight = 593
  ClientWidth = 937
  OnCreate = FormCreate
  ExplicitWidth = 943
  ExplicitHeight = 621
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 937
    ExplicitWidth = 937
  end
  object Tree: TcxShellTreeView [1]
    Left = 0
    Top = 238
    Width = 937
    Height = 355
    Align = alClient
    DragDropSettings.AllowDragObjects = False
    Indent = 19
    Options.ContextMenus = False
    ParentShowHint = False
    RightClickSelect = True
    ShowHint = False
    ShowInfoTips = True
    TabOrder = 5
    OnChange = TreeChange
    ExplicitTop = 236
  end
  object Panel: TPanel [2]
    Left = 0
    Top = 31
    Width = 937
    Height = 207
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object cxLabel2: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 135
      Margins.Left = 10
      Margins.Right = 10
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
      Style.TextStyle = [fsBold]
    end
    object Description: TcxTextEdit
      AlignWithMargins = True
      Left = 5
      Top = 153
      Margins.Left = 10
      Margins.Right = 10
      Properties.MaxLength = 200
      TabOrder = 6
      Width = 643
    end
    object labelFileName: TcxLabel
      AlignWithMargins = True
      Left = 718
      Top = 42
      Margins.Left = 10
      Margins.Right = 10
      Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
      Style.BorderStyle = ebsNone
      Style.TextStyle = []
    end
    object labelPATH: TcxLabel
      AlignWithMargins = True
      Left = 718
      Top = 11
      Margins.Left = 10
      Margins.Right = 10
      Caption = #1055#1091#1090#1100
      Style.BorderStyle = ebsNone
      Style.TextStyle = []
    end
    object labelFileSize: TcxLabel
      AlignWithMargins = True
      Left = 718
      Top = 70
      Margins.Left = 10
      Margins.Right = 10
      Caption = #1056#1072#1079#1084#1077#1088
      Style.BorderStyle = ebsNone
      Style.TextStyle = []
    end
    object cxLabel3: TcxLabel
      AlignWithMargins = True
      Left = 817
      Top = 71
      Margins.Left = 10
      Margins.Right = 10
      Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Style.BorderStyle = ebsNone
      Style.TextStyle = []
    end
    object FileDate: TcxLabel
      Left = 817
      Top = 85
      Margins.Left = 10
      Margins.Right = 10
      Caption = #1044#1072#1090#1072' '#1092#1072#1081#1083#1072
      Style.BorderStyle = ebsNone
      Style.TextStyle = [fsBold]
    end
    object FileSize: TcxLabel
      AlignWithMargins = True
      Left = 718
      Top = 85
      Margins.Left = 10
      Margins.Right = 10
      Caption = #1056#1072#1079#1084#1077#1088
      Style.BorderStyle = ebsNone
      Style.TextStyle = [fsBold]
    end
    object FileName: TcxLabel
      AlignWithMargins = True
      Left = 718
      Top = 55
      Margins.Left = 10
      Margins.Right = 10
      AutoSize = False
      Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
      Style.BorderStyle = ebsNone
      Style.TextStyle = [fsBold]
      Height = 17
      Width = 173
    end
    object FilePath: TcxLabel
      AlignWithMargins = True
      Left = 718
      Top = 27
      Margins.Left = 10
      Margins.Right = 10
      AutoSize = False
      Caption = #1055#1091#1090#1100
      Style.BorderStyle = ebsNone
      Style.TextStyle = [fsBold]
      Height = 17
      Width = 210
    end
    object cxLabel1: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 13
      Margins.Left = 10
      Margins.Right = 10
      Caption = #1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
      Style.TextStyle = [fsBold]
    end
    object cxLabel4: TcxLabel
      AlignWithMargins = True
      Left = 5
      Top = 53
      Margins.Left = 10
      Margins.Right = 10
      Caption = #1057#1088#1086#1082' '#1076#1077#1081#1089#1090#1074#1080#1103
      Style.TextStyle = [fsBold]
    end
    object NOMER_DOG: TcxTextEdit
      Left = 5
      Top = 28
      Properties.MaxLength = 20
      TabOrder = 1
      Width = 180
    end
    object DATE_START: TcxDateEdit
      Left = 5
      Top = 68
      TabOrder = 4
      Width = 82
    end
    object DATE_END: TcxDateEdit
      Left = 103
      Top = 68
      TabOrder = 5
      Width = 82
    end
    object cxLabel5: TcxLabel
      AlignWithMargins = True
      Left = 88
      Top = 69
      Margins.Left = 10
      Margins.Right = 10
      Caption = '--'
      Style.TextStyle = [fsBold]
    end
    object cxLabel6: TcxLabel
      AlignWithMargins = True
      Left = 291
      Top = 12
      Margins.Left = 10
      Margins.Right = 10
      Caption = #1058#1080#1087
      Style.TextStyle = [fsBold]
    end
    object TYPE_DOG: TcxImageComboBox
      Left = 293
      Top = 28
      RepositoryItem = DM.cbDOG_TYPE
      EditValue = '0'
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <
        item
          Description = #1054#1073#1099#1095#1085#1099#1081
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #1055#1083#1086#1097#1072#1076#1082#1072
          Value = 1
        end
        item
          Description = #1043#1086#1089#1082#1086#1085#1090#1088#1072#1082#1090
          Value = 2
        end
        item
          Description = #1060#1086#1088#1084#1072' '#1082#1083#1080#1077#1085#1090#1072
          Value = 3
        end>
      TabOrder = 2
      Width = 168
    end
    object IS_ACCEPTED: TcxCheckBox
      Left = 5
      Top = 180
      Caption = 
        #1053#1072#1089#1090#1086#1103#1097#1080#1084' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1072#1102', '#1095#1090#1086' '#1086#1088#1080#1075#1080#1085#1072#1083' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1085#1072#1093#1086#1076#1080#1090#1089#1103' '#1074' '#1043#1050' '#1040#1088#1084#1072 +
        #1076#1072
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 7
    end
    object IS_DOP_DOG: TcxImageComboBox
      Left = 503
      Top = 27
      EditValue = False
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <
        item
          Description = #1044#1086#1075#1086#1074#1086#1088
          ImageIndex = 0
          Value = False
        end
        item
          Description = #1044#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077
          Value = True
        end>
      TabOrder = 3
      Width = 107
    end
    object cbREMIND: TcxCheckBox
      Left = 293
      Top = 68
      Caption = #1053#1072#1087#1086#1084#1085#1080#1090#1100' '#1079#1072' '
      Properties.OnChange = cbREMINDPropertiesChange
      TabOrder = 20
    end
    object DAYS: TcxSpinEdit
      Left = 386
      Top = 68
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 30.000000000000000000
      TabOrder = 21
      Value = 10
      Visible = False
      Width = 49
    end
    object labelDAYS: TcxLabel
      Left = 441
      Top = 69
      Caption = #1076#1085#1077#1081' '#1076#1086' '#1076#1072#1090#1099' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
      Visible = False
    end
    object cxLabel7: TcxLabel
      AlignWithMargins = True
      Left = 5
      Top = 93
      Margins.Left = 10
      Margins.Right = 10
      Caption = #1051#1077#1090#1085#1080#1081' '#1087#1077#1088#1080#1086#1076
      Style.TextStyle = []
    end
    object WINTER_REMIND: TcxCheckBox
      Left = 383
      Top = 110
      Caption = #1053#1072#1087#1086#1084#1085#1080#1090#1100' '#1079#1072' '
      Enabled = False
      Properties.OnChange = cbREMINDPropertiesChange
      TabOrder = 24
      OnClick = SUMMER_REMINDClick
    end
    object WINTER_DAYS: TcxSpinEdit
      Left = 476
      Top = 110
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 30.000000000000000000
      TabOrder = 25
      Value = 10
      Visible = False
      Width = 49
    end
    object labelWINTER: TcxLabel
      Left = 526
      Top = 111
      Caption = #1076#1085#1077#1081
      Visible = False
    end
    object WINTER_DATE: TcxDateEdit
      Left = 293
      Top = 110
      Properties.OnChange = SUMMER_DATEPropertiesChange
      TabOrder = 27
      Width = 82
    end
    object cxLabel9: TcxLabel
      AlignWithMargins = True
      Left = 292
      Top = 93
      Margins.Left = 10
      Margins.Right = 10
      Caption = #1047#1080#1084#1085#1080#1081' '#1087#1077#1088#1080#1086#1076
      Style.TextStyle = []
    end
    object DATE_NO_LIMIT: TcxCheckBox
      Left = 186
      Top = 68
      Caption = #1053#1077#1086#1075#1088#1072#1085#1080#1095#1077#1085
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.ValueChecked = '0'
      Properties.ValueUnchecked = '1'
      Properties.OnChange = cbREMINDPropertiesChange
      TabOrder = 29
    end
    object SUMMER_DATE: TcxDateEdit
      Left = 5
      Top = 110
      Properties.OnChange = SUMMER_DATEPropertiesChange
      TabOrder = 30
      Width = 82
    end
    object SUMMER_REMIND: TcxCheckBox
      Left = 91
      Top = 110
      Caption = #1053#1072#1087#1086#1084#1085#1080#1090#1100' '#1079#1072' '
      Enabled = False
      Properties.OnChange = cbREMINDPropertiesChange
      TabOrder = 31
      OnClick = SUMMER_REMINDClick
    end
    object SUMMER_DAYS: TcxSpinEdit
      Left = 186
      Top = 110
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 30.000000000000000000
      TabOrder = 32
      Value = 10
      Visible = False
      Width = 49
    end
    object labelSUMMER: TcxLabel
      Left = 235
      Top = 111
      Caption = #1076#1085#1077#1081
      Visible = False
    end
  end
  inherited trRead: TpFIBTransaction
    Left = 776
    Top = 200
  end
  inherited trWrite: TpFIBTransaction
    Left = 832
    Top = 200
  end
  inherited BM: TdxBarManager
    Left = 104
    Top = 328
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbSave'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
  end
  object Q: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 160
    Top = 328
    qoStartTransaction = True
  end
end
