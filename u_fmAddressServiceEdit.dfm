inherited fmAddressServiceEdit: TfmAddressServiceEdit
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  ClientHeight = 244
  ClientWidth = 557
  ExplicitWidth = 573
  ExplicitHeight = 282
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 557
  end
  object cxLabel1: TcxLabel [1]
    Left = 16
    Top = 48
    Caption = #1040#1076#1088#1077#1089' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
    Transparent = True
  end
  object cxDBMaskEdit1: TcxDBMaskEdit [2]
    Left = 16
    Top = 63
    DataBinding.DataField = 'ADDRESS_NAME'
    DataBinding.DataSource = dsSERVICES
    Enabled = False
    TabOrder = 6
    Width = 515
  end
  object cxLabel2: TcxLabel [3]
    Left = 326
    Top = 96
    Caption = #1050#1086#1074#1088#1086#1074
    Transparent = True
  end
  object QTY_MAT: TcxDBTextEdit [4]
    Left = 326
    Top = 111
    DataBinding.DataField = 'QTY_MAT'
    DataBinding.DataSource = dsSERVICES
    Enabled = False
    TabOrder = 8
    Width = 36
  end
  object cxLabel3: TcxLabel [5]
    Left = 378
    Top = 96
    Caption = #1047#1072#1084#1077#1085
    Transparent = True
  end
  object QTY_REPLACE: TcxDBTextEdit [6]
    Left = 378
    Top = 111
    DataBinding.DataField = 'QTY_REPLACE'
    DataBinding.DataSource = dsSERVICES
    Enabled = False
    TabOrder = 10
    Width = 41
  end
  object cxLabel4: TcxLabel [7]
    Left = 433
    Top = 91
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072#1084#1077#1085#1099
    Transparent = True
  end
  object PRICE_REPLACE: TcxDBTextEdit [8]
    Left = 433
    Top = 111
    DataBinding.DataField = 'PRICE_REPLACE'
    DataBinding.DataSource = dsSERVICES
    Enabled = False
    TabOrder = 12
    Width = 98
  end
  object cxLabel5: TcxLabel [9]
    Left = 16
    Top = 96
    Caption = #1050#1086#1074#1105#1088
    Transparent = True
  end
  object cxDBMaskEdit2: TcxDBMaskEdit [10]
    Left = 16
    Top = 111
    DataBinding.DataField = 'MAT_NAME'
    DataBinding.DataSource = dsSERVICES
    Enabled = False
    TabOrder = 14
    Width = 295
  end
  object cxLabel6: TcxLabel [11]
    Left = 16
    Top = 144
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
    Transparent = True
  end
  object SERVICE_DESCRIPTION: TcxDBMaskEdit [12]
    Left = 16
    Top = 159
    DataBinding.DataField = 'SERVICE_DESCRIPTION'
    DataBinding.DataSource = dsSERVICES
    Enabled = False
    TabOrder = 16
    Width = 515
  end
  object cxLabel7: TcxLabel [13]
    Left = 16
    Top = 184
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080' '#1076#1083#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
    Transparent = True
  end
  object DOC_DESCRIPTION: TcxDBMaskEdit [14]
    Left = 16
    Top = 199
    DataBinding.DataField = 'DOC_DESCRIPTION'
    DataBinding.DataSource = dsSERVICES
    TabOrder = 18
    Width = 515
  end
  inherited trRead: TpFIBTransaction
    Left = 192
  end
  inherited trWrite: TpFIBTransaction
    Left = 248
  end
  inherited BM: TdxBarManager
    Left = 216
    DockControlHeights = (
      0
      0
      0
      0)
    inherited bbRefresh: TdxBarButton
      OnClick = bbRefreshClick
    end
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
      '  M.WIDTH MAT_WIDTH, M.HEIGHT MAT_HEIGHT'
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
      '  M.WIDTH MAT_WIDTH, M.HEIGHT MAT_HEIGHT'
      'from'
      '  CONTRACT_ADDRESS CA, ADDRESS_SERVICE S, REF_MAT M'
      'where'
      '  S.ID=:ID'
      '  and S.ADDRESS_ID=CA.ID'
      '  and CA.IS_ACTIVE=1'
      '  and S.IS_ACTIVE=1'
      '  and M.ID=S.MAT_ID'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    Left = 146
    Top = 89
  end
  object dsSERVICES: TDataSource
    DataSet = SERVICES
    OnDataChange = dsSERVICESDataChange
    Left = 111
    Top = 89
  end
end
