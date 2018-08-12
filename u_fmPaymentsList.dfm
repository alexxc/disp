inherited fmPaymentsList: TfmPaymentsList
  Caption = #1056#1077#1077#1089#1090#1088' '#1087#1083#1072#1090#1077#1078#1077#1081
  ClientHeight = 608
  ClientWidth = 1317
  ExplicitWidth = 1333
  ExplicitHeight = 646
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1317
    ExplicitWidth = 1317
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1317
    Height = 577
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'PAYMENT_AMOUNT'
          Column = cxGrid1DBTableView1PAYMENT_AMOUNT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'PAYMENT_AMOUNT'
          Column = cxGrid1DBTableView1PAYMENT_AMOUNT
        end
        item
          Kind = skCount
          FieldName = 'ID'
          Column = cxGrid1DBTableView1PAYMENT_DT
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <>
          SummaryItems = <>
        end>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cxGrid1DBTableView1ORGAINZATION_NAME: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1072#1079#1094#1080#1103
        DataBinding.FieldName = 'ORGAINZATION_NAME'
        Width = 229
      end
      object cxGrid1DBTableView1PAYMENT_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'PAYMENT_DT'
        HeaderAlignmentHorz = taCenter
        MinWidth = 74
        Options.HorzSizing = False
        Width = 74
      end
      object cxGrid1DBTableView1PAYMENT_TYPE: TcxGridDBColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 'PAYMENT_TYPE'
        RepositoryItem = DM.erPaymentType
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.HorzSizing = False
        Width = 70
      end
      object cxGrid1DBTableView1PAYMENT_NUM: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088
        DataBinding.FieldName = 'PAYMENT_NUM'
        HeaderAlignmentHorz = taCenter
        MinWidth = 78
        Options.HorzSizing = False
        Width = 78
      end
      object cxGrid1DBTableView1CONTRAGENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'CONTRAGENT_ID'
        Visible = False
      end
      object cxGrid1DBTableView1CONTRAGENT_NAME: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'CONTRAGENT_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 457
      end
      object cxGrid1DBTableView1PAYMENT_AMOUNT: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'PAYMENT_AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taCenter
        MinWidth = 127
        Options.HorzSizing = False
        Width = 127
      end
      object cxGrid1DBTableView1INVOICE_NUM: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088' '#1089#1095#1077#1090#1072
        DataBinding.FieldName = 'INVOICE_NUM'
        HeaderAlignmentHorz = taCenter
        MinWidth = 87
        Options.HorzSizing = False
        Width = 87
      end
      object cxGrid1DBTableView1INVOICE_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1089#1095#1077#1090#1072
        DataBinding.FieldName = 'INVOICE_DT'
        HeaderAlignmentHorz = taCenter
        MinWidth = 72
        Options.HorzSizing = False
        Width = 72
      end
      object cxGrid1DBTableView1INVOICE_AMOUNT: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072' '#1089#1095#1077#1090#1072
        DataBinding.FieldName = 'INVOICE_AMOUNT'
        HeaderAlignmentHorz = taCenter
        MinWidth = 104
        Options.HorzSizing = False
        Width = 104
      end
      object cxGrid1DBTableView1ORGANIZATION_ID: TcxGridDBColumn
        DataBinding.FieldName = 'ORGANIZATION_ID'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1GROUP_NAME: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'GROUP_NAME'
        Width = 200
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
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
          BeginGroup = True
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
    RefreshSQL.Strings = (
      'select'
      
        '  P.ID, cast(P.DOC_DT as t_date) PAYMENT_DT, P.DOC_NUM PAYMENT_N' +
        'UM, P.CONTRAGENT_ID, P.AMOUNT PAYMENT_AMOUNT, P.PAYMENT_TYPE,'
      '  C.NAME CONTRAGENT_NAME,'
      
        '  I.DOC_NUM INVOICE_NUM, cast(I.DOC_DT as T_DATE) INVOICE_DT, I.' +
        'AMOUNT INVOICE_AMOUNT,'
      '  C.ORGANIZATION_ID, O.DESCRIPTION ORGAINZATION_NAME,'
      
        '  (select G.NAME from CONTRAGENT_GROUPS G where G.ID=C.MASTER_PI' +
        'D) GROUP_NAME'
      ''
      'from payments P'
      'left join CONTRAGENTS C on C.ID=P.CONTRAGENT_ID'
      'left join INVOICE I on I.ID=P.INVOICE_ID'
      'left join ORGANIZATIONS O on O.ID=coalesce(C.ORGANIZATION_ID, 7)'
      'where P.ID=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      
        '  P.ID, cast(P.DOC_DT as t_date) PAYMENT_DT, P.DOC_NUM PAYMENT_N' +
        'UM, P.CONTRAGENT_ID, P.AMOUNT PAYMENT_AMOUNT, P.PAYMENT_TYPE,'
      '  C.NAME CONTRAGENT_NAME,'
      
        '  I.DOC_NUM INVOICE_NUM, cast(I.DOC_DT as T_DATE) INVOICE_DT, I.' +
        'AMOUNT INVOICE_AMOUNT,'
      '  C.ORGANIZATION_ID, O.DESCRIPTION ORGAINZATION_NAME,'
      
        '  (select G.NAME from CONTRAGENT_GROUPS G where G.ID=C.MASTER_PI' +
        'D) GROUP_NAME'
      ''
      'from payments P'
      'left join CONTRAGENTS C on C.ID=P.CONTRAGENT_ID'
      'left join INVOICE I on I.ID=P.INVOICE_ID'
      'left join ORGANIZATIONS O on O.ID=coalesce(C.ORGANIZATION_ID, 1)'
      'where'
      '    P.STATUS=2'
      
        '    and P.DOC_DT between coalesce(cast(:DATE_START as T_DATE), '#39 +
        '01.06.2017'#39') and coalesce(cast(:DATE_END as T_DATE), current_dat' +
        'e)'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 64
    Top = 96
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 104
    Top = 96
  end
end
