inherited fmSQLMonitor: TfmSQLMonitor
  Caption = 'SQL Monitor'
  PixelsPerInch = 96
  TextHeight = 13
  object Memo: TcxMemo [1]
    Left = 0
    Top = 26
    Align = alClient
    Properties.ScrollBars = ssBoth
    TabOrder = 5
    Height = 311
    Width = 635
  end
  inherited BM: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbEnabled'
        end
        item
          Visible = True
          ItemName = 'bbClear'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object bbEnabled: TdxBarButton
      Caption = #1042#1082#1083#1102#1095#1077#1085
      Category = 0
      Hint = #1042#1082#1083#1102#1095#1077#1085
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbEnabledClick
    end
    object bbClear: TdxBarButton
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      Category = 0
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbClearClick
    end
  end
  object Monitor: TFIBSQLMonitor
    OnSQL = MonitorSQL
    TraceFlags = [tfQPrepare, tfQExecute, tfQFetch, tfConnect, tfTransact]
    Left = 176
    Top = 64
  end
end
