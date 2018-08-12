inherited fmMATXChangeReestr: TfmMATXChangeReestr
  Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077' '#1079#1072#1084#1077#1085#1099' '#1082#1086#1074#1088#1086#1074
  ClientHeight = 701
  ClientWidth = 1360
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000120B0000120B000000000000000000005357
    555C828282FF777878FF777878FF777878FF777878FF777878FF777878FF7778
    78FF777878FF777878FF777878FF777878FF777878FF777878FF5357555C8282
    82FFC4C4C4FFB7B7B7FFB7B7B7FFB8B8B8FFB9B9B9FFBABABAFFBABABAFFBBBB
    BBFFBBBBBBFFBBBBBBFFBBBBBBFFBDBDBDFFBDBDBDFFC4C4C4FF777878FF8788
    88FFF1F1F1FF808080FF818181FF818181FF828282FF838383FF848484FF8484
    84FF858585FF868686FF878787FF878787FF888888FFB1B1B1FF777878FF8788
    88FFFFFFFFFFF9F9F9FFF7F7F7FFF7F7F7FFF4F4F4FFF4F4F4FFF0F0F0FFF1F1
    F1FFF3F3F3FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFFFFFFFFF777878FF8788
    88FFFFFFFFFFE6E6E6FFEAEAEAFFECECECFFEDEDEDFFF1F1F1FFEFEFEFFFF2F2
    F2FFF3F3F3FFF3F3F3FFF6F6F6FFFAFAFAFFFBFBFBFFFFFFFFFF777878FF8788
    88FFFFFFFFFFE5E5E5FF515151FF181818FF111111FF6A6A6AFFECECECFFF1F1
    F1FF0E0E0EFF3C3C3CFFA1A1A1FFEEEEEEFFF9F9F9FFFFFFFFFF777878FF8788
    88FFFFFFFFFFE5E5E5FFDADADAFFE6E6E6FF8C8C8CFF030303FFE4E4E4FFEAEA
    EAFFB5B5B5FF000000FFE8E8E8FFF2F2F2FFF9F9F9FFFFFFFFFF777878FF8788
    88FFFFFFFFFFE5E5E5FFB6B6B6FF171717FF000000FF6D6D6DFFE7E7E7FFE7E7
    E7FFB3B3B3FF000000FFE4E4E4FFF3F3F3FFF4F4F4FFFFFFFFFF777878FF8788
    88FFFFFFFFFFE4E4E4FFDFDFDFFFE5E5E5FF8D8D8DFF090909FFE4E4E4FFE7E7
    E7FFADADADFF000000FFE3E3E3FFF1F1F1FFF1F1F1FFFFFFFFFF777878FF8788
    88FFFFFFFFFFE3E3E3FF7B7B7BFF1C1C1CFF0C0C0CFF525252FFE6E6E6FFE7E7
    E7FF1A1A1AFF000000FFDFDFDFFFEBEBEBFFEEEEEEFFFFFFFFFF777878FF8788
    88FFFFFFFFFFE2E2E2FFE3E3E3FFE4E4E4FFE4E4E4FFE5E5E5FFE6E6E6FFE6E6
    E6FFE7E7E7FFE7E7E7FFE7E7E7FFEAEAEAFFF1F1F1FFFFFFFFFF777878FF8788
    88FFFFFFFFFFE2E2E2FFE2E2E2FFE3E3E3FFE3E3E3FFE4E4E4FFE5E5E5FFE5E5
    E5FFE6E6E6FFE7E7E7FFE7E7E7FFE7E7E7FFEFEFEFFFFFFFFFFF7F7F7FFF5357
    55FFD3D3D3FFBBBBBBFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBDBDBDFFBEBE
    BEFFBEBEBEFFBEBEBEFFBEBEBEFFBFBFBFFFC3C3C3FFC5C5C5FF535755FF5357
    55FFBCBCBCFF8D8D8DFF8D8D8DFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E
    8EFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFFC7C7C7FF535755FF5357
    55FFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBC
    BCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFC7C7C7FF535755FF5357
    55AC535755FF535755FF535755FF535755FF535755FF535755FF535755FF5357
    55FF535755FF535755FF535755FF535755FF535755FF535755FF535755970000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  ExplicitWidth = 1376
  ExplicitHeight = 739
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1360
    ExplicitWidth = 1360
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1360
    Height = 670
    Align = alClient
    TabOrder = 1
    object TableView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'QTY_MAT'
          Column = TableViewQTY_MAT
        end
        item
          Format = '#,##0.00'
          Kind = skAverage
          FieldName = 'PRICE_REPLACE_SQUARE'
          Column = TableViewPRICE_REPLACE_SQUARE
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'SQUARE_ALL'
          Column = TableViewSQUARE_ALL
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'PRICE_REPLACE'
          Column = TableViewPRICE_REPLACE
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'SQUARE'
          Column = TableViewSQUARE
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'QTY_MAT'
          Column = TableViewQTY_MAT
        end
        item
          Format = '#,##0.00'
          Kind = skAverage
          FieldName = 'PRICE_REPLACE_SQUARE'
          Column = TableViewPRICE_REPLACE_SQUARE
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'SQUARE_ALL'
          Column = TableViewSQUARE_ALL
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'SQUARE'
          Column = TableViewSQUARE
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'PRICE_IN_WEEK'
          Column = TableViewPRICE_IN_WEEK
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'SQUARE_IN_WEEK'
          Column = TableViewSQUARE_IN_WEEK
        end
        item
          Kind = skCount
          FieldName = 'ID'
          Column = TableViewCONTRAGENT_NAME
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
      object TableViewID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object TableViewCONTRAGENT_NAME: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'CONTRAGENT_NAME'
        Width = 200
      end
      object TableViewADDRESS: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'ADDRESS'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 246
      end
      object TableViewMAT_NAME: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1086#1074#1088#1080#1082#1072
        DataBinding.FieldName = 'MAT_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 200
      end
      object TableViewSQUARE: TcxGridDBColumn
        Caption = #1055#1083#1086#1097#1072#1076#1100
        DataBinding.FieldName = 'SQUARE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
      end
      object TableViewQTY_MAT: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086
        DataBinding.FieldName = 'QTY_MAT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = '#,##0'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
      end
      object TableViewSQUARE_ALL: TcxGridDBColumn
        Caption = #1054#1073#1097#1072#1103' '#1087#1083#1086#1097#1072#1076#1100
        DataBinding.FieldName = 'SQUARE_ALL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 91
      end
      object TableViewSQUARE_IN_WEEK: TcxGridDBColumn
        Caption = #1055#1083#1086#1097#1072#1076#1100' '#1074' '#1085#1077#1076#1077#1083#1102
        DataBinding.FieldName = 'SQUARE_IN_WEEK'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 111
      end
      object TableViewPRICE_REPLACE_SQUARE: TcxGridDBColumn
        Caption = #1062#1077#1085#1072' '#1076#1083#1103' '#1082#1083#1080#1077#1085#1090#1072
        DataBinding.FieldName = 'PRICE_REPLACE_SQUARE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = '#,##0.00'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 115
      end
      object TableViewPRICE_REPLACE: TcxGridDBColumn
        Caption = #1047#1072#1084#1077#1085#1072#13#10' 1 '#1096#1090
        DataBinding.FieldName = 'PRICE_REPLACE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = '#,##0.00'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 117
      end
      object TableViewPRICE_IN_WEEK: TcxGridDBColumn
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1074' '#1085#1077#1076#1077#1083#1102
        DataBinding.FieldName = 'PRICE_IN_WEEK'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 118
      end
      object TableViewPRICE_PERIOD: TcxGridDBColumn
        DataBinding.FieldName = 'PRICE_PERIOD'
        Visible = False
      end
      object TableViewPRICE_REFUND: TcxGridDBColumn
        DataBinding.FieldName = 'PRICE_REFUND'
        Visible = False
        Width = 131
      end
      object TableViewSERVICE_NAME: TcxGridDBColumn
        Caption = #1059#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'SERVICE_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 260
      end
      object TableViewWEEKS: TcxGridDBColumn
        Caption = #1053#1077#1076#1077#1083#1080
        DataBinding.FieldName = 'WEEKS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 58
      end
      object TableViewDAYS_PIC: TcxGridDBColumn
        Caption = #1044#1085#1080
        DataBinding.FieldName = 'DAYS'
        PropertiesClassName = 'TcxTextEditProperties'
        OnCustomDrawCell = TableViewDAYS_PICCustomDrawCell
        HeaderAlignmentHorz = taCenter
        MinWidth = 155
        Options.HorzSizing = False
        Width = 155
      end
      object TableViewIS_ACTIVE: TcxGridDBColumn
        DataBinding.FieldName = 'IS_ACTIVE'
        Visible = False
      end
      object TableViewREGION_NAME: TcxGridDBColumn
        Caption = #1056#1072#1081#1086#1085
        DataBinding.FieldName = 'REGION_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        Width = 84
      end
      object TableViewDAYS_INT: TcxGridDBColumn
        DataBinding.FieldName = 'DAYS_INT'
        Visible = False
      end
      object TableViewROUTE_NAME: TcxGridDBColumn
        Caption = #1052#1072#1088#1096#1088#1091#1090
        DataBinding.FieldName = 'ROUTE_NAME'
        Width = 100
      end
      object TableViewSTORAGE_NAME: TcxGridDBColumn
        Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
        DataBinding.FieldName = 'STORAGE_NAME'
        Width = 100
      end
      object TableViewMANAGER_ID: TcxGridDBColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'MANAGER_ID'
        RepositoryItem = DM.erUsers
        Width = 89
      end
      object TableViewDESCRIPTION_ADD: TcxGridDBColumn
        Caption = #1055#1088#1080#1095#1077#1095#1072#1085#1080#1103
        DataBinding.FieldName = 'DESCRIPTION_ADD'
        Width = 200
      end
      object TableViewIS_MAT_FILTER: TcxGridDBColumn
        Caption = #1054#1090#1073#1080#1088#1072#1090#1100
        DataBinding.FieldName = 'IS_MAT_FILTER'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = DM.ImageListStatuses
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <
          item
            ImageIndex = 29
            Value = 1
          end
          item
            Value = 0
          end>
        Properties.ShowDescriptions = False
        Width = 60
      end
      object TableViewORGANIZATION_NAME: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'ORGANIZATION_NAME'
        Width = 121
      end
      object TableViewGROUP_NAME: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'GROUP_NAME'
        Width = 200
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = TableView
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
          ItemName = 'bbDay1'
        end
        item
          Visible = True
          ItemName = 'bbDay2'
        end
        item
          Visible = True
          ItemName = 'bbDay3'
        end
        item
          Visible = True
          ItemName = 'bbDay4'
        end
        item
          Visible = True
          ItemName = 'bbDay5'
        end
        item
          Visible = True
          ItemName = 'bbDay6'
        end
        item
          Visible = True
          ItemName = 'bbDay7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbActiveOnly'
        end
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbExport'
        end
        item
          Visible = True
          ItemName = 'bbResetGrid'
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
    object bbActiveOnly: TdxBarButton
      Caption = #1058#1086#1083#1100#1082#1086' '#1072#1082#1090#1080#1074#1085#1099#1077
      Category = 0
      Hint = #1058#1086#1083#1100#1082#1086' '#1072#1082#1090#1080#1074#1085#1099#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbActiveOnlyClick
    end
    object bbDay1: TcxBarEditItem
      Caption = #1055#1085
      Category = 0
      Hint = #1055#1085
      Visible = ivAlways
      ShowCaption = True
      Width = 10
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.AllowGrayed = True
      Properties.DisplayChecked = #1044#1072
      Properties.DisplayUnchecked = #1053#1077#1090
      Properties.DisplayGrayed = #1053#1077' '#1074#1072#1078#1085#1086
      Properties.ImmediatePost = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
    object dxBarStatic1: TdxBarStatic
      Caption = #1044#1085#1080' '#1085#1077#1076#1077#1083#1080':'
      Category = 0
      Hint = #1044#1085#1080' '#1085#1077#1076#1077#1083#1080':'
      Visible = ivAlways
    end
    object bbDay2: TcxBarEditItem
      Caption = #1042#1090
      Category = 0
      Hint = #1042#1090
      Visible = ivAlways
      ShowCaption = True
      Width = 10
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.AllowGrayed = True
      Properties.DisplayChecked = #1044#1072
      Properties.DisplayUnchecked = #1053#1077#1090
      Properties.DisplayGrayed = #1053#1077' '#1074#1072#1078#1085#1086
      Properties.ImmediatePost = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
    object bbDay3: TcxBarEditItem
      Caption = #1057#1088
      Category = 0
      Hint = #1057#1088
      Visible = ivAlways
      ShowCaption = True
      Width = 10
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.AllowGrayed = True
      Properties.DisplayChecked = #1044#1072
      Properties.DisplayUnchecked = #1053#1077#1090
      Properties.DisplayGrayed = #1053#1077' '#1074#1072#1078#1085#1086
      Properties.ImmediatePost = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
    object bbDay4: TcxBarEditItem
      Caption = #1063#1090
      Category = 0
      Hint = #1063#1090
      Visible = ivAlways
      ShowCaption = True
      Width = 10
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.AllowGrayed = True
      Properties.DisplayChecked = #1044#1072
      Properties.DisplayUnchecked = #1053#1077#1090
      Properties.DisplayGrayed = #1053#1077' '#1074#1072#1078#1085#1086
      Properties.ImmediatePost = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
    object bbDay5: TcxBarEditItem
      Caption = #1055#1090
      Category = 0
      Hint = #1055#1090
      Visible = ivAlways
      ShowCaption = True
      Width = 10
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.AllowGrayed = True
      Properties.DisplayChecked = #1044#1072
      Properties.DisplayUnchecked = #1053#1077#1090
      Properties.DisplayGrayed = #1053#1077' '#1074#1072#1078#1085#1086
      Properties.ImmediatePost = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
    object bbDay6: TcxBarEditItem
      Caption = #1057#1073
      Category = 0
      Hint = #1057#1073
      Visible = ivAlways
      ShowCaption = True
      Width = 10
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.AllowGrayed = True
      Properties.DisplayChecked = #1044#1072
      Properties.DisplayUnchecked = #1053#1077#1090
      Properties.DisplayGrayed = #1053#1077' '#1074#1072#1078#1085#1086
      Properties.ImmediatePost = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
    object bbDay7: TcxBarEditItem
      Caption = #1042#1089
      Category = 0
      Hint = #1042#1089
      Visible = ivAlways
      ShowCaption = True
      Width = 10
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.AllowGrayed = True
      Properties.DisplayChecked = #1044#1072
      Properties.DisplayUnchecked = #1053#1077#1090
      Properties.DisplayGrayed = #1053#1077' '#1074#1072#1078#1085#1086
      Properties.ImmediatePost = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
    object bbResetGrid: TdxBarButton
      Caption = #1057#1073#1088#1086#1089' '#1085#1072#1089#1090#1088#1086#1077#1082' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Hint = #1057#1073#1088#1086#1089' '#1085#1072#1089#1090#1088#1086#1077#1082' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 6
      OnClick = bbResetGridClick
    end
  end
  object DATA: TpFIBDataSet
    SelectSQL.Strings = (
      'execute block('
      '  ACTIVE_ONLY T_BOOLEAN = :ACTIVE_ONLY,'
      '  IS_DAY1 T_BOOLEAN = :IS_DAY1,'
      '  IS_DAY2 T_BOOLEAN = :IS_DAY2,'
      '  IS_DAY3 T_BOOLEAN = :IS_DAY3,'
      '  IS_DAY4 T_BOOLEAN = :IS_DAY4,'
      '  IS_DAY5 T_BOOLEAN = :IS_DAY5,'
      '  IS_DAY6 T_BOOLEAN = :IS_DAY6,'
      '  IS_DAY7 T_BOOLEAN = :IS_DAY7'
      ')'
      'returns('
      '  ID T_ID,'
      '  CONTRAGENT_NAME T_NAME,'
      '  PRICE_REPLACE_SQUARE T_AMOUNT,'
      '  PRICE_REPLACE T_AMOUNT,'
      '  PRICE_PERIOD T_AMOUNT,'
      '  PRICE_IN_WEEK T_AMOUNT,'
      '  DESCRIPTION_ADD T_DESCRIPTION,'
      '  DAYS T_NAME,'
      '  DAYS_INT T_NAME,'
      '  DAYS_IN_WEEK T_INT,'
      '  SQUARE_ALL T_SQUARE,'
      '  SQUARE_IN_WEEK T_SQUARE,'
      '  SERVICE_REGION_ID T_PID,'
      '  ROUTE_ID T_PID,'
      '  ROUTE_NAME T_DESCRIPTION,'
      '  ROUTE_REGION_NAME T_DESCRIPTION,'
      '  STORAGE_ID T_PID,'
      '  STORAGE_NAME T_NAME,'
      '  ADDRESS T_NAME,'
      '  MAT_NAME T_DESCRIPTION,'
      '  SQUARE T_SQUARE,'
      '  PRICE_REFUND T_AMOUNT,'
      '  SERVICE_NAME T_DESCRIPTION,'
      '  QTY_MAT T_QTY,'
      '  WEEKS T_NAME,'
      '  WEEK_INT T_NAME,'
      '  IS_ACTIVE T_BOOLEAN,'
      '  REGION_NAME T_DESCRIPTION,'
      '  MANAGER_ID T_PID,'
      '  IS_MAT_FILTER T_BOOLEAN,'
      '  ORGANIZATION_NAME T_NAME,'
      '  NDS T_AMOUNT,'
      '  GROUP_NAME T_NAME'
      ')'
      'as'
      'begin'
      '  for select'
      '    SRV.ID,'
      '    CA.DESCRIPTION,'
      '    C.MANAGER_ID,'
      '    C.NAME CONTRAGENT_NAME,'
      '    CA.NAME ADDRESS,'
      '    M.DESCRIPTION MAT_NAME,'
      '    cast((M.WIDTH * M.HEIGHT) / 10000.000 as T_SQUARE) SQUARE,'
      
        '    cast((M.WIDTH * M.HEIGHT) / 10000.000 as T_SQUARE) * SRV.QTY' +
        '_MAT SQUARE_ALL,'
      
        '    NULLIF((SRV.PRICE_REPLACE*((100.00+O.NDS)/100) / cast((M.WID' +
        'TH * M.HEIGHT) / 10000.000 as T_SQUARE)), 0)  PRICE_REPLACE_SQUA' +
        'RE,'
      
        '    NULLIF(SRV.PRICE_REPLACE*((100.00+O.NDS)/100), 0) PRICE_REPL' +
        'ACE,'
      '    NULLIF(SRV.PRICE_PERIOD, 0) PRICE_PERIOD,'
      '    NULLIF(SRV.PRICE_REFUND, 0) PRICE_REFUND,'
      '    SRV.DESCRIPTION SERVICE_NAME,'
      '    nullif(SRV.QTY_MAT, 0) QTY_MAT ,'
      '  '
      
        '    IIF(SRV.WEEK_1=1, '#39'1'#39', '#39' '#39')||IIF(SRV.WEEK_2=1, '#39'2'#39', '#39' '#39')||II' +
        'F(SRV.WEEK_3=1, '#39'3'#39', '#39' '#39')||IIF(SRV.WEEK_4=1, '#39'4'#39', '#39' '#39') WEEKS,'
      
        '    IIF(SRV.WEEK_1=1, '#39'1'#39', '#39'0'#39')||IIF(SRV.WEEK_2=1, '#39'1'#39', '#39'0'#39')||II' +
        'F(SRV.WEEK_3=1, '#39'1'#39', '#39'0'#39')||IIF(SRV.WEEK_4=1, '#39'1'#39', '#39'0'#39') WEEK_INT,'
      
        '    IIF(SRV.DAY_1=1, '#39#1055#1085#39', '#39'  '#39')||IIF(SRV.DAY_2=1, '#39#1042#1090#39', '#39'  '#39')||' +
        'IIF(SRV.DAY_3=1, '#39#1057#1088#39', '#39'  '#39')||IIF(SRV.DAY_4=1, '#39#1063#1090#39', '#39'  '#39')||IIF(' +
        'SRV.DAY_5=1, '#39#1055#1090#39', '#39'  '#39')||IIF(SRV.DAY_6=1, '#39#1057#1073#39', '#39'  '#39')||IIF(SRV.' +
        'DAY_7=1, '#39#1042#1089#39', '#39'  '#39') DAYS,'
      
        '    IIF(SRV.DAY_1=1, '#39'1'#39', '#39'0'#39')||IIF(SRV.DAY_2=1, '#39'1'#39', '#39'0'#39')||IIF(' +
        'SRV.DAY_3=1, '#39'1'#39', '#39'0'#39')||IIF(SRV.DAY_4=1, '#39'1'#39', '#39'0'#39')||IIF(SRV.DAY_' +
        '5=1, '#39'1'#39', '#39'0'#39')||IIF(SRV.DAY_6=1, '#39'1'#39', '#39'0'#39')||IIF(SRV.DAY_7=1, '#39'1'#39 +
        ', '#39'0'#39') DAYS_INT,'
      
        '    IIF((SRV.DAY_1=1 or SRV.DAY_2=1 or SRV.DAY_3=1 or SRV.DAY_4=' +
        '1 or SRV.DAY_5=1 or SRV.DAY_6=1 or SRV.DAY_7=1), 1, 0) IS_ACTIVE' +
        ','
      '    SERVICE_REGIONS.ID,'
      '    SERVICE_REGIONS.DESCRIPTION REGION_NAME,'
      
        '    coalesce(SRV.DAY_1, 0) + coalesce(SRV.DAY_2, 0) + coalesce(S' +
        'RV.DAY_3, 0) + coalesce(SRV.DAY_4, 0) + coalesce(SRV.DAY_5, 0) +' +
        ' coalesce(SRV.DAY_6, 0) + coalesce(SRV.DAY_7, 0),'
      '    coalesce(CA.IS_MAT_FILTER, 0),'
      '    O.SHORTNAME, O.NDS,'
      
        '    (select name from CONTRAGENT_GROUPS where ID=C.MASTER_PID) G' +
        'ROUP_NAME'
      '  '
      '  from ADDRESS_SERVICE SRV'
      '  left join CONTRACT_ADDRESS  CA on CA.ID=SRV.ADDRESS_ID'
      
        '  left join CONTRAGENTS_CONTRACT on CONTRAGENTS_CONTRACT.ID=CA.C' +
        'ONTRACT_ID'
      
        '  left join VW_CONTRAGENTS C on C.ID=CONTRAGENTS_CONTRACT.CONTRA' +
        'GENT_ID'
      '  left join REF_MAT M on M.ID=SRV.MAT_ID'
      '  left join SERVICE_REGIONS on SERVICE_REGIONS.ID=CA.REGION_ID'
      
        '  left join ORGANIZATIONS O on O.ID=coalesce(C.ORGANIZATION_ID, ' +
        '1)'
      
        '  --where SRV.DAY_1=0 and SRV.DAY_2=0 and SRV.DAY_3=0 and SRV.DA' +
        'Y_4=0 and SRV.DAY_5=0 and SRV.DAY_6=0 and SRV.DAY_7=1'
      '  where 1=1'
      '  and ('
      '      ('
      
        '        IIF((SRV.DAY_1=1 or SRV.DAY_2=1 or SRV.DAY_3=1 or SRV.DA' +
        'Y_4=1 or SRV.DAY_5=1 or SRV.DAY_6=1 or SRV.DAY_7=1), 1, 0)=coale' +
        'sce(:ACTIVE_ONLY, 1)'
      
        '        and (coalesce(SRV.QTY_MAT, 0)>0 and coalesce(:ACTIVE_ONL' +
        'Y, 1)=1))'
      '      or (coalesce(:ACTIVE_ONLY, 1)=0)'
      '    ) -- isActive'
      '  and ((SRV.DAY_1=:IS_DAY1) or (:IS_DAY1 is null))'
      '  and ((SRV.DAY_2=:IS_DAY2) or (:IS_DAY2 is null))'
      '  and ((SRV.DAY_3=:IS_DAY3) or (:IS_DAY3 is null))'
      '  and ((SRV.DAY_4=:IS_DAY4) or (:IS_DAY4 is null))'
      '  and ((SRV.DAY_5=:IS_DAY5) or (:IS_DAY5 is null))'
      '  and ((SRV.DAY_6=:IS_DAY6) or (:IS_DAY6 is null))'
      '  and ((SRV.DAY_7=:IS_DAY7) or (:IS_DAY7 is null))'
      '  and SRV.IS_ACTIVE=1'
      
        '  and (C.MANAGER_ID=RDB$GET_CONTEXT('#39'USER_SESSION'#39', '#39'USER_ID'#39') o' +
        'r (current_role<>'#39'MANAGER'#39'))'
      '  into'
      '    :ID,'
      '    :DESCRIPTION_ADD,'
      
        '    :MANAGER_ID, :CONTRAGENT_NAME, :ADDRESS, :MAT_NAME, :SQUARE,' +
        ' :SQUARE_ALL, :PRICE_REPLACE_SQUARE, :PRICE_REPLACE, :PRICE_PERI' +
        'OD, :PRICE_REFUND,'
      
        '    :SERVICE_NAME, :QTY_MAT, :WEEKS, :WEEK_INT, :DAYS, :DAYS_INT' +
        ','
      '    :IS_ACTIVE,'
      '    :SERVICE_REGION_ID,'
      '    :REGION_NAME, :DAYS_IN_WEEK,'
      '    :IS_MAT_FILTER,'
      '    :ORGANIZATION_NAME, :NDS,'
      '    :GROUP_NAME'
      '  do begin'
      '    '
      ''
      
        '    select REF_ROUTE_REGIONS.ROUTE_ID from REF_ROUTE_REGIONS whe' +
        're REF_ROUTE_REGIONS.REGION_ID=:SERVICE_REGION_ID into :ROUTE_ID' +
        ';'
      
        '    select SERVICE_REGIONS.DESCRIPTION from SERVICE_REGIONS wher' +
        'e SERVICE_REGIONS.ID=:SERVICE_REGION_ID into :ROUTE_REGION_NAME;'
      
        '    select REF_ROUTES.DESCRIPTION, REF_ROUTES.STORAGE_ID from RE' +
        'F_ROUTES where REF_ROUTES.ID=:ROUTE_ID into :ROUTE_NAME, :STORAG' +
        'E_ID;'
      
        '    select REF_STORAGE.DESCRIPTION from REF_STORAGE where REF_ST' +
        'ORAGE.ID=:STORAGE_ID into :STORAGE_NAME;'
      '      SQUARE_IN_WEEK = DAYS_IN_WEEK * SQUARE_ALL;'
      '      PRICE_IN_WEEK =  SQUARE_IN_WEEK * PRICE_REPLACE_SQUARE;'
      ''
      '      suspend;'
      '    end'
      '--    and C.NAME containing '#39#1082#1086#1085#1086#1074#1072#1083#1086#1074#39
      
        '--  and ((IS_ACTIVE=coalesce(:ACTIVE_ONLY, 1)) or (coalesce(:ACT' +
        'IVE_ONLY, 1)=0))'
      '  --and C.ID=:MAS_ID'
      'end')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 88
    Top = 168
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 136
    Top = 168
  end
end
