object fmAutoStatusEdit: TfmAutoStatusEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1090#1072#1090#1091#1089#1072' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
  ClientHeight = 182
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel6: TcxLabel
    Left = 8
    Top = 24
    Caption = #1058#1077#1082#1091#1097#1077#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077
  end
  object OLD_STATUS: TcxImageComboBox
    Left = 8
    Top = 43
    RepositoryItem = DM.erAutomobileStatus
    EditValue = '1'
    Enabled = False
    Properties.Images = DM.ImageListStatuses
    Properties.Items = <
      item
        Description = #1042' '#1088#1072#1073#1086#1090#1077
        ImageIndex = 8
        Value = 1
      end
      item
        Description = #1042' '#1088#1077#1084#1086#1085#1090#1077
        ImageIndex = 10
        Value = 2
      end
      item
        Description = #1059#1090#1080#1083#1100
        ImageIndex = 6
        Value = 3
      end>
    Properties.ReadOnly = True
    Style.StyleController = DM.StyleControler
    TabOrder = 1
    Width = 131
  end
  object cxLabel1: TcxLabel
    Left = 174
    Top = 24
    Caption = #1053#1086#1074#1086#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077
  end
  object NEW_STATUS: TcxImageComboBox
    Left = 174
    Top = 43
    RepositoryItem = DM.erAutomobileStatus
    EditValue = '1'
    Properties.Images = DM.ImageListStatuses
    Properties.Items = <
      item
        Description = #1042' '#1088#1072#1073#1086#1090#1077
        ImageIndex = 8
        Value = 1
      end
      item
        Description = #1059#1090#1080#1083#1100
        ImageIndex = 6
        Value = 3
      end>
    Properties.ReadOnly = False
    Properties.OnEditValueChanged = NEW_STATUSPropertiesEditValueChanged
    Style.StyleController = DM.StyleControler
    TabOrder = 2
    Width = 131
  end
  object cxLabel2: TcxLabel
    Left = 327
    Top = 24
    Caption = #1057' '#1082#1072#1082#1086#1081' '#1076#1072#1090#1099
  end
  object STATUS_DATE: TcxDateEdit
    Left = 327
    Top = 43
    Properties.DateButtons = [btnNow, btnToday]
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Properties.OnChange = NEW_STATUSPropertiesEditValueChanged
    Style.StyleController = DM.StyleControler
    TabOrder = 3
    Width = 131
  end
  object cxLabel3: TcxLabel
    Left = 8
    Top = 76
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
  end
  object STATUS_DESCRIPTION: TcxTextEdit
    Left = 8
    Top = 94
    Properties.MaxLength = 200
    Properties.OnChange = NEW_STATUSPropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = True
    Style.StyleController = DM.StyleControler
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Width = 450
  end
  object btnSave: TcxButton
    Left = 120
    Top = 143
    Width = 97
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Default = True
    TabOrder = 5
    OnClick = btnSaveClick
  end
  object btnCancel: TcxButton
    Left = 256
    Top = 143
    Width = 97
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 6
    OnClick = btnCancelClick
  end
end
