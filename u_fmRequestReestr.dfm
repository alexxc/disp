inherited fmRequestReestr: TfmRequestReestr
  Left = 303
  Top = 202
  Caption = #1056#1077#1077#1089#1090#1088' '#1079#1072#1103#1074#1086#1082
  ClientHeight = 742
  ClientWidth = 1360
  ExplicitWidth = 1376
  ExplicitHeight = 780
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1360
    ExplicitWidth = 1360
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1360
    Height = 354
    Align = alClient
    TabOrder = 1
    object TableView: TcxGridDBTableView
      OnDblClick = TableViewDblClick
      Navigator.Buttons.CustomButtons = <>
      OnGetCellHeight = TableViewGetCellHeight
      DataController.DataSource = dsRequest
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = ',0;-,0'
          Kind = skCount
          Column = TableViewID
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = TableViewID
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = TableViewDETAIL_COUNT
        end
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
          Column = TableViewAMOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = TableViewCOMPANY_NAME
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      object TableViewID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        PropertiesClassName = 'TcxTextEditProperties'
        MinWidth = 45
        Width = 45
      end
      object TableViewREQUEST_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'REQUEST_DT'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 106
      end
      object TableViewCOMPANY_NAME: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        DataBinding.FieldName = 'COMPANY_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 163
      end
      object TableViewINN: TcxGridDBColumn
        Caption = #1048#1053#1053
        DataBinding.FieldName = 'INN'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 94
      end
      object TableViewNAME: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086
        DataBinding.FieldName = 'NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 176
      end
      object TableViewPHONE: TcxGridDBColumn
        Caption = #1058#1077#1083#1077#1092#1086#1085
        DataBinding.FieldName = 'PHONE'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 162
      end
      object TableViewSOURCE: TcxGridDBColumn
        Caption = #1048#1089#1090#1086#1095#1085#1080#1082
        DataBinding.FieldName = 'SOURCE'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Width = 120
      end
      object TableViewMANAGER_ID: TcxGridDBColumn
        Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
        DataBinding.FieldName = 'MANAGER_ID'
        RepositoryItem = DM.erUsers
        Width = 123
      end
      object TableViewSTATUS: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DM.ImageListStatuses
        Properties.Items = <>
        Width = 130
      end
      object TableViewDETAIL_COUNT: TcxGridDBColumn
        Caption = #1055#1086#1079#1080#1094#1080#1081
        DataBinding.FieldName = 'DETAIL_COUNT'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Width = 49
      end
      object TableViewAMOUNT: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 81
      end
      object TableViewCONTRAGENT_ID: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'CONTRAGENT_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 165
      end
      object TableViewLAST_MESSAGE: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083#1077
        DataBinding.FieldName = 'LAST_MESSAGE'
        PropertiesClassName = 'TcxMemoProperties'
        Width = 241
      end
      object TableViewLAST_MESSAGE_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1078#1091#1088#1085#1072#1083#1072
        DataBinding.FieldName = 'LAST_MESSAGE_DT'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 100
      end
      object TableViewREGION_NAME: TcxGridDBColumn
        Caption = #1056#1077#1075#1080#1086#1085
        DataBinding.FieldName = 'REGION_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 100
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = TableView
    end
  end
  object cxSplitter1: TcxSplitter [2]
    Left = 0
    Top = 385
    Width = 1360
    Height = 5
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salBottom
    Control = Pages
  end
  object Pages: TcxPageControl [3]
    Left = 0
    Top = 390
    Width = 1360
    Height = 352
    Align = alBottom
    TabOrder = 3
    Properties.ActivePage = tabJournal
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 346
    ClientRectLeft = 2
    ClientRectRight = 1354
    ClientRectTop = 27
    object tabDetail: TcxTabSheet
      Caption = #1057#1086#1089#1090#1072#1074
      ImageIndex = 0
      TabVisible = False
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1352
        Height = 319
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsRequestDetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid1DBTableView1QTY
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1CHANGES
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1AMOUNT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1MAT_TYPE: TcxGridDBColumn
            Caption = #1058#1080#1087' '#1082#1086#1074#1088#1072
            DataBinding.FieldName = 'MAT_TYPE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.DropDownSizeable = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'id'
            Properties.ListColumns = <
              item
                Caption = #1050#1086#1074#1088#1080#1082
                Fixed = True
                Width = 150
                FieldName = 'name'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DM.dsRequestMatType
            Properties.PostPopupValueOnTab = True
            Properties.Revertable = True
            Width = 230
          end
          object cxGrid1DBTableView1QTY: TcxGridDBColumn
            Caption = #1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'QTY'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ImmediatePost = True
            Properties.MaxValue = 9999.000000000000000000
            Properties.SpinButtons.Position = sbpHorzLeftRight
            Properties.SpinButtons.Visible = False
            Options.ShowEditButtons = isebAlways
            Width = 69
          end
          object cxGrid1DBTableView1CHANGES: TcxGridDBColumn
            Caption = #1047#1072#1084#1077#1085
            DataBinding.FieldName = 'CHANGES'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = '1 '#1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
                ImageIndex = 0
                Value = 4
              end
              item
                Description = '2 '#1088#1072#1079#1072' '#1074' '#1085#1077#1076#1077#1083#1102
                Value = 8
              end
              item
                Description = '3 '#1088#1072#1079#1072' '#1074' '#1085#1077#1076#1077#1083#1102
                Value = 12
              end
              item
                Description = '4 '#1088#1072#1079#1072' '#1074' '#1085#1077#1076#1077#1083#1102
                Value = 16
              end
              item
                Description = '2 '#1088#1072#1079#1072' '#1074' '#1084#1077#1089#1103#1094
                Value = 2
              end>
            Properties.PostPopupValueOnTab = True
            Width = 126
          end
          object cxGrid1DBTableView1PRICE: TcxGridDBColumn
            Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            DataBinding.FieldName = 'PRICE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 135
          end
          object cxGrid1DBTableView1AMOUNT: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Width = 121
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object tabJournal: TcxTabSheet
      Caption = #1046#1091#1088#1085#1072#1083
      ImageIndex = 1
      inline frameJournal: TframeJournal
        Left = 0
        Top = 0
        Width = 1352
        Height = 319
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1352
        ExplicitHeight = 319
        inherited Grid: TcxGrid
          Width = 1352
          Height = 288
          ExplicitWidth = 1352
          ExplicitHeight = 288
        end
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 1352
          ExplicitWidth = 1352
        end
        inherited BM: TdxBarManager
          PixelsPerInch = 96
          inherited bbAdd: TdxBarButton
            OnClick = frameJournalbbAddClick
          end
        end
      end
    end
    object tabDocuments: TcxTabSheet
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      ImageIndex = 2
      inline frameDocuments: TframeDocuments
        Left = 0
        Top = 0
        Width = 1352
        Height = 319
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1352
        ExplicitHeight = 319
        inherited dockDocuments: TdxBarDockControl
          Width = 1352
          ExplicitWidth = 1352
        end
        inherited cxGrid2: TcxGrid
          Width = 1352
          Height = 288
          ExplicitWidth = 1352
          ExplicitHeight = 288
        end
        inherited BM: TdxBarManager
          PixelsPerInch = 96
          inherited BMBar1: TdxBar
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
                ItemName = 'bbView'
              end>
          end
        end
      end
    end
  end
  inherited BM: TdxBarManager
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbActiveRequestOnly'
        end
        item
          Visible = True
          ItemName = 'bbOnlyMy'
        end
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbNew'
        end
        item
          Visible = True
          ItemName = 'bbNewTender'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClone'
        end
        item
          Visible = True
          ItemName = 'bbEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbExport'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object bbNew: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbNewClick
    end
    object bbActiveRequestOnly: TdxBarButton
      Caption = #1058#1086#1083#1100#1082#1086' '#1072#1082#1090#1080#1074#1085#1099#1077' '#1079#1072#1103#1074#1082#1080
      Category = 0
      Hint = #1058#1086#1083#1100#1082#1086' '#1072#1082#1090#1080#1074#1085#1099#1077' '#1079#1072#1103#1074#1082#1080
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbActiveRequestOnlyClick
    end
    object bbEdit: TdxBarButton
      Caption = #1054#1090#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbEditClick
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
    object bbNewTender: TdxBarButton
      Caption = #1053#1086#1074#1099#1081' '#1072#1091#1082#1094#1080#1086#1085
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1072#1091#1082#1094#1080#1086#1085
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbNewTenderClick
    end
    object bbClone: TdxBarButton
      Caption = #1057#1082#1083#1086#1085#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1082#1083#1086#1085#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 57
      PaintStyle = psCaptionGlyph
      OnClick = bbCloneClick
    end
    object bbOnlyMy: TdxBarButton
      Caption = #1058#1086#1083#1100#1082#1086' '#1084#1086#1080
      Category = 0
      Hint = #1058#1086#1083#1100#1082#1086' '#1084#1086#1080
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbOnlyMyClick
    end
  end
  object Request: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      '  r.ID, r.REQUEST_DT, r.NAME, r.PHONE,'
      '  R.SOURCE SOURCE_ID, REFBOOK.NAME SOURCE,'
      '  r.DESCRIPTION,'
      '  R.MANAGER_ID, USERS.NAME MANAGER_NAME,'
      
        '  (select count(id) from REQUEST_DETAIL D where D.PID=R.ID and D' +
        '.QTY>0 and D.CHANGES>0) DETAIL_COUNT,'
      '  R.status,'
      '  R.INN, R.COMPANY_NAME,'
      '  IIF('
      '    T.ID is not null,'
      '    T.START_PRICE,'
      
        '    (select cast(coalesce(sum(coalesce(D.PRICE, 0) * coalesce(D.' +
        'QTY, 0) * coalesce(D.CHANGES, 0)), 0) as T_AMOUNT) from REQUEST_' +
        'DETAIL D where D.PID=R.ID)'
      '  ) AMOUNT,'
      '  C.NAME CONTRAGENT_NAME,'
      
        '  (select first 1 J."MESSAGE" from CONTRAGENT_JOURNAL J where J.' +
        'REQUEST_ID=R.ID and coalesce(J.IS_SYSTEM, 0)=0 order by J.ID des' +
        'c) LAST_MESSAGE,'
      
        '  (select first 1 J.CREATED_DT  from CONTRAGENT_JOURNAL J where ' +
        'J.REQUEST_ID=R.ID and coalesce(J.IS_SYSTEM, 0)=0 order by J.ID d' +
        'esc) LAST_MESSAGE_DT'
      'from'
      '    request R'
      '  left join REFBOOK on REFBOOK.ID=R.SOURCE'
      '  left join USERS on USERS.ID=R.MANAGER_ID'
      '  left join CONTRAGENTS C on C.ID=R.CONTRAGENT_ID'
      '  left join REQUEST_TENDER T on T.REQUEST_ID=R.ID'
      'where'
      '    R.ID=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  r.ID,'
      
        '  (select REG.NAME from REF_REGIONS REG where REG.CODE=coalesce(' +
        'R.REGION_CODE, '#39'moscow'#39')) REGION_NAME,'
      '  r.REQUEST_DT, r.NAME, r.PHONE,'
      '  R.SOURCE SOURCE_ID, REFBOOK.NAME SOURCE,'
      '  r.DESCRIPTION,'
      '  R.MANAGER_ID, USERS.NAME MANAGER_NAME,'
      
        '  (select count(id) from REQUEST_DETAIL D where D.PID=R.ID and D' +
        '.QTY>0 and D.CHANGES>0) DETAIL_COUNT,'
      '  R.status,'
      '  R.INN, R.COMPANY_NAME,'
      '  IIF('
      '    T.ID is not null,'
      '    T.START_PRICE,'
      
        '    (select cast(coalesce(sum(coalesce(D.PRICE, 0) * coalesce(D.' +
        'QTY, 0) * coalesce(D.CHANGES, 0)), 0) as T_AMOUNT) from REQUEST_' +
        'DETAIL D where D.PID=R.ID)'
      '  ) AMOUNT,'
      '  C.NAME CONTRAGENT_NAME,'
      
        '  (select first 1 J."MESSAGE" from CONTRAGENT_JOURNAL J where J.' +
        'REQUEST_ID=R.ID and coalesce(J.IS_SYSTEM, 0)=0 order by J.ID des' +
        'c) LAST_MESSAGE,'
      
        '  (select first 1 J.CREATED_DT  from CONTRAGENT_JOURNAL J where ' +
        'J.REQUEST_ID=R.ID and coalesce(J.IS_SYSTEM, 0)=0 order by J.ID d' +
        'esc) LAST_MESSAGE_DT'
      'from'
      '    request R'
      '  left join REFBOOK on REFBOOK.ID=R.SOURCE'
      '  left join USERS on USERS.ID=R.MANAGER_ID'
      '  left join CONTRAGENTS C on C.ID=R.CONTRAGENT_ID'
      '  left join REQUEST_TENDER T on T.REQUEST_ID=R.ID'
      'where'
      '    1=1'
      'order by'
      '  R.ID')
    AfterOpen = RequestAfterOpen
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 136
    Top = 168
  end
  object dsRequest: TDataSource
    DataSet = Request
    OnDataChange = dsRequestDataChange
    Left = 192
    Top = 176
  end
  object RequestDetail: TpFIBDataSet
    UpdateSQL.Strings = (
      '')
    DeleteSQL.Strings = (
      '')
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'select'
      '  ID,'
      '  D.MAT_TYPE,'
      '  D.CHANGES,'
      '  D.QTY, D.PRICE,'
      
        '  coalesce(coalesce(D.PRICE, 0)*coalesce(D.CHANGES, 0)*coalesce(' +
        'D.QTY,0), 0) AMOUNT'
      'from'
      '  REQUEST_DETAIL D'
      'where'
      '  D.ID = :OLD_ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  ID,'
      '  D.MAT_TYPE,'
      '  D.CHANGES,'
      '  D.QTY, D.PRICE,'
      
        '  coalesce(coalesce(D.PRICE, 0)*coalesce(D.CHANGES, 0)*coalesce(' +
        'D.QTY,0), 0) AMOUNT'
      'from'
      '  REQUEST_DETAIL D'
      'where'
      '    D.PID = coalesce(:PID, 27)'
      '    and D.QTY>0'
      '    and D.CHANGES>0')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 136
    Top = 296
    oRefreshAfterDelete = True
    oRefreshDeletedRecord = True
  end
  object dsRequestDetail: TDataSource
    DataSet = RequestDetail
    Left = 192
    Top = 296
  end
  object Timer: TTimer
    Interval = 10000
    OnTimer = TimerTimer
    Left = 336
    Top = 128
  end
  object RequestRefresh: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      
        '  r.ID, r.REQUEST_DT, r.NAME, r.PHONE, REFBOOK.NAME SOURCE, r.DE' +
        'SCRIPTION,'
      '  R.MANAGER_ID, USERS.NAME MANAGER_NAME,'
      
        '  (select count(id) from REQUEST_DETAIL D where D.PID=R.ID) DETA' +
        'IL_COUNT,'
      '  status,'
      '  INN, COMPANY_NAME,'
      
        '  (select cast(coalesce(sum(coalesce(D.PRICE, 0) * coalesce(D.QT' +
        'Y, 0) * coalesce(D.CHANGES, 0)), 0) as T_AMOUNT) from REQUEST_DE' +
        'TAIL D where D.PID=R.ID) AMOUNT'
      '  from'
      '    request R'
      '  left join REFBOOK on REFBOOK.ID=R.SOURCE'
      '  left join USERS on USERS.ID=R.MANAGER_ID'
      '  where'
      '    R.ID=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      
        '  r.ID, r.REQUEST_DT, r.NAME, r.PHONE, REFBOOK.NAME SOURCE, r.DE' +
        'SCRIPTION,'
      '  R.MANAGER_ID, USERS.NAME MANAGER_NAME,'
      
        '  (select count(id) from REQUEST_DETAIL D where D.PID=R.ID) DETA' +
        'IL_COUNT,'
      '  status,'
      '  R.INN, COMPANY_NAME,'
      
        '  (select cast(coalesce(sum(coalesce(D.PRICE, 0) * coalesce(D.QT' +
        'Y, 0) * coalesce(D.CHANGES, 0)), 0) as T_AMOUNT) from REQUEST_DE' +
        'TAIL D where D.PID=R.ID) AMOUNT,'
      '  C.NAME CONTRAGENT_NAME,'
      
        '  (select first 1 J."MESSAGE" from CONTRAGENT_JOURNAL J where J.' +
        'REQUEST_ID=R.ID and coalesce(J.IS_SYSTEM, 0)=0 order by R.ID des' +
        'c) LAST_MESSAGE,'
      
        '  (select first 1 J.CREATED_DT  from CONTRAGENT_JOURNAL J where ' +
        'J.REQUEST_ID=R.ID and coalesce(J.IS_SYSTEM, 0)=0 order by R.ID d' +
        'esc) LAST_MESSAGE_DT'
      'from'
      '  request R'
      '  left join REFBOOK on REFBOOK.ID=R.SOURCE'
      '  left join USERS on USERS.ID=R.MANAGER_ID'
      '  left join CONTRAGENTS C on C.ID=R.CONTRAGENT_ID'
      'where'
      '    1=1'
      'order by'
      '  R.ID    ')
    Transaction = trWrite
    Database = DM.FB
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 336
    Top = 176
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 432
    Top = 128
    qoStartTransaction = True
  end
end
