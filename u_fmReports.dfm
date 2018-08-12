inherited fmReports: TfmReports
  Caption = #1054#1090#1095#1077#1090#1099
  ClientHeight = 329
  ClientWidth = 877
  OnCreate = FormCreate
  ExplicitWidth = 893
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 877
    ExplicitWidth = 877
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 877
    Height = 298
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsREPORTS
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
        Width = 52
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 219
      end
      object cxGrid1DBTableView1BODY: TcxGridDBColumn
        DataBinding.FieldName = 'BODY'
        Visible = False
        Width = 56
      end
      object cxGrid1DBTableView1CREATED_BY: TcxGridDBColumn
        DataBinding.FieldName = 'CREATED_BY'
        Width = 95
      end
      object cxGrid1DBTableView1CREATED_DT: TcxGridDBColumn
        DataBinding.FieldName = 'CREATED_DT'
        Width = 87
      end
      object cxGrid1DBTableView1MODIFY_BY: TcxGridDBColumn
        DataBinding.FieldName = 'MODIFY_BY'
        Width = 94
      end
      object cxGrid1DBTableView1MODIFY_DT: TcxGridDBColumn
        DataBinding.FieldName = 'MODIFY_DT'
        Width = 86
      end
      object cxGrid1DBTableView1IS_SYSTEM: TcxGridDBColumn
        Caption = 'SYS'
        DataBinding.FieldName = 'IS_SYSTEM'
        RepositoryItem = DM.erCheckGreen
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
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
          Visible = True
          ItemName = 'bbSys'
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
          ItemName = 'bbClose'
        end>
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
    object bbNew: TdxBarButton
      Caption = #1053#1086#1074#1099#1081
      Category = 0
      Hint = #1053#1086#1074#1099#1081
      Visible = ivAlways
      ImageIndex = 15
      PaintStyle = psCaptionGlyph
      OnClick = bbNewClick
    end
    object bbSys: TdxBarButton
      Caption = '+ '#1089#1080#1089#1090#1077#1084#1085#1099#1077
      Category = 0
      Hint = '+ '#1089#1080#1089#1090#1077#1084#1085#1099#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbSysClick
    end
  end
  object REPORTS: TpFIBDataSet
    RefreshSQL.Strings = (
      
        'select ID, NAME, BODY, coalesce(IS_SYSTEM, 0) IS_SYSTEM, CREATED' +
        '_BY, CREATED_DT, MODIFY_BY, MODIFY_DT'
      'from REPORTS where REPORTS.ID=:ID')
    SelectSQL.Strings = (
      
        'select ID, NAME, BODY, coalesce(IS_SYSTEM, 0) IS_SYSTEM, CREATED' +
        '_BY, CREATED_DT, MODIFY_BY, MODIFY_DT'
      'from REPORTS')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 112
    Top = 96
  end
  object dsREPORTS: TDataSource
    DataSet = REPORTS
    Left = 112
    Top = 144
  end
end
