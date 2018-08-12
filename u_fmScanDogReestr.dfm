inherited fmScanDogReestr: TfmScanDogReestr
  Caption = #1056#1077#1077#1089#1090#1088' '#1089#1082#1072#1085#1080#1088#1086#1074#1072#1085#1085#1099#1093' '#1076#1086#1075#1086#1074#1086#1088#1086#1074
  ClientHeight = 670
  ClientWidth = 1206
  ExplicitWidth = 1222
  ExplicitHeight = 709
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1206
    ExplicitWidth = 1206
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1206
    Height = 639
    Align = alClient
    TabOrder = 1
    object GridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'ID'
          Column = GridDBTableView1NAME
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      object GridDBTableView1NAME: TcxGridDBColumn
        Caption = #1050#1083#1080#1077#1085#1090
        DataBinding.FieldName = 'NAME'
        Width = 200
      end
      object GridDBTableView1NOMER_DOG: TcxGridDBColumn
        Caption = #1044#1086#1075#1086#1074#1086#1088' '#8470
        DataBinding.FieldName = 'NOMER_DOG'
        Width = 105
      end
      object GridDBTableView1DATE_START: TcxGridDBColumn
        Caption = #1053#1072#1095#1072#1083#1086
        DataBinding.FieldName = 'DATE_START'
        MinWidth = 80
        Options.HorzSizing = False
        Width = 80
      end
      object GridDBTableView1DATE_END: TcxGridDBColumn
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'DATE_END'
        MinWidth = 80
        Options.HorzSizing = False
        Width = 80
      end
      object GridDBTableView1SUMMER_DATE: TcxGridDBColumn
        Caption = #1051#1077#1090#1086
        DataBinding.FieldName = 'SUMMER_DATE'
        MinWidth = 80
        Options.HorzSizing = False
        Width = 80
      end
      object GridDBTableView1WINTER_DATE: TcxGridDBColumn
        Caption = #1047#1080#1084#1072
        DataBinding.FieldName = 'WINTER_DATE'
        MinWidth = 80
        Options.HorzSizing = False
        Width = 80
      end
      object GridDBTableView1DOG_TYPE: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
        DataBinding.FieldName = 'DOG_TYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #1054#1073#1099#1095#1085#1099#1081
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #1055#1083#1086#1097#1072#1076#1082#1072
            Value = 1
          end
          item
            Description = #1043#1086#1089#1082#1086#1085#1090#1088#1072#1082#1090
            Value = 2
          end
          item
            Description = #1060#1086#1088#1084#1072' '#1082#1083#1080#1077#1085#1090#1072
            Value = 3
          end>
        RepositoryItem = DM.cbDOG_TYPE
        Width = 142
      end
      object GridDBTableView1DESCRIPTION: TcxGridDBColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 200
      end
      object GridDBTableView1EXT: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1092#1072#1081#1083#1072
        DataBinding.FieldName = 'EXT'
        Width = 90
      end
      object GridDBTableView1CREATED_BY_USER_ID: TcxGridDBColumn
        Caption = #1050#1090#1086' '#1076#1086#1073#1072#1074#1080#1083
        DataBinding.FieldName = 'CREATED_BY_USER_ID'
        RepositoryItem = DM.erUsers
        Width = 132
      end
      object GridDBTableView1DOC_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DOC_DT'
        MinWidth = 100
        Options.HorzSizing = False
        Width = 100
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
          ItemName = 'bbAddScan'
        end
        item
          Visible = True
          ItemName = 'bbEdit'
        end
        item
          Visible = True
          ItemName = 'bbViewDoc'
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
    object bbExport: TdxBarButton
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Hint = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 28
      PaintStyle = psCaptionGlyph
      OnClick = bbExportClick
    end
    object bbEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbEditClick
    end
    object bbViewDoc: TdxBarButton
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      Category = 0
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088
      Visible = ivAlways
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
      OnClick = bbViewDocClick
    end
    object bbAddScan: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1082#1072#1085
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1082#1072#1085' '#1076#1086#1075#1086#1074#1086#1088#1072
      Visible = ivNever
      ImageIndex = 40
      PaintStyle = psCaptionGlyph
    end
  end
  object dsDATA: TDataSource
    DataSet = DATA
    OnDataChange = dsDATADataChange
    Left = 232
    Top = 240
  end
  object DATA: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      '  doc.id, doc.CONTRAGENT_ID, doc.EXT, doc.CREATED_BY_USER_ID,'
      '  DD.SUMMER_DATE, DD.WINTER_DATE,'
      '  coalesce(dd.modify_dt, dd.created_dt) DOC_DT,'
      
        '  DD.NOMER_DOG, DD.DATE_START, DD.DATE_END, DD.DOG_TYPE, DD.DESC' +
        'RIPTION,'
      '  C.NAME'
      'from DOCUMENTS DOC'
      'left join DOCUMENTS_DOG DD on DD.ID=DOC.ID'
      'left join CONTRAGENTS C on C.ID=DOC.CONTRAGENT_ID'
      'where'
      '  DOC.id=:ID')
    SelectSQL.Strings = (
      'select'
      '  doc.id, doc.CONTRAGENT_ID, doc.EXT, doc.CREATED_BY_USER_ID,'
      '  DD.SUMMER_DATE, DD.WINTER_DATE,'
      '  coalesce(dd.modify_dt, dd.created_dt) DOC_DT,'
      
        '  DD.NOMER_DOG, DD.DATE_START, DD.DATE_END, DD.DOG_TYPE, DD.DESC' +
        'RIPTION,'
      '  C.NAME'
      'from DOCUMENTS DOC'
      'left join DOCUMENTS_DOG DD on DD.ID=DOC.ID'
      'left join VW_CONTRAGENTS C on C.ID=DOC.CONTRAGENT_ID'
      'where'
      '  DOC.DOCUMENT_TYPE=2'
      '  and C.ID is not null')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 168
    Top = 240
  end
end
