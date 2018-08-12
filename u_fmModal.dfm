inherited fmModal: TfmModal
  Caption = 'fmModal'
  ClientHeight = 286
  ClientWidth = 618
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  ExplicitWidth = 634
  ExplicitHeight = 324
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarDockControl1: TdxBarDockControl [0]
    Left = 0
    Top = 0
    Width = 618
    Height = 31
    Align = dalTop
    BarManager = BM
  end
  object BM: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = DM.ToolImages
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 168
    Top = 104
    PixelsPerInch = 96
    object BMBar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Main'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 669
      FloatTop = 8
      FloatClientWidth = 81
      FloatClientHeight = 44
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
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object bbClose: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      ImageIndex = 26
      PaintStyle = psCaptionGlyph
      OnClick = bbCloseClick
    end
    object bbRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
    end
    object bbSave: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' (Ctrl-Enter)'
      Visible = ivAlways
      ImageIndex = 12
      PaintStyle = psCaptionGlyph
      ShortCut = 16397
      OnClick = bbSaveClick
    end
  end
end
