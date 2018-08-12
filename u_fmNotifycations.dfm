inherited fmNotifycations: TfmNotifycations
  Caption = #1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1103
  ClientHeight = 540
  ClientWidth = 1191
  ExplicitWidth = 1207
  ExplicitHeight = 578
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1191
    ExplicitWidth = 1191
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1191
    Height = 509
    Align = alClient
    PopupMenu = PM
    TabOrder = 1
    object GridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          FieldName = 'ID'
          Column = GridDBTableView1USER_NAME
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.HeaderAutoHeight = True
      object GridDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object GridDBTableView1IS_OUTDATED: TcxGridDBColumn
        DataBinding.FieldName = 'IS_OUTDATED'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DM.ImageListStatuses
        Properties.Items = <
          item
            ImageIndex = 17
            Value = 0
          end
          item
            ImageIndex = 29
            Value = 1
          end>
        Options.Editing = False
        Options.Focusing = False
        Options.ShowCaption = False
        Options.Sorting = False
        Width = 24
        IsCaptionAssigned = True
      end
      object IS_REQUEST: TcxGridDBColumn
        Caption = #1047#1072#1103#1074#1082#1072
        DataBinding.FieldName = 'IS_REQUEST'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DM.ImageListStatuses
        Properties.Items = <
          item
            Description = #1053#1077#1090
            Value = 0
          end
          item
            Description = #1044#1072
            ImageIndex = 7
            Value = 1
          end>
        OnGetDisplayText = IS_REQUESTGetDisplayText
        Width = 81
      end
      object GridDBTableView1USER_NAME: TcxGridDBColumn
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        DataBinding.FieldName = 'USER_NAME'
        Width = 100
      end
      object GridDBTableView1CREATED_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'CREATED_DT'
        Visible = False
      end
      object MANAGER_NAME: TcxGridDBColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'MANAGER_NAME'
        Width = 126
      end
      object GridDBTableView1REF_NAME: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1079#1072#1087#1080#1089#1080
        DataBinding.FieldName = 'REF_NAME'
        Width = 127
      end
      object GridDBTableView1RECORD_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'RECORD_TYPE'
        Visible = False
      end
      object GridDBTableView1MESS: TcxGridDBColumn
        Caption = #1058#1077#1082#1089#1090
        DataBinding.FieldName = 'MESS'
        PropertiesClassName = 'TcxMemoProperties'
        Width = 379
      end
      object GridDBTableView1NAME: TcxGridDBColumn
        Caption = #1048#1085#1092#1086
        DataBinding.FieldName = 'INFO'
        Width = 200
      end
      object GridDBTableView1FULLNAME: TcxGridDBColumn
        DataBinding.FieldName = 'FULLNAME'
        Visible = False
      end
      object GridDBTableView1CONTROL_DATE: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1086#1083#1100
        DataBinding.FieldName = 'CONTROL_DATE'
        SortIndex = 0
        SortOrder = soAscending
        Width = 80
      end
      object REQUEST_ID: TcxGridDBColumn
        DataBinding.FieldName = 'REQUEST_ID'
        Width = 55
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  inherited BM: TdxBarManager
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 128
          Visible = True
          ItemName = 'bbUser'
        end
        item
          Visible = True
          ItemName = 'bbAllUsers'
        end
        item
          Visible = True
          ItemName = 'bbDate'
        end
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          Visible = True
          ItemName = 'bbGo'
        end
        item
          Visible = True
          ItemName = 'bbActions'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
    end
    inherited bbClose: TdxBarButton
      Caption = #1053#1077' '#1085#1072#1087#1086#1084#1080#1085#1072#1090#1100
      Hint = #1053#1077' '#1085#1072#1087#1086#1084#1080#1085#1072#1090#1100
      ImageIndex = -1
    end
    object bbDate: TdxBarDateCombo
      Caption = #1087#1086' '#1076#1072#1090#1091
      Category = 0
      Hint = #1087#1086' '#1076#1072#1090#1091
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFF0000
        00FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080FF0000
        80FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFF000080FF000080FF000080FF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FF00000000FF800000FF8000
        00FF800000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00000000FF800000FF8000
        00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF0000
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ShowCaption = True
      ShowClearButton = False
    end
    object bbUser: TdxBarLookupCombo
      Caption = #1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1103' '#1076#1083#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Category = 0
      Hint = #1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1103' '#1076#1083#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FF00000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FF00000000FFFF0000FF8080
        80FF808080FFFF0000FF000000FFFF0000FF808080FF808080FF808080FF8080
        80FF808080FF808080FFFF0000FF000000FFFF00FF00000000FFFF0000FFFF00
        00FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00
        00FFFF0000FFFF0000FFFF0000FF000000FFFF00FF00000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFF8080
        80FF808080FFFFFFFFFF000000FFFFFFFFFF808080FF808080FF808080FF8080
        80FF808080FF808080FFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00000000FFFFFFFFFF8080
        80FF808080FF808080FF808080FF808080FF808080FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00}
      ShowCaption = True
      ShowEditor = False
      ImmediateDropDown = True
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = DM.dsUSERS
      RowCount = 15
    end
    object bbAllUsers: TdxBarButton
      Caption = #1042#1089#1077
      Category = 0
      Hint = #1042#1089#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbAllUsersClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 47
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1053#1072#1087#1086#1084#1085#1080#1090#1100' '#1095#1077#1088#1077#1079
      Category = 0
      Visible = ivAlways
      ImageIndex = 52
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbNotyfy5'
        end
        item
          Visible = True
          ItemName = 'bbNotyfy10'
        end
        item
          Visible = True
          ItemName = 'bbNotyfyClose30'
        end
        item
          Visible = True
          ItemName = 'bbNotyfy60'
        end>
    end
    object bbNotyfy5: TdxBarButton
      Tag = 5
      Caption = '5 '#1084#1080#1085#1091#1090
      Category = 0
      Hint = '5 '#1084#1080#1085#1091#1090
      Visible = ivAlways
      OnClick = bbCloseClick
    end
    object bbNotyfy60: TdxBarButton
      Tag = 60
      Caption = '60 '#1084#1080#1085#1091#1090
      Category = 0
      Hint = '60 '#1084#1080#1085#1091#1090
      Visible = ivAlways
      OnClick = bbCloseClick
    end
    object bbNotyfyClose30: TdxBarButton
      Tag = 30
      Caption = '30 '#1084#1080#1085#1091#1090
      Category = 0
      Hint = '30 '#1084#1080#1085#1091#1090
      Visible = ivAlways
      OnClick = bbCloseClick
    end
    object bbNotyfy10: TdxBarButton
      Tag = 10
      Caption = '10 '#1084#1080#1085#1091#1090
      Category = 0
      Hint = '10 '#1084#1080#1085#1091#1090
      Visible = ivAlways
      OnClick = bbCloseClick
    end
    object bbActions: TdxBarSubItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      Category = 0
      Visible = ivAlways
      ImageIndex = 35
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bBSetNotifyComplete'
        end
        item
          Visible = True
          ItemName = 'bbSetNotifyNewdate'
        end>
    end
    object bBSetNotifyComplete: TdxBarButton
      Caption = #1054#1090#1084#1077#1090#1080#1090#1100' '#1082#1072#1082' "'#1074#1099#1087#1086#1083#1085#1077#1085#1086'"'
      Category = 0
      Hint = #1054#1090#1084#1077#1090#1080#1090#1100' '#1082#1072#1082' "'#1074#1099#1087#1086#1083#1085#1077#1085#1086'"'
      Visible = ivAlways
      ImageIndex = 51
      OnClick = bBSetNotifyCompleteClick
    end
    object bbSetNotifyNewdate: TdxBarButton
      Caption = #1054#1090#1083#1086#1078#1080#1090#1100
      Category = 0
      Hint = #1054#1090#1083#1086#1078#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 53
      OnClick = bbSetNotifyNewdateClick
    end
    object bbGo: TdxBarSubItem
      Caption = #1055#1077#1088#1077#1093#1086#1076
      Category = 0
      Visible = ivAlways
      ImageIndex = 49
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbGoRequest'
        end
        item
          Visible = True
          ItemName = 'bbGoContragent'
        end
        item
          Visible = True
          ItemName = 'bbGoRecord'
        end>
    end
    object bbGoRequest: TdxBarButton
      Caption = #1053#1072#1081#1090#1080' '#1079#1072#1103#1074#1082#1091
      Category = 0
      Hint = #1053#1072#1081#1090#1080' '#1079#1072#1103#1074#1082#1091
      Visible = ivAlways
      OnClick = bbGoRequestClick
    end
    object bbGoContragent: TdxBarButton
      Caption = #1053#1072#1081#1090#1080' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      Category = 0
      Hint = #1053#1072#1081#1090#1080' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      Visible = ivAlways
      OnClick = bbGoContragentClick
    end
    object bbGoRecord: TdxBarButton
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1079#1072#1087#1080#1089#1080' '#1078#1091#1088#1085#1072#1083#1072
      Category = 0
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1079#1072#1087#1080#1089#1080' '#1078#1091#1088#1085#1072#1083#1072
      Visible = ivAlways
      OnClick = bbGoRecordClick
    end
  end
  object DATA: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  J.ID,'
      '  IIF(R.ID is null, 0, 1) IS_REQUEST,'
      '    IIF(J.REQUEST_ID is not null,'
      '        '#39#1047#1072#1103#1074#1082#1072' '#39'||R.ID'
      
        '          || IIF(coalesce(R.COMPANY_NAME, '#39#39')<>'#39#39', ascii_char(10' +
        ')||R.COMPANY_NAME, '#39#39')'
      '          || IIF(coalesce(R.NAME, '#39#39')<>'#39#39', '#39', '#39'||R.NAME, '#39#39'),'
      '        '#39#39')'
      '      || IIF(C.ID is not null,  C.NAME, '#39#39')'
      
        '      || IIF(CHG.ID is not null, C_CHG.NAME||ascii_char(10)||'#39#1052#1050 +
        ' '#8470#39'||chg.ROUTE_CARD_NUM||'#39' '#1086#1090' '#39'||(select STR from SP_DATE_FORMAT' +
        '(chg.ROUTE_CARD_DATE))||ascii_char(10)||MKSTATUS.NAME, '#39#39')'
      '    INFO,'
      
        '  IIF((j.Complete_DT is null and J.CONTROL_DATE<=current_date), ' +
        '1, 0) IS_OUTDATED,'
      '  J.RECORD_TYPE, J."MESSAGE" MESS, REFBOOK.NAME REF_NAME,'
      '  C.ID CONTRAGENT_ID,'
      '  R.ID REQUEST_ID,'
      '  C.NAME,'
      '  C.FULLNAME,'
      '  cast(J.CREATED_DT as T_DATE) CREATED_DT,'
      '  J.CONTROL_DATE,'
      '  USERS.NAME USER_NAME,'
      '  IIF(R.ID is null, C_USER.FIO, R_USER.FIO) MANAGER_NAME'
      ''
      'from'
      '  CONTRAGENT_JOURNAL J'
      '  left join CONTRAGENTS C on C.ID=J.CONTRAGENT_ID'
      '  left join REFBOOK on REFBOOK.ID=J.RECORD_TYPE'
      '  left join USERS on users.ID=J.USER_ID'
      '  left join REQUEST R on R.ID=J.REQUEST_ID'
      '  left join USERS C_USER on C_USER.ID=C.MANAGER_ID'
      '  left join USERS R_USER on R_USER.ID=R.MANAGER_ID'
      
        '  left join DOC_ROUTE_CARD_CHANGES CHG on CHG.ID=J.ROUTE_CARD_CH' +
        'ANGE_ID'
      '  left join CONTRAGENTS C_CHG on C_CHG.ID=CHG.CONTRAGENT_ID'
      '  left join REFBOOK MKSTATUS on MKSTATUS.ID=CHG.STATUS'
      'where'
      '  J.CONTROL_DATE <= coalesce(:DATE, current_date)'
      '  and ((j.USER_ID = :USER_ID) or (:USER_ID is null))'
      '  and j.COMPLETE_DT is null')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 232
    Top = 120
  end
  object dsDATA: TDataSource
    DataSet = DATA
    OnDataChange = dsDATADataChange
    Left = 280
    Top = 120
  end
  object PM: TdxBarPopupMenu
    BarManager = BM
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbRefresh'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem2'
      end
      item
        Visible = True
        ItemName = 'bBSetNotifyComplete'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbGoRequest'
      end
      item
        Visible = True
        ItemName = 'bbGoContragent'
      end
      item
        Visible = True
        ItemName = 'bbGoRecord'
      end>
    UseOwnFont = False
    Left = 192
    Top = 272
    PixelsPerInch = 96
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 160
    Top = 168
    qoStartTransaction = True
  end
end
