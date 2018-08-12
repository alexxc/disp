inherited fmTextEdit: TfmTextEdit
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'  '#1090#1077#1082#1089#1090#1072
  ClientHeight = 207
  ClientWidth = 340
  Position = poOwnerFormCenter
  ExplicitWidth = 356
  ExplicitHeight = 245
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 340
  end
  object MEMO: TcxMemo [1]
    Left = 0
    Top = 26
    Align = alClient
    Properties.ScrollBars = ssVertical
    TabOrder = 5
    ExplicitLeft = 40
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 89
    Height = 181
    Width = 340
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
          ItemName = 'bbSave'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
  end
end
