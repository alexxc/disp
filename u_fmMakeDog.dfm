inherited fmMakeDog: TfmMakeDog
  Caption = #1043#1077#1085#1077#1088#1072#1094#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
  ClientHeight = 637
  ClientWidth = 874
  Constraints.MaxWidth = 1000
  OnCreate = FormCreate
  ExplicitWidth = 890
  ExplicitHeight = 675
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 874
    ExplicitWidth = 883
  end
  object cxLabel1: TcxLabel [1]
    Left = 19
    Top = 38
    Caption = #1062#1077#1085#1086#1074#1086#1077' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    AnchorX = 159
  end
  object cxDBTextEdit1: TcxDBTextEdit [2]
    Left = 173
    Top = 37
    DataBinding.DataField = 'OFFER_INFO'
    DataBinding.DataSource = dsOFFER
    Enabled = False
    TabOrder = 6
    Width = 300
  end
  object cxLabel3: TcxLabel [3]
    Left = 506
    Top = 38
    Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    AnchorX = 585
  end
  object cxDBTextEdit3: TcxDBTextEdit [4]
    Left = 588
    Top = 37
    DataBinding.DataField = 'ORGANIZATION_NAME'
    DataBinding.DataSource = dsOFFER
    Enabled = False
    TabOrder = 3
    Width = 277
  end
  object cxGroupBox1: TcxGroupBox [5]
    Left = 8
    Top = 64
    Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
    TabOrder = 4
    Height = 361
    Width = 857
    object labelFULLNAME: TcxLabel
      Left = 15
      Top = 17
      Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      FocusControl = FULLNAME
    end
    object FULLNAME: TcxDBTextEdit
      Left = 15
      Top = 32
      DataBinding.DataField = 'FULLNAME'
      DataBinding.DataSource = dsCONTRAGENT
      Style.Color = clWindow
      TabOrder = 1
      Width = 408
    end
    object INN: TcxDBTextEdit
      Left = 429
      Top = 32
      DataBinding.DataField = 'INN'
      DataBinding.DataSource = dsCONTRAGENT
      Style.Color = clWindow
      TabOrder = 2
      Width = 127
    end
    object labelINN: TcxLabel
      Left = 429
      Top = 17
      Caption = #1048#1053#1053
      FocusControl = INN
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 573
      Top = 32
      DataBinding.DataField = 'KPP'
      DataBinding.DataSource = dsCONTRAGENT
      TabOrder = 3
      Width = 127
    end
    object cxLabel16: TcxLabel
      Left = 573
      Top = 17
      Caption = #1050#1055#1055
    end
    object UR_ADDRESS: TcxDBMemo
      Left = 15
      Top = 213
      DataBinding.DataField = 'UR_ADDRESS'
      DataBinding.DataSource = dsCONTRAGENT
      TabOrder = 12
      Height = 38
      Width = 408
    end
    object cxLabel17: TcxLabel
      Left = 15
      Top = 197
      Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089
    end
    object POST_ADDRESS: TcxDBMemo
      Left = 429
      Top = 213
      DataBinding.DataField = 'POST_ADDRESS'
      DataBinding.DataSource = dsCONTRAGENT
      TabOrder = 13
      Height = 38
      Width = 408
    end
    object cxLabel18: TcxLabel
      Left = 429
      Top = 197
      Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 153
      Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1081' '#1089#1095#1077#1090' '#8470
    end
    object RS: TcxDBTextEdit
      Left = 15
      Top = 168
      DataBinding.DataField = 'RS'
      DataBinding.DataSource = dsCONTRAGENT
      TabOrder = 8
      Width = 150
    end
    object KS: TcxDBTextEdit
      Left = 177
      Top = 168
      DataBinding.DataField = 'KS'
      DataBinding.DataSource = dsCONTRAGENT
      TabOrder = 9
      Width = 150
    end
    object cxLabel10: TcxLabel
      Left = 178
      Top = 153
      Caption = #1050'/'#1057
    end
    object cxLabel13: TcxLabel
      Left = 340
      Top = 153
      Caption = #1041#1048#1050
    end
    object BIK: TcxDBTextEdit
      Left = 340
      Top = 168
      DataBinding.DataField = 'BIK'
      DataBinding.DataSource = dsCONTRAGENT
      TabOrder = 10
      Width = 83
    end
    object BANK_NAME: TcxDBTextEdit
      Left = 429
      Top = 168
      DataBinding.DataField = 'BANK_NAME'
      DataBinding.DataSource = dsCONTRAGENT
      TabOrder = 11
      Width = 408
    end
    object cxLabel14: TcxLabel
      Left = 429
      Top = 153
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1073#1072#1085#1082#1072
    end
    object cxLabel19: TcxLabel
      Left = 188
      Top = 59
      Caption = #1060#1048#1054' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103' '#1074' '#1088#1086#1076#1080#1090#1077#1083#1100#1085#1086#1084' '#1087#1072#1076#1077#1078#1077
    end
    object DIRECTOR_NAME: TcxDBTextEdit
      Left = 15
      Top = 116
      DataBinding.DataField = 'DIRECTOR_NAME'
      DataBinding.DataSource = dsCONTRAGENT
      TabOrder = 7
      Width = 408
    end
    object cxLabel20: TcxLabel
      Left = 15
      Top = 59
      Caption = #1042' '#1083#1080#1094#1077
    end
    object DIRECTOR_POSITION_ID: TcxDBImageComboBox
      Left = 15
      Top = 75
      RepositoryItem = DM.erDirectorPosition
      DataBinding.DataField = 'DIRECTOR_POSITION_ID'
      DataBinding.DataSource = dsCONTRAGENT
      Properties.ImmediateDropDownWhenKeyPressed = False
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <>
      TabOrder = 4
      Width = 167
    end
    object DIRECTOR_NAME_RP: TcxDBTextEdit
      Left = 188
      Top = 75
      DataBinding.DataField = 'DIRECTOR_NAME_RP'
      DataBinding.DataSource = dsCONTRAGENT
      TabOrder = 5
      Width = 368
    end
    object cxLabel7: TcxLabel
      Left = 573
      Top = 59
      Caption = #1076#1077#1081#1089#1090#1074#1091#1102#1097#1080#1081' '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080' '
    end
    object DIRECTOR_OSNOV: TcxDBImageComboBox
      Left = 573
      Top = 74
      RepositoryItem = DM.erDirectorOsnov
      DataBinding.DataField = 'DIRECTOR_OSNOV'
      DataBinding.DataSource = dsCONTRAGENT
      Properties.ImmediateDropDownWhenKeyPressed = False
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <>
      TabOrder = 6
      Width = 127
    end
    object cxLabel21: TcxLabel
      Left = 15
      Top = 100
      Caption = #1060#1048#1054' '#1076#1080#1088#1077#1082#1090#1086#1088#1072' '#1074' '#1080#1084#1077#1085#1080#1090#1077#1083#1100#1085#1086#1084' '#1087#1072#1076#1077#1078#1077
    end
    object cxLabel11: TcxLabel
      Left = 15
      Top = 255
      Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086
    end
    object CONTRACT_PERSON_NAME: TcxDBTextEdit
      Left = 15
      Top = 271
      DataBinding.DataField = 'CONTRACT_PERSON_NAME'
      DataBinding.DataSource = dsOFFER
      TabOrder = 14
      Width = 408
    end
    object cxLabel22: TcxLabel
      Left = 429
      Top = 299
      Caption = #1058#1077#1083#1077#1092#1086#1085#1099' ('#1086#1092#1080#1089#1085#1099#1081' / '#1084#1086#1073#1080#1083#1100#1085#1099#1081')'
    end
    object CONTRACT_CONTACT: TcxDBTextEdit
      Left = 429
      Top = 315
      DataBinding.DataField = 'CONTRACT_CONTACT'
      DataBinding.DataSource = dsOFFER
      TabOrder = 17
      Width = 408
    end
    object cxLabel23: TcxLabel
      Left = 429
      Top = 255
      Caption = #1051#1080#1094#1072', '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1077' '#1079#1072' '#1087#1086#1076#1087#1080#1089#1080' '#1074' '#1084#1072#1088#1096#1088#1091#1090#1085#1099#1093' '#1083#1080#1089#1090#1072#1093
    end
    object CONTRACT_ROUTECARD_PERSON_NAME: TcxDBTextEdit
      Left = 429
      Top = 271
      DataBinding.DataField = 'CONTRACT_ROUTECARD_PERSON_NAME'
      DataBinding.DataSource = dsOFFER
      TabOrder = 15
      Width = 408
    end
    object cxLabel24: TcxLabel
      Left = 16
      Top = 299
      Caption = 'EMail '#1076#1083#1103' '#1076#1086#1091#1084#1077#1085#1090#1086#1074
    end
    object DOC_EMAIL: TcxDBTextEdit
      Left = 15
      Top = 315
      DataBinding.DataField = 'DOC_EMAIL'
      DataBinding.DataSource = dsCONTRAGENT
      TabOrder = 16
      Width = 408
    end
  end
  object cxGroupBox2: TcxGroupBox [6]
    Left = 8
    Top = 431
    Caption = #1044#1086#1075#1086#1074#1086#1088
    TabOrder = 5
    Height = 121
    Width = 857
    object CONTRACT_NUM: TcxDBTextEdit
      Left = 15
      Top = 33
      DataBinding.DataField = 'CONTRACT_NUM'
      DataBinding.DataSource = dsOFFER
      TabOrder = 0
      Width = 150
    end
    object CONTRACT_DATE: TcxDBDateEdit
      Left = 178
      Top = 33
      DataBinding.DataField = 'CONTRACT_DATE'
      DataBinding.DataSource = dsOFFER
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 83
    end
    object cxLabel12: TcxLabel
      Left = 15
      Top = 18
      Caption = #1053#1086#1084#1077#1088
    end
    object cxLabel5: TcxLabel
      Left = 178
      Top = 18
      Caption = #1044#1072#1090#1072
    end
    object cxLabel4: TcxLabel
      Left = 282
      Top = 18
      Caption = #1057#1088#1086#1082' '#1076#1077#1081#1089#1090#1074#1080#1103
    end
    object CONTRACT_SROK: TcxDBImageComboBox
      Left = 282
      Top = 32
      DataBinding.DataField = 'CONTRACT_SROK'
      DataBinding.DataSource = dsOFFER
      Enabled = False
      Properties.ClearKey = 46
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <
        item
          Description = '1 '#1075#1086#1076
          ImageIndex = 0
          Value = 12
        end
        item
          Description = '6 '#1084#1077#1089#1103#1094#1077#1074
          Value = 6
        end>
      TabOrder = 2
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 418
      Top = 18
      Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
    end
    object CONTRACT_SROK_END_DATE: TcxDBDateEdit
      Left = 418
      Top = 32
      Hint = #1045#1089#1083#1080' '#1087#1091#1089#1090#1086' - '#1089' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1081' '#1087#1088#1086#1083#1086#1085#1075#1072#1094#1080#1077#1081
      DataBinding.DataField = 'CONTRACT_SROK_END_DATE'
      DataBinding.DataSource = dsOFFER
      Enabled = False
      Properties.ClearKey = 46
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 3
      Width = 121
    end
    object cxLabel9: TcxLabel
      Left = 15
      Top = 58
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
    end
    object CONTRACT_DESCRIPTION: TcxDBTextEdit
      Left = 15
      Top = 73
      DataBinding.DataField = 'CONTRACT_DESCRIPTION'
      DataBinding.DataSource = dsOFFER
      TabOrder = 4
      Width = 822
    end
  end
  inherited trRead: TpFIBTransaction
    Left = 728
    Top = 40
  end
  inherited trWrite: TpFIBTransaction
    Left = 784
    Top = 40
  end
  inherited BM: TdxBarManager
    Left = 567
    Top = 76
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
          ItemName = 'bbDoMake'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object bbDoMake: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = bbDoMakeClick
    end
  end
  object OFFER: TpFIBDataSet
    UpdateSQL.Strings = (
      'update REQUEST_OFFER O set'
      '    O.CONTRACT_NUM=:CONTRACT_NUM,'
      '    O.CONTRACT_DATE=:CONTRACT_DATE,'
      '    O.CONTRACT_SROK=:CONTRACT_SROK,'
      '    O.CONTRACT_SROK_END_DATE=:CONTRACT_SROK_END_DATE,'
      '    O.CONTRACT_DESCRIPTION=:CONTRACT_DESCRIPTION,'
      
        '    O.CONTRACT_CONTACT=:CONTRACT_CONTACT, O.CONTRACT_PERSON_NAME' +
        '=:CONTRACT_PERSON_NAME, O.CONTRACT_ROUTECARD_PERSON_NAME=:CONTRA' +
        'CT_ROUTECARD_PERSON_NAME'
      'where'
      '  ID=:ID')
    RefreshSQL.Strings = (
      'select'
      
        '  '#39#8470' '#39'||OFFER.ID|| '#39' '#1086#1090' '#39' ||(select STR from SP_DATE_FORMAT(OFFE' +
        'R.OFFER_DATE)) ||'#39', '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090' '#39'||C.NAME OFFER_INFO,'
      '  OFFER.ID,'
      '  OFFER.NDS, OFFER.BASE_PRICE, OFFER.DESCRIPTION,'
      '  ORG.SHORTNAME ORGANIZATION_NAME,'
      '  R.CONTRAGENT_ID,'
      '  C.NAME CONTRAGENT_NAME,'
      
        '  OFFER.CONTRACT_NUM, OFFER.CONTRACT_DATE, OFFER.CONTRACT_SROK, ' +
        'offer.CONTRACT_SROK_END_DATE,'
      '  OFFER.CONTRACT_DESCRIPTION,'
      '  coalesce(OFFER.CONTRACT_CONTACT, R.PHONE) CONTRACT_CONTACT,'
      '  OFFER.CONTRACT_PERSON_NAME,'
      '  OFFER.CONTRACT_ROUTECARD_PERSON_NAME'
      'from'
      
        '  REQUEST_OFFER OFFER, ORGANIZATIONS ORG, REQUEST R, CONTRAGENTS' +
        ' C'
      '  where'
      '    OFFER.ID=:ID'
      '    and ORG.ID=OFFER.ORGANIZATION_ID'
      '    and R.ID=OFFER.REQUEST_ID'
      '    and C.ID=R.CONTRAGENT_ID'
      '')
    SelectSQL.Strings = (
      'select'
      
        '  '#39#8470' '#39'||OFFER.ID|| '#39' '#1086#1090' '#39' ||(select STR from SP_DATE_FORMAT(OFFE' +
        'R.OFFER_DATE)) ||'#39', '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090' '#39'||C.NAME OFFER_INFO,'
      '  OFFER.ID,'
      '  OFFER.NDS, OFFER.BASE_PRICE, OFFER.DESCRIPTION,'
      '  ORG.SHORTNAME ORGANIZATION_NAME,'
      '  R.CONTRAGENT_ID,'
      '  C.NAME CONTRAGENT_NAME,'
      
        '  OFFER.CONTRACT_NUM, OFFER.CONTRACT_DATE, OFFER.CONTRACT_SROK, ' +
        'offer.CONTRACT_SROK_END_DATE,'
      '  OFFER.CONTRACT_DESCRIPTION,'
      '  coalesce(OFFER.CONTRACT_CONTACT, R.PHONE) CONTRACT_CONTACT,'
      '  OFFER.CONTRACT_PERSON_NAME,'
      '  OFFER.CONTRACT_ROUTECARD_PERSON_NAME'
      'from'
      
        '  REQUEST_OFFER OFFER, ORGANIZATIONS ORG, REQUEST R, CONTRAGENTS' +
        ' C'
      '  where'
      '    OFFER.ID=coalesce(:ID, 213)'
      '    and ORG.ID=OFFER.ORGANIZATION_ID'
      '    and R.ID=OFFER.REQUEST_ID'
      '    and C.ID=R.CONTRAGENT_ID'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    Left = 728
    Top = 152
  end
  object dsOFFER: TDataSource
    DataSet = OFFER
    OnDataChange = dsCONTRAGENTDataChange
    Left = 768
    Top = 160
  end
  object CONTRAGENT: TpFIBDataSet
    UpdateSQL.Strings = (
      ' update CONTRAGENTS_ATTR'
      ' set'
      '     FULLNAME = :FULLNAME,'
      '     DIRECTOR_NAME = :DIRECTOR_NAME,'
      '     DIRECTOR_NAME_RP = :DIRECTOR_NAME_RP,'
      '     DIRECTOR_POSITION_ID = :DIRECTOR_POSITION_ID,'
      '     DIRECTOR_OSNOV = :DIRECTOR_OSNOV,'
      '     UR_ADDRESS = :UR_ADDRESS,'
      '     POST_ADDRESS = :POST_ADDRESS,'
      '     INN = :INN,'
      '     KPP = :KPP,'
      '     RS = :RS,'
      '     KS = :KS,'
      '     BANK_NAME = :BANK_NAME,'
      '     BIK = :BIK,'
      '     DOC_EMAIL=:DOC_EMAIL'
      ' where (ID = :ID)')
    RefreshSQL.Strings = (
      'select'
      '  A.ID,'
      '  A.NAME, A.FULLNAME,'
      
        '  coalesce(nullif(A.DIRECTOR_NAME, '#39#39') , R.PODPISANT) DIRECTOR_N' +
        'AME,'
      '  A.DIRECTOR_NAME_RP,'
      '  A.DIRECTOR_POSITION_ID,'
      '  A.DIRECTOR_OSNOV,'
      
        '  A.UR_ADDRESS, coalesce(A.POST_ADDRESS, A.UR_ADDRESS) POST_ADDR' +
        'ESS,'
      '  A.INN, A.KPP,'
      '  A.RS, A.KS, A.BANK_NAME, A.BIK,'
      '  coalesce(A.DOC_EMAIL, R.EMAIL) DOC_EMAIL'
      'from CONTRAGENTS_ATTR A, REQUEST_OFFER O,  REQUEST R'
      'where'
      '  O.REQUEST_ID=R.ID'
      '  and A.ID=R.CONTRAGENT_ID'
      '  and O.ID=:OFFER_ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  A.ID,'
      '  A.NAME, A.FULLNAME,'
      
        '  coalesce(nullif(A.DIRECTOR_NAME, '#39#39') , R.PODPISANT) DIRECTOR_N' +
        'AME,'
      '  A.DIRECTOR_NAME_RP,'
      '  A.DIRECTOR_POSITION_ID,'
      '  A.DIRECTOR_OSNOV,'
      
        '  A.UR_ADDRESS, coalesce(A.POST_ADDRESS, A.UR_ADDRESS) POST_ADDR' +
        'ESS,'
      '  A.INN, A.KPP,'
      '  A.RS, A.KS, A.BANK_NAME, A.BIK,'
      '  coalesce(A.DOC_EMAIL, R.EMAIL) DOC_EMAIL'
      'from CONTRAGENTS_ATTR A, REQUEST_OFFER O,  REQUEST R'
      'where'
      '  O.REQUEST_ID=R.ID'
      '  and A.ID=R.CONTRAGENT_ID'
      '  and O.ID=:OFFER_ID')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    Left = 736
    Top = 227
  end
  object dsCONTRAGENT: TDataSource
    DataSet = CONTRAGENT
    OnDataChange = dsCONTRAGENTDataChange
    Left = 776
    Top = 240
  end
end
