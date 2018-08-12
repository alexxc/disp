inherited fmActTemplates: TfmActTemplates
  Caption = #1064#1072#1073#1083#1086#1085#1099' '#1072#1082#1090#1086#1074
  ClientWidth = 894
  ExplicitWidth = 910
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 894
    ExplicitWidth = 894
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 894
    Height = 306
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'ID'
        Width = 60
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'NAME'
        SortIndex = 0
        SortOrder = soAscending
        Width = 466
      end
      object cxGrid1DBTableView1IS_TEMPLATE_EXISTS: TcxGridDBColumn
        Caption = #1045#1089#1090#1100' '#1096#1072#1073#1083#1086#1085
        DataBinding.FieldName = 'IS_TEMPLATE_EXISTS'
        RepositoryItem = DM.erCheckGreen
        Width = 134
      end
      object cxGrid1DBTableView1ACT_TEMPLATE_ID: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1096#1072#1073#1083#1086#1085#1072
        DataBinding.FieldName = 'ACT_TEMPLATE_ID'
        Width = 134
      end
      object cxGrid1DBTableView1INVOICE_ID: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1089#1095#1077#1090#1072
        DataBinding.FieldName = 'INVOICE_ID'
        Width = 81
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited BM: TdxBarManager
    Left = 248
    Top = 136
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          Visible = True
          ItemName = 'bbOnly'
        end
        item
          Visible = True
          ItemName = 'bbEditTemplate'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object bbOnly: TdxBarButton
      Caption = #1058#1086#1083#1100#1082#1086' '#1089' '#1096#1072#1073#1083#1086#1085#1072#1084#1080
      Category = 0
      Hint = #1058#1086#1083#1100#1082#1086' '#1089' '#1096#1072#1073#1083#1086#1085#1072#1084#1080
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbOnlyClick
    end
    object bbEditTemplate: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbEditTemplateClick
    end
  end
  object DATA: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      '  C.ID, C.ACT_TEMPLATE_ID,'
      '  C.NAME,'
      
        '  (select first 1 I.ID from INVOICE I where I.CONTRAGENT_ID=C.ID' +
        ' and I.STATUS=2 order by I.ID desc) INVOICE_ID,'
      '  IIF(C.ACT_TEMPLATE_ID is not null,  1, 0) IS_TEMPLATE_EXISTS'
      'from CONTRAGENTS C'
      'where'
      '  c.ID=:ID '
      '')
    SelectSQL.Strings = (
      'select'
      '  C.ID, C.ACT_TEMPLATE_ID,'
      '  C.NAME,'
      
        '  (select first 1 I.ID from INVOICE I where I.CONTRAGENT_ID=C.ID' +
        ' and I.STATUS=2 order by I.ID desc) INVOICE_ID,'
      '  IIF(C.ACT_TEMPLATE_ID is not null,  1, 0) IS_TEMPLATE_EXISTS'
      'from CONTRAGENTS C'
      '')
    Transaction = DM.trRead
    Database = DM.FB
    UpdateTransaction = DM.trWrite
    Left = 144
    Top = 136
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 192
    Top = 136
  end
end
