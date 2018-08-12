inherited fmInvoiceAnalize: TfmInvoiceAnalize
  Caption = #1040#1085#1072#1083#1080#1079' '#1089#1095#1077#1090#1086#1074
  ClientHeight = 534
  ClientWidth = 926
  OnCreate = FormCreate
  ExplicitWidth = 942
  ExplicitHeight = 573
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 926
    ExplicitWidth = 926
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 926
    Height = 300
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1INVOICE_AMOUNT
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1SERVICE_AMOUNT
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1SERVICE_DELTA
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid1DBTableView1CONTRAGENT_NAME
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1INVOICE_AMOUNT
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1INVOICE_REMAIN
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1SERVICE_AMOUNT
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1SERVICE_DELTA
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1CONTRAGENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'CONTRAGENT_ID'
        Visible = False
      end
      object cxGrid1DBTableView1ORGANIZARION_NAME: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'ORGANIZARION_NAME'
        Visible = False
        GroupIndex = 0
        Width = 200
      end
      object cxGrid1DBTableView1CONTRAGENT_NAME: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'CONTRAGENT_NAME'
        Width = 200
      end
      object cxGrid1DBTableView1INVOICE_CATEGORY: TcxGridDBColumn
        Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
        DataBinding.FieldName = 'INVOICE_CATEGORY'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 200
      end
      object cxGrid1DBTableView1INVOICE_AMOUNT: TcxGridDBColumn
        Caption = #931' '#1089#1095#1077#1090#1086#1074
        DataBinding.FieldName = 'INVOICE_AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 100
        Options.HorzSizing = False
        Width = 100
      end
      object cxGrid1DBTableView1INVOICE_REMAIN: TcxGridDBColumn
        Caption = #1054#1089#1090#1072#1090#1086#1082' '#1087#1086' '#1089#1095#1077#1090#1072#1084
        DataBinding.FieldName = 'INVOICE_REMAIN'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Width = 104
      end
      object cxGrid1DBTableView1SERVICE_AMOUNT: TcxGridDBColumn
        Caption = #931' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'SERVICE_AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 100
        Options.HorzSizing = False
        Width = 100
      end
      object cxGrid1DBTableView1SERVICE_DELTA: TcxGridDBColumn
        Caption = #1056#1072#1079#1085#1080#1094#1072
        DataBinding.FieldName = 'SERVICE_DELTA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 100
        Options.HorzSizing = False
        Width = 100
      end
      object cxGrid1DBTableView1AVR_PRICE: TcxGridDBColumn
        Caption = #1057#1088#1077#1076#1085#1103#1103' '#1094#1077#1085#1072'/'#1084'2'
        DataBinding.FieldName = 'AVR_PRICE'
        MinWidth = 100
        Options.HorzSizing = False
        Width = 100
      end
      object cxGrid1DBTableView1MANAGER_NAME: TcxGridDBColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'MANAGER_NAME'
        Width = 200
      end
      object cxGrid1DBTableView1SQUARE: TcxGridDBColumn
        DataBinding.FieldName = 'SQUARE'
        Visible = False
      end
      object cxGrid1DBTableView1NDS: TcxGridDBColumn
        DataBinding.FieldName = 'NDS'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Pages: TcxPageControl [2]
    Left = 0
    Top = 336
    Width = 926
    Height = 198
    Align = alBottom
    TabOrder = 2
    Properties.ActivePage = tabInvoice
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 192
    ClientRectLeft = 2
    ClientRectRight = 920
    ClientRectTop = 27
    object tabInvoice: TcxTabSheet
      Caption = #1057#1095#1077#1090#1072
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 918
        Height = 165
        Align = alClient
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsINVOICE
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid2DBTableView1QTY
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid2DBTableView1AMOUNT
            end
            item
              Kind = skCount
              Column = cxGrid2DBTableView1DOC_NUM
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          object cxGrid2DBTableView1STATUS: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
            RepositoryItem = DM.erDocStatus
            MinWidth = 22
            Options.HorzSizing = False
            Width = 22
            IsCaptionAssigned = True
          end
          object cxGrid2DBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object cxGrid2DBTableView1DOC_DT: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'DOC_DT'
            MinWidth = 80
            Options.HorzSizing = False
            Width = 80
          end
          object cxGrid2DBTableView1DOC_NUM: TcxGridDBColumn
            Caption = #8470' '#1089#1095#1077#1090#1072
            DataBinding.FieldName = 'DOC_NUM'
            MinWidth = 100
            Options.HorzSizing = False
            Width = 100
          end
          object cxGrid2DBTableView1PERIOD_START: TcxGridDBColumn
            Caption = #1055#1077#1088#1080#1086#1076' - '#1089
            DataBinding.FieldName = 'PERIOD_START'
            MinWidth = 80
            Options.HorzSizing = False
            Width = 80
          end
          object cxGrid2DBTableView1PERIOD_END: TcxGridDBColumn
            Caption = #1055#1077#1088#1080#1086#1076' - '#1087#1086
            DataBinding.FieldName = 'PERIOD_END'
            MinWidth = 80
            Options.HorzSizing = False
            Width = 80
          end
          object cxGrid2DBTableView1SERVICE_NAME: TcxGridDBColumn
            Caption = #1059#1089#1083#1091#1075#1072
            DataBinding.FieldName = 'SERVICE_NAME'
            Width = 200
          end
          object cxGrid2DBTableView1QTY: TcxGridDBColumn
            Caption = #1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'QTY'
            MinWidth = 60
            Options.HorzSizing = False
            Width = 60
          end
          object cxGrid2DBTableView1PRICE: TcxGridDBColumn
            Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            DataBinding.FieldName = 'PRICE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '0.00'
            MinWidth = 80
            Options.HorzSizing = False
            Width = 80
          end
          object cxGrid2DBTableView1AMOUNT: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = 'AMOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            MinWidth = 100
            Options.HorzSizing = False
            Width = 100
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object tabService: TcxTabSheet
      Caption = #1052#1072#1088#1096#1088#1091#1090#1085#1099#1077' '#1082#1072#1088#1090#1099
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 918
        Height = 165
        Align = alClient
        TabOrder = 0
        object cxGrid3DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsROUTE_CARD
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid3DBTableView1COUNT_FACT
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid3DBTableView1PRICE
            end
            item
              Kind = skCount
              Column = cxGrid3DBTableView1SERVICE_NAME
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          object cxGrid3DBTableView1STATUS: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
            MinWidth = 22
            Options.HorzSizing = False
            Width = 22
            IsCaptionAssigned = True
          end
          object cxGrid3DBTableView1DOC_DT: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'DOC_DT'
            MinWidth = 64
            Options.HorzSizing = False
          end
          object cxGrid3DBTableView1DOC_NUM: TcxGridDBColumn
            Caption = #8470' '#1052#1050
            DataBinding.FieldName = 'DOC_NUM'
            MinWidth = 100
            Options.HorzSizing = False
            Width = 100
          end
          object cxGrid3DBTableView1ROUTE: TcxGridDBColumn
            Caption = #1052#1072#1088#1096#1088#1091#1090
            DataBinding.FieldName = 'ROUTE'
            MinWidth = 100
            Options.HorzSizing = False
            Width = 100
          end
          object cxGrid3DBTableView1SERVICE_NAME: TcxGridDBColumn
            Caption = #1059#1089#1083#1091#1075#1072
            DataBinding.FieldName = 'SERVICE_NAME'
            Width = 200
          end
          object cxGrid3DBTableView1ADDRESS_NAME: TcxGridDBColumn
            Caption = #1040#1076#1088#1077#1089
            DataBinding.FieldName = 'ADDRESS_NAME'
            Width = 200
          end
          object cxGrid3DBTableView1COUNT_FACT: TcxGridDBColumn
            Caption = #1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'COUNT_FACT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0;-,0'
          end
          object cxGrid3DBTableView1PRICE_REPLACE: TcxGridDBColumn
            Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            DataBinding.FieldName = 'PRICE_REPLACE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '0.00'
            MinWidth = 100
            Options.HorzSizing = False
            Width = 100
          end
          object cxGrid3DBTableView1PRICE: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = 'PRICE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '0.00'
            MinWidth = 100
            Options.HorzSizing = False
            Width = 100
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter [3]
    Left = 0
    Top = 331
    Width = 926
    Height = 5
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salBottom
    Control = Pages
    ExplicitWidth = 5
  end
  inherited BM: TdxBarManager
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDateStart'
        end
        item
          Visible = True
          ItemName = 'bbDateEnd'
        end
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
  object DATA: TpFIBDataSet
    SelectSQL.Strings = (
      'execute block('
      '  DATE_START T_DATE = :DATE_START,'
      '  DATE_END T_DATE = :DATE_END'
      ') returns ('
      '  CONTRAGENT_ID T_PID,'
      '  CONTRAGENT_NAME T_NAME,'
      '  organizarion_name t_name,'
      '  manager_name t_name,'
      '  INVOICE_AMOUNT T_AMOUNT,'
      '  INVOICE_REMAIN T_AMOUNT,'
      '  SERVICE_AMOUNT T_AMOUNT,'
      '  SERVICE_DELTA T_AMOUNT,'
      '  SQUARE T_SQUARE,'
      '  NDS T_AMOUNT,'
      '  AVR_PRICE T_AMOUNT,'
      '  INVOICE_CATEGORY T_DESCRIPTION'
      ''
      ')'
      'as'
      '  declare variable vINVOICE_CATEGORY T_INT;'
      'begin'
      '  if (DATE_START is null) then DATE_START = current_date;'
      '  if (DATE_END is null) then DATE_END = current_date;'
      ''
      '  for select distinct'
      '    C0.CONTRAGENT_ID,'
      '    C.NAME,'
      '    O.DESCRIPTION, o.NDS,'
      '    U.NAME,'
      '    C.INVOICE_CATEGORY'
      ''
      '  from ('
      
        '    select distinct I.CONTRAGENT_ID CONTRAGENT_ID from INVOICE I' +
        ' where I.PERIOD_START >= :DATE_START and I.PERIOD_END <= :DATE_E' +
        'ND and I.STATUS=2'
      '    union all'
      
        '    select distinct T.CLIENT_ID CONTRAGENT_ID from DOC_ROUTE_CAR' +
        'D_T T, DOC_ROUTE_CARD D where D.ID=T.PID and D.DOC_DT >= :DATE_S' +
        'TART and D.DOC_DT <= :DATE_END and D.STATUS=2'
      '  ) C0,'
      '  SP_GET_CONTRAGENTS_ID(NULL, NULL, NULL) SP,'
      
        '  CONTRAGENTS C, ORGANIZATIONS O, users U, REF_INVOICE_CATEGORY ' +
        'IC'
      '  where'
      '    Sp.ID=C.ID'
      '    and C.ID=C0.CONTRAGENT_ID'
      '    and O.ID=coalesce(C.ORGANIZATION_ID, 1)'
      '    and u.ID=c.MANAGER_ID'
      '    and IC.ID=coalesce(C.INVOICE_CATEGORY, 1)'
      '  into'
      '    :CONTRAGENT_ID,'
      '    :CONTRAGENT_NAME,'
      '    :ORGANIZARION_NAME, :NDS,'
      '    :MANAGER_NAME,'
      '    :vINVOICE_CATEGORY'
      '  do begin'
      ''
      '    select'
      
        '      coalesce(sum(I.AMOUNT), 0), coalesce(sum(I.AMOUNT_REMAIN),' +
        ' 0)'
      '    from'
      '      INVOICE I'
      '    where'
      '      I.CONTRAGENT_ID=:CONTRAGENT_ID'
      '      and I.PERIOD_START >= :DATE_START'
      '      and I.PERIOD_END <= :DATE_END'
      '      and i.STATUS=2'
      '    into'
      '      :INVOICE_AMOUNT, :INVOICE_REMAIN;'
      ''
      '    invoice_category = null;'
      
        '    select IC.INVOICE_DESCRIPTION from REF_INVOICE_CATEGORY IC w' +
        'here IC.ID=:vINVOICE_CATEGORY into :INVOICE_CATEGORY;'
      '    SERVICE_AMOUNT = 0; SQUARE = 0;'
      '    select'
      
        '      sum(coalesce(t.COUNT_FACT, 0)*coalesce(s.PRICE_REPLACE, 0)' +
        ') price, sum(t.SQUARE) square'
      '    from'
      '      DOC_ROUTE_CARD_T T, DOC_ROUTE_CARD D, ADDRESS_SERVICE S'
      '    where'
      '      d.id=t.PID'
      '      and d.DOC_DT between :DATE_START and :DATE_END'
      '      and S.ID=T.SERVICE_ID'
      '      and t.CLIENT_ID=:CONTRAGENT_ID'
      '      and d.STATUS=2'
      '    into'
      '      :SERVICE_AMOUNT, :SQUARE;'
      ''
      
        '    SERVICE_AMOUNT = SERVICE_AMOUNT + SERVICE_AMOUNT /100.00 * N' +
        'DS;'
      '    AVR_PRICE = IIF(SQUARE<>0, SERVICE_AMOUNT/SQUARE, null);'
      '    SERVICE_DELTA = INVOICE_AMOUNT - SERVICE_AMOUNT;'
      '    suspend;'
      '  end'
      'end'
      ''
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 264
    Top = 168
  end
  object dsDATA: TDataSource
    DataSet = DATA
    OnDataChange = dsDATADataChange
    Left = 296
    Top = 176
  end
  object INVOICE: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  I.ID, i.DOC_DT, i.DOC_NUM, i.PERIOD_START, i.PERIOD_END,'
      '  S.DESCRIPTION SERVICE_NAME,'
      '  t.QTY,'
      '  t.PRICE * (1+t.nds/100.00) PRICE,'
      '  t.AMOUNT,'
      '  I.STATUS'
      
        'from INVOICE I, INVOICE_T T, REF_SERVICES S--, CONTRAGENTS_CONTR' +
        'ACT CC --,'
      'where'
      '  I.CONTRAGENT_ID=:CONTRAGENT_ID'
      '  and t.PID=I.ID'
      '  and s.ID=t.SERVICE_ID'
      '  and I.PERIOD_START >= :DATE_START'
      '  and I.PERIOD_END <= :DATE_END'
      '--  and I.STATUS=2')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 360
    Top = 144
  end
  object dsINVOICE: TDataSource
    DataSet = INVOICE
    Left = 392
    Top = 168
  end
  object ROUTE_CARD: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  D.STATUS,'
      
        '  cast(D.DOC_DT as T_DATE) DOC_DT, D.DOC_NUM, R.DESCRIPTION ROUT' +
        'E,'
      '  S.DESCRIPTION SERVICE_NAME, CA.NAME ADDRESS_NAME,'
      '  t.COUNT_FACT,'
      
        '  s.PRICE_REPLACE * (1+O.NDS/100.00) PRICE_REPLACE, t.COUNT_FACT' +
        '*(s.PRICE_REPLACE*(1+O.NDS/100.00)) price'
      'from'
      
        '  DOC_ROUTE_CARD_T T, DOC_ROUTE_CARD D, ADDRESS_SERVICE S, CONTR' +
        'ACT_ADDRESS CA, CONTRAGENTS C, ORGANIZATIONS O, REF_ROUTES R'
      'where'
      '  d.id=t.PID'
      '  and d.DOC_DT between :DATE_START and :DATE_END'
      '  and S.ID=T.SERVICE_ID'
      '  and t.CLIENT_ID=:CONTRAGENT_ID'
      '--  and d.STATUS=2'
      '  and CA.ID=S.ADDRESS_ID'
      '  and C.ID=T.CLIENT_ID'
      '  and O.ID=coalesce(c.ORGANIZATION_ID, 1)'
      '  and R.ID=D.ROUTE_ID')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 456
    Top = 144
  end
  object dsROUTE_CARD: TDataSource
    DataSet = ROUTE_CARD
    Left = 488
    Top = 168
  end
end
