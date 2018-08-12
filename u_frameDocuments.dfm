object frameDocuments: TframeDocuments
  Left = 0
  Top = 0
  Width = 782
  Height = 281
  TabOrder = 0
  object dockDocuments: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 782
    Height = 31
    Align = dalTop
    BarManager = BM
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 31
    Width = 782
    Height = 250
    Align = alClient
    TabOrder = 1
    object cxGrid2DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid2DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDocuments
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glHorizontal
      object cxGrid2DBTableView1DOCUMENT_TYPE_NAME: TcxGridDBColumn
        Caption = #1056#1072#1079#1076#1077#1083
        DataBinding.FieldName = 'DOCUMENT_TYPE_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 107
      end
      object cxGrid2DBTableView1DESCRIPTION: TcxGridDBColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
        DataBinding.FieldName = 'DESCRIPTION'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 212
      end
      object cxGrid2DBTableView1FILESIZE: TcxGridDBColumn
        Caption = #1056#1072#1079#1084#1077#1088', '#1050#1041
        DataBinding.FieldName = 'FILESIZE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DisplayFormat = ',0.0;-,0.0'
        MinWidth = 80
        Options.HorzSizing = False
        Width = 80
      end
      object cxGrid2DBTableView1DATA: TcxGridDBColumn
        DataBinding.FieldName = 'DATA'
        Visible = False
      end
      object cxGrid2DBTableView1CREATED_BY_USER_ID: TcxGridDBColumn
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        DataBinding.FieldName = 'CREATED_BY_USER_ID'
        RepositoryItem = DM.erUsers
        Width = 96
      end
      object cxGrid2DBTableView1CREATED_DT: TcxGridDBColumn
        Caption = #1044#1086#1073#1072#1074#1083#1077#1085
        DataBinding.FieldName = 'CREATED_DT'
        PropertiesClassName = 'TcxDateEditProperties'
        MinWidth = 100
        Options.HorzSizing = False
        Width = 100
      end
      object cxGrid2DBTableView1FILENAME: TcxGridDBColumn
        Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
        DataBinding.FieldName = 'FILENAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 185
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object Documents: TpFIBDataSet
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'select'
      '  ID,'
      '  DOCUMENT_TYPE,'
      
        '  (select NAME from REFBOOK where ID=DOC.DOCUMENT_TYPE) DOCUMENT' +
        '_TYPE_NAME,'
      '  DESCRIPTION, FILENAME, CREATED_by_user_ID, CREATED_DT,'
      '  cast(FILESIZE/1024.0 as T_AMOUNT) FILESIZE'
      'from documents doc where doc.id=:id')
    SelectSQL.Strings = (
      'select'
      '  ID,'
      '  DOCUMENT_TYPE,'
      
        '  (select NAME from REFBOOK where ID=DOC.DOCUMENT_TYPE) DOCUMENT' +
        '_TYPE_NAME,'
      '  DESCRIPTION, FILENAME, CREATED_by_user_ID, CREATED_DT,'
      '  cast(FILESIZE/1024.0 as T_AMOUNT) FILESIZE'
      'from'
      '  documents doc'
      'where'
      
        '  (doc.CONTRAGENT_ID=:CONTRAGENT_ID and :CONTRAGENT_ID is not nu' +
        'll)'
      '  or'
      '  (doc.REQUEST_ID=:REQUEST_ID and :REQUEST_ID is not null)'
      '  or'
      
        '  (doc.AUTOMOBILE_ID=:AUTOMOBILE_ID and :AUTOMOBILE_ID is not nu' +
        'll)'
      '  or'
      
        '  (doc.DOC_ROUTE_CARD_ID=:DOC_ROUTE_CARD_ID and :DOC_ROUTE_CARD_' +
        'ID is not null)'
      ''
      '')
    Transaction = trDocuments
    Database = DM.FB
    UpdateTransaction = trDocumentsWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 112
    Top = 160
    WaitEndMasterScroll = True
    dcForceMasterRefresh = True
    dcForceOpen = True
  end
  object dsDocuments: TDataSource
    DataSet = Documents
    OnDataChange = dsDocumentsDataChange
    Left = 160
    Top = 160
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
    Left = 232
    Top = 160
    PixelsPerInch = 96
    object BMBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1044#1086#1082#1091#1084#1077#1085#1099
      CaptionButtons = <>
      DockControl = dockDocuments
      DockedDockControl = dockDocuments
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 792
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
          ItemName = 'bbAddScan'
        end
        item
          Visible = True
          ItemName = 'bbEdit'
        end
        item
          Visible = True
          ItemName = 'bbView'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRecentItems = False
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
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 22
      PaintStyle = psCaptionGlyph
      OnClick = bbAddClick
    end
    object bbAddScan: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1082#1072#1085' '#1076#1086#1075#1086#1074#1086#1088#1072
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1082#1072#1085' '#1076#1086#1075#1086#1074#1086#1088#1072
      Visible = ivAlways
      ImageIndex = 40
      PaintStyle = psCaptionGlyph
      OnClick = bbAddScanClick
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
    object bbView: TdxBarButton
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      Category = 0
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088
      Visible = ivAlways
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
      OnClick = bbViewClick
    end
  end
  object trDocuments: TpFIBTransaction
    DefaultDatabase = DM.FB
    Left = 112
    Top = 208
  end
  object trDocumentsWrite: TpFIBTransaction
    DefaultDatabase = DM.FB
    Left = 168
    Top = 208
  end
end
