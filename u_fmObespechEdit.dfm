inherited fmObespechEdit: TfmObespechEdit
  Caption = #1054#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077' - '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 262
  ClientWidth = 327
  ExplicitWidth = 343
  ExplicitHeight = 300
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 327
    ExplicitWidth = 327
  end
  object cxLabel1: TcxLabel [1]
    Left = 16
    Top = 32
    Caption = #1044#1072#1090#1072' '#1088#1072#1079#1084#1077#1097#1077#1085#1080#1103
  end
  object cxLabel2: TcxLabel [2]
    Left = 184
    Top = 32
    Caption = #1044#1072#1090#1072' '#1089#1085#1103#1090#1080#1103
  end
  object cxLabel3: TcxLabel [3]
    Left = 16
    Top = 80
    Caption = #1057#1091#1084#1084#1072
  end
  object cxLabel4: TcxLabel [4]
    Left = 184
    Top = 80
    Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081' '#1089#1086#1090#1088#1091#1076#1085#1080#1082
  end
  object cxLabel5: TcxLabel [5]
    Left = 16
    Top = 132
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
  end
  object LOCK_DATE: TcxDBDateEdit [6]
    Left = 16
    Top = 49
    DataBinding.DataField = 'LOCK_DATE'
    DataBinding.DataSource = dsOBESPECH
    Properties.ClearKey = 46
    Properties.ImmediateDropDownWhenActivated = True
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 10
    Width = 121
  end
  object UNLOCK_DATE: TcxDBDateEdit [7]
    Left = 184
    Top = 49
    DataBinding.DataField = 'UNLOCK_DATE'
    DataBinding.DataSource = dsOBESPECH
    Properties.ClearKey = 46
    Properties.ImmediateDropDownWhenActivated = True
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 11
    Width = 121
  end
  object AMOUNT: TcxDBCurrencyEdit [8]
    Left = 16
    Top = 97
    DataBinding.DataField = 'AMOUNT'
    DataBinding.DataSource = dsOBESPECH
    TabOrder = 12
    Width = 121
  end
  object USER_ID: TcxDBLookupComboBox [9]
    Left = 184
    Top = 97
    RepositoryItem = DM.erUsers
    DataBinding.DataField = 'USER_ID'
    DataBinding.DataSource = dsOBESPECH
    Properties.ClearKey = 46
    Properties.ImmediateDropDownWhenActivated = True
    Properties.ImmediatePost = True
    Properties.ListColumns = <>
    TabOrder = 13
    Width = 121
  end
  object DESCRIPTION: TcxDBMemo [10]
    Left = 16
    Top = 151
    DataBinding.DataField = 'DESCRIPTION'
    DataBinding.DataSource = dsOBESPECH
    TabOrder = 14
    Height = 90
    Width = 289
  end
  object cxButton1: TcxButton [11]
    Left = 136
    Top = 50
    Width = 23
    Height = 20
    Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1086#1076' '#1082' '#1076#1072#1090#1077' '#1088#1072#1079#1084#1077#1085#1080#1103
    Caption = '+1'
    TabOrder = 15
    OnClick = cxButton1Click
  end
  inherited trRead: TpFIBTransaction
    Left = 264
    Top = 192
  end
  inherited BM: TdxBarManager
    Left = 24
    Top = 192
    DockControlHeights = (
      0
      0
      0
      0)
    inherited bbRefresh: TdxBarButton
      OnClick = bbRefreshClick
    end
  end
  object dsOBESPECH: TDataSource
    DataSet = fmContragentEdit.OBESPECH
    OnStateChange = dsOBESPECHStateChange
    Left = 176
    Top = 192
  end
end
