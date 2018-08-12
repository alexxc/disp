inherited fmUpgradeEXE: TfmUpgradeEXE
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074#1077#1088#1089#1080#1103#1084#1080' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
  ClientHeight = 446
  ClientWidth = 1035
  ExplicitWidth = 1051
  ExplicitHeight = 484
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1035
    ExplicitWidth = 1035
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1035
    Height = 415
    Align = alClient
    TabOrder = 5
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsEXE
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cxGrid1DBTableView1CREATED_BY: TcxGridDBColumn
        Caption = #1050#1090#1086' '#1079#1072#1083#1080#1083
        DataBinding.FieldName = 'CREATED_BY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 110
        Options.Editing = False
        Options.HorzSizing = False
        Options.Sorting = False
        Width = 110
      end
      object cxGrid1DBTableView1CREATED_DT: TcxGridDBColumn
        Caption = #1050#1086#1075#1076#1072
        DataBinding.FieldName = 'CREATED_DT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 104
        Options.Editing = False
        Options.HorzSizing = False
        Options.Sorting = False
        Width = 104
      end
      object cxGrid1DBTableView1VER: TcxGridDBColumn
        Caption = #1042#1077#1088#1089#1080#1103
        DataBinding.FieldName = 'VER'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 72
        Options.Editing = False
        Options.HorzSizing = False
        Width = 72
      end
      object cxGrid1DBTableView1EXE_SIZE: TcxGridDBColumn
        Caption = #1056#1072#1079#1084#1077#1088' ('#1052#1041')'
        DataBinding.FieldName = 'EXE_SIZE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = ',0.0;-,0.0'
        HeaderAlignmentHorz = taCenter
        MinWidth = 103
        Options.Editing = False
        Options.HorzSizing = False
        Options.Sorting = False
        Width = 103
      end
      object cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        DataBinding.FieldName = 'DESCRIPTION'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Options.Editing = False
        Options.Sorting = False
        Width = 644
      end
      object cxGrid1DBTableView1CRC: TcxGridDBColumn
        DataBinding.FieldName = 'CRC'
        MinWidth = 64
        Options.Editing = False
        Options.HorzSizing = False
        Options.Sorting = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited BM: TdxBarManager
    Left = 216
    Top = 128
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
          ItemName = 'bbUpload'
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
    inherited bbRefresh: TdxBarButton
      OnClick = bbRefreshClick
    end
    inherited bbSave: TdxBarButton
      Enabled = False
    end
    object bbUpload: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 22
      PaintStyle = psCaptionGlyph
      OnClick = bbUploadClick
    end
  end
  object EXE: TpFIBDataSet
    RefreshSQL.Strings = (
      
        'select id, description,  ver, cast(character_length(exe.DATA) / ' +
        '1024 as T_INT) exe_size,  , created_by, created_dt, CRC'
      'from EXE'
      'where id = :id'
      '')
    SelectSQL.Strings = (
      
        'select id, description,  ver, cast(character_length(exe.DATA) / ' +
        '1024 as T_INT) exe_size,  created_by, created_dt, crc'
      'from EXE'
      'order'
      '  by  created_dt desc')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 96
    Top = 128
  end
  object dsEXE: TDataSource
    DataSet = EXE
    Left = 152
    Top = 128
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 104
    Top = 216
    qoStartTransaction = True
  end
end
