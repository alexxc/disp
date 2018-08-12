inherited fmInvoiceReestr: TfmInvoiceReestr
  Left = 452
  Top = 336
  Caption = #1056#1077#1077#1089#1090#1088' '#1089#1095#1077#1090#1086#1074
  ClientHeight = 475
  ClientWidth = 1034
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 1050
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1034
    ExplicitWidth = 1034
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1034
    Height = 444
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 37
    object GridDBTableView1: TcxGridDBTableView
      OnDblClick = GridDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridDBTableView1AMOUNT_REMAIN
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridDBTableView1INVICE_AMOUNT
        end
        item
          Format = '#,##0.00'
          Position = spFooter
          Column = GridDBTableView1INVICE_AMOUNT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridDBTableView1AMOUNT_REMAIN
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = GridDBTableView1INVICE_AMOUNT
        end
        item
          Kind = skCount
          Column = GridDBTableView1INVOICE_NUM
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
      Styles.OnGetContentStyle = GridDBTableView1StylesGetContentStyle
      object GridDBTableView1STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = DM.erDocStatus
        MinWidth = 22
        Options.HorzSizing = False
        Width = 22
        IsCaptionAssigned = True
      end
      object GridDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object GridDBTableView1MANAGER_NAME: TcxGridDBColumn
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        DataBinding.FieldName = 'MANAGER_NAME'
        Width = 85
      end
      object GridDBTableView1INVOICE_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'INVOICE_DT'
        MinWidth = 70
        Options.HorzSizing = False
        Width = 70
      end
      object GridDBTableView1INVOICE_NUM: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088
        DataBinding.FieldName = 'INVOICE_NUM'
        MinWidth = 80
        Options.HorzSizing = False
        Width = 80
      end
      object GridDBTableView1ORGAINZATION_NAME: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'ORGAINZATION_NAME'
        Visible = False
        GroupIndex = 0
        Width = 349
      end
      object GridDBTableView1CONTRAGENT_NAME: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'CONTRAGENT_NAME'
        Width = 182
      end
      object GridDBTableView1GROUP_NAME: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'GROUP_NAME'
        Width = 127
      end
      object GridDBTableView1INVOICE_DESCRIPTION: TcxGridDBColumn
        Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
        DataBinding.FieldName = 'INVOICE_DESCRIPTION'
        Width = 75
      end
      object GridDBTableView1INVICE_AMOUNT: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'INVICE_AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 90
        Options.HorzSizing = False
        Width = 90
      end
      object GridDBTableView1AMOUNT_REMAIN: TcxGridDBColumn
        Caption = #1054#1089#1090#1072#1090#1086#1082
        DataBinding.FieldName = 'AMOUNT_REMAIN'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        MinWidth = 90
        Options.HorzSizing = False
        Width = 90
      end
      object GridDBTableView1PAYMENT_TYPE: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1086#1087#1083#1072#1090#1099
        DataBinding.FieldName = 'PAYMENT_TYPE'
        RepositoryItem = DM.erPaymentType
        Width = 67
      end
      object GridDBTableView1IS_ACT_PRESENT: TcxGridDBColumn
        Caption = #1040#1082#1090
        DataBinding.FieldName = 'IS_ACT_PRESENT'
        RepositoryItem = DM.erCheckGreen
        Width = 50
      end
      object GridDBTableView1DETAIL_COUNT: TcxGridDBColumn
        Caption = '##'
        DataBinding.FieldName = 'DETAIL_COUNT'
        HeaderHint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086#1079#1080#1094#1080#1081' '#1074' '#1089#1095#1077#1090#1077
        Width = 35
      end
      object GridDBTableView1DOVER_NAME: TcxGridDBColumn
        Caption = #1055#1086' '#1076#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1080
        DataBinding.FieldName = 'DOVER_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 94
      end
      object GridDBTableView1DELIVERY_DATE: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
        DataBinding.FieldName = 'DELIVERY_DATE'
        Width = 102
      end
      object GridDBTableView1DESCRIPTION: TcxGridDBColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 200
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  inherited BM: TdxBarManager
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
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
          ItemName = 'bbAllClientInvoice'
        end
        item
          Visible = True
          ItemName = 'bbExport'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbAct'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object bbExport: TdxBarButton [4]
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Hint = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 28
      PaintStyle = psCaptionGlyph
      OnClick = bbExportClick
    end
    object bbAct: TdxBarButton [5]
      Caption = 'F2 - '#1040#1082#1090
      Category = 0
      Hint = #1057#1095#1077#1090' '#1079#1072#1082#1088#1099#1090' '#1086#1088#1080#1075#1080#1085#1072#1083#1086#1084' '#1072#1082#1090#1072
      Visible = ivAlways
      ImageIndex = 51
      PaintStyle = psCaptionGlyph
      OnClick = bbActClick
    end
    object bbInvoiceGenetare: TdxBarButton [6]
      Caption = #1043#1077#1085#1077#1088#1072#1094#1080#1103' '#1087#1072#1082#1077#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      Category = 0
      Hint = #1043#1077#1085#1077#1088#1072#1094#1080#1103' '#1087#1072#1082#1077#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
      OnClick = bbInvoiceGenetareClick
    end
    object bbPrintInvoice: TdxBarButton [7]
      Caption = #1055#1077#1095#1072#1090#1100' '#1087#1072#1082#1077#1090#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1087#1072#1082#1077#1090#1072' '#1076#1083#1103' '#1074#1099#1073#1088#1072#1085#1085#1099#1093' '#1089#1095#1077#1090#1086#1074
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      ShortCut = 16464
      OnClick = bbPrintInvoiceClick
    end
    object dxBarSubItem1: TdxBarSubItem [8]
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 15
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbPrintInvoice'
        end
        item
          Visible = True
          ItemName = 'bbPrintInvoiceStamp'
        end
        item
          Visible = True
          ItemName = 'bbInvoiceGenetare'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbACT_FROM_TEMPLATE'
        end>
    end
    object bbAllClientInvoice: TdxBarButton [9]
      Caption = #1042#1089#1077' '#1089#1095#1077#1090#1072' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      Category = 0
      Hint = #1042#1089#1077' '#1089#1095#1077#1090#1072' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
      OnClick = bbAllClientInvoiceClick
    end
    object bbPrintInvoiceStamp: TdxBarButton [10]
      Caption = #1055#1072#1082#1077#1090' '#1089' '#1087#1086#1076#1087#1080#1089#1103#1084#1080
      Category = 0
      Hint = #1055#1072#1082#1077#1090' '#1089' '#1087#1086#1076#1087#1080#1089#1103#1084#1080
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = bbPrintInvoiceStampClick
    end
    object bbACT_FROM_TEMPLATE: TdxBarButton [11]
      Caption = #1040#1082#1090' '#1087#1086' '#1092#1086#1088#1084#1077' '#1082#1083#1080#1077#1085#1090#1072
      Category = 0
      Hint = #1040#1082#1090' '#1087#1086' '#1092#1086#1088#1084#1077' '#1082#1083#1080#1077#1085#1090#1072
      Visible = ivAlways
      OnClick = bbACT_FROM_TEMPLATEClick
    end
  end
  object DATA: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      '  I.ID, I.STATUS,'
      
        '  cast(I.DOC_DT as t_date) INVOICE_DT, I.DOC_NUM INVOICE_NUM, I.' +
        'CONTRAGENT_ID,'
      '  I.AMOUNT INVICE_AMOUNT, I.AMOUNT_REMAIN,'
      '  C.NAME CONTRAGENT_NAME,'
      '  C.ORGANIZATION_ID, O.DESCRIPTION ORGAINZATION_NAME,'
      '  u.name manager_name,'
      '  coalesce(C.PAYMENT_TYPE, 0) PAYMENT_TYPE,'
      '  coalesce(I.IS_ACT_PRESENT, 0) IS_ACT_PRESENT,'
      
        '  NULLIF((select count(1) from INVOICE_T where PID=I.ID), 0) DET' +
        'AIL_COUNT,'
      
        '  cast(IC.INVOICE_DESCRIPTION as T_DESCRIPTION) INVOICE_DESCRIPT' +
        'ION,'
      '  IIF(I.DOVER_ID is null,  '#39#39', REF_EMPLOE.NAME_LAST) DOVER_NAME,'
      '  I.DELIVERY_DATE,'
      '  I.DESCRIPTION,'
      '  IIF(C.ACT_TEMPLATE_ID is not null, 1, 0) ACT_TEMPLATE_PRESENT,'
      '  C.ACT_TEMPLATE_ID'
      ''
      'from INVOICE I'
      'left join CONTRAGENTS C on C.ID=I.CONTRAGENT_ID'
      'left join ORGANIZATIONS O on O.ID=coalesce(C.ORGANIZATION_ID, 1)'
      'left join users u on u.id=C.manager_id'
      'left join REF_INVOICE_CATEGORY IC on IC.ID=C.INVOICE_CATEGORY'
      'left join DOVER on DOVER.ID=I.DOVER_ID'
      'left join REF_EMPLOE on REF_EMPLOE.ID=DOVER.EMPLOE_ID'
      'where'
      '    I.ID=:OLD_ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  I.ID,'
      '  I.STATUS,'
      
        '  cast(I.DOC_DT as t_date) INVOICE_DT, I.DOC_NUM INVOICE_NUM, I.' +
        'CONTRAGENT_ID,'
      '  I.AMOUNT INVICE_AMOUNT, I.AMOUNT_REMAIN,'
      '  C.NAME CONTRAGENT_NAME,'
      '  C.ORGANIZATION_ID, O.DESCRIPTION ORGAINZATION_NAME,'
      '  u.name manager_name,'
      '  coalesce(C.PAYMENT_TYPE, 0) PAYMENT_TYPE,'
      '  coalesce(I.IS_ACT_PRESENT, 0) IS_ACT_PRESENT,'
      
        '  NULLIF((select count(1) from INVOICE_T where PID=I.ID), 0) DET' +
        'AIL_COUNT,'
      
        '  cast(IC.INVOICE_DESCRIPTION as T_DESCRIPTION) INVOICE_DESCRIPT' +
        'ION,'
      '  IIF(I.DOVER_ID is null,  '#39#39', REF_EMPLOE.NAME_LAST) DOVER_NAME,'
      '  G.NAME GROUP_NAME,'
      '  I.DELIVERY_DATE,'
      '  I.DESCRIPTION,'
      '  IIF(C.ACT_TEMPLATE_ID is not null, 1, 0) ACT_TEMPLATE_PRESENT,'
      '  C.ACT_TEMPLATE_ID'
      ''
      'from INVOICE I'
      'left join CONTRAGENTS C on C.ID=I.CONTRAGENT_ID'
      'left join ORGANIZATIONS O on O.ID=coalesce(C.ORGANIZATION_ID, 1)'
      'left join users u on u.id=C.manager_id'
      'left join REF_INVOICE_CATEGORY IC on IC.ID=C.INVOICE_CATEGORY'
      'left join DOVER on DOVER.ID=I.DOVER_ID'
      'left join REF_EMPLOE on REF_EMPLOE.ID=DOVER.EMPLOE_ID'
      'left join CONTRAGENT_GROUPS G on G.ID=C.MASTER_PID'
      'where 1=1'
      '--    I.STATUS=2'
      
        '    and I.DOC_DT between coalesce(cast(:DATE_START as T_DATE), '#39 +
        '01.07.2015'#39') and coalesce(cast(:DATE_END as T_DATE), current_dat' +
        'e)'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 120
    Top = 120
  end
  object dsDATA: TDataSource
    DataSet = DATA
    OnDataChange = dsDATADataChange
    Left = 168
    Top = 120
  end
  object Invoice: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  I.ID,'
      
        '  coalesce(C.PAYMENT_TYPE, 0) PAYMENT_TYPE, coalesce(I.AMOUNT_ND' +
        'S, 0) AMOUNT_NDS,'
      '  coalesce(C.ORGANIZATION_ID, 1) ORGANIZATION_ID,'
      '  I.DOVER_ID,'
      '  I.DESCRIPTION'
      'from'
      '  INVOICE I, CONTRAGENTS C'
      'where'
      '  I.ID=:ID and C.ID=I.CONTRAGENT_ID')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 368
    Top = 136
  end
  object qR: TpFIBQuery
    Transaction = trRead
    Database = DM.FB
    Left = 136
    Top = 256
    qoStartTransaction = True
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 176
    Top = 256
    qoStartTransaction = True
  end
end
