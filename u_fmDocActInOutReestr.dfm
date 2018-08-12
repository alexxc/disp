inherited fmDocActInOutReestr: TfmDocActInOutReestr
  Caption = #1056#1077#1077#1089#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' - '#1072#1082#1090' '#1087#1088#1080#1105#1084#1072'/'#1087#1077#1088#1077#1076#1072#1095#1080
  ClientHeight = 521
  ClientWidth = 1259
  ExplicitWidth = 1275
  ExplicitHeight = 559
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1259
    ExplicitWidth = 1259
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 689
    Height = 490
    Align = alLeft
    TabOrder = 1
    object GridDoc: TcxGridDBBandedTableView
      OnDblClick = GridDocDblClick
      Navigator.Buttons.CustomButtons = <>
      OnSelectionChanged = GridDocSelectionChanged
      DataController.DataSource = dsDOC
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.'
          Kind = skCount
          FieldName = 'ID'
          Column = GridDocDOC_DT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.BandHeaders = False
      Bands = <
        item
        end
        item
        end>
      object GridDocID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridDocSTATUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DM.ImageListStatuses
        Properties.Items = <
          item
            Description = #1055#1088#1086#1074#1077#1076#1077#1085
            ImageIndex = 7
            Value = '2'
          end
          item
            Description = #1053#1077' '#1087#1088#1086#1074#1077#1076#1077#1085
            Value = '1'
          end
          item
            Description = #1055#1086#1084#1077#1095#1077#1085' '#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
            ImageIndex = 20
            Value = '0'
          end>
        Width = 25
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object GridDocDOC_DT: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DOC_DT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridDocDOC_NUM: TcxGridDBBandedColumn
        Caption = #1040#1082#1090' '#8470
        DataBinding.FieldName = 'DOC_NUM'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridDocCONTRAGENT_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONTRAGENT_ID'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object GridDocFROM_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FROM_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object GridDocFROM_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FROM_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object GridDocFROM_NAME: TcxGridDBBandedColumn
        Caption = #1052#1077#1089#1090#1086' '#1093#1088#1072#1085#1077#1085#1080#1103
        DataBinding.FieldName = 'FROM_NAME'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object GridDocCONTRAGENT_NAME: TcxGridDBBandedColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'CONTRAGENT_NAME'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object GridDocCODE: TcxGridDBBandedColumn
        Caption = #1050#1086#1076' 1'#1057
        DataBinding.FieldName = 'CODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object GridDocQTY_OUT: TcxGridDBBandedColumn
        Caption = #1056#1072#1079#1083
        DataBinding.FieldName = 'QTY_OUT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Width = 40
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridDocQTY_IN: TcxGridDBBandedColumn
        Caption = #1057#1085#1103#1083
        DataBinding.FieldName = 'QTY_IN'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Width = 40
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ORGNAME: TcxGridDBBandedColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'ORG_NAME'
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object GridDocCNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CNT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object GridDocADDRESS: TcxGridDBBandedColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'ADDRESS'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object GridDocMANAGER_NAME: TcxGridDBBandedColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'MANAGER_NAME'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = GridDoc
    end
  end
  object cxSplitter1: TcxSplitter [2]
    Left = 689
    Top = 31
    Width = 5
    Height = 490
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = cxGrid1
  end
  object cxGrid2: TcxGrid [3]
    Left = 694
    Top = 31
    Width = 565
    Height = 490
    Align = alClient
    TabOrder = 3
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.'
          Kind = skCount
          FieldName = 'ID'
          Column = cxGrid2DBTableView1DOC_DT
        end
        item
          Format = '#,##0.'
          Kind = skSum
          FieldName = 'QTY_IN'
          Column = cxGrid2DBTableView1QTY_IN
        end
        item
          Format = '#,##0.'
          Kind = skSum
          FieldName = 'QTY_OUT'
          Column = cxGrid2DBTableView1QTY_OUT
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          Column = cxGrid2DBTableView1SQYARE_OUT
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          Column = cxGrid2DBTableView1SQYARE_IN
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object cxGrid2DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cxGrid2DBTableView1DOC_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DOC_DT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        MinWidth = 76
        Width = 76
      end
      object cxGrid2DBTableView1DOC_NUM: TcxGridDBColumn
        Caption = #1040#1082#1090' '#8470
        DataBinding.FieldName = 'DOC_NUM'
        MinWidth = 60
        Width = 60
      end
      object cxGrid2DBTableView1ADDRESS: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'ADDRESS'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 148
      end
      object cxGrid2DBTableView1MAT_NAME: TcxGridDBColumn
        Caption = #1050#1086#1074#1088#1080#1082
        DataBinding.FieldName = 'MAT_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 144
      end
      object cxGrid2DBTableView1QTY_OUT: TcxGridDBColumn
        Caption = #1056#1072#1079#1083'. '#1096#1090
        DataBinding.FieldName = 'QTY_OUT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        MinWidth = 50
        Width = 50
      end
      object cxGrid2DBTableView1QTY_IN: TcxGridDBColumn
        Caption = #1057#1085#1103#1083#1080' '#1096#1090
        DataBinding.FieldName = 'QTY_IN'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        MinWidth = 50
        Width = 50
      end
      object cxGrid2DBTableView1SQYARE_OUT: TcxGridDBColumn
        Caption = #1056#1072#1079#1083'. '#1084#178
        DataBinding.FieldName = 'SQYARE_OUT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object cxGrid2DBTableView1SQYARE_IN: TcxGridDBColumn
        Caption = #1057#1085#1103#1083#1080' '#1084#178
        DataBinding.FieldName = 'SQYARE_IN'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  inherited BM: TdxBarManager
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic1'
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
          UserDefine = [udWidth]
          UserWidth = 144
          Visible = True
          ItemName = 'bbContragent'
        end
        item
          Visible = True
          ItemName = 'bbFilterClear'
        end
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbActPrint'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object dxBarStatic1: TdxBarStatic
      Category = 0
      Visible = ivAlways
      ImageIndex = 5
    end
    object bbFilterClear: TdxBarButton
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1090#1088#1086#1082#1091' '#1092#1080#1083#1100#1090#1088#1072
      Category = 0
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1090#1088#1086#1082#1091' '#1092#1080#1083#1100#1090#1088#1072
      Visible = ivAlways
      ImageIndex = 45
      OnClick = bbFilterClearClick
    end
    object bbContragent: TcxBarEditItem
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      Category = 0
      Hint = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      Visible = ivAlways
      OnCurChange = bbContragentCurChange
      OnKeyDown = bbContragentKeyDown
      ImageIndex = 5
      ShowCaption = True
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.ValidateOnEnter = True
      Properties.OnEditValueChanged = bbContragentPropertiesEditValueChanged
      InternalEditValue = ''
    end
    object bbActPrint: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      ShortCut = 16464
      OnClick = bbActPrintClick
    end
  end
  object DOC: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  DOC.ID, DOC.STATUS,'
      
        '  (select CA.NAME from CONTRACT_ADDRESS CA where CA.ID=(select f' +
        'irst 1 T.ADDRESS_ID from DOC_ACT_IN_OUT_T T where T.PID=DOC.ID))' +
        ' ADDRESS,'
      '  cast(DOC.DOC_DT as T_DATE) DOC_DT,'
      '  DOC.DOC_NUM, DOC.CONTRAGENT_ID,'
      '  DOC.FROM_TYPE, DOC.FROM_ID,'
      '  case DOC.FROM_TYPE'
      
        '    when 1 then (select REF_STORAGE.DESCRIPTION from REF_STORAGE' +
        ' where REF_STORAGE.ID=DOC.FROM_ID)'
      
        '    when 2 then (select REF_EMPLOE.NAME_LAST from REF_EMPLOE whe' +
        're REF_EMPLOE.ID=DOC.FROM_ID)'
      '  end FROM_NAME,'
      '  C.NAME CONTRAGENT_NAME,'
      
        '  (select sum(T.QTY_IN) from DOC_ACT_IN_OUT_T T where T.PID=DOC.' +
        'ID) QTY_IN,'
      
        '  (select sum(T.QTY_OUT) from DOC_ACT_IN_OUT_T T where T.PID=DOC' +
        '.ID) QTY_OUT,'
      
        '  (select count(T.ID) from DOC_ACT_IN_OUT_T T where T.PID=DOC.ID' +
        ') CNT,'
      '  C.INN, C.CODE, O.DESCRIPTION ORG_NAME,'
      
        '  (select U.NAME from USERS U where U.ID=C.MANAGER_ID) MANAGER_N' +
        'AME'
      'from DOC_ACT_IN_OUT DOC'
      'left join CONTRAGENTS C on C.ID=DOC.CONTRAGENT_ID'
      'left join ORGANIZATIONS O on O.ID=coalesce(C.ORGANIZATION_ID, 1)'
      'where DOC.STATUS=2'
      'order by'
      '  DOC.DOC_DT')
    Transaction = trRead
    Database = DM.FB
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 88
    Top = 176
  end
  object dsDOC: TDataSource
    DataSet = DOC
    OnDataChange = dsDOCDataChange
    Left = 160
    Top = 176
  end
  object Detail: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  T.ID,'
      '  cast(D.DOC_DT as T_DATE) DOC_DT,'
      '  D.DOC_NUM,'
      '  nullif(T.QTY_OUT, 0) QTY_OUT,'
      '  nullif(T.QTY_IN, 0) QTY_IN,'
      '  (M.WIDTH * M.HEIGHT) / 10000.000 * T.QTY_OUT SQYARE_OUT,'
      '  (M.WIDTH * M.HEIGHT) / 10000.000 * T.QTY_IN SQYARE_IN,'
      '  M.DESCRIPTION MAT_NAME,'
      '  A.NAME ADDRESS'
      'from DOC_ACT_IN_OUT D'
      'left join DOC_ACT_IN_OUT_T T on T.PID=D.ID'
      'left join CONTRACT_ADDRESS A on A.ID=T.ADDRESS_ID'
      'left join REF_MAT M on M.ID=T.MAT_ID'
      'where D.ID  in (63494, 63495, 63496)'
      'order by D.DOC_DT'
      '')
    Transaction = trRead
    Database = DM.FB
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 584
    Top = 320
  end
  object dsDetail: TDataSource
    DataSet = Detail
    Left = 624
    Top = 320
  end
end
