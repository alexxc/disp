inherited fmAutomobile: TfmAutomobile
  Caption = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1080
  ClientHeight = 629
  ClientWidth = 1041
  OnCreate = FormCreate
  ExplicitWidth = 1057
  ExplicitHeight = 668
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1041
    ExplicitWidth = 1041
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1041
    Height = 351
    Align = alTop
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'ID'
          Column = cxGrid1DBTableView1GOS_NOMER
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cxGrid1DBTableView1PRODUCTION_ID: TcxGridDBColumn
        Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
        DataBinding.FieldName = 'PRODUCTION_ID'
        RepositoryItem = DM.erProduction
        Width = 100
      end
      object cxGrid1DBTableView1ORGANIZATION_ID: TcxGridDBColumn
        Caption = #1042#1083#1072#1076#1077#1083#1077#1094
        DataBinding.FieldName = 'ORGANIZATION_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListSource = DM.dsrefOrganizations
        Width = 80
      end
      object cxGrid1DBTableView1MODEL_NAME: TcxGridDBColumn
        Caption = #1052#1086#1076#1077#1083#1100
        DataBinding.FieldName = 'MODEL_NAME'
        Width = 81
      end
      object cxGrid1DBTableView1GOS_NOMER: TcxGridDBColumn
        Caption = #1043#1086#1089#1085#1086#1084#1077#1088
        DataBinding.FieldName = 'GOS_NOMER'
        Width = 94
      end
      object cxGrid1DBTableView1IN_SERVICE: TcxGridDBColumn
        Caption = #1042' '#1088#1077#1084#1086#1085#1090#1077
        DataBinding.FieldName = 'IN_SERVICE'
        RepositoryItem = DM.erCheckGreen
        Width = 60
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #1042#1086#1076#1080#1090#1077#1083#1080
        DataBinding.FieldName = 'DRIVERS'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 101
      end
      object cxGrid1DBTableView1FUEL_TYPE: TcxGridDBColumn
        Caption = #1058#1086#1087#1083#1080#1074#1086
        DataBinding.FieldName = 'FUEL_TYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #1040#1048'92'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #1044#1058
            Value = 1
          end>
        Width = 52
      end
      object cxGrid1DBTableView1VIN: TcxGridDBColumn
        DataBinding.FieldName = 'VIN'
        Width = 124
      end
      object cxGrid1DBTableView1MAIN_DRIVER: TcxGridDBColumn
        DataBinding.FieldName = 'MAIN_DRIVER'
        Visible = False
      end
      object cxGrid1DBTableView1PTS: TcxGridDBColumn
        Caption = #1055#1058#1057
        DataBinding.FieldName = 'PTS'
        Width = 90
      end
      object cxGrid1DBTableView1STS: TcxGridDBColumn
        Caption = #1057#1058#1057
        DataBinding.FieldName = 'STS'
        Width = 86
      end
      object cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 147
      end
      object cxGrid1DBTableView1IS_ACTIVE: TcxGridDBColumn
        Caption = #1040#1082#1090#1080#1074
        DataBinding.FieldName = 'IS_ACTIVE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Visible = False
        Width = 36
      end
      object cxGrid1DBTableView1STATUS: TcxGridDBColumn
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
        DataBinding.FieldName = 'STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DM.ImageListStatuses
        Properties.Items = <
          item
            Description = #1042' '#1088#1072#1073#1086#1090#1077
            ImageIndex = 8
            Value = 1
          end
          item
            Description = #1053#1072' '#1089#1077#1088#1074#1080#1089#1077
            ImageIndex = 10
            Value = 2
          end
          item
            Description = #1059#1090#1080#1083#1100
            ImageIndex = 6
            Value = 3
          end
          item
            Description = #1056#1077#1079#1077#1088#1074
            ImageIndex = 5
            Value = 4
          end>
        RepositoryItem = DM.erAutomobileStatus
        Width = 79
      end
      object cxGrid1DBTableView1GPS_ID: TcxGridDBColumn
        Caption = 'GPS ID'
        DataBinding.FieldName = 'GPS_ID'
        Width = 80
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Pages: TcxPageControl [2]
    Left = 0
    Top = 387
    Width = 1041
    Height = 242
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = tabJournal
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 236
    ClientRectLeft = 2
    ClientRectRight = 1035
    ClientRectTop = 27
    object tabJournal: TcxTabSheet
      Caption = #1046#1091#1088#1085#1072#1083
      ImageIndex = 0
      OnEnter = tabJournalEnter
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inline frameJournal: TframeJournal
        Left = 0
        Top = 0
        Width = 1033
        Height = 209
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1033
        ExplicitHeight = 209
        inherited Grid: TcxGrid
          Width = 1033
          Height = 178
          ExplicitWidth = 1033
          ExplicitHeight = 178
          inherited GridDBTableView1: TcxGridDBTableView
            OptionsView.GroupByBox = False
          end
        end
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 1033
          ExplicitWidth = 1033
        end
        inherited BM: TdxBarManager
          PixelsPerInch = 96
          inherited BarJournal: TdxBar
            ItemLinks = <
              item
                Visible = True
                ItemName = 'bbRefresh'
              end
              item
                Visible = True
                ItemName = 'bbAdd'
              end>
          end
        end
      end
    end
    object tabDocuments: TcxTabSheet
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      ImageIndex = 1
      OnEnter = tabDocumentsEnter
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inline frameDocuments: TframeDocuments
        Left = 0
        Top = 0
        Width = 1033
        Height = 209
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1033
        ExplicitHeight = 209
        inherited dockDocuments: TdxBarDockControl
          Width = 1033
          ExplicitWidth = 1033
        end
        inherited cxGrid2: TcxGrid
          Width = 1033
          Height = 178
          ExplicitWidth = 1033
          ExplicitHeight = 178
          inherited cxGrid2DBTableView1: TcxGridDBTableView
            OptionsView.GroupByBox = False
            inherited cxGrid2DBTableView1FILENAME: TcxGridDBColumn [1]
              Width = 159
            end
            inherited cxGrid2DBTableView1DESCRIPTION: TcxGridDBColumn [3]
              Width = 394
            end
            inherited cxGrid2DBTableView1DATA: TcxGridDBColumn [4]
            end
            inherited cxGrid2DBTableView1CREATED_BY_USER_ID: TcxGridDBColumn [5]
              Width = 179
            end
            inherited cxGrid2DBTableView1CREATED_DT: TcxGridDBColumn [6]
            end
          end
        end
        inherited BM: TdxBarManager
          PixelsPerInch = 96
          inherited BMBar1: TdxBar
            ItemLinks = <
              item
                Visible = True
                ItemName = 'bbRefresh'
              end
              item
                Visible = True
                ItemName = 'bbAdd'
              end
              item
                Visible = True
                ItemName = 'bbView'
              end>
          end
          inherited bbAdd: TdxBarButton
            OnClick = frameDocumentsbbAddClick
          end
        end
      end
    end
    object tabService: TcxTabSheet
      Caption = #1056#1077#1077#1089#1090#1088' '#1088#1077#1084#1086#1085#1090#1086#1074
      ImageIndex = 2
      OnEnter = tabServiceEnter
      inline frameAutoServiceReestr: TframeAutoServiceReestr
        Left = 0
        Top = 0
        Width = 1033
        Height = 209
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1033
        ExplicitHeight = 209
        inherited Dock: TdxBarDockControl
          Width = 1033
          ExplicitWidth = 1033
        end
        inherited cxGrid1: TcxGrid
          Width = 1033
          Height = 178
          ExplicitWidth = 1033
          ExplicitHeight = 178
        end
        inherited BM: TdxBarManager
          PixelsPerInch = 96
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter [3]
    Left = 0
    Top = 382
    Width = 1041
    Height = 5
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salTop
    Control = cxGrid1
    ExplicitWidth = 5
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
          Visible = True
          ItemName = 'bbNew'
        end
        item
          Visible = True
          ItemName = 'bbEdit'
        end
        item
          Visible = True
          ItemName = 'bbDelete'
        end
        item
          Visible = True
          ItemName = 'bbReportService'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    inherited bbSave: TdxBarButton
      PaintStyle = psCaptionGlyph
    end
    object bbNew: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbNewClick
    end
    object bbDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
    end
    object bbEdit: TdxBarButton
      Caption = #1056#1077#1072#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1072#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbEditClick
    end
    object bbReportService: TdxBarButton
      Caption = #1054#1090#1095#1077#1090' '#1088#1077#1084#1086#1085#1090#1086#1074
      Category = 0
      Hint = #1054#1090#1095#1077#1090' '#1088#1077#1084#1086#1085#1090#1086#1074
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = bbReportServiceClick
    end
  end
  object DATA: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE AUTOMOBILE'
      'SET '
      '    GOS_NOMER = :GOS_NOMER,'
      '    MODEL_NAME = :MODEL_NAME,'
      '    VIN = :VIN,'
      '    MAIN_DRIVER = :MAIN_DRIVER,'
      '    PRODUCTION_ID = :PRODUCTION_ID,'
      '    DESCRIPTION = :DESCRIPTION ,'
      '    PTS=:PTS, STS=:STS,'
      '    ORGANIZATION_ID = :ORGANIZATION_ID'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    AUTOMOBILE'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO AUTOMOBILE('
      '    ID,'
      '    GOS_NOMER,'
      '    MODEL_NAME,'
      '    VIN,'
      '    MAIN_DRIVER,'
      '    PRODUCTION_ID,'
      '    DESCRIPTION, PTS, STS, ORGANIZATION_ID'
      ')'
      'VALUES('
      '    :ID,'
      '    :GOS_NOMER,'
      '    :MODEL_NAME,'
      '    :VIN,'
      '    :MAIN_DRIVER,'
      '    :PRODUCTION_ID,'
      '    :DESCRIPTION, :PTS, :STS, :ORGANIZATION_ID'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  ID,'
      
        '  IIF((exists(select ID from AUTO_SERVICE S where S.AUTO_ID=A.ID' +
        ' and S.DATE_START <= current_date and ((S.DATE_END > current_dat' +
        'e ) OR (S.DATE_END is null)) )), 1, 0) IN_SERVICE,'
      
        '  GOS_NOMER, MODEL_NAME, VIN, MAIN_DRIVER, PRODUCTION_ID, DESCRI' +
        'PTION, coalesce(STATUS, 1) STATUS, GPS_ID, PTS, STS,'
      '  ORGANIZATION_ID,'
      
        '  (select O.SHORTNAME from ORGANIZATIONS O where O.ID=A.ORGANIZA' +
        'TION_ID) ORGANIZATION_NAME'
      'from AUTOMOBILE A'
      ''
      ' WHERE'
      '        A.ID = :OLD_ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  ID,'
      
        '  IIF((exists(select ID from AUTO_SERVICE S where S.AUTO_ID=A.ID' +
        ' and S.DATE_START <= current_date and ((S.DATE_END > current_dat' +
        'e ) OR (S.DATE_END is null)) )), 1, 0) IN_SERVICE,'
      
        '  (select list(D.NAME, ascii_char(10)) from AUTO_DRIVER D,  AUTO' +
        '_DRIVERS AD where AD.DRIVER_ID=D.ID and AD.AUTO_ID=A.ID) DRIVERS' +
        ','
      
        '  GOS_NOMER, MODEL_NAME, VIN, MAIN_DRIVER, PRODUCTION_ID, DESCRI' +
        'PTION,'
      
        '  coalesce(FUEL_TYPE, 0) FUEL_TYPE, coalesce(IS_ACTIVE, 1) IS_AC' +
        'TIVE,'
      '  coalesce(STATUS, 1) STATUS,'
      '  GPS_ID, PTS, STS,'
      '  A.ORGANIZATION_ID,'
      
        '  (select O.SHORTNAME from ORGANIZATIONS O where O.ID=A.ORGANIZA' +
        'TION_ID) ORGANIZATION_NAME'
      ''
      'from AUTOMOBILE A'
      'where'
      '  coalesce(A.FUEL_TYPE, 0) < 10'
      ''
      ''
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 304
    Top = 184
  end
  object dsDATA: TDataSource
    DataSet = DATA
    OnDataChange = dsDATADataChange
    Left = 344
    Top = 184
  end
end
