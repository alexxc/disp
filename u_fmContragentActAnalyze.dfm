inherited fmContragentActAnalyze: TfmContragentActAnalyze
  Caption = #1040#1085#1072#1083#1080#1079' '#1072#1082#1090#1086#1074
  ClientHeight = 739
  ClientWidth = 1474
  ExplicitWidth = 1490
  ExplicitHeight = 778
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1474
    ExplicitWidth = 1474
  end
  object cxDBPivotGrid1: TcxDBPivotGrid [1]
    Left = 0
    Top = 31
    Width = 1474
    Height = 708
    Align = alClient
    DataSource = dsDATA
    Groups = <
      item
        IsCaptionAssigned = True
        Caption = #1054#1073#1089#1083
        UniqueName = ''
      end
      item
        IsCaptionAssigned = True
        Caption = #1040#1082#1090#1099
        UniqueName = ''
      end>
    OptionsBehavior.CellHints = True
    OptionsDataField.AreaIndex = 1
    OptionsDataField.IsCaptionAssigned = True
    OptionsDataField.Caption = #1044#1072#1085#1085#1099#1077
    OptionsView.ColumnGrandTotalText = #1048#1058#1054#1043#1054
    OptionsView.ColumnTotalsLocation = ctlNear
    OptionsView.RowGrandTotalText = #1048#1058#1054#1043#1054
    OptionsView.TotalsForSingleValues = True
    Styles.Total = DM.cxStyleNormal
    TabOrder = 1
    object cxDBPivotGrid1DOC_DT: TcxDBPivotGridField
      Area = faColumn
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #1044#1072#1090#1072
      DataBinding.FieldName = 'DOC_DT'
      Visible = True
      Width = 80
      UniqueName = #1044#1072#1090#1072
    end
    object cxDBPivotGrid1DOC_NUM: TcxDBPivotGridField
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090
      DataBinding.FieldName = 'DOC_NUM'
      UniqueName = #1044#1086#1082#1091#1084#1077#1085#1090
    end
    object cxDBPivotGrid1ADDRESS: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #1040#1076#1088#1077#1089
      DataBinding.FieldName = 'ADDRESS'
      Options.Moving = False
      GroupExpanded = False
      Styles.Total = DM.cxStyleNormal
      Visible = True
      Width = 300
      UniqueName = #1040#1076#1088#1077#1089
    end
    object cxDBPivotGrid1MAT_NAME: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 1
      IsCaptionAssigned = True
      Caption = #1050#1086#1074#1088#1086#1074' '#1085#1072' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1080
      CustomTotals = <
        item
        end>
      DataBinding.FieldName = 'MAT_NAME'
      Options.Moving = False
      SummaryType = stCount
      Visible = True
      Width = 200
      UniqueName = #1050#1086#1074#1088#1086#1074' '#1085#1072' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1080
    end
    object cxDBPivotGrid1QTY_IN: TcxDBPivotGridField
      Area = faData
      AreaIndex = 1
      IsCaptionAssigned = True
      Caption = #1057#1085#1103#1090
      DataBinding.FieldName = 'QTY_IN'
      DisplayFormat = ',0;-,0'
      PropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DisplayFormat = ',0;-,0'
      GroupIndex = 1
      GroupExpanded = False
      Visible = True
      Width = 50
      UniqueName = #1057#1085#1103#1090
    end
    object cxDBPivotGrid1QTY_OUT: TcxDBPivotGridField
      Area = faData
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #1056#1072#1079#1083
      DataBinding.FieldName = 'QTY_OUT'
      DisplayFormat = ',0;-,0'
      PropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.DisplayFormat = ',0;-,0'
      GroupIndex = 1
      Visible = True
      Width = 50
      UniqueName = #1056#1072#1079#1083
    end
  end
  inherited BM: TdxBarManager
    Left = 224
    Top = 40
    PixelsPerInch = 96
  end
  object DATA: TpFIBDataSet
    SelectSQL.Strings = (
      'execute block(ID T_PID = :ID)'
      'returns('
      '  DOC_ID T_PID,'
      '  DOC_DT T_DATE, DOC_NUM T_NAME,'
      '  ADDRESS_ID T_PID, ADDRESS T_NAME,'
      '  MAT_ID T_PID,  MAT_NAME T_NAME,'
      '  QTY_IN T_INT, QTY_OUT T_INT,'
      '  DESCRIPTION T_DESCRIPTION'
      ')'
      'as'
      '  declare variable QTY T_INT;'
      'begin'
      '  if (ID is null) then'
      '    ID = 3239;'
      '  for select'
      '    D.ID, D.DOC_DT, '#39#1040#1082#1090' '#8470#39'||D.DOC_NUM DOC_NUM,'
      '    A.ID, A.NAME ADDRESS,'
      '    M.ID, M.DESCRIPTION MAT_NAME,'
      '    coalesce(T.QTY_IN, 0) QTY_IN,'
      '    coalesce(T.QTY_OUT, 0) QTY_OUT,'
      '    D.DESCRIPTION'
      '  from'
      
        '    DOC_ACT_IN_OUT D, DOC_ACT_IN_OUT_T T, CONTRACT_ADDRESS A, RE' +
        'F_MAT M'
      '  where'
      '    T.PID=D.ID'
      '    and D.CONTRAGENT_ID = :ID'
      
        '--    and D.CONTRAGENT_ID=(select id from contragents c where c.' +
        'NAME = '#39#1063#1080#1089#1090#1099#1081' '#1076#1086#1084#39')'
      
        '--  and D.CONTRAGENT_ID=(select id from contragents c where c.NA' +
        'ME = '#39#1064#1072#1090#1080#1083#1086#1074' '#1040'.'#1042'. '#1048#1055#39')'
      '    and D.STATUS=2'
      '    and A.ID=T.ADDRESS_ID'
      '    and M.ID=T.MAT_ID'
      '  order by'
      '    D.DOC_DT, D.DOC_NUM'
      '  into'
      '    :DOC_ID, :DOC_DT, :DOC_NUM,'
      '    :ADDRESS_ID, :ADDRESS,'
      '    :MAT_ID, :MAT_NAME, :QTY_IN, :QTY_OUT,'
      '    :DESCRIPTION'
      '  do begin'
      '    QTY = 0;'
      '    select'
      '      coalesce(sum(coalesce(ADDRESS_SERVICE.QTY_MAT, 0)), 0)'
      '    from'
      
        '      CONTRAGENTS_CONTRACT, CONTRACT_ADDRESS, ADDRESS_SERVICE, R' +
        'EF_MAT'
      '    where'
      '      CONTRAGENTS_CONTRACT.CONTRAGENT_ID=:ID'
      
        '      and REF_MAT.ID=ADDRESS_SERVICE.MAT_ID and ADDRESS_SERVICE.' +
        'ADDRESS_ID=CONTRACT_ADDRESS.ID and CONTRACT_ADDRESS.CONTRACT_ID=' +
        'CONTRAGENTS_CONTRACT.ID'
      
        '      and (ADDRESS_SERVICE.DAY_1+ADDRESS_SERVICE.DAY_2+ADDRESS_S' +
        'ERVICE.DAY_3+ADDRESS_SERVICE.DAY_4+ADDRESS_SERVICE.DAY_5+ADDRESS' +
        '_SERVICE.DAY_6+ADDRESS_SERVICE.DAY_7) >0'
      '      and REF_MAT.ID=:MAT_ID'
      '      and ADDRESS_SERVICE.ADDRESS_ID = :ADDRESS_ID'
      '    into :QTY;'
      '    MAT_NAME = QTY || '#39' * '#39'||MAT_NAME;'
      '    suspend;'
      '  end'
      'end')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 448
    Top = 24
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 496
    Top = 32
  end
end
