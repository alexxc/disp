inherited fmDocInOutEdit: TfmDocInOutEdit
  BorderStyle = bsDialog
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1082#1086#1088#1088#1077#1089#1087#1086#1085#1076#1077#1085#1094#1080#1080
  ClientHeight = 412
  ClientWidth = 575
  OnCreate = FormCreate
  ExplicitWidth = 581
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 575
    ExplicitWidth = 575
  end
  object Tabs: TcxTabControl [1]
    Left = 0
    Top = 31
    Width = 575
    Height = 381
    Align = alClient
    TabOrder = 1
    Properties.CustomButtons.Buttons = <>
    Properties.TabIndex = 0
    Properties.Tabs.Strings = (
      #1042#1093#1086#1076#1103#1097#1072#1103
      #1048#1089#1093#1086#1076#1103#1097#1072#1103)
    OnChange = TabsChange
    OnChanging = TabsChanging
    ExplicitLeft = 72
    ExplicitTop = 127
    ExplicitWidth = 586
    ExplicitHeight = 421
    ClientRectBottom = 375
    ClientRectLeft = 2
    ClientRectRight = 569
    ClientRectTop = 27
    object cxLabel1: TcxLabel
      Left = 19
      Top = 38
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Transparent = True
    end
    object ORGANIZATION: TcxDBLookupComboBox
      Left = 19
      Top = 53
      RepositoryItem = DM.erOrganization
      DataBinding.DataField = 'ORGANIZATION_ID'
      DataBinding.DataSource = dsDATA
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      TabOrder = 1
      Width = 196
    end
    object cxLabel2: TcxLabel
      Left = 19
      Top = 81
      Caption = #1044#1072#1090#1072
      Transparent = True
    end
    object DOC_DATE: TcxDBDateEdit
      Left = 19
      Top = 97
      DataBinding.DataField = 'DOC_DATE'
      DataBinding.DataSource = dsDATA
      Properties.ClearKey = 46
      Properties.ImmediatePost = True
      TabOrder = 3
      Width = 89
    end
    object cxLabel3: TcxLabel
      Left = 133
      Top = 81
      Caption = #8470
      Transparent = True
    end
    object DOC_NUM: TcxDBButtonEdit
      Left = 133
      Top = 97
      DataBinding.DataField = 'DOC_NUM'
      DataBinding.DataSource = dsDATA
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 46
          Kind = bkGlyph
        end>
      Properties.ClearKey = 46
      Properties.Images = DM.ToolImages
      Properties.ReadOnly = True
      Properties.OnButtonClick = DOC_NUMPropertiesButtonClick
      TabOrder = 4
      Width = 82
    end
    object cxLabel4: TcxLabel
      Left = 235
      Top = 82
      Caption = #1047#1072#1087#1088#1086#1089
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 341
      Top = 82
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 19
      Top = 131
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      Transparent = True
    end
    object REQUEST: TcxDBExtLookupComboBox
      Left = 235
      Top = 97
      DataBinding.DataField = 'REQUEST_ID'
      DataBinding.DataSource = dsDATA
      Properties.ClearKey = 46
      Properties.DropDownRows = 15
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.View = GridViewRepositoryRequestList
      Properties.KeyFieldNames = 'ID'
      Properties.ListFieldItem = GridViewRepositoryRequestListID
      TabOrder = 5
      Width = 89
    end
    object CONTRAGENT: TcxDBExtLookupComboBox
      Left = 341
      Top = 97
      DataBinding.DataField = 'CONTRAGENT_ID'
      DataBinding.DataSource = dsDATA
      Properties.DropDownRows = 15
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 350
      Properties.ImmediatePost = True
      Properties.View = GridViewRepositoryContragents
      Properties.KeyFieldNames = 'ID'
      Properties.ListFieldItem = GridViewRepositoryContragentsNAME
      TabOrder = 6
      Width = 208
    end
    object DESCRIPTION: TcxDBMemo
      Left = 19
      Top = 148
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsDATA
      TabOrder = 7
      Height = 69
      Width = 530
    end
    object cxLabel7: TcxLabel
      Left = 235
      Top = 41
      Caption = #1042#1080#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Transparent = True
    end
    object DOC_TYPE: TcxDBImageComboBox
      Left = 235
      Top = 55
      DataBinding.DataField = 'DOC_TYPE'
      DataBinding.DataSource = dsDATA
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <>
      TabOrder = 2
      Width = 314
    end
    object cxGroupBox1: TcxGroupBox
      Left = 19
      Top = 240
      Caption = #1055#1088#1080#1082#1088#1077#1087#1083#1077#1085#1085#1099#1077' '#1092#1072#1081#1083#1099
      TabOrder = 8
      Transparent = True
      Height = 121
      Width = 530
      object cxGrid1: TcxGrid
        Left = 3
        Top = 15
        Width = 524
        Height = 97
        Align = alClient
        TabOrder = 0
        ExplicitTop = 63
        ExplicitWidth = 527
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
            Width = 400
          end
          object cxGrid1DBTableView1FILESIZE: TcxGridDBColumn
            Caption = #1056#1072#1079#1084#1077#1088
            DataBinding.FieldName = 'FILESIZE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            Width = 79
          end
          object cxGrid1DBTableView1EXT: TcxGridDBColumn
            Caption = #1058#1080#1087
            DataBinding.FieldName = 'EXT'
            Width = 35
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited trRead: TpFIBTransaction
    Left = 408
    Top = 16
  end
  inherited trWrite: TpFIBTransaction
    Left = 456
    Top = 16
  end
  inherited BM: TdxBarManager
    Left = 416
    Top = 64
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
          ItemName = 'bbAddFile'
        end
        item
          Visible = True
          ItemName = 'bbView'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbSave'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    inherited bbRefresh: TdxBarButton
      OnClick = bbRefreshClick
    end
    object bbAddFile: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1092#1072#1081#1083#1099
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1092#1072#1081#1083#1099
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = bbAddFileClick
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
    UpdateSQL.Strings = (
      'update DOC_IN_OUT'
      'set DOC_DATE = :DOC_DATE,'
      '    DOC_NUM = :DOC_NUM,'
      '    IS_OUT = :IS_OUT,'
      '    ORGANIZATION_ID=:ORGANIZATION_ID,'
      '    DOC_TYPE = :DOC_TYPE,'
      '    DESCRIPTION = :DESCRIPTION,'
      '    NOTE = :NOTE,'
      '    REQUEST_ID = :REQUEST_ID,'
      '    CONTRAGENT_ID = :CONTRAGENT_ID'
      'where (ID = :ID)')
    InsertSQL.Strings = (
      'insert into DOC_IN_OUT'
      
        '  (DOC_DATE, DOC_NUM, IS_OUT, ORGANIZATION_ID, DOC_TYPE, DESCRIP' +
        'TION, NOTE, REQUEST_ID, CONTRAGENT_ID)'
      'values'
      
        '  (:DOC_DATE, :DOC_NUM, :IS_OUT, :ORGANIZATION_ID, :DOC_TYPE, :D' +
        'ESCRIPTION, :NOTE, :REQUEST_ID, :CONTRAGENT_ID)'
      'returning ID '
      '')
    RefreshSQL.Strings = (
      'select'
      '  D.ID, D.DOC_DATE, D.DOC_NUM, D.IS_OUT, D.DOC_TYPE,'
      '  D.ORGANIZATION_ID,'
      '  D.NOTE, D.DESCRIPTION,'
      '  D.CONTRAGENT_ID CONTRAGENT_ID,'
      '  D.REQUEST_ID'
      'from'
      '  DOC_IN_OUT D'
      'where'
      '  D.ID=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  D.ID, D.DOC_DATE, D.DOC_NUM, D.IS_OUT, D.DOC_TYPE,'
      '  D.ORGANIZATION_ID,'
      '  D.NOTE, D.DESCRIPTION,'
      '  D.CONTRAGENT_ID CONTRAGENT_ID,'
      '  D.REQUEST_ID'
      'from'
      '  DOC_IN_OUT D'
      'where'
      '  1=1')
    Transaction = trWrite
    Database = DM.FB
    RefreshTransactionKind = tkUpdateTransaction
    Left = 424
    Top = 128
  end
  object dsDATA: TDataSource
    DataSet = DATA
    OnDataChange = dsDATADataChange
    Left = 424
    Top = 159
  end
  object GridViewRepository: TcxGridViewRepository
    Left = 496
    Top = 154
    object GridViewRepositoryRequestList: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsREF_REQUEST
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object GridViewRepositoryRequestListID: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'ID'
        SortIndex = 0
        SortOrder = soAscending
      end
      object GridViewRepositoryRequestListREQUEST_DT: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'REQUEST_DT'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object GridViewRepositoryRequestListNAME: TcxGridDBColumn
        Caption = #1048#1084#1103
        DataBinding.FieldName = 'NAME'
        Width = 200
      end
      object GridViewRepositoryRequestListPHONE: TcxGridDBColumn
        Caption = #1058#1077#1083#1077#1092#1086#1085
        DataBinding.FieldName = 'PHONE'
        Width = 200
      end
      object GridViewRepositoryRequestListSTATUS: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'STATUS_NAME'
        RepositoryItem = DM.erRequestStatus
      end
    end
    object GridViewRepositoryContragents: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCONTRAGENTS
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object GridViewRepositoryContragentsID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 80
      end
      object GridViewRepositoryContragentsNAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 316
      end
      object GridViewRepositoryContragentsINN: TcxGridDBColumn
        DataBinding.FieldName = 'INN'
        Width = 144
      end
    end
  end
  object REF_REQUEST: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  R.ID,'
      '  R.STATUS,'
      '  cast(R.REQUEST_DT as T_DATE) REQUEST_DT,'
      '  IIF(T.ID is not null, '#39'T'#39', '#39#39') IS_TENDER,'
      '  coalesce(R.COMPANY_NAME, T.CLIENT_NAME) NAME,'
      '  R.PHONE,'
      '  B.NAME STATUS_NAME'
      'from'
      '  SP_GET_REQUEST_LIST L'
      '  left join request R on R.ID=L.ID'
      '  left join REFBOOK B on B.ID=R.STATUS'
      '  left join REQUEST_TENDER T on T.ID=R.ID'
      'where'
      '  R.STATUS in (44, 45, 145, 146, 147, 148, 149, 156)'
      ''
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    Left = 385
    Top = 258
  end
  object dsREF_REQUEST: TDataSource
    DataSet = REF_REQUEST
    Left = 417
    Top = 258
  end
  object CONTRAGENTS: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  SP.ID, C.NAME, C.INN'
      'from SP_GET_CONTRAGENTS_ID(NULL, NULL) SP'
      'left join CONTRAGENTS C on C.ID=SP.ID'
      'order by C.NAME')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    Left = 472
    Top = 256
  end
  object dsCONTRAGENTS: TDataSource
    DataSet = CONTRAGENTS
    Left = 504
    Top = 256
  end
  object QW: TpFIBQuery
    Transaction = trW
    Database = DM.FB
    Left = 512
    Top = 15
    qoStartTransaction = True
    qoFreeHandleAfterExecute = True
  end
  object trW: TpFIBTransaction
    DefaultDatabase = DM.FB
    TRParams.Strings = (
      'write'
      'nowait'
      'rec_version'
      'read_committed')
    TPBMode = tpbDefault
    Left = 544
    Top = 16
  end
  object OD: TFileOpenDialog
    DefaultFolder = ' '
    FavoriteLinks = <>
    FileName = 'C:\WORK\DELPHI\DISP\'#1044#1086#1082#1091#1084#1077#1085#1090#1099'\'#1040#1082#1090#1099' '#1085#1072' '#1088#1072#1089#1082#1083#1072#1076#1082#1091' '#1082#1086#1074#1088#1086#1074'.pdf'
    FileTypes = <
      item
        DisplayName = #1044#1086#1087#1091#1089#1090#1080#1084#1099#1077' '#1092#1072#1081#1083#1099
        FileMask = 
          '*.jpg;*.jpeg;*.bmp;*.png;*.tif;*.tiff;*.doc;*.docx;*.xls;*.xlsx;' +
          '*.txt;*.pdf'
      end>
    Options = [fdoAllowMultiSelect, fdoFileMustExist, fdoDontAddToRecent]
    Left = 32
    Top = 247
  end
  object qFile: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 600
    Top = 15
    qoStartTransaction = True
    qoFreeHandleAfterExecute = True
  end
  object FILES: TpFIBDataSet
    SelectSQL.Strings = (
      'select D.ID, D.FILENAME, D.FILESIZE, D.EXT'
      'from DOCUMENTS D where D.DOC_IN_OUT=:PID')
    Transaction = trWrite
    Database = DM.FB
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
