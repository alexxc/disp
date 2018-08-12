inherited fmFuelCardReestr: TfmFuelCardReestr
  Caption = #1056#1077#1077#1089#1090#1088' '#1090#1086#1087#1083#1080#1074#1085#1099#1093' '#1082#1072#1088#1090
  ClientHeight = 368
  ExplicitHeight = 406
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 635
    Height = 337
    Align = alClient
    TabOrder = 5
    object Grid1DBTableView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.KeyFieldNames = 'ID'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'CARD_NUMBER'
          Column = Grid1DBTableViewCARD_NUMBER
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      object Grid1DBTableViewID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object Grid1DBTableViewCARD_NUMBER: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088' '#1082#1072#1088#1090#1099
        DataBinding.FieldName = 'CARD_NUMBER'
        MinWidth = 100
        Options.HorzSizing = False
        Width = 100
      end
      object Grid1DBTableViewPIN: TcxGridDBColumn
        DataBinding.FieldName = 'PIN'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditMask = '!9999;1; '
        MinWidth = 47
        Options.HorzSizing = False
        Width = 47
      end
      object Grid1DBTableViewFUEL_TYPE: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1090#1086#1087#1083#1080#1074#1072
        DataBinding.FieldName = 'FUEL_TYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <
          item
            Description = #1040#1048'-92'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #1044#1058
            Value = 1
          end>
        MinWidth = 85
        Options.HorzSizing = False
        Width = 85
      end
      object Grid1DBTableViewPRODUCTION_ID: TcxGridDBColumn
        Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
        DataBinding.FieldName = 'PRODUCTION_ID'
        RepositoryItem = DM.erProduction
        MinWidth = 171
        Options.HorzSizing = False
        Width = 171
      end
      object Grid1DBTableViewIS_ACTIVE: TcxGridDBColumn
        Caption = #1040#1082#1090#1080#1074
        DataBinding.FieldName = 'IS_ACTIVE'
        RepositoryItem = DM.erCheckGreen
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
      end
      object Grid1DBTableViewDESCRIPTION: TcxGridDBColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 163
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = Grid1DBTableView
    end
  end
  inherited BM: TdxBarManager
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
          ItemName = 'bbDelete'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    inherited bbSave: TdxBarButton
      PaintStyle = psCaptionGlyph
    end
    object bbDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      OnClick = bbDeleteClick
    end
    object bbAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivNever
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
    end
  end
  object DATA: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE FUEL_CARD'
      'SET '
      '  CARD_NUMBER = :CARD_NUMBER,'
      '  DESCRIPTION = :DESCRIPTION,'
      '  PRODUCTION_ID = :PRODUCTION_ID,'
      '  FUEL_TYPE = :FUEL_TYPE,'
      '  IS_ACTIVE = :IS_ACTIVE,'
      '  PIN=:PIN'
      'WHERE'
      '  ID = :ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM FUEL_CARD WHERE ID = :ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO FUEL_CARD('
      '  ID,'
      '  CARD_NUMBER,'
      '  DESCRIPTION,'
      '  PRODUCTION_ID,'
      '  FUEL_TYPE,'
      '  IS_ACTIVE, PIN'
      ')'
      'VALUES('
      '  :ID,'
      '  :CARD_NUMBER,'
      '  :DESCRIPTION,'
      '  :PRODUCTION_ID,'
      '  :FUEL_TYPE,'
      '  :IS_ACTIVE , :PIN'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  ID,'
      '  CARD_NUMBER, DESCRIPTION, PRODUCTION_ID,'
      '  coalesce(FUEL_TYPE, 0) FUEL_TYPE,'
      '  coalesce(IS_ACTIVE, 1) IS_ACTIVE,'
      '  coalesce(PIN, '#39'0000'#39') PIN'
      'from'
      '  FUEL_CARD'
      'WHERE'
      '  FUEL_CARD.ID = :ID'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  ID,'
      '  CARD_NUMBER, DESCRIPTION, PRODUCTION_ID,'
      '  coalesce(FUEL_TYPE, 0) FUEL_TYPE,'
      '  coalesce(IS_ACTIVE, 1) IS_ACTIVE,'
      '  coalesce(PIN, '#39'0000'#39') PIN'
      'from'
      '  FUEL_CARD'
      'order by CARD_NUMBER')
    AutoUpdateOptions.UpdateTableName = 'FUEL_CARD'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'G_FUEL_CARD'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = DATAAfterDelete
    AfterInsert = DATAAfterInsert
    AfterPost = DATAAfterPost
    BeforeDelete = DATABeforeDelete
    BeforePost = DATABeforePost
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 152
    Top = 72
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 192
    Top = 72
  end
end
