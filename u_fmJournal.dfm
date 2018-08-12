inherited fmJournal: TfmJournal
  Caption = #1046#1091#1088#1085#1072#1083
  ClientHeight = 458
  ClientWidth = 1329
  ExplicitWidth = 1345
  ExplicitHeight = 496
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1329
    ExplicitWidth = 1329
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1329
    Height = 427
    Align = alClient
    TabOrder = 1
    object GridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FindPanel.DisplayMode = fpdmAlways
      FindPanel.InfoText = #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072'...'
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = GridDBTableView1CREATED_DT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      object GridDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object GridDBTableView1CREATED_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'CREATED_DT'
        PropertiesClassName = 'TcxDateEditProperties'
        MinWidth = 104
        Options.HorzSizing = False
        Width = 104
      end
      object GridDBTableView1CONTRAGENT_NAME: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'CONTRAGENT_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 232
      end
      object GridDBTableView1MESSAGE: TcxGridDBColumn
        Caption = #1058#1077#1082#1089#1090
        DataBinding.FieldName = 'MESSAGE'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 265
      end
      object GridDBTableView1RECORD_TYPE: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1079#1072#1087#1080#1089#1080
        DataBinding.FieldName = 'RECORD_TYPE_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 162
      end
      object GridDBTableView1CONTROL_DATE: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088'. '#1076#1072#1090#1072
        DataBinding.FieldName = 'CONTROL_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        MinWidth = 70
        Options.HorzSizing = False
        Width = 70
      end
      object GridDBTableView1USER_ID: TcxGridDBColumn
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        DataBinding.FieldName = 'USER_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 201
      end
      object GridDBTableView1COMPLETE_DT: TcxGridDBColumn
        Caption = #1047#1072#1082#1088#1099#1090#1086
        DataBinding.FieldName = 'COMPLETE_DT'
        PropertiesClassName = 'TcxDateEditProperties'
        MinWidth = 100
        Options.HorzSizing = False
        Width = 100
      end
      object GridDBTableView1USER_LIST: TcxGridDBColumn
        Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1080
        DataBinding.FieldName = 'USER_LIST'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 100
      end
      object GridDBTableView1IS_SYSTEM: TcxGridDBColumn
        Caption = 'SYS'
        DataBinding.FieldName = 'IS_SYSTEM'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = DM.ImageListStatuses
        Properties.Items = <
          item
            Description = #1044#1072
            ImageIndex = 16
            Value = True
          end
          item
            Description = #1053#1077#1090
            Value = False
          end>
        Properties.ShowDescriptions = False
        MinWidth = 33
        Options.HorzSizing = False
        Width = 33
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
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'bbShowSystem'
        end
        item
          Visible = True
          ItemName = 'bbExport'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1055#1077#1088#1080#1086#1076
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbPeriod1'
        end
        item
          Visible = True
          ItemName = 'bbPeriod2'
        end
        item
          Visible = True
          ItemName = 'bbPeriod3'
        end
        item
          Visible = True
          ItemName = 'bbPeriod4'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator1'
        end
        item
          Visible = True
          ItemName = 'bbDateStart'
        end
        item
          Visible = True
          ItemName = 'bbDateEnd'
        end>
    end
    object bbPeriod1: TdxBarButton
      Tag = 1
      Caption = #1057#1077#1075#1086#1076#1085#1103
      Category = 0
      Hint = #1057#1077#1075#1086#1076#1085#1103
      Visible = ivAlways
      OnClick = bbPeriod1Click
    end
    object bbPeriod2: TdxBarButton
      Tag = 2
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1077' 7 '#1076#1085#1077#1081
      Category = 0
      Hint = #1055#1086#1089#1083#1077#1076#1085#1080#1077' 7 '#1076#1085#1077#1081
      Visible = ivAlways
      OnClick = bbPeriod1Click
    end
    object bbPeriod3: TdxBarButton
      Tag = 3
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#1084#1077#1089#1103#1094
      Category = 0
      Hint = #1058#1077#1082#1091#1097#1080#1081' '#1084#1077#1089#1103#1094
      Visible = ivAlways
      OnClick = bbPeriod1Click
    end
    object bbPeriod4: TdxBarButton
      Tag = 4
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#1075#1086#1076
      Category = 0
      Hint = #1058#1077#1082#1091#1097#1080#1081' '#1075#1086#1076
      Visible = ivAlways
      OnClick = bbPeriod1Click
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = #1055#1088#1086#1080#1079#1074#1086#1083#1100#1085#1099#1081' '#1087#1077#1088#1080#1086#1076
      Category = 0
      Hint = #1055#1088#1086#1080#1079#1074#1086#1083#1100#1085#1099#1081' '#1087#1077#1088#1080#1086#1076
      Visible = ivAlways
    end
    object bbShowSystem: TdxBarButton
      Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1089#1080#1089#1090#1077#1084#1085#1099#1077
      Category = 0
      Hint = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1089#1080#1089#1090#1077#1084#1085#1099#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbShowSystemClick
    end
    object bbExport: TdxBarButton
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Hint = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 28
      PaintStyle = psCaptionGlyph
      OnClick = bbExportClick
    end
  end
  object DATA: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '    J.CREATED_DT, J."MESSAGE", U.NAME USER_NAME,'
      '    J.RECORD_TYPE,'
      
        '    IIF(J.REQUEST_ID is not null,  '#39#1047#1072#1087#1088#1086#1089'::'#39'||R.NAME, IIF(J.ROU' +
        'TE_CARD_CHANGE_ID is not null,  '#39#1052#1050'::'#39'||R.NAME, R.NAME)) RECORD_' +
        'TYPE_NAME,'
      '    J.IS_SYSTEM, J.CONTROL_DATE, J.COMPLETE_DT,'
      '    C.NAME CONTRAGENT_NAME,'
      
        '    (select list(USERS.FIO, ascii_char(10)) from USERS where USE' +
        'RS.ID in (select USER_ID from USER_MASSEGES M where M.JOURNAL_ID' +
        '=J.ID)) USER_LIST'
      'from contragent_journal J'
      'left join CONTRAGENTS C on C.ID=J.CONTRAGENT_ID'
      'left join users U on U.ID=J.USER_ID'
      'left join REQUEST REQ on REQ.ID=J.REQUEST_ID'
      
        'left join DOC_ROUTE_CARD_CHANGES CHG on CHG.ID=J.ROUTE_CARD_CHAN' +
        'GE_ID'
      'left join REFBOOK R on R.ID=J.RECORD_TYPE'
      'where'
      
        '  (cast(J.CREATED_DT as date) >= :DATE_START or :DATE_START is n' +
        'ull)'
      
        '  and (cast(J.CREATED_DT as date) <= :DATE_END or :DATE_END is n' +
        'ull)'
      '  and ((J.IS_SYSTEM=:IS_SYSTEM) or (coalesce(:IS_SYSTEM, 1)=1))'
      'order by'
      '  J.CREATED_DT'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 288
    Top = 144
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 328
    Top = 144
  end
end
