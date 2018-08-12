inherited fmCooperationProcess: TfmCooperationProcess
  Caption = #1054#1073#1088#1072#1073#1086#1090#1082#1072' '#1089#1086#1089#1090#1086#1103#1085#1080#1081' '#1089#1086#1090#1088#1091#1076#1085#1080#1095#1077#1089#1090#1074#1072
  ClientHeight = 582
  ClientWidth = 1142
  ExplicitWidth = 1158
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1142
    ExplicitWidth = 1142
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1142
    Height = 551
    Align = alClient
    TabOrder = 5
    object GridTableView: TcxGridDBBandedTableView
      OnDblClick = GridTableViewDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = GridTableViewID
        end
        item
          Format = '0'
          Kind = skSum
          Column = GridTableViewIS_PROCESS
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.BandHeaders = False
      Bands = <
        item
          Width = 976
        end>
      object GridTableViewID: TcxGridDBBandedColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'ID'
        Options.Editing = False
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridTableViewNAME: TcxGridDBBandedColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'NAME'
        Options.Editing = False
        Width = 246
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridTableViewIS_MAT_ACTIVE: TcxGridDBBandedColumn
        Caption = #1050#1086#1074#1088#1099
        DataBinding.FieldName = 'IS_MAT_ACTIVE'
        RepositoryItem = DM.erCheckGreen
        Options.Editing = False
        Width = 51
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridTableViewMAT_SERVICE_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MAT_SERVICE_QTY'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object GridTableViewCOOPERATION_STATUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COOPERATION_STATUS'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object GridTableViewCOOPERATION_STATUS_NAME: TcxGridDBBandedColumn
        Caption = #1058#1077#1082#1091#1097#1080#1081' '#1089#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'COOPERATION_STATUS_NAME'
        Options.Editing = False
        Width = 259
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object GridTableViewCOOPERATION_STATUS_NEW: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COOPERATION_STATUS_NEW'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object GridTableViewCOOPERATION_STATUS_NEW_NAME: TcxGridDBBandedColumn
        Caption = #1053#1086#1074#1099#1081' '#1089#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'COOPERATION_STATUS_NEW_NAME'
        Options.Editing = False
        Width = 261
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object GridTableViewLAST_ACT_DATE: TcxGridDBBandedColumn
        AlternateCaption = #1044#1072#1090#1072' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1072#1082#1090#1072
        Caption = #1044#1072#1090#1072' '#1072#1082#1090#1072
        DataBinding.FieldName = 'LAST_ACT_DATE'
        Options.Editing = False
        Width = 131
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object GridTableViewACT_IN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACT_IN'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object GridTableViewACT_OUT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACT_OUT'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object GridTableViewIS_PROCESS: TcxGridDBBandedColumn
        Caption = #1044#1077#1081#1089#1090#1074#1080#1077
        DataBinding.FieldName = 'IS_PROCESS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DM.ImageListStatuses
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <
          item
            Description = #1055#1088#1086#1087#1091#1089#1082
            ImageIndex = 17
            Value = 0
          end
          item
            Description = #1054#1073#1085#1086#1074#1080#1090#1100
            ImageIndex = 19
            Value = 1
          end>
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridTableView
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
          ItemName = 'bbSelect'
        end
        item
          Visible = True
          ItemName = 'bbSelectAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClearAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbUpdateCurrent'
        end
        item
          Visible = True
          ItemName = 'bbUpdateAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    inherited bbRefresh: TdxBarButton
      OnClick = bbRefreshClick
    end
    object bbSelectAll: TdxBarButton
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1089#1077
      Category = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1074#1089#1077
      Visible = ivAlways
      ImageIndex = 51
      PaintStyle = psCaptionGlyph
      OnClick = bbSelectAllClick
    end
    object bbClearAll: TdxBarButton
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077
      Category = 0
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077
      Visible = ivAlways
      ImageIndex = 57
      OnClick = bbClearAllClick
    end
    object bbUpdateCurrent: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1090#1077#1082#1091#1097#1077#1075#1086
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 49
      PaintStyle = psCaptionGlyph
      OnClick = bbUpdateCurrentClick
    end
    object bbUpdateAll: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1074#1089#1077
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1087#1086#1084#1077#1095#1077#1085#1085#1099#1077' '#1079#1072#1087#1080#1089#1080
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
      OnClick = bbUpdateAllClick
    end
    object bbSelect: TdxBarButton
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Category = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
      OnClick = bbSelectClick
    end
  end
  object DATA: TpFIBDataSet
    CachedUpdates = True
    SelectSQL.Strings = (
      'execute block'
      'returns('
      '  ID T_PID,'
      '  NAME T_NAME,'
      '  IS_MAT_ACTIVE T_INT,'
      '  MAT_SERVICE_QTY T_INT,'
      '  cooperation_status t_int,'
      '  cooperation_status_name t_name,'
      '  cooperation_status_new t_int,'
      '  cooperation_status_new_name t_name,'
      '  last_act_date t_date,'
      '  act_in t_int,'
      '  act_out t_int,'
      '  IS_PROCESS T_BOOLEAN'
      ''
      ')'
      'as'
      'begin'
      '  IS_PROCESS = 0;'
      '  for select C.ID, C.NAME, attr.COOPERATION_STATUS, r.NAME'
      '  from CONTRAGENTS C'
      '  left join CONTRAGENTS_ATTR attr on attr.ID=c.ID'
      '  left join REFBOOK r on r.ID=attr.COOPERATION_STATUS'
      '  where'
      '    C.IS_FOLDER=0'
      '  order by  C.NAME'
      '--    and attr.COOPERATION_STATUS is not null'
      '  into'
      '    :ID, :NAME, :cooperation_status, :cooperation_status_name'
      '  do begin'
      '    '
      '      select'
      '        coalesce(sum(ADDRESS_SERVICE.QTY_MAT), 0)'
      '      from'
      
        '        CONTRAGENTS_CONTRACT, CONTRACT_ADDRESS, ADDRESS_SERVICE,' +
        ' REF_MAT'
      '      where'
      '        CONTRAGENTS_CONTRACT.CONTRAGENT_ID=:ID'
      
        '        and REF_MAT.ID=ADDRESS_SERVICE.MAT_ID and ADDRESS_SERVIC' +
        'E.ADDRESS_ID=CONTRACT_ADDRESS.ID and CONTRACT_ADDRESS.CONTRACT_I' +
        'D=CONTRAGENTS_CONTRACT.ID'
      
        '        and (ADDRESS_SERVICE.DAY_1+ADDRESS_SERVICE.DAY_2+ADDRESS' +
        '_SERVICE.DAY_3+ADDRESS_SERVICE.DAY_4+ADDRESS_SERVICE.DAY_5+ADDRE' +
        'SS_SERVICE.DAY_6+ADDRESS_SERVICE.DAY_7) >0'
      '      into MAT_SERVICE_QTY;'
      '      IS_MAT_ACTIVE = IIF(MAT_SERVICE_QTY>0, 1, 0);'
      
        '      cooperation_status_new = null; cooperation_status_new_name' +
        ' = '#39#39';'
      
        '      if ((IS_MAT_ACTIVE=1) and (cooperation_status is null)) th' +
        'en begin'
      '        -- '#1045#1089#1090#1100' '#1082#1086#1074#1088#1099', '#1085#1086' '#1089#1090#1072#1090#1091#1089' '#1087#1091#1089#1090#1086#1081
      '        cooperation_status_new=36;'
      '      end'
      '      last_act_date = null; act_out = null; act_in = null;'
      ''
      
        '      if (((cooperation_status=36) or (cooperation_status is nul' +
        'l)) and IS_MAT_ACTIVE=0) then begin'
      
        '        select first 1 D.DOC_DT, d.OUT_COUNT, d.IN_COUNT from DO' +
        'C_ACT_IN_OUT D where D.CONTRAGENT_ID=:ID  and d.STATUS=2 order b' +
        'y d.DOC_DT desc into :last_act_date, :act_out, :act_in;'
      
        '        if (extract(YEAR from last_act_date)=extract(YEAR from c' +
        'urrent_date)) then begin'
      '          cooperation_status_new = 112; --'#1056#1072#1073#1086#1090#1072#1083#1080' '#1074' '#1101#1090#1086#1084' '#1075#1086#1076#1091
      
        '        end else if ((extract(YEAR from current_date)-extract(YE' +
        'AR from last_act_date))=1) then begin'
      
        '          cooperation_status_new = 113; --'#1056#1072#1073#1086#1090#1072#1083#1080' '#1074' '#1087#1088#1086#1096#1083#1086#1084' '#1075#1086#1076 +
        #1091
      
        '        end else if ((extract(YEAR from current_date)-extract(YE' +
        'AR from last_act_date))>1) then begin'
      '          cooperation_status_new = 114; --'#1056#1072#1073#1086#1090#1072#1083#1080' '#1088#1072#1085#1077#1077
      '        end'
      ''
      '      end'
      ''
      
        '      if ((cooperation_status<>cooperation_status_new) or ((coop' +
        'eration_status is null) and (cooperation_status_new is not null)' +
        '))  then begin'
      
        '        select r.NAME from REFBOOK r where r.ID=:cooperation_sta' +
        'tus_new into :cooperation_status_new_name;'
      '        suspend;'
      '      end'
      '  end'
      'end')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 176
    Top = 120
  end
  object dsDATA: TDataSource
    DataSet = M
    OnDataChange = dsDATADataChange
    Left = 232
    Top = 120
  end
  object M: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 328
    Top = 160
    object MID: TIntegerField
      FieldName = 'ID'
    end
    object MNAME: TWideStringField
      FieldName = 'NAME'
      Size = 300
    end
    object MIS_MAT_ACTIVE: TIntegerField
      FieldName = 'IS_MAT_ACTIVE'
    end
    object MMAT_SERVICE_QTY: TIntegerField
      FieldName = 'MAT_SERVICE_QTY'
    end
    object MCOOPERATION_STATUS: TIntegerField
      FieldName = 'COOPERATION_STATUS'
    end
    object MCOOPERATION_STATUS_NAME: TWideStringField
      FieldName = 'COOPERATION_STATUS_NAME'
      Size = 300
    end
    object MCOOPERATION_STATUS_NEW: TIntegerField
      FieldName = 'COOPERATION_STATUS_NEW'
    end
    object MCOOPERATION_STATUS_NEW_NAME: TWideStringField
      FieldName = 'COOPERATION_STATUS_NEW_NAME'
      Size = 300
    end
    object MLAST_ACT_DATE: TDateField
      FieldName = 'LAST_ACT_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object MACT_IN: TIntegerField
      FieldName = 'ACT_IN'
    end
    object MACT_OUT: TIntegerField
      FieldName = 'ACT_OUT'
    end
    object MIS_PROCESS: TSmallintField
      FieldName = 'IS_PROCESS'
    end
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 184
    Top = 200
    qoStartTransaction = True
  end
end
