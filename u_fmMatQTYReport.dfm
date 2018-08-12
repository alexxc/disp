inherited fmMatQTYReport: TfmMatQTYReport
  Caption = #1055#1086#1090#1088#1077#1073#1085#1086#1089#1090#1100' '#1082#1086#1074#1088#1086#1074
  ClientHeight = 714
  ClientWidth = 1416
  ExplicitWidth = 1432
  ExplicitHeight = 752
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1416
    ExplicitWidth = 1416
  end
  object Cube: TcxDBPivotGrid [1]
    Left = 0
    Top = 31
    Width = 1416
    Height = 683
    Align = alClient
    DataSource = dsDATA
    Groups = <
      item
        IsCaptionAssigned = True
        Caption = #1053#1077#1076#1077#1083#1103
        UniqueName = ''
      end>
    OptionsData.SummaryNullIgnore = True
    OptionsPrefilter.Visible = pfvNever
    OptionsView.ColumnFields = False
    OptionsView.ColumnGrandTotalText = #1048#1090#1086#1075#1086
    OptionsView.DataFields = False
    OptionsView.FilterFields = False
    OptionsView.TotalsForSingleValues = True
    TabOrder = 1
    ExplicitTop = 37
    object CubePRODUCTION_NAME: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      DataBinding.FieldName = 'PRODUCTION_NAME'
      Visible = True
      UniqueName = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
    end
    object CubeMAT_NAME: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 1
      IsCaptionAssigned = True
      Caption = #1050#1086#1074#1105#1088
      DataBinding.FieldName = 'MAT_NAME'
      Visible = True
      Width = 150
      UniqueName = #1050#1086#1074#1105#1088
    end
    object CubeQTY_1: TcxDBPivotGridField
      Area = faData
      AreaIndex = 1
      IsCaptionAssigned = True
      Caption = #1055#1085
      DataBinding.FieldName = 'QTY_1'
      Visible = True
      Width = 50
      UniqueName = #1055#1085
    end
    object CubeQTY_2: TcxDBPivotGridField
      Area = faData
      AreaIndex = 2
      IsCaptionAssigned = True
      Caption = #1042#1090
      DataBinding.FieldName = 'QTY_2'
      Visible = True
      Width = 50
      UniqueName = #1042#1090
    end
    object CubeQTY_3: TcxDBPivotGridField
      Area = faData
      AreaIndex = 3
      IsCaptionAssigned = True
      Caption = #1057#1088
      DataBinding.FieldName = 'QTY_3'
      Visible = True
      Width = 50
      UniqueName = #1057#1088
    end
    object CubeQTY_4: TcxDBPivotGridField
      Area = faData
      AreaIndex = 4
      IsCaptionAssigned = True
      Caption = #1063#1090
      DataBinding.FieldName = 'QTY_4'
      Visible = True
      Width = 50
      UniqueName = #1063#1090
    end
    object CubeQTY_5: TcxDBPivotGridField
      Area = faData
      AreaIndex = 5
      IsCaptionAssigned = True
      Caption = #1055#1090
      DataBinding.FieldName = 'QTY_5'
      Visible = True
      Width = 50
      UniqueName = #1055#1090
    end
    object CubeQTY_6: TcxDBPivotGridField
      Area = faData
      AreaIndex = 6
      IsCaptionAssigned = True
      Caption = #1057#1073
      DataBinding.FieldName = 'QTY_6'
      Visible = True
      Width = 50
      UniqueName = #1057#1073
    end
    object CubeQTY_7: TcxDBPivotGridField
      Area = faData
      AreaIndex = 7
      IsCaptionAssigned = True
      Caption = #1042#1089
      DataBinding.FieldName = 'QTY_7'
      Visible = True
      Width = 50
      UniqueName = #1042#1089
    end
    object CubeWEEK_N: TcxDBPivotGridField
      Area = faColumn
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #1053#1077#1076#1077#1083#1103
      DataBinding.FieldName = 'WEEK_N'
      PropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.Alignment.Horz = taCenter
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0;-,0'
      GroupIndex = 0
      GroupExpanded = False
      Visible = True
      UniqueName = #1053#1077#1076#1077#1083#1103
    end
    object CubeMAT_QTY: TcxDBPivotGridField
      Area = faData
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      DataBinding.FieldName = 'MAT_QTY_PROD'
      DataVisibility = dvGrandTotalCells
      Styles.Total = DM.cxStyleBold
      Visible = True
      Width = 80
      UniqueName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object CubeROUTE_NAME: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 2
      DataBinding.FieldName = 'ROUTE_NAME'
      UniqueName = 'ROUTE_NAME'
    end
    object CubeREGION_ID: TcxDBPivotGridField
      AreaIndex = 0
      DataBinding.FieldName = 'REGION_ID'
      UniqueName = 'REGION_ID'
    end
    object CubeROUTE_ID: TcxDBPivotGridField
      AreaIndex = 1
      DataBinding.FieldName = 'ROUTE_ID'
      UniqueName = 'ROUTE_ID'
    end
  end
  inherited trRead: TpFIBTransaction
    Left = 320
    Top = 304
  end
  inherited trWrite: TpFIBTransaction
    Left = 376
    Top = 312
  end
  inherited BM: TdxBarManager
    PixelsPerInch = 96
  end
  object DATA: TpFIBDataSet
    SelectSQL.Strings = (
      'execute block'
      'returns('
      '  WEEK_N T_INT,'
      '  MAT_ID T_PID,'
      '  MAT_NAME type of column REF_MAT.DESCRIPTION,'
      '  MAT_QTY T_INT,'
      '  MAT_QTY_PROD T_INT,'
      '  QTY_1 T_INT,'
      '  QTY_2 T_INT,'
      '  QTY_3 T_INT,'
      '  QTY_4 T_INT,'
      '  QTY_5 T_INT,'
      '  QTY_6 T_INT,'
      '  QTY_7 T_INT,'
      '  REGION_NAME type of column SERVICE_REGIONS.DESCRIPTION,'
      '  ROUTE_NAME type of column REF_ROUTES.DESCRIPTION,'
      '  REGION_ID T_PID,'
      '  ROUTE_ID T_PID,'
      '  PRODUCTION_ID T_PID,'
      '  PRODUCTION_NAME type of column REF_PRODUCTIONS.NAME'
      ')'
      'as'
      'begin'
      '  for select M.ID, M.DESCRIPTION from REF_MAT M'
      '  where'
      '    M.IS_OWN=1 --and M.ID=16'
      '  into :MAT_ID, :MAT_NAME do begin'
      '    week_n = 1;'
      '    while (WEEK_N<5) do begin'
      ''
      
        '      select sum(S.QTY_MAT) from ADDRESS_SERVICE S where S.IS_AC' +
        'TIVE=1 and S.MAT_ID=:MAT_ID into :MAT_QTY;'
      ''
      '      for select'
      '        PROD.ID, PROD.NAME,'
      '        sum(S.DAY_1 * S.QTY_MAT) DAY_1,'
      '        sum(S.DAY_2 * S.QTY_MAT) DAY_2,'
      '        sum(S.DAY_3 * S.QTY_MAT) DAY_3,'
      '        sum(S.DAY_4 * S.QTY_MAT) DAY_4,'
      '        sum(S.DAY_5 * S.QTY_MAT) DAY_5,'
      '        sum(S.DAY_6 * S.QTY_MAT) DAY_6,'
      '        sum(S.DAY_7 * S.QTY_MAT) DAY_7'
      '      from'
      '        ADDRESS_SERVICE S'
      '        left join CONTRACT_ADDRESS A on A.ID=S.ADDRESS_ID'
      
        '        left join REF_ROUTE_REGIONS on REF_ROUTE_REGIONS.REGION_' +
        'ID=A.REGION_ID'
      
        '        left join REF_ROUTES ROUTE on ROUTE.ID=REF_ROUTE_REGIONS' +
        '.ROUTE_ID'
      
        '        left join REF_STORAGE STORAGE on STORAGE.ID=ROUTE.STORAG' +
        'E_ID'
      
        '        left join REF_PRODUCTIONS PROD on PROD.ID=STORAGE.PRODUC' +
        'TION_ID'
      '      where'
      '        S.IS_ACTIVE=1 and S.MAT_ID=:MAT_ID'
      '        and S.QTY_MAT>0'
      
        '        and ( (coalesce(s.WEEK_1, 0)=1 and :WEEK_N=1) or (coales' +
        'ce(s.WEEK_2, 0)=1 and :WEEK_N=2) or (coalesce(s.WEEK_3, 0)=1 and' +
        ' :WEEK_N=3) or (coalesce(s.WEEK_4, 0)=1 and :WEEK_N=4))'
      ''
      '      group by'
      '        1, 2'
      '      '
      '      into'
      '        :PRODUCTION_ID, :PRODUCTION_NAME,'
      '        :QTY_1, :QTY_2, :QTY_3, :QTY_4, :QTY_5, :QTY_6, :QTY_7'
      '      do begin'
      ''
      ''
      '      if (WEEK_N=1) then begin'
      '        select'
      '          sum(S.QTY_MAT) QTY'
      '        '
      '        from'
      '          ADDRESS_SERVICE S'
      '          left join CONTRACT_ADDRESS A on A.ID=S.ADDRESS_ID'
      
        '          left join REF_ROUTE_REGIONS on REF_ROUTE_REGIONS.REGIO' +
        'N_ID=A.REGION_ID'
      
        '          left join REF_ROUTES ROUTE on ROUTE.ID=REF_ROUTE_REGIO' +
        'NS.ROUTE_ID'
      
        '          left join REF_STORAGE STORAGE on STORAGE.ID=ROUTE.STOR' +
        'AGE_ID'
      
        '          left join REF_PRODUCTIONS PROD on PROD.ID=STORAGE.PROD' +
        'UCTION_ID'
      
        '        where  S.IS_ACTIVE=1  and S.MAT_ID=:MAT_ID and PROD.ID=:' +
        'PRODUCTION_ID'
      '          into :MAT_QTY_PROD;'
      '      end else'
      '        MAT_QTY_PROD = 0;'
      ''
      '        QTY_1 = nullif(QTY_1, 0);'
      '        QTY_2 = nullif(QTY_2, 0);'
      '        QTY_3 = nullif(QTY_3, 0);'
      '        QTY_4 = nullif(QTY_4, 0);'
      '        QTY_5 = nullif(QTY_5, 0);'
      '        QTY_6 = nullif(QTY_6, 0);'
      '        QTY_7 = nullif(QTY_7, 0);'
      '  '
      '        suspend;'
      '      end'
      '      WEEK_N=WEEK_N+1;'
      '    end'
      '  end'
      ''
      'end'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    Left = 360
    Top = 168
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 400
    Top = 176
  end
end
