inherited fmAutoServiceEdit: TfmAutoServiceEdit
  Caption = #1057#1077#1088#1074#1080#1089#1085#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077' '#1040#1042#1058#1054
  ClientHeight = 395
  ClientWidth = 1066
  ExplicitWidth = 1082
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1066
    ExplicitWidth = 1066
  end
  object cxGroupBox1: TcxGroupBox [1]
    Left = 0
    Top = 31
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 5
    Height = 364
    Width = 1066
    object cxGroupBox2: TcxGroupBox
      Left = 3
      Top = 3
      Align = alLeft
      Caption = ' '#1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '
      TabOrder = 0
      Height = 358
      Width = 505
      object cxLabel2: TcxLabel
        Left = 14
        Top = 20
        Caption = #1053#1072#1095#1072#1083#1086' '#1088#1077#1084#1086#1085#1090#1072
        Transparent = True
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 14
        Top = 36
        DataBinding.DataField = 'DATE_START'
        DataBinding.DataSource = dsDATA
        TabOrder = 1
        Width = 86
      end
      object cxLabel3: TcxLabel
        Left = 14
        Top = 225
        Caption = #1047#1072#1074#1077#1088#1096#1077#1085#1080#1077' ('#1087#1083#1072#1085')'
        Transparent = True
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 14
        Top = 241
        DataBinding.DataField = 'DATE_PLAN'
        DataBinding.DataSource = dsDATA
        TabOrder = 6
        Width = 121
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 364
        Top = 241
        DataBinding.DataField = 'DATE_END'
        DataBinding.DataSource = dsDATA
        TabOrder = 7
        Width = 121
      end
      object cxLabel4: TcxLabel
        Left = 364
        Top = 225
        Caption = #1047#1072#1074#1077#1088#1096#1077#1085#1086' ('#1092#1072#1082#1090')'
        Transparent = True
      end
      object cxLabel5: TcxLabel
        Left = 14
        Top = 66
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Transparent = True
      end
      object NOTES: TcxDBMemo
        Left = 14
        Top = 82
        DataBinding.DataField = 'NOTES'
        DataBinding.DataSource = dsDATA
        TabOrder = 4
        Height = 56
        Width = 473
      end
      object cxLabel6: TcxLabel
        Left = 14
        Top = 144
        Caption = #1056#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1080' '#1057#1058#1054' '#1087#1086' '#1088#1077#1084#1086#1085#1090#1091
        Transparent = True
      end
      object NOTES_STO: TcxDBMemo
        Left = 14
        Top = 161
        DataBinding.DataField = 'NOTES_STO'
        DataBinding.DataSource = dsDATA
        TabOrder = 5
        Height = 49
        Width = 473
      end
      object NONES_BOSS_PRODUTION: TcxDBMemo
        Left = 14
        Top = 285
        DataBinding.DataField = 'NONES_BOSS_PRODUTION'
        DataBinding.DataSource = dsDATA
        TabOrder = 8
        Height = 53
        Width = 473
      end
      object cxLabel7: TcxLabel
        Left = 14
        Top = 268
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080' '#1085#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1072
        Transparent = True
      end
      object cxLabel8: TcxLabel
        Left = 136
        Top = 20
        Caption = #1042#1080#1076' '#1088#1077#1084#1086#1085#1090#1072
        Transparent = True
      end
      object cxDBImageComboBox1: TcxDBImageComboBox
        Left = 134
        Top = 36
        DataBinding.DataField = 'SERVICE_TYPE'
        DataBinding.DataSource = dsDATA
        Properties.Items = <>
        TabOrder = 2
        Width = 193
      end
      object cxLabel1: TcxLabel
        Left = 364
        Top = 20
        Caption = #1058#1077#1082#1091#1097#1080#1081' '#1087#1088#1086#1073#1077#1075
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 366
        Top = 36
        DataBinding.DataField = 'CURRENT_COUNTER'
        DataBinding.DataSource = dsDATA
        TabOrder = 3
        Width = 121
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 508
      Top = 3
      Align = alClient
      Caption = ' '#1046#1091#1088#1085#1072#1083'  '
      TabOrder = 1
      Height = 358
      Width = 555
      inline frameJournal: TframeJournal
        Left = 3
        Top = 15
        Width = 549
        Height = 334
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 15
        ExplicitWidth = 549
        ExplicitHeight = 334
        inherited Grid: TcxGrid
          Width = 549
          Height = 303
          ExplicitWidth = 549
          ExplicitHeight = 303
          inherited GridDBTableView1: TcxGridDBTableView
            inherited GridDBTableView1CREATED_DT: TcxGridDBColumn
              Width = 73
            end
            inherited GridDBTableView1RECORD_TYPE: TcxGridDBColumn
              Width = 122
            end
            inherited GridDBTableView1MESSAGE: TcxGridDBColumn
              Width = 209
            end
            inherited GridDBTableView1RECORD_SUBTYPE_NAME: TcxGridDBColumn
              Visible = False
            end
            inherited GridDBTableView1CONTROL_DATE: TcxGridDBColumn
              Caption = #1050#1086#1085#1090#1088#1086#1083#1100
              Width = 89
            end
          end
        end
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 549
          ExplicitWidth = 553
        end
        inherited BM: TdxBarManager
          DockControlHeights = (
            0
            0
            0
            0)
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
        inherited Journal: TpFIBDataSet
          Transaction = trRead
          UpdateTransaction = trWrite
        end
        inherited dsJournal: TDataSource
          Left = 88
        end
      end
    end
  end
  inherited BM: TdxBarManager
    Left = 320
    Top = 0
    DockControlHeights = (
      0
      0
      0
      0)
    inherited bbRefresh: TdxBarButton
      OnClick = bbRefreshClick
    end
  end
  object DATA: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE AUTO_SERVICE'
      'SET'
      '    AUTO_ID = :AUTO_ID,'
      '    SERVICE_TYPE = :SERVICE_TYPE,'
      '    DATE_START = :DATE_START,'
      '    DATE_PLAN = :DATE_PLAN,'
      '    DATE_END = :DATE_END,'
      '    NOTES = :NOTES,'
      '    DESCRIPTION_START = :DESCRIPTION_START,'
      '    DESCRIPTION_END = :DESCRIPTION_END,'
      '    NOTES_STO = :NOTES_STO,'
      '    NONES_BOSS_PRODUTION = :NONES_BOSS_PRODUTION,'
      '    CURRENT_COUNTER = :CURRENT_COUNTER'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    AUTO_SERVICE'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO AUTO_SERVICE('
      '    AUTO_ID,'
      '    SERVICE_TYPE,'
      '    DATE_START,'
      '    DATE_PLAN,'
      '    DATE_END,'
      '    NOTES,'
      '    DESCRIPTION_START,'
      '    DESCRIPTION_END,'
      '    NOTES_STO,'
      '    NONES_BOSS_PRODUTION,'
      '    CURRENT_COUNTER'
      ')'
      'VALUES('
      '    :AUTO_ID,'
      '    :SERVICE_TYPE,'
      '    :DATE_START,'
      '    :DATE_PLAN,'
      '    :DATE_END,'
      '    :NOTES,'
      '    :DESCRIPTION_START,'
      '    :DESCRIPTION_END,'
      '    :NOTES_STO,'
      '    :NONES_BOSS_PRODUTION,'
      '    :CURRENT_COUNTER'
      ') returning ID ')
    RefreshSQL.Strings = (
      'select'
      '  S.ID, S.AUTO_ID,'
      '  S.SERVICE_TYPE,'
      '  S.DATE_START, S.DATE_PLAN, S.DATE_END,'
      '  S.NOTES, S.DESCRIPTION_START, S.DESCRIPTION_END,'
      '  S.NOTES_STO, S.NONES_BOSS_PRODUTION,'
      '  S.CURRENT_COUNTER'
      ''
      'from AUTO_SERVICE S where'
      '  S.ID=:ID'
      ''
      '')
    SelectSQL.Strings = (
      'select'
      '  S.ID, S.AUTO_ID,'
      '  S.SERVICE_TYPE,'
      '  S.DATE_START, S.DATE_PLAN, S.DATE_END,'
      '  S.NOTES, S.DESCRIPTION_START, S.DESCRIPTION_END,'
      '  S.NOTES_STO, S.NONES_BOSS_PRODUTION,'
      '  S.CURRENT_COUNTER'
      ''
      'from AUTO_SERVICE S where S.ID=:ID')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 88
    Top = 104
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 136
    Top = 104
  end
  object QR: TpFIBQuery
    Transaction = trRead
    Database = DM.FB
    Left = 536
    Top = 184
    qoStartTransaction = True
  end
end
