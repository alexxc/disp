inherited fmRefProductions: TfmRefProductions
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 635
    Height = 306
    Align = alClient
    TabOrder = 5
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Options.Editing = False
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'NAME'
        Options.Editing = False
        Width = 200
      end
      object cxGrid1DBTableView1BOSS_USER_ID: TcxGridDBColumn
        Caption = #1053#1072#1095#1072#1083#1100#1085#1080#1082
        DataBinding.FieldName = 'BOSS_USER_ID'
        RepositoryItem = DM.erUsers
        Width = 250
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
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
          Visible = True
          ItemName = 'bbSave'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    inherited bbSave: TdxBarButton
      Enabled = False
      PaintStyle = psCaptionGlyph
    end
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 64
    Top = 72
  end
  object DATA: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE REF_PRODUCTIONS'
      'SET '
      '    NAME = :NAME,'
      '    BOSS_USER_ID = :BOSS_USER_ID'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      '')
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'select P.ID, P.NAME, P.BOSS_USER_ID'
      'from REF_PRODUCTIONS P'
      ' '
      ' WHERE '
      '        P.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'select P.ID, P.NAME, P.BOSS_USER_ID'
      'from REF_PRODUCTIONS P'
      'order by P.NAME')
    AfterPost = DATAAfterPost
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 224
    Top = 112
  end
end
