inherited fmUser: TfmUser
  Left = 769
  Top = 281
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  ClientHeight = 639
  ClientWidth = 894
  OnCreate = FormCreate
  ExplicitWidth = 900
  ExplicitHeight = 667
  PixelsPerInch = 96
  TextHeight = 13
  object Pages: TcxPageControl [0]
    Left = 0
    Top = 31
    Width = 894
    Height = 608
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 602
    ClientRectLeft = 2
    ClientRectRight = 888
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1086#1077
      ImageIndex = 0
      object cxLabel12: TcxLabel
        Left = 11
        Top = 16
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' DB'
        Transparent = True
      end
      object LOGIN_NAME: TcxDBTextEdit
        Left = 11
        Top = 31
        DataBinding.DataField = 'LOGIN_NAME'
        DataBinding.DataSource = dsDATA
        Properties.MaxLength = 20
        TabOrder = 1
        OnKeyPress = LOGIN_NAMEKeyPress
        Width = 102
      end
      object IS_ACTIVE: TcxDBCheckBox
        Left = 578
        Top = 33
        Caption = #1040#1082#1090#1080#1074
        DataBinding.DataField = 'IS_ACTIVE'
        DataBinding.DataSource = dsDATA
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 12
        Transparent = True
      end
      object cxLabel10: TcxLabel
        Left = 141
        Top = 15
        Caption = #1048#1084#1103
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 141
        Top = 33
        DataBinding.DataField = 'NAME'
        DataBinding.DataSource = dsDATA
        TabOrder = 15
        Width = 188
      end
      object cxLabel11: TcxLabel
        Left = 11
        Top = 110
        Caption = #1060#1048#1054
        Transparent = True
      end
      object FIO: TcxDBTextEdit
        Left = 11
        Top = 126
        DataBinding.DataField = 'FIO'
        DataBinding.DataSource = dsDATA
        TabOrder = 7
        Width = 188
      end
      object ROLE_NAME: TcxDBImageComboBox
        Left = 366
        Top = 30
        DataBinding.DataField = 'ROLE_NAME'
        DataBinding.DataSource = dsDATA
        Enabled = False
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Description = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
            ImageIndex = 0
            Value = 'ADMIN'
          end
          item
            Description = #1042#1083#1072#1076#1077#1083#1077#1094
            Value = 'OWNER'
          end
          item
            Description = #1044#1080#1088#1077#1082#1090#1086#1088
            Value = 'DIRECTOR'
          end
          item
            Description = #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1086#1090#1076#1077#1083#1072
            Value = 'HMANAGER'
          end
          item
            Description = #1044#1080#1089#1087#1077#1090#1095#1077#1088
            Value = 'DISPATCHER'
          end
          item
            Description = #1052#1077#1085#1077#1076#1078#1077#1088
            Value = 'MANAGER'
          end
          item
            Description = #1041#1091#1093#1075#1072#1083#1090#1077#1088
            Value = 'ACCOUNT'
          end
          item
            Description = #1053#1072#1095'. '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072
            Value = 'PROD_DIRECTOR'
          end>
        TabOrder = 2
        Width = 188
      end
      object IS_SYSADMIN: TcxDBCheckBox
        Left = 662
        Top = 33
        Caption = #1057#1080#1089#1072#1076#1084#1080#1085
        DataBinding.DataField = 'IS_SYSADMIN'
        DataBinding.DataSource = dsDATA
        Enabled = False
        Properties.Alignment = taLeftJustify
        Properties.DisplayChecked = '1'
        Properties.DisplayUnchecked = '0'
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 13
        Transparent = True
      end
      object cxLabel1: TcxLabel
        Left = 366
        Top = 15
        Caption = #1054#1089#1085#1086#1074#1085#1072#1103' '#1088#1086#1083#1100
        Transparent = True
      end
      object cxLabel4: TcxLabel
        Left = 366
        Top = 61
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        Transparent = True
      end
      object cxGroupBox1: TcxGroupBox
        Left = 11
        Top = 217
        Caption = ' '#1058#1077#1083#1077#1092#1086#1085#1099' '
        TabOrder = 10
        Transparent = True
        Height = 62
        Width = 318
        object cxLabel8: TcxLabel
          Left = 13
          Top = 14
          Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081
        end
        object cxLabel9: TcxLabel
          Left = 137
          Top = 14
          Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081
        end
        object PHONE_INTERNAL: TcxDBTextEdit
          Left = 5
          Top = 29
          DataBinding.DataField = 'PHONE_INTERNAL'
          DataBinding.DataSource = dsDATA
          Properties.MaxLength = 100
          TabOrder = 1
          Width = 64
        end
        object PHONE_MOBILE: TcxDBTextEdit
          Left = 130
          Top = 29
          DataBinding.DataField = 'PHONE_MOBILE'
          DataBinding.DataSource = dsDATA
          Properties.MaxLength = 100
          TabOrder = 3
          Width = 114
        end
      end
      object cxLabel7: TcxLabel
        Left = 11
        Top = 58
        Caption = '@Mail'
        Transparent = True
      end
      object EMAIL: TcxDBTextEdit
        Left = 11
        Top = 77
        DataBinding.DataField = 'EMAIL'
        DataBinding.DataSource = dsDATA
        Properties.MaxLength = 100
        TabOrder = 3
        Width = 188
      end
      object cxDBImageComboBox1: TcxDBImageComboBox
        Left = 206
        Top = 126
        DataBinding.DataField = 'SEX'
        DataBinding.DataSource = dsDATA
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Description = #1052
            ImageIndex = 0
            Value = 'M'
          end
          item
            Description = #1046
            Value = 'F'
          end>
        TabOrder = 8
        Width = 44
      end
      object cxLabel2: TcxLabel
        Left = 206
        Top = 110
        Caption = #1055#1086#1083
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 205
        Top = 60
        Caption = #1056#1077#1075#1080#1086#1085
        Transparent = True
      end
      object REGION_CODE: TcxDBLookupComboBox
        Left = 205
        Top = 77
        DataBinding.DataField = 'REGION_CODE'
        DataBinding.DataSource = dsDATA
        Properties.KeyFieldNames = 'CODE'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsREGIONS
        TabOrder = 4
        Width = 124
      end
      object cxLabel5: TcxLabel
        Left = 11
        Top = 158
        Caption = #1054#1073#1088#1072#1097#1077#1085#1080#1077' ('#1076#1083#1103' '#1089#1086#1086#1073#1097#1077#1085#1080#1081')'
        Transparent = True
      end
      object MESSAGE_NAME: TcxDBTextEdit
        Left = 11
        Top = 174
        DataBinding.DataField = 'MESSAGE_NAME'
        DataBinding.DataSource = dsDATA
        TabOrder = 9
        Width = 318
      end
      object EMPLOE_ID: TcxDBLookupComboBox
        Left = 366
        Top = 77
        DataBinding.DataField = 'EMPLOE_ID'
        DataBinding.DataSource = dsDATA
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsEMPLOE
        TabOrder = 5
        Width = 188
      end
      object cxLabel6: TcxLabel
        Left = 578
        Top = 61
        Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
        Transparent = True
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 578
        Top = 77
        DataBinding.DataField = 'PID'
        DataBinding.DataSource = dsDATA
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsUSERS_PID
        Properties.OnInitPopup = cxDBLookupComboBox1PropertiesInitPopup
        TabOrder = 6
        Width = 155
      end
      object cxGroupBox3: TcxGroupBox
        Left = 11
        Top = 285
        Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1076#1083#1103' '#1094#1077#1085#1086#1074#1086#1075#1086' '#1087#1088#1077#1076#1086#1083#1078#1077#1085#1080#1103
        TabOrder = 11
        Transparent = True
        Height = 157
        Width = 318
        object cxLabel18: TcxLabel
          Left = 13
          Top = 52
          Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
        end
        object OFFER_PHONE_MOBILE: TcxDBTextEdit
          Left = 7
          Top = 66
          DataBinding.DataField = 'OFFER_PHONE_MOBILE'
          DataBinding.DataSource = dsDATA
          Properties.MaxLength = 100
          TabOrder = 1
          Width = 300
        end
        object OFFER_PHONE_OFFICE: TcxDBTextEdit
          Left = 7
          Top = 108
          DataBinding.DataField = 'OFFER_PHONE_OFFICE'
          DataBinding.DataSource = dsDATA
          Properties.MaxLength = 100
          TabOrder = 2
          Width = 300
        end
        object cxLabel19: TcxLabel
          Left = 13
          Top = 92
          Caption = #1056#1072#1073#1086#1095#1080#1081' '#1090#1077#1083#1077#1092#1086#1085
        end
        object cxLabel15: TcxLabel
          Left = 13
          Top = 10
          Caption = #1048#1084#1103
          Transparent = True
        end
        object OFFER_NAME: TcxDBTextEdit
          Left = 7
          Top = 25
          DataBinding.DataField = 'OFFER_NAME'
          DataBinding.DataSource = dsDATA
          TabOrder = 5
          Width = 188
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1055#1088#1072#1074#1072
      ImageIndex = 1
      object ROLES: TcxCheckGroup
        Left = 11
        Top = 23
        Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1099' '#1088#1086#1083#1080' '#1074' '#1073#1072#1079#1077' '#1076#1072#1085#1085#1099#1093
        Properties.EditValueFormat = cvfCaptions
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
          end
          item
            Caption = #1042#1083#1072#1076#1077#1083#1077#1094
          end
          item
            Caption = #1044#1080#1088#1077#1082#1090#1086#1088
          end
          item
            Caption = #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1086#1090#1076#1077#1083#1072
          end
          item
            Caption = #1044#1080#1089#1087#1077#1090#1095#1077#1088
          end
          item
            Caption = #1041#1091#1093#1075#1072#1083#1090#1077#1088
          end
          item
            Caption = #1052#1077#1085#1077#1076#1078#1077#1088
          end
          item
            Caption = #1053#1072#1095'. '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072
          end>
        TabOrder = 0
        Height = 194
        Width = 188
      end
      object cxGroupBox2: TcxGroupBox
        Left = 211
        Top = 23
        Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1087#1088#1072#1074#1072
        TabOrder = 1
        Height = 194
        Width = 334
        object CONTRAGENT_ACCESS: TcxDBCheckBox
          Left = 16
          Top = 24
          Caption = #1055#1086#1083#1085#1099#1081' '#1076#1086#1089#1090#1091#1087' '#1082' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072#1084
          DataBinding.DataField = 'CONTRAGENT_ACCESS'
          DataBinding.DataSource = dsDATA
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 0
          Transparent = True
        end
        object REQUEST_ACCESS: TcxDBCheckBox
          Left = 16
          Top = 49
          Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1090#1072#1090#1091#1089#1072' '#1079#1072#1103#1074#1082#1080' '#1080' '#1083#1080#1085#1082#1086#1074#1082#1072' '#1089' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1086#1084
          DataBinding.DataField = 'REQUEST_ACCESS'
          DataBinding.DataSource = dsDATA
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          Transparent = True
        end
        object REQUEST_ARCHIVE: TcxDBCheckBox
          Left = 16
          Top = 74
          Caption = #1055#1077#1088#1077#1085#1086#1089' '#1079#1072#1103#1074#1086#1082' '#1074' '#1072#1088#1093#1080#1074
          DataBinding.DataField = 'REQUEST_ARCHIVE'
          DataBinding.DataSource = dsDATA
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 2
          Transparent = True
        end
      end
    end
  end
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 894
    ExplicitWidth = 894
  end
  inherited trRead: TpFIBTransaction
    DefaultDatabase = fmUsers.FB
    Left = 608
    Top = 496
  end
  inherited trWrite: TpFIBTransaction
    DefaultDatabase = fmUsers.FB
    Left = 664
    Top = 496
  end
  inherited BM: TdxBarManager
    Left = 608
    Top = 432
    DockControlHeights = (
      0
      0
      0
      0)
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
          ItemName = 'bbPassword'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    inherited bbRefresh: TdxBarButton
      OnClick = bbRefreshClick
    end
    object bbPassword: TdxBarButton
      Caption = #1057#1084#1077#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
      Category = 0
      Enabled = False
      Hint = #1057#1084#1077#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
      Visible = ivAlways
      ImageIndex = 29
      PaintStyle = psCaptionGlyph
    end
  end
  object EMPLOE: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from ('
      'select'
      '  E.ID,'
      
        '  coalesce(E.NAME_LAST, '#39#39') || '#39' '#39' || coalesce(E.NAME_FIRST, '#39#39')' +
        ' ||'#39' '#39'|| coalesce(E.NAME_SECOND, '#39#39') NAME'
      'from'
      '  REF_EMPLOE E'
      ') where NAME<>'#39#39' order by name')
    Transaction = trRead
    Database = fmUsers.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 768
    Top = 416
  end
  object dsEMPLOE: TDataSource
    DataSet = EMPLOE
    Left = 792
    Top = 432
  end
  object DATA: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute block('
      '  ID T_ID=:ID,'
      '  PID type of column users.PID=:PID,'
      '  NAME type of column users.NAME=:NAME,'
      '  FIO type of column users.FIO=:FIO,'
      '  EMAIL type of column users.EMAIL=:EMAIL,'
      '  IS_ACTIVE type of column users.IS_ACTIVE=:IS_ACTIVE,'
      '  LOGIN_NAME type of column users.LOGIN_NAME =:LOGIN_NAME,'
      '  ROLE_NAME type of column users.ROLE_NAME=:ROLE_NAME,'
      
        '  PHONE_INTERNAL type of column users.PHONE_INTERNAL=:PHONE_INTE' +
        'RNAL,'
      '  PHONE_MOBILE type of column users.PHONE_MOBILE=:PHONE_MOBILE,'
      '  EMPLOE_ID type of column users.EMPLOE_ID=:EMPLOE_ID,'
      
        '  CONTRAGENT_ACCESS type of column users.CONTRAGENT_ACCESS=:CONT' +
        'RAGENT_ACCESS,'
      
        '  REQUEST_ACCESS type of column users.REQUEST_ACCESS =:REQUEST_A' +
        'CCESS,'
      
        '  REQUEST_ARCHIVE type of column users.REQUEST_ARCHIVE =:REQUEST' +
        '_ARCHIVE,'
      '  MESSAGE_NAME type of column users.MESSAGE_NAME=:MESSAGE_NAME,'
      '  SEX type of column users.SEX =:SEX,'
      '  REGION_CODE type of column users.REGION_CODE=:REGION_CODE,'
      '  IS_SISADMIN T_BOOLEAN = :IS_SISADMIN,'
      '  OFFER_NAME type of column users.OFFER_NAME = :OFFER_NAME,'
      
        '  OFFER_PHONE_MOBILE type of column users.OFFER_PHONE_MOBILE = :' +
        'OFFER_PHONE_MOBILE,'
      
        '  OFFER_PHONE_OFFICE type of column users.OFFER_PHONE_OFFICE = :' +
        'OFFER_PHONE_OFFICE'
      ''
      ')'
      'as begin'
      ''
      '  update USERS U set'
      '    PID=:PID,'
      
        '    U.NAME=:NAME, U.FIO=:FIO, EMAIL=:EMAIL, IS_ACTIVE=:IS_ACTIVE' +
        ','
      '    LOGIN_NAME=:LOGIN_NAME, ROLE_NAME=:ROLE_NAME,'
      '    PHONE_INTERNAL=:PHONE_INTERNAL, PHONE_MOBILE=:PHONE_MOBILE,'
      '    EMPLOE_ID=:EMPLOE_ID,'
      
        '    CONTRAGENT_ACCESS=:CONTRAGENT_ACCESS, REQUEST_ACCESS=:REQUES' +
        'T_ACCESS, REQUEST_ARCHIVE=:REQUEST_ARCHIVE,'
      
        '    MESSAGE_NAME=:MESSAGE_NAME, SEX=:SEX, REGION_CODE=:REGION_CO' +
        'DE,'
      '    u.OFFER_NAME=:OFFER_NAME,'
      '    u.OFFER_PHONE_MOBILE=:OFFER_PHONE_MOBILE,'
      '    u.OFFER_PHONE_OFFICE=:OFFER_PHONE_OFFICE'
      '  where'
      '    U.ID=:ID;'
      ''
      '/*  if (IS_SISADMIN=1) then begin'
      
        '    execute statement '#39'ALTER USER '#39'||:LOGIN_NAME||'#39' GRANT ADMIN ' +
        'ROLE'#39';'
      
        '    execute statement '#39'grant RDB$ADMIN to '#39'||:LOGIN_NAME||'#39' WITH' +
        ' ADMIN OPTION granted by SYSDBA'#39';'
      '  end else begin'
      
        '    execute statement '#39'ALTER USER '#39'||:LOGIN_NAME||'#39' REVOKE ADMIN' +
        ' ROLE'#39';'
      
        '    execute statement '#39'REVOKE RDB$ADMIN from '#39'||:LOGIN_NAME||'#39' g' +
        'ranted by SYSDBA'#39';'
      '  end'
      '*/'
      ''
      'end')
    RefreshSQL.Strings = (
      'select'
      '  U.PID, U.NAME, U.FIO, U.EMAIL,'
      '  coalesce(U.IS_ACTIVE, 0) IS_ACTIVE,'
      '  U.LOGIN_NAME, U.ROLE_NAME,'
      
        '  IIF(exists(select * from RDB$USER_PRIVILEGES P where P.RDB$PRI' +
        'VILEGE='#39'M'#39' and P.RDB$USER=u.LOGIN_NAME and P.RDB$RELATION_NAME='#39 +
        'RDB$ADMIN'#39'), 1, 0) IS_SYSADMIN,'
      '  U.POSITION_NAME, U.FIO_RP, U.PHONE_INTERNAL, U.PHONE_MOBILE,'
      '  U.EMPLOE_ID,'
      '  coalesce(U.CONTRAGENT_ACCESS, 0) CONTRAGENT_ACCESS,'
      '  coalesce(U.REQUEST_ACCESS, 0) REQUEST_ACCESS,'
      '  coalesce(U.REQUEST_ARCHIVE, 0) REQUEST_ARCHIVE,'
      '  U.MESSAGE_NAME,'
      '  coalesce(U.SEX, '#39'M'#39') SEX,'
      '  coalesce(U.REGION_CODE, '#39'moscow'#39') REGION_CODE,'
      '  U.OFFER_NAME, U.OFFER_PHONE_MOBILE, U.OFFER_PHONE_OFFICE'
      'from USERS U'
      'where'
      '  U.ID=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  U.PID, U.NAME, U.FIO, U.EMAIL,'
      '  coalesce(U.IS_ACTIVE, 0) IS_ACTIVE,'
      '  U.LOGIN_NAME, U.ROLE_NAME,'
      
        '  IIF(exists(select * from RDB$USER_PRIVILEGES P where P.RDB$PRI' +
        'VILEGE='#39'M'#39' and P.RDB$USER=u.LOGIN_NAME and P.RDB$RELATION_NAME='#39 +
        'RDB$ADMIN'#39'), 1, 0) IS_SYSADMIN,'
      '  U.POSITION_NAME, U.FIO_RP, U.PHONE_INTERNAL, U.PHONE_MOBILE,'
      '  U.EMPLOE_ID,'
      '  coalesce(U.CONTRAGENT_ACCESS, 0) CONTRAGENT_ACCESS,'
      '  coalesce(U.REQUEST_ACCESS, 0) REQUEST_ACCESS,'
      '  coalesce(U.REQUEST_ARCHIVE, 0) REQUEST_ARCHIVE,'
      '  U.MESSAGE_NAME,'
      '  coalesce(U.SEX, '#39'M'#39') SEX,'
      '  coalesce(U.REGION_CODE, '#39'moscow'#39') REGION_CODE,'
      '  U.OFFER_NAME, U.OFFER_PHONE_MOBILE, U.OFFER_PHONE_OFFICE'
      'from USERS U'
      'where'
      '  U.ID=coalesce(:ID, 2)')
    Transaction = trRead
    Database = fmUsers.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 680
    Top = 416
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 696
    Top = 432
  end
  object REGIONS: TpFIBDataSet
    SelectSQL.Strings = (
      'select R.CODE, R.NAME from REF_REGIONS R')
    Transaction = trRead
    Database = fmUsers.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 768
    Top = 480
  end
  object dsREGIONS: TDataSource
    DataSet = REGIONS
    Left = 792
    Top = 496
  end
  object USERS_PID: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  U.ID, U.NAME'
      'from USERS U'
      'where'
      '  ((U.ID<>:USER_ID) or (:USER_ID is null)) and U.IS_ACTIVE=1'
      'order by U.NAME')
    Transaction = trRead
    Database = fmUsers.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 768
    Top = 352
  end
  object dsUSERS_PID: TDataSource
    DataSet = USERS_PID
    Left = 792
    Top = 368
  end
end
