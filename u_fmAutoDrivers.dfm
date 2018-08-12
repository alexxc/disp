inherited fmAutoDrivers: TfmAutoDrivers
  Caption = #1042#1086#1076#1080#1090#1077#1083#1080
  ClientHeight = 416
  ClientWidth = 1012
  ExplicitWidth = 1028
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1012
    ExplicitWidth = 1012
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1012
    Height = 385
    Align = alClient
    TabOrder = 1
    object GridDBTableView1: TcxGridDBTableView
      OnDblClick = GridDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAUTO_DRIVER
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
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      object GridDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object GridDBTableView1IS_ACTIVE: TcxGridDBColumn
        Caption = #1040#1082#1090#1080#1074
        DataBinding.FieldName = 'IS_ACTIVE'
        RepositoryItem = DM.erCheckGreen
        MinWidth = 40
        Options.HorzSizing = False
        Width = 40
      end
      object GridDBTableView1PRODUCTION_ID: TcxGridDBColumn
        Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
        DataBinding.FieldName = 'PRODUCTION_ID'
        RepositoryItem = DM.erProduction
        Width = 240
      end
      object GridDBTableView1NAME: TcxGridDBColumn
        Caption = #1042#1086#1076#1080#1090#1077#1083#1100
        DataBinding.FieldName = 'NAME'
        Width = 143
      end
      object GridDBTableView1AUTO_LIST: TcxGridDBColumn
        Caption = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1100
        DataBinding.FieldName = 'AUTO_LIST'
        Width = 172
      end
      object GridDBTableView1PHONE_MOBILE: TcxGridDBColumn
        Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
        DataBinding.FieldName = 'PHONE_MOBILE'
        Width = 200
      end
      object GridDBTableView1DESCRIPTION: TcxGridDBColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 200
      end
      object GridDBTableView1FUEL_CARD_ID: TcxGridDBColumn
        DataBinding.FieldName = 'FUEL_CARD_ID'
        Visible = False
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  inherited BM: TdxBarManager
    Left = 160
    Top = 112
    PixelsPerInch = 96
    inherited BMBar: TdxBar
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
          ItemName = 'bbEdit'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object bbAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbAddClick
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
  end
  object AUTO_DRIVER: TpFIBDataSet
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      
        '    (select list(A.GOS_NOMER||'#39' '#39'||'#39' '#39'||A.MODEL_NAME, ascii_char' +
        '(13)) from AUTO_DRIVERS AD, AUTOMOBILE A where AD.DRIVER_ID=D.ID' +
        ' and A.ID=AD.AUTO_ID ) AUTO_LIST,'
      '    coalesce(IS_ACTIVE, 1) IS_ACTIVE,'
      ''
      '    FUEL_CARD_ID,'
      '    PRODUCTION_ID,'
      '    PHONE_MOBILE, description'
      'FROM'
      '    AUTO_DRIVER D'
      'where'
      '    D.ID=:ID')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      
        '    (select list(A.GOS_NOMER||'#39' '#39'||'#39' '#39'||A.MODEL_NAME, ascii_char' +
        '(13)) from AUTO_DRIVERS AD, AUTOMOBILE A where AD.DRIVER_ID=D.ID' +
        ' and A.ID=AD.AUTO_ID ) AUTO_LIST,'
      '    coalesce(IS_ACTIVE, 1) IS_ACTIVE,'
      ''
      '    FUEL_CARD_ID,'
      '    PRODUCTION_ID,'
      '    PHONE_MOBILE, description'
      'FROM'
      '    AUTO_DRIVER D'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 104
    Top = 112
  end
  object dsAUTO_DRIVER: TDataSource
    DataSet = AUTO_DRIVER
    OnDataChange = dsAUTO_DRIVERDataChange
    Left = 112
    Top = 160
  end
end
