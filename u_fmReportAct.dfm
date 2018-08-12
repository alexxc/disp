inherited fmReportAct: TfmReportAct
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1072#1082#1090#1072#1084
  ClientHeight = 414
  ClientWidth = 992
  ExplicitWidth = 1008
  ExplicitHeight = 452
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 992
    ExplicitWidth = 992
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 992
    Height = 383
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = cxGrid1DBTableView1QTY_OUT
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = cxGrid1DBTableView1QTY_IN
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1PRICE_REPLACE
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          Column = cxGrid1DBTableView1SQUARE
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1SQUARE
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          Column = cxGrid1DBTableView1SQUARE_IN
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          Column = cxGrid1DBTableView1SQUARE_OUT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = cxGrid1DBTableView1QTY_OUT
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = cxGrid1DBTableView1QTY_IN
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1PRICE_REPLACE
        end
        item
          Format = '#,##0'
          Kind = skCount
          FieldName = 'ID'
          Column = cxGrid1DBTableView1DOC_DT
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          Column = cxGrid1DBTableView1SQUARE
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          Column = cxGrid1DBTableView1SQUARE_IN
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          Column = cxGrid1DBTableView1SQUARE_OUT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cxGrid1DBTableView1GROUP_NAME: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'GROUP_NAME'
        Visible = False
        Width = 120
      end
      object cxGrid1DBTableView1DOC_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DOC_DT'
        Width = 71
      end
      object cxGrid1DBTableView1DOC_NUM: TcxGridDBColumn
        Caption = #1040#1082#1090' '#8470
        DataBinding.FieldName = 'DOC_NUM'
        Width = 60
      end
      object cxGrid1DBTableView1CONTRAGENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'CONTRAGENT_ID'
        Visible = False
      end
      object cxGrid1DBTableView1CONTRAGENT_NAME: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'CONTRAGENT_NAME'
        Width = 200
      end
      object cxGrid1DBTableView1FROM_NAME: TcxGridDBColumn
        Caption = #1057#1082#1083#1072#1076
        DataBinding.FieldName = 'FROM_NAME'
        Visible = False
        GroupIndex = 0
        Width = 150
      end
      object cxGrid1DBTableView1ADDRESS: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'ADDRESS'
        Width = 200
      end
      object cxGrid1DBTableView1CLIENT_TYPE: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1082#1083#1080#1077#1085#1090#1072
        DataBinding.FieldName = 'CLIENT_TYPE'
        RepositoryItem = DM.erClientType
        Width = 83
      end
      object cxGrid1DBTableView1DEBTOR_TYPE: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1076#1077#1073#1080#1090#1086#1088#1072
        DataBinding.FieldName = 'DEBTOR_TYPE'
        RepositoryItem = DM.erDebtorType
        Width = 149
      end
      object cxGrid1DBTableView1QTY_OUT: TcxGridDBColumn
        Caption = #1056#1072#1079#1083#1086#1078#1077#1085#1086
        DataBinding.FieldName = 'QTY_OUT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = ',0;-,0'
      end
      object cxGrid1DBTableView1QTY_IN: TcxGridDBColumn
        Caption = #1057#1085#1103#1090#1086
        DataBinding.FieldName = 'QTY_IN'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = ',0;-,0'
      end
      object cxGrid1DBTableView1MAT_NAME: TcxGridDBColumn
        Caption = #1050#1086#1074#1077#1088
        DataBinding.FieldName = 'MAT_NAME'
        Width = 200
      end
      object cxGrid1DBTableView1PRICE_REPLACE: TcxGridDBColumn
        Caption = #1057#1090'-'#1090#1100' '#1079#1072#1084#1077#1085#1099
        DataBinding.FieldName = 'PRICE_REPLACE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 79
      end
      object cxGrid1DBTableView1MANAGER_NAME: TcxGridDBColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'MANAGER_NAME'
        Width = 200
      end
      object cxGrid1DBTableView1SQUARE: TcxGridDBColumn
        Caption = #1084#178
        DataBinding.FieldName = 'SQUARE'
        MinWidth = 80
        Options.HorzSizing = False
        Width = 80
      end
      object cxGrid1DBTableView1SQUARE_IN: TcxGridDBColumn
        Caption = #1084#178' '#1089#1085#1103#1090#1086
        DataBinding.FieldName = 'SQUARE_IN'
        MinWidth = 80
        Options.HorzSizing = False
        Width = 80
      end
      object cxGrid1DBTableView1SQUARE_OUT: TcxGridDBColumn
        Caption = #1084#178' '#1088#1072#1079#1083#1086#1078#1077#1085#1086
        DataBinding.FieldName = 'SQUARE_OUT'
        MinWidth = 80
        Options.HorzSizing = False
        Width = 80
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
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object bbExport: TdxBarButton
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Hint = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Visible = ivNever
      ImageIndex = 28
      OnClick = bbExportClick
    end
  end
  object DATA: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  T.ID,'
      '  G.NAME GROUP_NAME,'
      '  cast(DOC.DOC_DT as T_DATE) DOC_DT,'
      '  DOC.DOC_NUM, DOC.CONTRAGENT_ID,'
      '  case DOC.FROM_TYPE'
      
        '    when 1 then (select REF_STORAGE.DESCRIPTION from REF_STORAGE' +
        ' where REF_STORAGE.ID=DOC.FROM_ID)'
      
        '    when 2 then (select REF_EMPLOE.NAME_LAST from REF_EMPLOE whe' +
        're REF_EMPLOE.ID=DOC.FROM_ID)'
      '  end FROM_NAME,'
      '  C.NAME CONTRAGENT_NAME,'
      '  C.CLIENT_TYPE,'
      '  C.DEBTOR_TYPE,'
      '  nullif(T.QTY_OUT, 0) QTY_OUT,'
      '  nullif(T.QTY_IN, 0) QTY_IN,'
      '  A.NAME ADDRESS,'
      '  M.DESCRIPTION MAT_NAME,'
      '  nullif((M.WIDTH * M.HEIGHT / 10000.000), 0) SQUARE,'
      
        '  nullif((M.WIDTH * M.HEIGHT / 10000.000) * QTY_IN, 0) SQUARE_IN' +
        ','
      
        '  nullif((M.WIDTH * M.HEIGHT / 10000.000) * QTY_OUT, 0) SQUARE_O' +
        'UT,'
      
        '  (select first 1 SRV.PRICE_REPLACE from ADDRESS_SERVICE SRV whe' +
        're SRV.ADDRESS_ID=A.ID and SRV.MAT_ID=M.ID and SRV.IS_ACTIVE=1 o' +
        'rder by SRV.ID desc) PRICE_REPLACE,'
      '  USERS.FIO MANAGER_NAME'
      ''
      ''
      'from'
      '  DOC_ACT_IN_OUT DOC'
      '  left join DOC_ACT_IN_OUT_T T on T.PID=DOC.ID'
      '  left join CONTRAGENTS C on C.ID=DOC.CONTRAGENT_ID'
      '  left join REF_MAT M on M.ID=T.MAT_ID'
      '  left join USERS on USERS.ID=C.MANAGER_ID'
      '  left join CONTRAGENT_GROUPS G on G.ID=C.MASTER_PID'
      '  left join CONTRAGENTS MASTER_C on MASTER_C.ID=C.PID'
      '  left join CONTRACT_ADDRESS A on A.ID=T.ADDRESS_ID'
      ''
      'where'
      '  DOC.STATUS=2'
      
        '  and cast(DOC.DOC_DT as T_DATE) between cast(coalesce(:DATE_STA' +
        'RT, current_date-5) as T_DATE) and cast(coalesce(:DATE_END, curr' +
        'ent_date) as T_DATE)'
      'order by'
      '  DOC.DOC_DT'
      ''
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 72
    Top = 160
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 120
    Top = 168
  end
end
