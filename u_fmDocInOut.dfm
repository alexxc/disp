inherited fmDocInOut: TfmDocInOut
  Caption = #1050#1086#1088#1088#1077#1089#1087#1086#1085#1076#1077#1085#1094#1080#1103
  ClientHeight = 599
  ClientWidth = 1212
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000C30E0000C30E000000000000000000000000
    0000000000000000000000000000000000020000000A0000000F000000100000
    001000000011000000110000001100000011000000100000000A000000020000
    000000000000000000000000000000000009AA715CC1B57761FFB57661FFB576
    61FFB57660FFB47660FFB47560FFB47560FFB4755FFFA96E59C20000000A0000
    00000000000000000000000000000000000CB67964FFF8F1EDFFF7F0ECFFF7F0
    EDFFF7F0EDFFF7EFECFFF7EFEBFFF7EFEBFFF7EFEBFFB67761FF0000000D0000
    00000000000000000000000000000000000CB87C66FFF8F3EFFFCCAEA1FFCCAE
    A0FFCCADA0FFCCAE9FFFCBADA0FFCCAD9FFFF7F1EDFFB77A63FF0000000D0000
    00000000000000000000000000000000000BBA7F69FFF9F5F2FFCDAFA2FFCDAF
    A2FFCDAFA1FFCDAFA2FFCDAFA1FFCCAEA1FFF8F2F0FFB87C66FF0000000C0000
    00080000000D0000000E0000000E00000017BC826DFFFBF7F5FFCEB2A4FFCEB1
    A4FFCEB1A4FFCEB0A4FFCEB0A3FFCDB0A2FFFAF5F3FFB97F6AFF0000000BAD7A
    6ABFB5816FFFB5806FFFB5806EFFD3B9B0FFBE8672FFFCF9F8FFD0B3A7FFD0B2
    A6FFD0B3A6FFCFB2A5FFCEB2A4FFCFB2A5FFFBF7F5FFBC826DFF00000009B785
    74FFF5EDEAFFF6EDE8FFF5ECE8FFF4EFECFFC18A76FFFDFBFAFFF2EAE6FFF2EA
    E6FFF1EAE6FFF1E9E5FFF1E9E6FFF1E9E5FFFCF9F8FFBE8570FF00000008BA88
    78FFCAA89CFFF7F0EEFFF7EEEBFFF5F1EFFFC38D79FFFEFDFCFFD3B7AAFFD2B6
    AAFFF3EBE8FFD2B5A9FFD1B6A9FFD1B5A9FFFDFCFBFFC18A75FF00000007BB8C
    7BFFE5CFC6FFD2B5AAFFFAF4F1FFF0EAE8FFC5907CFFFFFFFEFFD4B9ADFFD3B8
    ACFFF4EDEAFFD2B7ACFFD3B8ACFFD3B7ABFFFEFEFEFFC38D78FF00000006BC8F
    7FFFF0E1DBFFE4CDC4FFCEB1A7FFD3C3BDFFC79380FFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFC5907CFF00000004BE92
    81FFF0E3DDFFD7BFB7FFB8998EFFFAF9F8FFD4AFA0FFC99582FFC99582FFC894
    82FFC89481FFC89481FFC79580FFC79380FFC79280FFC4907DBF00000002BE93
    84FFCFB6ABFFD4BEB6FFFDFBFBFFFDFAF9FFFBF8F7FFFAF7F6FFFAF7F6FFFBF8
    F7FFFCFBFBFFDED2CEFFD7C6C1FFDCC5BEFF0000000B0000000200000000BF95
    86FFEADFDBFFFDFCFCFFFBF7F6FFF9F6F5FFF9F6F5FFFBF8F5FFF9F6F5FFFAF6
    F6FFF9F8F6FFFDFCFCFFE1D5D1FFBD9182FF000000070000000000000000C39F
    92C0C9A699FFC9A698FFC8A597FFC7A497FFC7A496FFC7A395FFC6A295FFC6A2
    94FFC5A193FFC5A192FFC5A092FFBE9989C10000000400000000000000000000
    0002000000030000000400000004000000040000000400000004000000050000
    000500000005000000050000000500000003000000010000000000000000F000
    0000F0000000F0000000F0000000F00000000000000000000000000000000000
    000000000000000000000000000000010000000300000003000000030000}
  OnCreate = FormCreate
  ExplicitWidth = 1228
  ExplicitHeight = 637
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1212
  end
  object Tabs: TcxTabControl [1]
    Left = 0
    Top = 31
    Width = 1212
    Height = 568
    Align = alClient
    TabOrder = 5
    Properties.CustomButtons.Buttons = <>
    Properties.TabIndex = 1
    Properties.Tabs.Strings = (
      #1042#1093#1086#1076#1103#1097#1080#1077
      #1048#1089#1093#1086#1076#1103#1097#1080#1077)
    OnChange = TabsChange
    ExplicitHeight = 394
    ClientRectBottom = 562
    ClientRectLeft = 2
    ClientRectRight = 1206
    ClientRectTop = 27
    object Grid: TcxGrid
      Left = 2
      Top = 27
      Width = 1204
      Height = 425
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 40
      ExplicitWidth = 1022
      ExplicitHeight = 377
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsDATA
        DataController.KeyFieldNames = 'ID'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxGridDBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object cxGridDBTableView1DOC_NUM: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'DOC_NUM'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Width = 42
        end
        object cxGridDBTableView1DOC_DATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DOC_DATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Width = 73
        end
        object cxGridDBTableView1DOC_TYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          DataBinding.FieldName = 'DOC_TYPE_NAME'
          Width = 160
        end
        object cxGridDBTableView1NOTE: TcxGridDBColumn
          DataBinding.FieldName = 'NOTE'
          Visible = False
        end
        object cxGridDBTableView1CONTRAGENT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'CONTRAGENT_ID'
          Visible = False
        end
        object cxGridDBTableView1REQUEST_ID: TcxGridDBColumn
          Caption = #1047#1072#1087#1088#1086#1089
          DataBinding.FieldName = 'REQUEST_ID'
          Width = 103
        end
        object cxGridDBTableView1CONTRAGNT_NAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'CONTRAGNT_NAME'
          Width = 300
        end
        object cxGridDBTableView1REQUEST_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'REQUEST_NAME'
          Visible = False
        end
        object cxGridDBTableView1DESCRIPTION: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
          DataBinding.FieldName = 'DESCRIPTION'
          Width = 363
        end
        object cxGridDBTableView1FCOUNT: TcxGridDBColumn
          Caption = #1060#1072#1081#1083#1086#1074
          DataBinding.FieldName = 'FCOUNT'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Width = 50
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object gbInfo: TcxGroupBox
      Left = 2
      Top = 457
      Align = alBottom
      Caption = #1055#1088#1080#1082#1088#1077#1087#1083#1077#1085#1085#1099#1077' '#1092#1072#1081#1083#1099
      TabOrder = 1
      ExplicitLeft = 40
      ExplicitTop = 456
      ExplicitWidth = 185
      Height = 105
      Width = 1204
      object cxGrid1: TcxGrid
        Left = 3
        Top = 15
        Width = 1198
        Height = 81
        Align = alClient
        TabOrder = 0
        ExplicitTop = 63
        ExplicitWidth = 527
        ExplicitHeight = 97
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsFiles
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object cxGrid1DBTableView1FILENAME: TcxGridDBColumn
            Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
            DataBinding.FieldName = 'FILENAME'
            Width = 899
          end
          object cxGrid1DBTableView1FILESIZE: TcxGridDBColumn
            Caption = #1056#1072#1079#1084#1077#1088
            DataBinding.FieldName = 'FILESIZE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            Width = 206
          end
          object cxGrid1DBTableView1EXT: TcxGridDBColumn
            Caption = #1058#1080#1087
            DataBinding.FieldName = 'EXT'
            Width = 91
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 2
      Top = 452
      Width = 1204
      Height = 5
      HotZoneClassName = 'TcxSimpleStyle'
      AlignSplitter = salBottom
      Control = gbInfo
      ExplicitTop = 449
    end
  end
  inherited trRead: TpFIBTransaction
    Left = 120
    Top = 136
  end
  inherited trWrite: TpFIBTransaction
    Left = 192
    Top = 136
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
          ItemName = 'bbAdd'
        end
        item
          Visible = True
          ItemName = 'bbEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbView'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object bbAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbAddClick
    end
    object bbEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbEditClick
    end
    object bbView: TdxBarButton
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
      Category = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
      Visible = ivAlways
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
      OnClick = bbViewClick
    end
  end
  object DATA: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      '  D.ID, D.DOC_DATE, D.DOC_NUM, D.IS_OUT,'
      '  D.DOC_TYPE, REFBOOK.NAME DOC_TYPE_NAME,'
      '  D.NOTE, D.DESCRIPTION,'
      '  C.ID CONTRAGENT_ID, C.NAME CONTRAGNT_NAME,'
      '  R.ID REQUEST_ID, R.NAME REQUEST_NAME,'
      
        '  nullif((select count(ID) from DOCUMENTS where DOCUMENTS.DOC_IN' +
        '_OUT=D.ID), 0) FCOUNT'
      '  '
      'from'
      '  DOC_IN_OUT D'
      '  left join REQUEST R on R.ID=D.REQUEST_ID'
      '  left join CONTRAGENTS C on C.ID=D.CONTRAGENT_ID'
      '  left join REFBOOK on REFBOOK.ID=D.DOC_TYPE'
      'where'
      '  D.ID=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  D.ID, D.DOC_DATE, D.DOC_NUM, D.IS_OUT,'
      '  D.DOC_TYPE, REFBOOK.NAME DOC_TYPE_NAME,'
      '  D.NOTE, D.DESCRIPTION,'
      '  C.ID CONTRAGENT_ID, C.NAME CONTRAGNT_NAME,'
      '  R.ID REQUEST_ID, R.NAME REQUEST_NAME,'
      
        '  nullif((select count(ID) from DOCUMENTS where DOCUMENTS.DOC_IN' +
        '_OUT=D.ID), 0) FCOUNT'
      '  '
      'from'
      '  DOC_IN_OUT D'
      '  left join REQUEST R on R.ID=D.REQUEST_ID'
      '  left join CONTRAGENTS C on C.ID=D.CONTRAGENT_ID'
      '  left join REFBOOK on REFBOOK.ID=D.DOC_TYPE'
      'where'
      '  1=1')
    Transaction = DM.trRead
    Database = DM.FB
    UpdateTransaction = DM.trWrite
    Left = 384
    Top = 152
  end
  object dsDATA: TDataSource
    DataSet = DATA
    OnDataChange = dsDATADataChange
    Left = 416
    Top = 144
  end
  object FILES: TpFIBDataSet
    SelectSQL.Strings = (
      'select D.ID, D.FILENAME, D.FILESIZE, D.EXT'
      'from DOCUMENTS D where D.DOC_IN_OUT=:PID')
    Transaction = trWrite
    Database = DM.FB
    UpdateTransaction = DM.trWrite
    Left = 192
    Top = 367
  end
  object dsFiles: TDataSource
    DataSet = FILES
    OnDataChange = dsFilesDataChange
    Left = 216
    Top = 383
  end
end
