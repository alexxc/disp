inherited fmCooperationEdit: TfmCooperationEdit
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1079#1074#1086#1085#1082#1077' '#1080#1083#1080' '#1074#1089#1090#1088#1077#1095#1077
  ClientHeight = 368
  ClientWidth = 561
  Position = poOwnerFormCenter
  ExplicitWidth = 567
  ExplicitHeight = 396
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel [0]
    Left = 119
    Top = 13
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
    Transparent = True
  end
  object Memo: TcxMemo [1]
    Left = 22
    Top = 74
    TabOrder = 2
    Height = 145
    Width = 503
  end
  object btnOK: TcxButton [2]
    Left = 299
    Top = 317
    Width = 97
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Default = True
    TabOrder = 4
    OnClick = btnOKClick
  end
  object btnCancel: TcxButton [3]
    Left = 131
    Top = 317
    Width = 97
    Height = 25
    Cancel = True
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 3
    OnClick = btnCancelClick
  end
  object cxLabel2: TcxLabel [4]
    Left = 22
    Top = 56
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
    Transparent = True
  end
  object RecordType: TcxImageComboBox [5]
    Left = 22
    Top = 29
    EditValue = 15
    Properties.Images = DM.ToolImages
    Properties.ImmediateDropDownWhenActivated = True
    Properties.ImmediatePost = True
    Properties.ImmediateUpdateText = True
    Properties.Items = <
      item
        Description = #1047#1074#1086#1085#1086#1082
        ImageIndex = 54
        Value = 15
      end
      item
        Description = #1042#1089#1090#1088#1077#1095#1072
        ImageIndex = 55
        Value = 14
      end>
    TabOrder = 1
    Width = 91
  end
  object IS_COMPETITOR: TcxCheckBox [6]
    Left = 22
    Top = 235
    Caption = #1056#1072#1073#1086#1090#1072#1102#1090' '#1089' '#1082#1086#1085#1082#1091#1088#1077#1085#1090#1086#1084
    TabOrder = 6
    OnClick = IS_COMPETITORClick
  end
  object cxLabel3: TcxLabel [7]
    Left = 22
    Top = 262
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1086#1085#1082#1091#1088#1077#1085#1090#1072
    Transparent = True
  end
  object COMPETITOR_NAME: TcxTextEdit [8]
    Left = 22
    Top = 280
    Enabled = False
    TabOrder = 8
    Width = 503
  end
  object CooperationStatus: TcxImageComboBox [9]
    Left = 119
    Top = 29
    RepositoryItem = DM.erCooperationStatus
    Properties.Items = <>
    TabOrder = 9
    Width = 290
  end
  object cxLabel4: TcxLabel [10]
    Left = 22
    Top = 13
    Caption = #1058#1080#1087
    Transparent = True
  end
  object ControlDate: TcxDateEdit [11]
    Left = 417
    Top = 29
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 11
    Width = 108
  end
  object cxLabel5: TcxLabel [12]
    Left = 417
    Top = 13
    Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1076#1072#1090#1072
    Properties.Alignment.Horz = taLeftJustify
    Transparent = True
  end
  object QR: TpFIBQuery
    Transaction = trRead
    Database = DM.FB
    Left = 56
    Top = 88
    qoStartTransaction = True
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 96
    Top = 88
    qoStartTransaction = True
  end
end
