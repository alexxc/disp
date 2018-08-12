inherited fmMATReestr: TfmMATReestr
  Caption = #1056#1077#1077#1089#1090#1088' '#1082#1086#1074#1088#1086#1074
  ClientHeight = 701
  ClientWidth = 1500
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000BB010000BB0100000000000000000000FFFF
    FF00000000080000002000000020000000200000002000000020000000200000
    00200000001F00000003FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF0000000020F8F8F7FFF1D4FBFFFBFBFBFFFBFBFBFFFDFDFDFFFEFEFEFFFBFB
    FBFFF3F3F3FFC1C1C1D700000009FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF0000000020E6E6E5FFF1D4FAFFFAFAFAFFFBFBFBFFFDFDFDFFFEFEFEFFFCFC
    FCFFF2F2F2FFD2D2D2FFB9B9B9E90F0F0F11FFFFFF00FFFFFF00FFFFFF00FFFF
    FF0000000020E9E9E9FFE9C4D4FFEFE0D3FFF0E1D4FFF1E2D5FFF2E3D6FFF2E3
    D6FFEDDED1FFCFC4BAFFF5F5F5FFB9B9B9E90000000AFFFFFF00FFFFFF00FFFF
    FF0000000020EDEDECFFF0D3F9FFFAFAFAFFFBFBFBFFFCFCFCFFFDFDFDFFFEFE
    FEFFFCFCFCFFF1F1F1FFD9D9D9FFD8CEDBFFC0BFBFD500000005FFFFFF00FFFF
    FF0000000020F5F5F4FFE7C2D3FFEFE0D3FFEFE0D3FFF0E1D4FFF1E2D5FFF2E3
    D6FFF2E3D6FFF1E2D5FFEEDFD2FFE8C0DEFFF0E8E2FF00000020FFFFFF00FFFF
    FF0000000020E6E6E6FFEFD2F8FFF7F7F7FFFAFAFAFFFBFBFBFFFCFCFCFFFCFC
    FCFFFDFDFDFFFEFEFEFFFEFEFEFFF4D7FEFFFDFDFDFF00000020FFFFFF00FFFF
    FF0000000020E5E5E4FFE7C2D2FFECDDD0FFEEDFD2FFEFE0D3FFF0E1D4FFF0E1
    D4FFF1E2D5FFF2E3D6FFF2E3D6FFECC4E2FFF8F0EAFF00000020FFFFFF00FFFF
    FF0000000020E8E8E8FFEDD0F6FFF4F4F4FFF6F6F6FFF8F8F8FFFAFAFAFFFAFA
    FAFFFBFBFBFFFCFCFCFFFCFCFCFFF3D6FDFFFCFCFCFF00000020FFFFFF00FFFF
    FF0000000020ECECEBFFE6C1D0FFEADBCDFFECDDCFFFECDDD0FFEEDFD2FFEFE0
    D3FFEFE0D3FFEFE0D3FFF0E1D4FFEBC3E1FFF6EEE8FF00000020FFFFFF00FFFF
    FF0000000020ECECEBFFEACDF3FFF1F1F0FFF3F3F2FFF4F4F4FFF6F6F6FFF7F7
    F7FFF8F8F8FFF9F9F9FFFAFAFAFFF2D5FCFFFBFBFBFF00000020FFFFFF00FFFF
    FF0000000020DEDEDDFFE4BFCFFFE7D8CAFFE9DACCFFE9DACDFFEBDCCEFFECDD
    D0FFECDDD0FFEDDED0FFEDDED1FFE9C1DFFFF4ECE5FF00000020FFFFFF00FFFF
    FF0000000020DFDFDFFFE9CCF1FFEDEDECFFEFEFEEFFF0F0EFFFF1F1F1FFF2F2
    F2FFF3F3F3FFF4F4F4FFF5F5F4FFEED1F8FFF6F6F6FF00000020FFFFFF00FFFF
    FF0000000020E4E3E2FFE1BCCCFFE4D5C7FFE6D7C9FFE6D7CAFFE7D8CAFFE8D9
    CBFFE9DACCFFE9DACDFFE9DACDFFE6BEDCFFEFE7E1FF00000020FFFFFF00FFFF
    FF0000000020EAEAEAFFE6C9EFFFEBEBEAFFEDEDECFFEEEEEDFFEFEFEEFFF0F0
    EFFFF1F1F0FFF1F1F0FFF2F2F1FFECCFF5FFF4F4F3FF00000020FFFFFF00FFFF
    FF00000000040000001000000010000000100000001000000010000000100000
    0010000000100000001000000010000000100000001000000004FFFFFF00801F
    0000800F00008007000080030000800100008001000080010000800100008001
    000080010000800100008001000080010000800100008001000080010000}
  ExplicitWidth = 1516
  ExplicitHeight = 740
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1500
    ExplicitWidth = 1500
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 633
    Height = 670
    Align = alLeft
    TabOrder = 1
    object viewMat: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'QTY_MAT'
        end
        item
          Format = '#,##0.00'
          Kind = skAverage
          FieldName = 'PRICE_REPLACE_SQUARE'
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'SQUARE_ALL'
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'PRICE_REPLACE'
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'SQUARE'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'ID'
          Column = viewMatDESCRIPTION
        end
        item
          Format = '#,##0.'
          Kind = skSum
          FieldName = 'QTY_OUT'
          Column = viewMatQTY_OUT
        end
        item
          Format = '#,##0.'
          Kind = skSum
          FieldName = 'QTY_IN'
          Column = viewMatQTY_IN
        end
        item
          Format = '#,##0.'
          Kind = skSum
          FieldName = 'QTY'
          Column = viewMatQTY
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsBehavior.ImmediateEditor = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.Footer = True
      OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
      Styles.OnGetContentStyle = viewMatStylesGetContentStyle
      object viewMatID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object viewMatDESCRIPTION: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 261
      end
      object viewMatABBR: TcxGridDBColumn
        Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1080#1077
        DataBinding.FieldName = 'ABBR'
        Width = 130
      end
      object viewMatWIDTH: TcxGridDBColumn
        Caption = #1064#1080#1088#1080#1085#1072
        DataBinding.FieldName = 'WIDTH'
        Visible = False
      end
      object viewMatHEIGHT: TcxGridDBColumn
        DataBinding.FieldName = 'HEIGHT'
        Visible = False
      end
      object viewMatMAT_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'MAT_TYPE'
        Visible = False
      end
      object viewMatQTY_OUT: TcxGridDBColumn
        Caption = #1054#1090#1076#1072#1083#1080
        DataBinding.FieldName = 'QTY_OUT'
        Width = 76
      end
      object viewMatQTY_IN: TcxGridDBColumn
        Caption = #1047#1072#1073#1088#1072#1083#1080
        DataBinding.FieldName = 'QTY_IN'
      end
      object viewMatQTY: TcxGridDBColumn
        Caption = #1042#1099#1083#1086#1078#1077#1085#1086
        DataBinding.FieldName = 'QTY'
        Width = 82
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = viewMat
      Options.TabsForEmptyDetails = False
    end
  end
  object cxSplitter1: TcxSplitter [2]
    Left = 633
    Top = 31
    Width = 5
    Height = 670
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = GridDocuments
  end
  object GridDocuments: TcxGrid [3]
    Left = 638
    Top = 31
    Width = 862
    Height = 670
    Align = alClient
    TabOrder = 3
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object GridDocumentsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDocuments
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'ID'
          Column = GridDocumentsDBTableView1DOC_DT
        end
        item
          Format = '#,##0.'
          Kind = skSum
          FieldName = 'QTY_IN'
          Column = GridDocumentsDBTableView1QTY_IN
        end
        item
          Format = '#,##0.'
          Kind = skSum
          FieldName = 'QTY_OUT'
          Column = GridDocumentsDBTableView1QTY_OUT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      Styles.OnGetContentStyle = GridDocumentsDBTableView1StylesGetContentStyle
      object GridDocumentsDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object GridDocumentsDBTableView1DOC_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DOC_DT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        MinWidth = 70
        Options.HorzSizing = False
        Width = 70
      end
      object GridDocumentsDBTableView1CONTRAGENT_NAME: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'CONTRAGENT_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 200
      end
      object GridDocumentsDBTableView1ADDRESS: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'ADDRESS'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 235
      end
      object GridDocumentsDBTableView1DOC_NUM: TcxGridDBColumn
        Caption = #1040#1082#1090' '#8470
        DataBinding.FieldName = 'DOC_NUM'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        MinWidth = 70
        Options.HorzSizing = False
        Width = 70
      end
      object GridDocumentsDBTableView1QTY_OUT: TcxGridDBColumn
        Caption = #1054#1090#1076#1072#1083#1080
        DataBinding.FieldName = 'QTY_OUT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        MinWidth = 60
        Options.HorzSizing = False
        Width = 60
      end
      object GridDocumentsDBTableView1QTY_IN: TcxGridDBColumn
        Caption = #1047#1072#1073#1088#1072#1083#1080
        DataBinding.FieldName = 'QTY_IN'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        MinWidth = 60
        Options.HorzSizing = False
        Width = 60
      end
      object GridDocumentsDBTableView1QTY: TcxGridDBColumn
        Caption = #1042#1099#1083#1086#1078#1077#1085#1086
        DataBinding.FieldName = 'QTY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        MinWidth = 60
        Options.HorzSizing = False
        Width = 60
      end
    end
    object GridDocumentsLevel1: TcxGridLevel
      GridView = GridDocumentsDBTableView1
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
          BeginGroup = True
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
      'select T.*, T.QTY_OUT-T.QTY_IN QTY from ('
      'select'
      '  M.ID, M.DESCRIPTION, M.WIDTH, M.HEIGHT, M.MAT_TYPE, M.ABBR,'
      '  sum(T.QTY_OUT) QTY_OUT,'
      '  sum(T.QTY_IN) QTY_IN'
      'from REF_MAT M'
      'left join DOC_ACT_IN_OUT_T T on T.MAT_ID=M.ID'
      'left join DOC_ACT_IN_OUT D on D.ID=T.PID'
      'where M.IS_FOLDER=0 and D.STATUS=2'
      'group by'
      '  1, 2, 3, 4, 5, 6'
      ') T')
    AfterScroll = DATAAfterScroll
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
  object Documents: TpFIBDataSet
    SelectSQL.Strings = (
      'execute block(MAT_ID T_PID=:MAT_ID)'
      'returns('
      '  ID T_PID,'
      '  DOC_DT T_DATE,'
      '  DOC_NUM  T_DOC_NUM,'
      '  QTY_OUT T_INT,'
      '  QTY_IN T_INT,'
      '  QTY T_INT,'
      '  CONTRAGENT_NAME T_NAME,'
      '  ADDRESS T_DESCRIPTION'
      ''
      ')'
      'as'
      'begin'
      '  if (MAT_ID is null) then'
      '    mat_id = 141;'
      '  QTY = 0;'
      '  for select'
      '    T.ID, D.DOC_DT, D.DOC_NUM, T.QTY_OUT, T.QTY_IN,'
      '    C.NAME CONTRAGENT_NAME, A.NAME ADDRESS'
      '  from DOC_ACT_IN_OUT_T T'
      '  left join DOC_ACT_IN_OUT D on D.ID=T.PID'
      '  left join CONTRACT_ADDRESS A on A.ID=T.ADDRESS_ID'
      '  left join CONTRAGENTS C on C.ID=A.CONTRAGENT_ID'
      '  where T.MAT_ID=:MAT_ID and D.STATUS=2'
      '  order by D.DOC_DT'
      
        '  into :ID, :DOC_DT, :DOC_NUM, :QTY_OUT, :QTY_IN, :CONTRAGENT_NA' +
        'ME, :ADDRESS do begin'
      '    QTY = QTY + QTY_OUT - QTY_IN;'
      '    suspend;'
      '  end'
      'end')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 792
    Top = 152
  end
  object dsDocuments: TDataSource
    DataSet = Documents
    Left = 856
    Top = 152
  end
end
