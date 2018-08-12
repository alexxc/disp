object frameRequestOffer: TframeRequestOffer
  Left = 0
  Top = 0
  Width = 698
  Height = 442
  TabOrder = 0
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 698
    Height = 31
    Align = dalTop
    BarManager = BMOffer
  end
  object Grid: TcxGrid
    Left = 0
    Top = 31
    Width = 698
    Height = 411
    Align = alClient
    TabOrder = 1
    object GridDBTableView1: TcxGridDBTableView
      OnDblClick = GridDBTableView1DblClick
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
      DataController.DataSource = dsOFFER
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = GridDBTableView1ID
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object GridDBTableView1ID: TcxGridDBColumn
        Caption = #1062#1055' '#8470
        DataBinding.FieldName = 'ID'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object GridDBTableView1REQUEST_ID: TcxGridDBColumn
        DataBinding.FieldName = 'REQUEST_ID'
        Visible = False
      end
      object GridDBTableView1OFFER_DATE: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'OFFER_DATE'
        Options.Editing = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 74
      end
      object GridDBTableView1ORGANIZATION_ID: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'ORGANIZATION_ID'
        RepositoryItem = DM.erOrganization
        Options.Editing = False
        Width = 179
      end
      object GridDBTableView1STATUS: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = DM.erOfferState
        Options.Editing = False
        Width = 111
      end
      object GridDBTableView1DETAIL_COUNT: TcxGridDBColumn
        Caption = #1055#1086#1079'-'#1081
        DataBinding.FieldName = 'DETAIL_COUNT'
        Options.Editing = False
        Width = 48
      end
      object GridDBTableView1CHANGES: TcxGridDBColumn
        Caption = #1047#1072#1084#1077#1085
        DataBinding.FieldName = 'CHANGES'
        Visible = False
      end
      object GridDBTableView1QTY: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086
        DataBinding.FieldName = 'QTY'
        Options.Editing = False
        Width = 57
      end
      object GridDBTableView1AMOUNT: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'AMOUNT'
        Options.Editing = False
        Width = 81
      end
      object GridDBTableView1CREATED_BY: TcxGridDBColumn
        Caption = #1040#1074#1090#1086#1088
        DataBinding.FieldName = 'CREATED_BY'
        Options.Editing = False
        Width = 98
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object BMOffer: TdxBarManager
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
    Left = 472
    Top = 256
    PixelsPerInch = 96
    object BMOfferBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 708
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
          ItemName = 'bbCopy'
        end
        item
          Visible = True
          ItemName = 'bbEdit'
        end
        item
          Visible = True
          ItemName = 'bbOfferPrint'
        end
        item
          Visible = True
          ItemName = 'bbOfferCreateDog'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
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
    object bbRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = bbRefreshClick
    end
    object bbDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
    end
    object bbCopy: TdxBarListItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 58
      OnClick = bbCopyClick
    end
    object bbOfferPrint: TdxBarButton
      Caption = #1062#1055
      Category = 0
      Hint = #1062#1055
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = bbOfferPrintClick
    end
    object bbOfferCreateDog: TdxBarButton
      Caption = #1044#1086#1075#1086#1074#1086#1088
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088
      Visible = ivNever
      ImageIndex = 15
      PaintStyle = psCaptionGlyph
      OnClick = bbOfferCreateDogClick
    end
  end
  object OFFER: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      
        '  O.ID, O.REQUEST_ID, O.ORGANIZATION_ID, O.OFFER_NUM, O.OFFER_DA' +
        'TE, O.STATUS, O.CREATED_BY,'
      '  count(D.ID) DETAIL_COUNT,'
      '  sum(D.CHANGES) CHANGES,'
      '  sum(D.QTY) QTY,'
      '  sum(D.AMOUNT) AMOUNT,'
      '  iif(STATUS in (161, 162, 163, 166), 1, 0) IS_READONLY'
      'from REQUEST_OFFER O'
      'left join REQUEST_OFFER_DETAIL D on D.PID=O.ID'
      'where O.ID=:ID'
      'group by'
      '  1, 2, 3, 4, 5, 6, 7'
      'order by'
      '  O.OFFER_DATE')
    SelectSQL.Strings = (
      'select'
      
        '  O.ID, O.REQUEST_ID, O.ORGANIZATION_ID, O.OFFER_NUM, O.OFFER_DA' +
        'TE, O.STATUS, O.CREATED_BY,'
      '  count(D.ID) DETAIL_COUNT,'
      '  sum(D.CHANGES) CHANGES,'
      '  sum(D.QTY) QTY,'
      '  sum(D.AMOUNT) AMOUNT,'
      '  iif(STATUS in (161, 162, 163, 166), 1, 0) IS_READONLY'
      'from REQUEST_OFFER O'
      'left join REQUEST_OFFER_DETAIL D on D.PID=O.ID'
      'where'
      '  O.REQUEST_ID=coalesce(:REQUEST_ID, 972)'
      'group by'
      '  1, 2, 3, 4, 5, 6, 7'
      'order by'
      '  O.OFFER_DATE  ')
    AfterOpen = OFFERAfterOpen
    Transaction = DM.trRead
    Database = DM.FB
    UpdateTransaction = DM.trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 280
    Top = 152
  end
  object dsOFFER: TDataSource
    DataSet = OFFER
    OnDataChange = dsOFFERDataChange
    Left = 328
    Top = 160
  end
  object Q: TpFIBQuery
    Transaction = DM.trWrite
    Database = DM.FB
    Left = 176
    Top = 152
    qoStartTransaction = True
  end
end
