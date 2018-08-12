object fmRequestChangeStatus: TfmRequestChangeStatus
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1090#1072#1090#1091#1089#1072' '#1079#1072#1103#1074#1082#1080
  ClientHeight = 188
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel2: TcxLabel
    Left = 9
    Top = 11
    Caption = #1058#1077#1082#1091#1097#1080#1081' '#1089#1090#1072#1090#1091#1089
  end
  object cxLabel3: TcxLabel
    Left = 196
    Top = 11
    Caption = #1053#1086#1074#1099#1081' '#1089#1090#1072#1090#1091#1089
  end
  object cxLabel4: TcxLabel
    Left = 9
    Top = 52
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
  end
  object OLD_STATUS: TcxImageComboBox
    Left = 8
    Top = 26
    RepositoryItem = DM.erRequestStatus
    Enabled = False
    Properties.Items = <>
    TabOrder = 3
    Width = 170
  end
  object NEW_STATUS: TcxImageComboBox
    Left = 196
    Top = 26
    RepositoryItem = DM.erRequestStatus
    Properties.Items = <>
    Properties.OnChange = NEW_STATUSPropertiesChange
    Properties.OnCloseUp = NEW_STATUSPropertiesCloseUp
    TabOrder = 4
    Width = 170
  end
  object btnOK: TcxButton
    Left = 210
    Top = 144
    Width = 80
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Default = True
    Enabled = False
    TabOrder = 6
    OnClick = btnOKClick
  end
  object btnClose: TcxButton
    Left = 81
    Top = 144
    Width = 80
    Height = 25
    Cancel = True
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 5
    OnClick = btnCloseClick
  end
  object DESCRIPTION: TcxMemo
    Left = 9
    Top = 75
    TabOrder = 7
    Height = 46
    Width = 357
  end
  object QR: TpFIBQuery
    Transaction = DM.trRead
    Database = DM.FB
    Left = 33
    Top = 88
    qoStartTransaction = True
  end
end
