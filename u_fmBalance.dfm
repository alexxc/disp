inherited fmBalance: TfmBalance
  Caption = #1042#1079#1072#1080#1084#1088#1086#1072#1089#1095#1077#1090#1099
  ClientHeight = 621
  ClientWidth = 1360
  ExplicitWidth = 1376
  ExplicitHeight = 659
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1360
    ExplicitWidth = 1360
  end
  object Cube: TcxDBPivotGrid [1]
    Left = 0
    Top = 31
    Width = 1360
    Height = 590
    Align = alClient
    DataSource = dsDATA
    Groups = <>
    TabOrder = 5
    object cxDBPivotGrid1D: TcxDBPivotGridField
      Area = faColumn
      AreaIndex = 0
      DataBinding.FieldName = 'D'
      Visible = True
      UniqueName = 'D'
    end
    object cxDBPivotGrid1CONTRAGENT_NAME: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 2
      IsCaptionAssigned = True
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      DataBinding.FieldName = 'CONTRAGENT_NAME'
      Visible = True
      UniqueName = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
    end
    object cxDBPivotGrid1MANAGER_NAME: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      DataBinding.FieldName = 'MANAGER_NAME'
      Visible = True
      UniqueName = #1057#1086#1090#1088#1091#1076#1085#1080#1082
    end
    object cxDBPivotGrid1AMOUNT: TcxDBPivotGridField
      Area = faData
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #1055#1086#1089#1090#1091#1087#1080#1083#1086
      DataBinding.FieldName = 'AMOUNT'
      Visible = True
      Width = 94
      UniqueName = #1055#1086#1089#1090#1091#1087#1080#1083#1086
    end
    object cxDBPivotGrid1REWARD_PERCENT: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 1
      IsCaptionAssigned = True
      Caption = '%'
      DataBinding.FieldName = 'REWARD_PERCENT'
      Visible = True
      UniqueName = '%'
    end
    object cxDBPivotGrid1MANAGER_AMOUNT: TcxDBPivotGridField
      Area = faData
      AreaIndex = 1
      IsCaptionAssigned = True
      Caption = #1057#1091#1084#1084#1072' %'
      DataBinding.FieldName = 'MANAGER_AMOUNT'
      Visible = True
      Width = 80
      UniqueName = #1057#1091#1084#1084#1072' %'
    end
    object CubeSOURCE: TcxDBPivotGridField
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #1048#1089#1090#1086#1095#1085#1080#1082
      DataBinding.FieldName = 'SOURCE'
      Visible = True
      UniqueName = #1048#1089#1090#1086#1095#1085#1080#1082
    end
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
          BeginGroup = True
          Visible = True
          ItemName = 'bbPeriod'
        end
        item
          BeginGroup = True
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
      Caption = #1069#1082#1089#1087#1086#1088#1090
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090
      Visible = ivAlways
      ImageIndex = 28
      PaintStyle = psCaptionGlyph
      OnClick = bbExportClick
    end
    object bbPeriod: TdxBarSubItem
      Caption = #1055#1077#1088#1080#1086#1076
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbPeriod0'
        end
        item
          Visible = True
          ItemName = 'bbPeriod1'
        end
        item
          Visible = True
          ItemName = 'bbPeriod2'
        end
        item
          Visible = True
          ItemName = 'bbPeriod3'
        end>
    end
    object bbPeriod2: TdxBarButton
      Tag = 2
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#1075#1086#1076
      Category = 0
      Hint = #1058#1077#1082#1091#1097#1080#1081' '#1075#1086#1076
      Visible = ivAlways
      OnClick = bbPeriod0Click
    end
    object bbPeriod3: TdxBarButton
      Tag = 3
      Caption = #1055#1088#1086#1096#1083#1099#1081' '#1075#1086#1076
      Category = 0
      Hint = #1055#1088#1086#1096#1083#1099#1081' '#1075#1086#1076
      Visible = ivAlways
      OnClick = bbPeriod0Click
    end
    object bbPeriod0: TdxBarButton
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1077' 6 '#1084#1077#1089#1103#1094#1077#1074
      Category = 0
      Hint = #1055#1086#1089#1083#1077#1076#1085#1080#1077' 6 '#1084#1077#1089#1103#1094#1077#1074
      Visible = ivAlways
      OnClick = bbPeriod0Click
    end
    object bbPeriod1: TdxBarButton
      Tag = 1
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1077' 12 '#1084#1077#1089#1103#1094#1077#1074
      Category = 0
      Hint = #1055#1086#1089#1083#1077#1076#1085#1080#1077' 12 '#1084#1077#1089#1103#1094#1077#1074
      Visible = ivAlways
      OnClick = bbPeriod0Click
    end
  end
  object DATA: TpFIBDataSet
    SelectSQL.Strings = (
      'execute block('
      '  DSTART T_DATE=:DSTART,'
      '  DEND T_DATE=:DEND'
      ') returns('
      '  D T_DATE,'
      '  CONTRAGENT_NAME T_NAME,'
      '  MANAGER_NAME T_NAME,'
      '  AMOUNT T_AMOUNT,'
      '  REWARD_PERCENT T_AMOUNT,'
      '  MANAGER_AMOUNT T_AMOUNT,'
      '  SOURCE T_NAME'
      ')'
      'as'
      '  declare variable CONTRAGENT_ID T_PID;'
      '  declare variable REQUEST_ID T_PID;'
      '  declare variable SOURCE_ID T_PID;'
      ''
      'begin'
      '  for select'
      '      C.ID, C.NAME CONTRAGENT_NAME,'
      '      IIF(C.DEBTOR_TYPE=3, '#39'!'#1050#1086#1085#1090#1088#1086#1083#1100#39', U.NAME) MANAGER_NAME,'
      '      coalesce(C.REWARD_PERCENT, 0),'
      
        '      cast('#39'01.'#39'||extract(MONTH from P.DOC_DT)||'#39'.'#39'||extract(YEA' +
        'R from P.DOC_DT) as t_date) D,'
      '      sum(coalesce(P.AMOUNT, 0)) AMOUNT'
      '    from PAYMENTS P'
      '    left join contragents c on c.ID=p.CONTRAGENT_ID'
      '    left join users u on u.ID=c.MANAGER_ID'
      '    where 1=1'
      '    --  P.CONTRAGENT_ID=1580'
      '      and P.DOC_DT between :DSTART and :DEND'
      '      and P.STATUS=2'
      '    group by 1, 2, 3, 4, 5'
      '  into'
      
        '    :CONTRAGENT_ID, :CONTRAGENT_NAME, :MANAGER_NAME, :REWARD_PER' +
        'CENT, :D, :AMOUNT'
      '  do begin'
      
        '    MANAGER_AMOUNT = cast(AMOUNT/100.00*REWARD_PERCENT as t_amou' +
        'nt);'
      '    SOURCE_ID = null; SOURCE = null; REQUEST_ID=null;'
      
        '    select first 1 R.ID, R.SOURCE from REQUEST R where R.CONTRAG' +
        'ENT_ID=:CONTRAGENT_ID order by R.ID desc into :REQUEST_ID, :SOUR' +
        'CE_ID;'
      '    if (SOURCE_ID is not null) then'
      
        '      select REF.NAME from REFBOOK REF where REF.ID=:SOURCE_ID i' +
        'nto :SOURCE;'
      '    suspend;'
      '  end'
      '  '
      'end'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 504
    Top = 216
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 552
    Top = 216
  end
end
