object frameJournal: TframeJournal
  Left = 0
  Top = 0
  Width = 940
  Height = 421
  TabOrder = 0
  object Grid: TcxGrid
    Left = 0
    Top = 31
    Width = 940
    Height = 390
    Align = alClient
    TabOrder = 0
    object GridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsJournal
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      object GridDBTableView1CREATED_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'CREATED_DT'
        PropertiesClassName = 'TcxDateEditProperties'
        SortIndex = 0
        SortOrder = soAscending
        Width = 100
      end
      object GridDBTableView1RECORD_TYPE: TcxGridDBColumn
        Caption = #1056#1072#1079#1076#1077#1083
        DataBinding.FieldName = 'RECORD_TYPE_NAME'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Width = 138
      end
      object GridDBTableView1MESSAGE: TcxGridDBColumn
        Caption = #1058#1077#1082#1089#1090
        DataBinding.FieldName = 'MESSAGE'
        PropertiesClassName = 'TcxMemoProperties'
        Width = 345
      end
      object GridDBTableView1IS_REPORT: TcxGridDBColumn
        Caption = #1054#1090#1095#1105#1090
        DataBinding.FieldName = 'IS_REPORT'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Visible = False
        MinWidth = 60
        Options.HorzSizing = False
        Width = 60
      end
      object GridDBTableView1IS_SYSTEM: TcxGridDBColumn
        DataBinding.FieldName = 'IS_SYSTEM'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Visible = False
      end
      object GridDBTableView1PROMISE_DATE: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'PROMISE_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        Visible = False
        Width = 80
      end
      object GridDBTableView1RECORD_SUBTYPE_NAME: TcxGridDBColumn
        Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
        DataBinding.FieldName = 'RECORD_SUBTYPE_NAME'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Width = 89
      end
      object GridDBTableView1CONTROL_DATE: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1076#1072#1090#1072
        DataBinding.FieldName = 'CONTROL_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        Width = 70
      end
      object GridDBTableView1CREATED_BY: TcxGridDBColumn
        DataBinding.FieldName = 'CREATED_BY'
        Visible = False
      end
      object GridDBTableView1USER_ID: TcxGridDBColumn
        Caption = #1040#1074#1090#1086#1088
        DataBinding.FieldName = 'USER_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Width = 83
      end
      object GridDBTableView1USERS_LIST: TcxGridDBColumn
        Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1080
        DataBinding.FieldName = 'USERS_LIST'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Width = 113
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 940
    Height = 31
    Align = dalTop
    BarManager = BM
  end
  object BM: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = DM.ToolImages
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 64
    Top = 112
    PixelsPerInch = 96
    object BarJournal: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Journal'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 595
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          Visible = True
          ItemName = 'bbAdd'
        end
        item
          Visible = True
          ItemName = 'bbCooperation'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object bbRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = bbRefreshClick
    end
    object bbAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083
      Visible = ivAlways
      ImageIndex = 2
      PaintStyle = psCaptionGlyph
      OnClick = bbAddClick
    end
    object bbCooperation: TdxBarButton
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1095#1077#1089#1090#1074#1086
      Category = 0
      Hint = #1057#1086#1090#1088#1091#1076#1085#1080#1095#1077#1089#1090#1074#1086
      Visible = ivNever
      ImageIndex = 55
      PaintStyle = psCaptionGlyph
      OnClick = bbCooperationClick
    end
  end
  object Journal: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      '    J.ID,'
      '    J.CREATED_DT, J.CREATED_BY,'
      '    J.RECORD_TYPE,'
      '    J.RECORD_SUBTYPE,'
      '    J."MESSAGE" ||'
      '      IIF(J.ROUTE_CARD_CHANGE_ID is null,  '#39#39','
      
        '      ascii_char(10)||'#39#1052'/'#1050' '#8470#39'||(select CH.ROUTE_CARD_NUM from DO' +
        'C_ROUTE_CARD_CHANGES CH where CH.ID=J.ROUTE_CARD_CHANGE_ID)'
      
        '      || '#39' '#39'|| (select M.DESCRIPTION from REF_MAT M where M.ID=(' +
        'select C.MAT_ID from DOC_ROUTE_CARD_CHANGES C where C.ID=J.ROUTE' +
        '_CARD_CHANGE_ID))'
      
        '      || ascii_char(10) || (select A.NAME from CONTRACT_ADDRESS ' +
        'A where A.ID=(select C.ADDRESS_ID from DOC_ROUTE_CARD_CHANGES C ' +
        'where C.ID=J.ROUTE_CARD_CHANGE_ID))'
      '      ) "MESSAGE",'
      '    J.IS_REPORT, J.IS_SYSTEM,'
      '    J.PROMISE_DATE, J.CONTROL_DATE,'
      '    J.COMPLETE_DT,'
      '    J.CONTRAGENT_ID,'
      '    trim('
      
        '        trim(IIF(coalesce(J.IS_COOPERATION, 0)=1, '#39#1057#1086#1090#1088#1091#1076#1085#1080#1095#1077#1089#1090#1074 +
        #1086':'#39', '#39#39'))||'
      '        trim(IIF(J.REQUEST_ID is not null, '#39#1047#1072#1103#1074#1082#1072':'#39', '#39#39')) ||'
      '        trim(IIF(J.TENDER_ID is not null, '#39#1040#1091#1082#1094#1080#1086#1085':'#39', '#39#39')) ||'
      
        '        trim(IIF(J.ROUTE_CARD_CHANGE_ID is not null, '#39#1054#1073#1089#1083#1091#1078#1080#1074#1072#1085 +
        #1080#1077':'#39', '#39#39'))||'
      
        '        trim(IIF(J.AUTO_SERVICE_ID is not null, '#39#1057#1077#1088#1074#1080#1089':'#39', '#39#39'))|' +
        '|'
      
        '        trim((select R.NAME from REFBOOK R where R.ID=J.RECORD_T' +
        'YPE)))'
      '    RECORD_TYPE_NAME,'
      ''
      ''
      
        '    (select coalesce(u.fio, u.name) from users U where U.ID=J.US' +
        'ER_ID) USER_NAME,'
      
        '    (select list(coalesce(u.fio, u.name)) from users u where u.I' +
        'D in (select um.USER_ID from USER_MASSEGES um where um.JOURNAL_I' +
        'D=J.ID)) users_list,'
      
        '    (select NAME from REFBOOK where ID=J.RECORD_TYPE) RECORD_TYP' +
        'E_NAME,'
      
        '    (select NAME from REFBOOK where ID=J.RECORD_SUBTYPE) RECORD_' +
        'SUBTYPE_NAME'
      'from CONTRAGENT_JOURNAL J where J.ID = :ID')
    SelectSQL.Strings = (
      'select'
      '    J.ID,'
      '    J.CREATED_DT, J.CREATED_BY,'
      '    J.RECORD_TYPE,'
      '    J.RECORD_SUBTYPE,'
      '    J."MESSAGE" ||'
      '      IIF(J.ROUTE_CARD_CHANGE_ID is null,  '#39#39','
      
        '      ascii_char(10)||'#39#1052'/'#1050' '#8470#39'||(select CH.ROUTE_CARD_NUM from DO' +
        'C_ROUTE_CARD_CHANGES CH where CH.ID=J.ROUTE_CARD_CHANGE_ID)'
      
        '      || '#39' '#39'|| (select M.DESCRIPTION from REF_MAT M where M.ID=(' +
        'select C.MAT_ID from DOC_ROUTE_CARD_CHANGES C where C.ID=J.ROUTE' +
        '_CARD_CHANGE_ID))'
      
        '      || ascii_char(10) || (select A.NAME from CONTRACT_ADDRESS ' +
        'A where A.ID=(select C.ADDRESS_ID from DOC_ROUTE_CARD_CHANGES C ' +
        'where C.ID=J.ROUTE_CARD_CHANGE_ID))'
      '      ) "MESSAGE",'
      '    J.IS_REPORT, J.IS_SYSTEM,'
      '    J.PROMISE_DATE, J.CONTROL_DATE,'
      '    J.COMPLETE_DT,'
      '    J.CONTRAGENT_ID,'
      '    trim('
      
        '        trim(IIF(coalesce(J.IS_COOPERATION, 0)=1, '#39#1057#1086#1090#1088#1091#1076#1085#1080#1095#1077#1089#1090#1074 +
        #1086':'#39', '#39#39'))||'
      '        trim(IIF(J.REQUEST_ID is not null, '#39#1047#1072#1103#1074#1082#1072':'#39', '#39#39')) ||'
      '        trim(IIF(J.TENDER_ID is not null, '#39#1040#1091#1082#1094#1080#1086#1085':'#39', '#39#39')) ||'
      
        '        trim(IIF(J.ROUTE_CARD_CHANGE_ID is not null, '#39#1054#1073#1089#1083#1091#1078#1080#1074#1072#1085 +
        #1080#1077':'#39', '#39#39'))||'
      
        '        trim(IIF(J.AUTO_SERVICE_ID is not null, '#39#1057#1077#1088#1074#1080#1089':'#39', '#39#39'))|' +
        '|'
      
        '        trim((select R.NAME from REFBOOK R where R.ID=J.RECORD_T' +
        'YPE)))'
      '    RECORD_TYPE_NAME,'
      ''
      ''
      
        '    (select coalesce(u.fio, u.name) from users U where U.ID=J.US' +
        'ER_ID) USER_NAME,'
      
        '    (select list(coalesce(u.fio, u.name)) from users u where u.I' +
        'D in (select um.USER_ID from USER_MASSEGES um where um.JOURNAL_I' +
        'D=J.ID)) users_list,'
      
        '    (select NAME from REFBOOK where ID=J.RECORD_TYPE) RECORD_TYP' +
        'E_NAME,'
      
        '    (select NAME from REFBOOK where ID=J.RECORD_SUBTYPE) RECORD_' +
        'SUBTYPE_NAME'
      'from CONTRAGENT_JOURNAL J'
      'where'
      '    1=2')
    Transaction = trJournal
    Database = DM.FB
    UpdateTransaction = trJournalWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 48
    Top = 208
    WaitEndMasterScroll = True
    dcForceOpen = True
  end
  object dsJournal: TDataSource
    DataSet = Journal
    Left = 96
    Top = 208
  end
  object trJournal: TpFIBTransaction
    DefaultDatabase = DM.FB
    Left = 144
    Top = 208
  end
  object trJournalWrite: TpFIBTransaction
    DefaultDatabase = DM.FB
    Left = 200
    Top = 208
  end
end
