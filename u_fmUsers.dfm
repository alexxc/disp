inherited fmUsers: TfmUsers
  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' '#1089#1080#1089#1090#1077#1084#1099
  ClientHeight = 626
  ClientWidth = 1049
  ExplicitWidth = 1065
  ExplicitHeight = 665
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1049
    ExplicitWidth = 1049
  end
  object GridUsers: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1049
    Height = 595
    Align = alClient
    TabOrder = 1
    object GridUsersDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object GridViewUsers: TcxGridTableView
      OnDblClick = GridViewUsersDblClick
      Navigator.Buttons.CustomButtons = <>
      OnFocusedRecordChanged = GridViewUsersFocusedRecordChanged
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object GridViewUsersDatabaseUserName: TcxGridColumn
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' '#1041#1044
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 107
      end
      object GridViewUser: TcxGridColumn
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        RepositoryItem = DM.erUsers
        Options.SortByDisplayText = isbtOn
        Width = 130
      end
      object GridViewROLE: TcxGridColumn
        Caption = #1056#1086#1083#1100
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 113
      end
      object GridViewUsersEmail: TcxGridColumn
        Caption = '@mail'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 103
      end
      object GridViewUsersIsActive: TcxGridColumn
        Caption = #1040#1082#1090#1080#1074
        PropertiesClassName = 'TcxCheckBoxProperties'
        MinWidth = 40
        Width = 42
      end
      object GridViewUsersIsSysAdmin: TcxGridColumn
        Caption = #1057#1080#1089#1040#1044#1052#1048#1053
        DataBinding.ValueType = 'Boolean'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 67
      end
      object GridViewUsersPassword: TcxGridColumn
        Caption = #1055#1072#1088#1086#1083#1100
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.EchoMode = eemPassword
        Properties.IncrementalSearch = False
        Properties.PasswordChar = '*'
        Width = 70
      end
      object GridViewUsersVer: TcxGridColumn
        Caption = 'Ver'
        DataBinding.ValueType = 'Integer'
        Width = 39
      end
      object GridViewUsersIP: TcxGridColumn
        Caption = 'IP'
        Width = 66
      end
      object GridViewUsersLastLogon: TcxGridColumn
        Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1074#1093#1086#1076
        DataBinding.ValueType = 'DateTime'
        Width = 94
      end
      object GridViewUsersIS_ONLINE: TcxGridColumn
        Caption = 'Online'
        RepositoryItem = DM.erCheckBox
        Width = 51
      end
      object GridViewUsersAttachmentID: TcxGridColumn
        Caption = 'Attachment'
        Width = 51
      end
      object GridViewUsersPhone: TcxGridColumn
        Caption = #1058#1077#1083#1077#1092#1086#1085' '#1074#1085#1091#1090#1088'.'
        Width = 51
      end
      object GridViewUsersMobile: TcxGridColumn
        Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081
      end
      object GridViewUserRequestManager: TcxGridColumn
        Caption = #1047#1072#1087#1088#1086#1089#1099
        RepositoryItem = DM.erCheckGreen
        HeaderHint = #1052#1077#1085#1077#1076#1078#1077#1088' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102' '#1076#1083#1103' '#1079#1072#1087#1088#1086#1089#1086#1074
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
      end
    end
    object GridUsersLevel1: TcxGridLevel
      GridView = GridViewUsers
    end
  end
  inherited BM: TdxBarManager
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbNewUser'
        end
        item
          Visible = True
          ItemName = 'bbEditUser'
        end
        item
          Visible = True
          ItemName = 'bbRequestManager'
        end
        item
          Visible = True
          ItemName = 'bbDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbRunAs'
        end
        item
          Visible = True
          ItemName = 'bbDisconnect'
        end
        item
          Visible = True
          ItemName = 'bbShowPass'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object bbNewUser: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbNewUserClick
    end
    object bbEditUser: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbEditUserClick
    end
    object bbDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      OnClick = bbDeleteClick
    end
    object bbRunAs: TdxBarButton
      Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100
      Category = 0
      Hint = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1086#1090' '#1080#1084#1077#1085#1080' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Visible = ivAlways
      ImageIndex = 39
      PaintStyle = psCaptionGlyph
      OnClick = bbRunAsClick
    end
    object bbShowPass: TdxBarButton
      Caption = #1055#1072#1088#1086#1083#1080
      Category = 0
      Hint = #1055#1072#1088#1086#1083#1080
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 29
      OnClick = bbShowPassClick
    end
    object bbDisconnect: TdxBarButton
      Caption = #1054#1090#1082#1083#1102#1095#1080#1090#1100
      Category = 0
      Hint = #1054#1090#1082#1083#1102#1095#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 34
      PaintStyle = psCaptionGlyph
      OnClick = bbDisconnectClick
    end
    object bbRequestManager: TdxBarButton
      Caption = #1047#1072#1087#1088#1086#1089#1099
      Category = 0
      Hint = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102' '#1076#1083#1103' '#1079#1072#1087#1088#1086#1089#1086#1074
      Visible = ivAlways
      ImageIndex = 54
      PaintStyle = psCaptionGlyph
      OnClick = bbRequestManagerClick
    end
  end
  object FBSec: TpFIBSecurityService
    ServerName = '127.0.0.1'
    Protocol = TCP
    LoginPrompt = False
    SecurityAction = ActionAddUser
    SQlRole = 'RDB$ADMIN'
    UserName = 'xxc'
    UserID = 0
    GroupID = 0
    Left = 376
    Top = 120
  end
  object QR: TpFIBQuery
    Transaction = trRead
    Database = FB
    Left = 376
    Top = 176
    qoStartTransaction = True
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = FB
    Left = 440
    Top = 176
    qoStartTransaction = True
  end
  object FB: TpFIBDatabase
    DBName = '172.16.2.53:disp'
    DBParams.Strings = (
      'lc_ctype=UTF8'
      'user_name=xxc'
      'password=PassworlD'
      'sql_role_name=RDB$ADMIN')
    DefaultTransaction = trRead
    DefaultUpdateTransaction = trWrite
    SQLDialect = 3
    Timeout = 0
    DesignDBOptions = []
    UseRepositories = []
    WaitForRestoreConnect = 0
    Left = 232
    Top = 232
  end
end
