object frameAutoServiceReestr: TframeAutoServiceReestr
  Left = 0
  Top = 0
  Width = 925
  Height = 339
  TabOrder = 0
  object Dock: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 925
    Height = 31
    Align = dalTop
    BarManager = BM
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 31
    Width = 925
    Height = 308
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object SERVICE_TYPE: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1088#1077#1084#1086#1085#1090#1072
        DataBinding.FieldName = 'SERVICE_TYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        Width = 150
      end
      object cxGrid1DBTableView1DATE_START: TcxGridDBColumn
        Caption = #1053#1072#1095#1072#1083#1086
        DataBinding.FieldName = 'DATE_START'
        Width = 90
      end
      object cxGrid1DBTableView1DATE_PLAN: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_PLAN'
        Visible = False
        Width = 90
      end
      object cxGrid1DBTableView1DATE_END: TcxGridDBColumn
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'DATE_END'
        Width = 90
      end
      object cxGrid1DBTableView1NOTES: TcxGridDBColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        DataBinding.FieldName = 'NOTES'
        Width = 366
      end
      object cxGrid1DBTableView1NOTES_STO: TcxGridDBColumn
        DataBinding.FieldName = 'NOTES_STO'
        Visible = False
      end
      object cxGrid1DBTableView1NONES_BOSS_PRODUTION: TcxGridDBColumn
        DataBinding.FieldName = 'NONES_BOSS_PRODUTION'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
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
    Left = 144
    Top = 96
    PixelsPerInch = 96
    object BMBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = Dock
      DockedDockControl = Dock
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 698
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
          ItemName = 'bbEdit'
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
      Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
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
  object DATA: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      '  S.ID, S.SERVICE_TYPE, S.DATE_START, S.DATE_PLAN, S.DATE_END,'
      '  S.NOTES, S.NOTES_STO, S.NONES_BOSS_PRODUTION'
      'from'
      '  AUTO_SERVICE S'
      'where'
      '  S.ID=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  S.ID, S.SERVICE_TYPE, S.DATE_START, S.DATE_PLAN, S.DATE_END,'
      '  S.NOTES, S.NOTES_STO, S.NONES_BOSS_PRODUTION'
      'from'
      '  AUTO_SERVICE S'
      'where'
      '  S.AUTO_ID=:AUTO_ID')
    Transaction = trAutoServiceReestrRead
    Database = DM.FB
    UpdateTransaction = trAutoServiceReestrWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 200
    Top = 96
  end
  object dsDATA: TDataSource
    DataSet = DATA
    OnDataChange = dsDATADataChange
    Left = 248
    Top = 96
  end
  object trAutoServiceReestrRead: TpFIBTransaction
    DefaultDatabase = DM.FB
    Left = 200
    Top = 144
  end
  object trAutoServiceReestrWrite: TpFIBTransaction
    DefaultDatabase = DM.FB
    Left = 304
    Top = 136
  end
end
