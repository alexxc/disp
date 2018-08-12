inherited fmAutoDriverEdit: TfmAutoDriverEdit
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1074#1086#1076#1080#1090#1077#1083#1103
  ClientHeight = 261
  ClientWidth = 390
  ExplicitWidth = 396
  ExplicitHeight = 290
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 390
    ExplicitWidth = 390
  end
  object cxLabel1: TcxLabel [1]
    Left = 24
    Top = 40
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object DRIVER_NAME: TcxTextEdit [2]
    Left = 24
    Top = 56
    Properties.MaxLength = 300
    Properties.OnChange = DRIVER_NAMEPropertiesEditValueChanged
    Properties.OnEditValueChanged = DRIVER_NAMEPropertiesEditValueChanged
    TabOrder = 4
    Width = 321
  end
  object cxLabel2: TcxLabel [3]
    Left = 24
    Top = 135
    Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
  end
  object PRODUCTION_ID: TcxLookupComboBox [4]
    Left = 24
    Top = 153
    RepositoryItem = DM.erProduction
    Properties.ClearKey = 46
    Properties.ImmediateDropDownWhenActivated = True
    Properties.ImmediatePost = True
    Properties.ListColumns = <>
    Properties.OnChange = DRIVER_NAMEPropertiesEditValueChanged
    Properties.OnEditValueChanged = DRIVER_NAMEPropertiesEditValueChanged
    TabOrder = 7
    Width = 233
  end
  object IS_ACTIVE: TcxCheckBox [5]
    Left = 263
    Top = 153
    Caption = #1040#1082#1090#1080#1074
    Properties.ImmediatePost = True
    Properties.ValueChecked = '1'
    Properties.ValueUnchecked = '0'
    Properties.OnChange = DRIVER_NAMEPropertiesEditValueChanged
    Properties.OnEditValueChanged = DRIVER_NAMEPropertiesEditValueChanged
    State = cbsChecked
    TabOrder = 9
  end
  object cxLabel3: TcxLabel [6]
    Left = 24
    Top = 88
    Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081
  end
  object PHONE_MOBILE: TcxTextEdit [7]
    Left = 24
    Top = 104
    Properties.MaxLength = 300
    Properties.OnChange = DRIVER_NAMEPropertiesEditValueChanged
    Properties.OnEditValueChanged = DRIVER_NAMEPropertiesEditValueChanged
    TabOrder = 5
    Width = 321
  end
  object cxLabel4: TcxLabel [8]
    Left = 24
    Top = 184
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
  end
  object DESCRIPTION: TcxTextEdit [9]
    Left = 24
    Top = 200
    Properties.MaxLength = 300
    Properties.OnChange = DRIVER_NAMEPropertiesEditValueChanged
    Properties.OnEditValueChanged = DRIVER_NAMEPropertiesEditValueChanged
    TabOrder = 8
    Width = 321
  end
  inherited BM: TdxBarManager
    Left = 488
    Top = 216
    PixelsPerInch = 96
    inherited bbRefresh: TdxBarButton
      OnClick = bbRefreshClick
    end
  end
  object QR: TpFIBQuery
    Transaction = trRead
    Database = DM.FB
    Left = 128
    Top = 216
    qoStartTransaction = True
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 176
    Top = 216
    qoStartTransaction = True
  end
end
