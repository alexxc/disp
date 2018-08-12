inherited fmDebitorReport: TfmDebitorReport
  Caption = #1044#1077#1073#1080#1090#1086#1088#1082#1072' '#1087#1086' '#1084#1077#1089#1103#1094#1072#1084
  ClientHeight = 697
  ClientWidth = 1187
  ExplicitWidth = 1203
  ExplicitHeight = 735
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1187
    ExplicitWidth = 1187
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1187
    Height = 452
    Align = alClient
    TabOrder = 5
    object GridView: TcxGridDBTableView
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
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT_OLD
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT6
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT5
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT4
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT3
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT2
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT1
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT0
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT_OLD
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT6
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT5
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT4
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT3
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT2
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT1
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT0
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridViewAMOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soNullIgnore]
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      Styles.Footer = DM.cxStyleBold
      Styles.GroupSummary = DM.cxStyleBold
      object GridViewORGANIZATION_NAME: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'ORGANIZATION_NAME'
        Visible = False
        GroupIndex = 0
        Width = 200
      end
      object GridViewCONTRAGENT_NAME: TcxGridDBColumn
        Caption = #1050#1083#1080#1077#1085#1090
        DataBinding.FieldName = 'CONTRAGENT_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        SortIndex = 0
        SortOrder = soAscending
        Width = 216
      end
      object GridViewAMOUNT_OLD: TcxGridDBColumn
        Caption = #1059#1082#1091#1088#1082#1080
        DataBinding.FieldName = 'AMOUNT_OLD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.OnGetContentStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Styles.OnGetFooterStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Width = 90
      end
      object GridViewAMOUNT6: TcxGridDBColumn
        DataBinding.FieldName = 'AMOUNT6'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.OnGetContentStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Styles.OnGetFooterStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Width = 90
      end
      object GridViewAMOUNT5: TcxGridDBColumn
        DataBinding.FieldName = 'AMOUNT5'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.OnGetContentStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Styles.OnGetFooterStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Width = 90
      end
      object GridViewAMOUNT4: TcxGridDBColumn
        DataBinding.FieldName = 'AMOUNT4'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.OnGetContentStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Styles.OnGetFooterStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Width = 90
      end
      object GridViewAMOUNT3: TcxGridDBColumn
        DataBinding.FieldName = 'AMOUNT3'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.OnGetContentStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Styles.OnGetFooterStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Width = 90
      end
      object GridViewAMOUNT2: TcxGridDBColumn
        DataBinding.FieldName = 'AMOUNT2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.OnGetContentStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Styles.OnGetFooterStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Width = 90
      end
      object GridViewAMOUNT1: TcxGridDBColumn
        DataBinding.FieldName = 'AMOUNT1'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.OnGetContentStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Styles.OnGetFooterStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Width = 90
      end
      object GridViewAMOUNT0: TcxGridDBColumn
        DataBinding.FieldName = 'AMOUNT0'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.OnGetContentStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Styles.OnGetFooterStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Width = 90
      end
      object GridViewAMOUNT: TcxGridDBColumn
        Caption = #1048#1090#1086#1075#1086
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.Content = DM.cxStyleBold
        Styles.OnGetContentStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Styles.OnGetFooterStyle = GridViewAMOUNT_OLDStylesGetContentStyle
        Width = 90
      end
      object GridViewMANAGER_NAME: TcxGridDBColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'MANAGER_NAME'
        Width = 168
      end
      object GridViewPAYMENT_TYPE: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1086#1087#1083#1072#1090#1099
        DataBinding.FieldName = 'PAYMENT_TYPE'
        RepositoryItem = DM.erPaymentType
        Width = 60
      end
      object GridViewDEBTOR_TYPE: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1076#1086#1083#1078#1085#1080#1082#1072
        DataBinding.FieldName = 'DEBTOR_TYPE'
        RepositoryItem = DM.erDebtorType
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridView
    end
  end
  object Pages: TcxPageControl [2]
    Left = 0
    Top = 488
    Width = 1187
    Height = 209
    Align = alBottom
    TabOrder = 6
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 203
    ClientRectLeft = 2
    ClientRectRight = 1181
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = #1044#1077#1090#1072#1083#1080
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GridDocuments: TcxGrid
        Left = 0
        Top = 0
        Width = 1179
        Height = 176
        Align = alClient
        TabOrder = 0
        object GridDocumentsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDOCS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#'
              Kind = skCount
              FieldName = 'DOC_DATE'
              Column = GridDocumentsDBTableView1DOC_DATE
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'AMOUNT_IN'
              Column = GridDocumentsDBTableView1AMOUNT_IN
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'AMOUNT_OUT'
              Column = GridDocumentsDBTableView1AMOUNT_OUT
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'AMOUNT_DOLG'
              Column = GridDocumentsDBTableView1AMOUNT_DOLG
            end
            item
              Format = '#'
              Kind = skSum
              FieldName = 'IN_CONTROL'
              Column = GridDocumentsDBTableView1IN_CONTROL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object GridDocumentsDBTableView1STATUS: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.DropDownRows = 3
            Properties.Images = DM.ImageListStatuses
            Properties.Items = <
              item
                Description = #1053#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
                ImageIndex = 20
                Value = 0
              end
              item
                Description = #1055#1088#1086#1074#1077#1076#1077#1085
                ImageIndex = 7
                Value = 2
              end
              item
                Description = #1053#1077' '#1087#1088#1086#1074#1077#1076#1077#1085
                Value = 1
              end>
            Properties.ShowDescriptions = False
            RepositoryItem = DM.erDocStatus
            Width = 20
            IsCaptionAssigned = True
          end
          object GridDocumentsDBTableView1DOC_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'DOC_DATE'
            Options.Editing = False
            Width = 73
          end
          object GridDocumentsDBTableView1DELIVERY_DATE: TcxGridDBColumn
            Caption = #1044#1086#1089#1090#1072#1074#1083#1077#1085
            DataBinding.FieldName = 'DELIVERY_DATE'
            Width = 72
          end
          object GridDocumentsDBTableView1DOC_NUM: TcxGridDBColumn
            Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            DataBinding.FieldName = 'DOC_NUM'
            Options.Editing = False
            Width = 92
          end
          object GridDocumentsDBTableView1DOC_TYPE: TcxGridDBColumn
            Caption = #1058#1080#1087
            DataBinding.FieldName = 'DOC_TYPE_NAME'
            Options.Editing = False
            Width = 104
          end
          object GridDocumentsDBTableView1AMOUNT_IN: TcxGridDBColumn
            Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
            DataBinding.FieldName = 'AMOUNT_IN'
            Options.Editing = False
            Width = 105
          end
          object GridDocumentsDBTableView1AMOUNT_OUT: TcxGridDBColumn
            Caption = #1054#1087#1083#1072#1095#1077#1085#1086
            DataBinding.FieldName = 'AMOUNT_OUT'
            Options.Editing = False
            Width = 103
          end
          object GridDocumentsDBTableView1AMOUNT_DOLG: TcxGridDBColumn
            Caption = #1044#1086#1083#1075
            DataBinding.FieldName = 'AMOUNT_DOLG'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 137
          end
          object GridDocumentsDBTableView1DESCRIPTION: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 136
            IsCaptionAssigned = True
          end
          object GridDocumentsDBTableView1IN_CONTROL: TcxGridDBColumn
            Caption = #1050#1086#1085#1090#1088#1086#1083#1100
            DataBinding.FieldName = 'IN_CONTROL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 74
          end
          object GridDocumentsDBTableView1DOC_DESCRIPTION: TcxGridDBColumn
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
            DataBinding.FieldName = 'DOC_DESCRIPTION'
            Width = 231
          end
        end
        object GridDocumentsLevel1: TcxGridLevel
          GridView = GridDocumentsDBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1046#1091#1088#1085#1072#1083
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inline frameJournal: TframeJournal
        Left = 0
        Top = 0
        Width = 1179
        Height = 176
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1179
        ExplicitHeight = 176
        inherited Grid: TcxGrid
          Width = 1179
          Height = 145
          ExplicitWidth = 1179
          ExplicitHeight = 145
          inherited GridDBTableView1: TcxGridDBTableView
            OptionsView.GroupByBox = False
          end
        end
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 1179
          ExplicitWidth = 1179
        end
        inherited BM: TdxBarManager
          DockControlHeights = (
            0
            0
            0
            0)
          inherited BarJournal: TdxBar
            ItemLinks = <
              item
                Visible = True
                ItemName = 'bbRefresh'
              end
              item
                Visible = True
                ItemName = 'bbAdd'
              end>
          end
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter [3]
    Left = 0
    Top = 483
    Width = 1187
    Height = 5
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salBottom
    Control = Pages
    ExplicitWidth = 5
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
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 208
    Top = 96
  end
  object DATA: TpFIBDataSet
    SelectSQL.Strings = (
      'execute block'
      'returns('
      '  ORGANIZATION_ID T_PID,'
      '  ORGANIZATION_NAME T_NAME,'
      '  CONTRAGENT_ID T_PID,'
      '  CONTRAGENT_NAME T_NAME,'
      '  DEBTOR_TYPE T_PID,'
      '  MANAGER_ID T_PID, MANAGER_NAME T_NAME,'
      '  LAST_DATE T_DATE,'
      '  D T_DATE,'
      '  AMOUNT T_AMOUNT,'
      '  AMOUNT0 T_AMOUNT,'
      '  AMOUNT1 T_AMOUNT,'
      '  AMOUNT2 T_AMOUNT,'
      '  AMOUNT3 T_AMOUNT,'
      '  AMOUNT4 T_AMOUNT,'
      '  AMOUNT5 T_AMOUNT,'
      '  AMOUNT6 T_AMOUNT,'
      '  AMOUNT_OLD T_AMOUNT,'
      '  PAYMENT_TYPE T_INT'
      ')'
      'as'
      '  declare variable D0 T_DATE;'
      '  declare variable D1 T_DATE;'
      '  declare variable D2 T_DATE;'
      '  declare variable D3 T_DATE;'
      '  declare variable D4 T_DATE;'
      '  declare variable D5 T_DATE;'
      '  declare variable D6 T_DATE;'
      'begin'
      
        '  D0 = '#39'01.'#39'||extract(MONTH from current_date)||'#39'.'#39'||extract(YEA' +
        'R from current_date);'
      '  LAST_DATE = dateadd(-1 DAY to dateadd(1 MONTH to D0));'
      '  D1 = dateadd(-1 MONTH to D0);'
      '  D2 = dateadd(-2 MONTH to D0);'
      '  D3 = dateadd(-3 MONTH to D0);'
      '  D4 = dateadd(-4 MONTH to D0);'
      '  D5 = dateadd(-5 MONTH to D0);'
      '  D6 = dateadd(-6 MONTH to D0);'
      '  for select'
      '    C.ORGANIZATION_ID,'
      '    I.CONTRAGENT_ID, C.NAME,'
      '    U.ID, U.FIO,'
      '    O.SHORTNAME, C.PAYMENT_TYPE, C.DEBTOR_TYPE,'
      ''
      
        '    sum(IIF(I.DOC_DT >= :D0 and I.DOC_DT <= :LAST_DATE, I.AMOUNT' +
        '_REMAIN, 0)), -- '#1069#1090#1086#1090' '#1084#1077#1089#1103#1094' 01.10.2017 - 31.10.2017'
      
        '    sum(IIF(I.DOC_DT >= :D1 and I.DOC_DT < :D0, I.AMOUNT_REMAIN,' +
        ' 0)),         -- 01.09.2017 -'
      
        '    sum(IIF(I.DOC_DT >= :D2 and I.DOC_DT < :D1, I.AMOUNT_REMAIN,' +
        ' 0)),         -- 01.08.2017 -'
      
        '    sum(IIF(I.DOC_DT >= :D3 and I.DOC_DT < :D2, I.AMOUNT_REMAIN,' +
        ' 0)),         -- 01.07.2017'
      
        '    sum(IIF(I.DOC_DT >= :D4 and I.DOC_DT < :D3, I.AMOUNT_REMAIN,' +
        ' 0)),         -- 01.06.2017'
      
        '    sum(IIF(I.DOC_DT >= :D5 and I.DOC_DT < :D4, I.AMOUNT_REMAIN,' +
        ' 0)),         -- 01.05.2017'
      
        '    sum(IIF(I.DOC_DT >= :D6 and I.DOC_DT < :D5, I.AMOUNT_REMAIN,' +
        ' 0)),         -- 01.04.2017'
      
        '    sum(IIF(I.DOC_DT < :D6, I.AMOUNT_REMAIN, 0))                ' +
        '              --            < 01.04.2017'
      '  from'
      '    INVOICE I, CONTRAGENTS C'
      '    left join USERS U on U.ID=C.MANAGER_ID'
      
        '    left join ORGANIZATIONS O on O.ID=coalesce(C.ORGANIZATION_ID' +
        ', 1)'
      '  where'
      '    C.ID=I.CONTRAGENT_ID'
      '    and I.AMOUNT_REMAIN<>0'
      '    and I.STATUS in (2)'
      '    and C.IS_ACTIVE=1'
      '    and cast(I.DOC_DT as T_DATE) <= :LAST_DATE'
      '  group by 1, 2, 3, 4, 5, 6, 7, 8'
      '  into :ORGANIZATION_ID, :CONTRAGENT_ID, :CONTRAGENT_NAME,'
      '    :MANAGER_ID, :MANAGER_NAME,'
      '    :ORGANIZATION_NAME, :PAYMENT_TYPE, :DEBTOR_TYPE,'
      ''
      
        '    :AMOUNT0, :AMOUNT1, :AMOUNT2, :AMOUNT3, :AMOUNT4, :AMOUNT5, ' +
        ':AMOUNT6, :AMOUNT_OLD'
      '    do begin'
      
        '      AMOUNT = :AMOUNT0 + AMOUNT1 + AMOUNT2 + AMOUNT3 + AMOUNT4 ' +
        '+ AMOUNT5 + AMOUNT6 + AMOUNT_OLD;'
      '      if (AMOUNT0=0) then AMOUNT0=null;'
      '      if (AMOUNT1=0) then AMOUNT1=null;'
      '      if (AMOUNT2=0) then AMOUNT2=null;'
      '      if (AMOUNT3=0) then AMOUNT3=null;'
      '      if (AMOUNT4=0) then AMOUNT4=null;'
      '      if (AMOUNT5=0) then AMOUNT5=null;'
      '      if (AMOUNT6=0) then AMOUNT6=null;'
      '      if (AMOUNT_OLD=0) then AMOUNT_OLD=null;'
      '    '
      '    suspend;'
      '  end'
      'end')
    AfterScroll = DATAAfterScroll
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 160
    Top = 96
  end
  object DOCS: TpFIBDataSet
    SelectSQL.Strings = (
      'execute block('
      '  CONTRAGENT_ID T_PID = :CONTRAGENT_ID'
      ') returns ('
      '  ID T_PID,'
      '  DOC_DATE T_DATE,'
      '  DELIVERY_DATE T_DATE,'
      '  DOC_NUM t_doc_num,'
      '  DOC_TYPE T_INT,         -- 1- '#1089#1095#1077#1090', 2 - '#1086#1087#1083#1072#1090#1072
      '  DOC_TYPE_NAME t_name,'
      '  AMOUNT_IN t_amount,'
      '  AMOUNT_OUT t_amount,'
      '  AMOUNT_DOLG T_AMOUNT,'
      '  DESCRIPTION t_description,'
      '  DOC_DESCRIPTION T_DESCRIPTION,'
      '  STATUS T_INT,'
      '  IN_CONTROL T_BOOLEAN'
      ')'
      'as'
      '  declare variable v_invoice_date t_date;'
      '  declare variable v_invoice_num t_doc_num;'
      '  declare variable v_invoice_id t_pid;'
      '  declare variable v_payment_type t_int;'
      '  declare variable D varchar(10);'
      'begin'
      '  for select * from ('
      '    select ID,'
      
        '      1 DOC_TYPE, I.doc_dt, I.DELIVERY_DATE, I.doc_num, I.amount' +
        ' AMOUNT_IN, null AMOUNT_OUT, description,'
      '      null invoice_id, null payment_type, I.STATUS,'
      '      coalesce(I.IN_CONTROL, 0) IN_CONTROL'
      '    from invoice I'
      '    where 1=1'
      '      and I.STATUS=2'
      '      and I.contragent_id = :contragent_id'
      
        '      and (cast(I.DOC_DT as T_DATE) <= dateadd(-1 DAY to dateadd' +
        '(1 MONTH to (cast('#39'01.'#39'||extract(MONTH from current_date)||'#39'.'#39'||' +
        'extract(YEAR from current_date) as T_DATE)))))'
      ''
      ''
      '    union all'
      ''
      '    select ID,'
      
        '      2 DOC_TYPE, P.doc_dt, null DELIVERY_DATE, P.doc_num, null ' +
        'AMOUNT_IN, P.amount AMOUNT_OUT, P.description,'
      
        '      P.invoice_id invoice_id, P.payment_type payment_type, P.ST' +
        'ATUS,'
      '      0 IN_CONTROL'
      '     from payments P'
      '     where  1=1'
      '      and P.STATUS=2'
      '      and P.contragent_id = :contragent_id'
      
        '      and (cast(P.DOC_DT as T_DATE) <= dateadd(-1 DAY to dateadd' +
        '(1 MONTH to (cast('#39'01.'#39'||extract(MONTH from current_date)||'#39'.'#39'||' +
        'extract(YEAR from current_date) as T_DATE)))))'
      ''
      '  ) DOCS'
      '  order by DOCS.DOC_DT, DOCS.DOC_NUM'
      '  into :ID,'
      
        '    :doc_type, :doc_date, :DELIVERY_DATE, :doc_num, :amount_in, ' +
        ':amount_out, :doc_description,'
      '    :v_invoice_id, :v_payment_type, :STATUS, :IN_CONTROL'
      '   do begin'
      '     description = '#39#39';'
      '    if (DOC_TYPE=1) then begin'
      '      DOC_TYPE_NAME = '#39#1057#1095#1077#1090' '#1085#1072' '#1086#1087#1083#1072#1090#1091#39';'
      
        '      select coalesce(sum(P.AMOUNT), 0) from PAYMENTS P where P.' +
        'INVOICE_ID=:ID and P.STATUS=2 into :AMOUNT_OUT;'
      '      AMOUNT_DOLG = AMOUNT_IN - AMOUNT_OUT;'
      '      AMOUNT_OUT = null;'
      '    end else begin'
      '      AMOUNT_DOLG = null;'
      
        '      DOC_TYPE_NAME = decode(:v_payment_type, 1, '#39#1054#1087#1083#1072#1090#1072' - '#1041#1072#1085#1082#39 +
        ', 2, '#39#1054#1087#1083#1072#1090#1072' - '#1050#1072#1089#1089#1072#39');'
      '      v_invoice_num = '#39#39';'
      '      if (:v_invoice_id is not null) then begin'
      
        '        select i.doc_dt, i.doc_num from invoice i where i.id = :' +
        'v_invoice_id into :v_invoice_date, :v_invoice_num;'
      '      end'
      '      select STR from SP_DATE_FORMAT(:v_invoice_date) into :d;'
      
        '      description = '#39#1054#1087#1083#1072#1090#1072' '#1089#1095#1077#1090#1072' '#39' || :v_invoice_num || '#39' '#1086#1090' '#39'|' +
        '| :d;'
      '    end'
      '    suspend;'
      '  end'
      ''
      ''
      ''
      'end')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 512
    Top = 160
  end
  object dsDOCS: TDataSource
    DataSet = DOCS
    Left = 608
    Top = 160
  end
end
