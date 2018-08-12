inherited fmRequestOffer: TfmRequestOffer
  Left = 583
  Top = 350
  Caption = #1062#1077#1085#1086#1074#1086#1077' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077
  ClientHeight = 569
  ClientWidth = 978
  ExplicitWidth = 994
  ExplicitHeight = 608
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 978
    ExplicitWidth = 978
  end
  object Pages: TcxPageControl [1]
    Left = 0
    Top = 31
    Width = 978
    Height = 538
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabMain
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 532
    ClientRectLeft = 2
    ClientRectRight = 972
    ClientRectTop = 27
    object tabMain: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1086#1077
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 137
        Align = alClient
        Caption = #1057#1086#1089#1090#1072#1074
        TabOrder = 0
        Height = 368
        Width = 970
        object cxGrid1: TcxGrid
          Left = 3
          Top = 46
          Width = 964
          Height = 313
          Align = alClient
          TabOrder = 0
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
            OnFocusedItemChanged = cxGrid1DBTableView1FocusedItemChanged
            DataController.DataSource = dsDETAIL
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGrid1DBTableView1ADDRESS
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGrid1DBTableView1QTY
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Column = cxGrid1DBTableView1CHANGES
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1AMOUNT
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
            end
            object cxGrid1DBTableView1ADDRESS: TcxGridDBColumn
              Caption = #1040#1076#1088#1077#1089
              DataBinding.FieldName = 'ADDRESS'
              Width = 250
            end
            object cxGrid1DBTableView1MAT_TYPE: TcxGridDBColumn
              Caption = #1050#1086#1074#1077#1088
              DataBinding.FieldName = 'MAT_TYPE'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownListStyle = lsFixedList
              Properties.ImmediateDropDownWhenActivated = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'id'
              Properties.ListColumns = <
                item
                  FieldName = 'name'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = DM.dsRequestMatType
              Width = 139
            end
            object cxGrid1DBTableView1QTY: TcxGridDBColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'QTY'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0;-,0'
              Properties.Nullable = False
            end
            object cxGrid1DBTableView1CHANGES: TcxGridDBColumn
              Caption = #1047#1072#1084#1077#1085
              DataBinding.FieldName = 'CHANGES'
              RepositoryItem = DM.erMatChanges
              Width = 112
            end
            object cxGrid1DBTableView1PRICE: TcxGridDBColumn
              Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
              DataBinding.FieldName = 'PRICE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.Nullable = False
              Width = 103
            end
            object cxGrid1DBTableView1PRICE_M2: TcxGridDBColumn
              Caption = #1057#1090'-'#1090#1100' '#1079#1072' '#1084#178
              DataBinding.FieldName = 'PRICE_M2'
              Options.Editing = False
              Width = 75
            end
            object cxGrid1DBTableView1AMOUNT: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072
              DataBinding.FieldName = 'AMOUNT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.Nullable = False
              Options.Editing = False
              Width = 120
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object dxBarDockControl2: TdxBarDockControl
          Left = 3
          Top = 15
          Width = 964
          Height = 31
          Align = dalTop
          BarManager = BM
          ExplicitLeft = 2
          ExplicitTop = -1
          ExplicitWidth = 966
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        TabOrder = 1
        Height = 137
        Width = 970
        object cxLabel1: TcxLabel
          Left = 16
          Top = 21
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          Style.TextStyle = [fsBold]
          Transparent = True
        end
        object ORGANIZATION_ID: TcxDBLookupComboBox
          Left = 16
          Top = 36
          RepositoryItem = DM.erOrganization
          DataBinding.DataField = 'ORGANIZATION_ID'
          DataBinding.DataSource = dsOFFER
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.ListColumns = <>
          Properties.ListOptions.ShowHeader = False
          Properties.OnCloseUp = ORGANIZATION_IDPropertiesCloseUp
          TabOrder = 1
          Width = 145
        end
        object cxLabel2: TcxLabel
          Left = 176
          Top = 20
          Caption = #8470
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 221
          Top = 20
          Caption = #1086#1090
          Transparent = True
        end
        object OFFER_ID: TcxDBTextEdit
          Left = 176
          Top = 37
          DataBinding.DataField = 'ID'
          DataBinding.DataSource = dsOFFER
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 4
          Width = 33
        end
        object OFFER_DATE: TcxDBDateEdit
          Left = 215
          Top = 37
          DataBinding.DataField = 'OFFER_DATE'
          DataBinding.DataSource = dsOFFER
          Properties.DateButtons = [btnToday]
          Properties.ImmediatePost = True
          Properties.PostPopupValueOnTab = True
          Properties.ShowTime = False
          Properties.View = cavModern
          TabOrder = 5
          Width = 90
        end
        object cxLabel4: TcxLabel
          Left = 16
          Top = 63
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 331
          Top = 20
          Caption = #1041#1072#1079#1086#1074#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072#1084#1077#1085#1099
          Transparent = True
        end
        object BASE_PRICE: TcxDBCalcEdit
          Left = 331
          Top = 37
          DataBinding.DataField = 'BASE_PRICE'
          DataBinding.DataSource = dsOFFER
          Properties.ImmediatePost = True
          TabOrder = 8
          OnExit = BASE_PRICEExit
          Width = 81
        end
        object cxLabel6: TcxLabel
          Left = 413
          Top = 38
          Caption = #1079#1072' '#1084#178
          Transparent = True
        end
        object PRICE_TYPE: TcxDBImageComboBox
          Left = 447
          Top = 36
          DataBinding.DataField = 'PRICE_TYPE'
          DataBinding.DataSource = dsOFFER
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = #1073#1077#1079' '#1053#1044#1057
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #1089' '#1053#1044#1057
              Value = 1
            end>
          TabOrder = 10
          Width = 70
        end
        object DESCRIPTION: TcxDBMemo
          Left = 16
          Top = 78
          DataBinding.DataField = 'DESCRIPTION'
          DataBinding.DataSource = dsOFFER
          TabOrder = 11
          Height = 43
          Width = 657
        end
        object cxLabel7: TcxLabel
          Left = 533
          Top = 20
          Caption = #1057#1090#1072#1090#1091#1089
          Transparent = True
        end
        object STATUS: TcxDBImageComboBox
          Left = 533
          Top = 36
          RepositoryItem = DM.erOfferState
          DataBinding.DataField = 'STATUS'
          DataBinding.DataSource = dsOFFER
          Properties.Items = <>
          TabOrder = 13
          Width = 140
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 1
      TabVisible = False
      object dockTemplate: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 970
        Height = 31
        Align = dalTop
        BarManager = BM
      end
    end
  end
  inherited trRead: TpFIBTransaction
    Left = 592
    Top = 16
  end
  inherited trWrite: TpFIBTransaction
    Left = 528
    Top = 16
  end
  inherited BM: TdxBarManager
    Categories.Strings = (
      'Default'
      'Detail')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    Left = 488
    Top = 16
    PixelsPerInch = 96
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
          ItemName = 'bbMakeOffer'
        end
        item
          Visible = True
          ItemName = 'bbMakeDog'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object barDetail: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Detail'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 464
      FloatTop = 256
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDetailAdd'
        end
        item
          Visible = True
          ItemName = 'bbDetailEdit'
        end
        item
          Visible = True
          ItemName = 'bbDetailDelete'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object barTemplate: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Template'
      CaptionButtons = <>
      DockControl = dockTemplate
      DockedDockControl = dockTemplate
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1012
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDetailEdit'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    inherited bbRefresh: TdxBarButton
      OnClick = bbRefreshClick
    end
    object bbMakeOffer: TdxBarButton
      Caption = #1062#1055
      Category = 0
      Hint = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1062#1055
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = bbMakeOfferClick
    end
    object bbMakeDog: TdxBarButton
      Caption = #1044#1086#1075#1086#1074#1086#1088
      Category = 0
      Hint = #1044#1086#1075#1086#1074#1086#1088
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = bbMakeDogClick
    end
    object bbDetailAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 1
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbDetailAddClick
    end
    object bbDetailDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 1
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      OnClick = bbDetailDeleteClick
    end
    object bbDetailEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 1
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbDetailEditClick
    end
    object bbDetailCopy: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      Category = 1
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 23
      PaintStyle = psCaptionGlyph
      OnClick = bbDetailCopyClick
    end
  end
  object OFFER: TpFIBDataSet
    UpdateSQL.Strings = (
      'update REQUEST_OFFER set'
      '  REQUEST_ID = :REQUEST_ID,'
      '  ORGANIZATION_ID = :ORGANIZATION_ID,'
      '  OFFER_NUM = :OFFER_NUM,'
      '  OFFER_DATE = :OFFER_DATE,'
      '  PRICE_TYPE = :PRICE_TYPE,'
      '  NDS = :NDS,'
      '  BASE_PRICE = :BASE_PRICE,'
      '  DESCRIPTION = :DESCRIPTION,'
      '  STATUS = :STATUS'
      'where ID = :ID')
    InsertSQL.Strings = (
      'insert into REQUEST_OFFER'
      
        '  (REQUEST_ID, ORGANIZATION_ID, OFFER_NUM, OFFER_DATE, PRICE_TYP' +
        'E, NDS, BASE_PRICE, DESCRIPTION, STATUS)'
      'values'
      
        '  (:REQUEST_ID, :ORGANIZATION_ID, :OFFER_NUM, :OFFER_DATE, :PRIC' +
        'E_TYPE, :NDS, :BASE_PRICE, :DESCRIPTION, :STATUS)'
      'returning ID'
      '')
    RefreshSQL.Strings = (
      'select'
      '  O.ID, O.REQUEST_ID,'
      '  O.ORGANIZATION_ID,'
      
        '  O.OFFER_NUM, O.OFFER_DATE, coalesce(O.PRICE_TYPE, 0) PRICE_TYP' +
        'E,'
      '  coalesce(O.NDS, 0) NDS,'
      '  O.BASE_PRICE,'
      '  O.DESCRIPTION,'
      '  O.STATUS,'
      '  iif(STATUS not in (164, 165), 1, 0) IS_READONLY'
      'from'
      '  REQUEST_OFFER O'
      'where'
      '  O.ID=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  O.ID, O.REQUEST_ID,'
      '  O.ORGANIZATION_ID,'
      '  O.OFFER_NUM, coalesce(O.OFFER_DATE, current_date) OFFER_DATE,'
      '  coalesce(O.PRICE_TYPE, 0) PRICE_TYPE,'
      '  coalesce(O.NDS, 0) NDS,'
      '  O.BASE_PRICE,'
      '  O.DESCRIPTION,'
      '  O.STATUS,'
      '  iif(STATUS in (161, 162, 163, 166), 1, 0) IS_READONLY'
      'from'
      '  REQUEST_OFFER O'
      'where'
      '  O.ID=:ID')
    AfterEdit = OFFERAfterEdit
    AfterPost = OFFERAfterPost
    Transaction = trWrite
    Database = DM.FB
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 682
    Top = 90
  end
  object dsOFFER: TDataSource
    DataSet = OFFER
    Left = 730
    Top = 90
  end
  object DETAIL: TpFIBDataSet
    UpdateSQL.Strings = (
      'update REQUEST_OFFER_DETAIL D set'
      '  D.ADDRESS=:ADDRESS,'
      '  D.MAT_TYPE=:MAT_TYPE,'
      '  D.CHANGES=:CHANGES,'
      '  D.QTY=:QTY,'
      '  D.PRICE=:PRICE,'
      '  D.AMOUNT=:AMOUNT'
      'where'
      '  D.ID=:ID')
    DeleteSQL.Strings = (
      'delete from REQUEST_OFFER_DETAIL D where D.ID=:OLD_ID')
    InsertSQL.Strings = (
      
        'insert into REQUEST_OFFER_DETAIL (PID, ADDRESS, MAT_TYPE, CHANGE' +
        'S, QTY, PRICE, AMOUNT)'
      
        'values (:PID, :ADDRESS, :MAT_TYPE, :CHANGES, :QTY, :PRICE, :AMOU' +
        'NT)'
      'returning ID')
    RefreshSQL.Strings = (
      'select'
      '  D.ID, D.ADDRESS, D.MAT_TYPE, D.CHANGES, D.QTY,'
      '  D.PRICE,'
      
        '  cast(D.PRICE / (M.WIDTH * M.HEIGHT / 10000.000) as T_AMOUNT) P' +
        'RICE_M2,'
      '  (M.WIDTH * M.HEIGHT / 10000.000) SQUARE,'
      '  D.AMOUNT'
      'from'
      '  REQUEST_OFFER_DETAIL D'
      '  left join REF_REQUEST_MAT_TYPE M on M.ID=D.MAT_TYPE'
      'where'
      '  D.ID=:ID')
    SelectSQL.Strings = (
      'select'
      '  D.ID, D.ADDRESS, D.MAT_TYPE, D.CHANGES, D.QTY,'
      '  D.PRICE,'
      
        '  cast(D.PRICE / (M.WIDTH * M.HEIGHT / 10000.000) as T_AMOUNT) P' +
        'RICE_M2,'
      '  (M.WIDTH * M.HEIGHT / 10000.000) SQUARE,'
      '  D.AMOUNT'
      'from'
      '  REQUEST_OFFER_DETAIL D'
      '  left join REF_REQUEST_MAT_TYPE M on M.ID=D.MAT_TYPE'
      'where'
      '  1=1'
      '  and D.PID=:PID')
    AfterDelete = DETAILAfterEdit
    AfterEdit = DETAILAfterEdit
    AfterInsert = OFFERAfterEdit
    Transaction = trWrite
    Database = DM.FB
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 690
    Top = 146
  end
  object dsDETAIL: TDataSource
    DataSet = DETAIL
    OnDataChange = dsDETAILDataChange
    Left = 738
    Top = 146
  end
end
