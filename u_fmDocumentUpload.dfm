inherited fmDocumentUpload: TfmDocumentUpload
  AlphaBlendValue = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 593
  ClientWidth = 843
  OnCreate = FormCreate
  ExplicitWidth = 849
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 843
    ExplicitWidth = 843
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 31
    Width = 843
    Height = 100
    Align = alTop
    TabOrder = 1
    object Panel2: TPanel
      Left = 366
      Top = 1
      Width = 476
      Height = 98
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object labelFileName: TcxLabel
        AlignWithMargins = True
        Left = 6
        Top = 46
        Margins.Left = 10
        Margins.Right = 10
        Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
        Style.BorderStyle = ebsNone
        Style.TextStyle = []
      end
      object labelPATH: TcxLabel
        AlignWithMargins = True
        Left = 6
        Top = 3
        Margins.Left = 10
        Margins.Right = 10
        Caption = #1055#1091#1090#1100
        Style.BorderStyle = ebsNone
        Style.TextStyle = []
      end
      object labelFileSize: TcxLabel
        AlignWithMargins = True
        Left = 239
        Top = 46
        Margins.Left = 10
        Margins.Right = 10
        Caption = #1056#1072#1079#1084#1077#1088
        Style.BorderStyle = ebsNone
        Style.TextStyle = []
      end
      object cxLabel3: TcxLabel
        AlignWithMargins = True
        Left = 318
        Top = 46
        Margins.Left = 10
        Margins.Right = 10
        Caption = #1044#1072#1090#1072
        Style.BorderStyle = ebsNone
        Style.TextStyle = []
      end
      object FileDate: TcxLabel
        AlignWithMargins = True
        Left = 318
        Top = 65
        Margins.Left = 10
        Margins.Right = 10
        Caption = #1044#1072#1090#1072' '#1092#1072#1081#1083#1072
        Style.BorderStyle = ebsNone
        Style.TextStyle = [fsBold]
      end
      object FileSize: TcxLabel
        AlignWithMargins = True
        Left = 239
        Top = 65
        Margins.Left = 10
        Margins.Right = 10
        Caption = #1056#1072#1079#1084#1077#1088
        Style.BorderStyle = ebsNone
        Style.TextStyle = [fsBold]
      end
      object FileName: TcxLabel
        AlignWithMargins = True
        Left = 6
        Top = 65
        Margins.Left = 10
        Margins.Right = 10
        AutoSize = False
        Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
        Style.BorderStyle = ebsNone
        Style.TextStyle = [fsBold]
        Height = 17
        Width = 229
      end
      object FilePath: TcxLabel
        AlignWithMargins = True
        Left = 6
        Top = 22
        Margins.Left = 10
        Margins.Right = 10
        AutoSize = False
        Caption = #1055#1091#1090#1100
        Style.BorderStyle = ebsNone
        Style.TextStyle = [fsBold]
        Height = 17
        Width = 451
      end
    end
    object Panel: TPanel
      Left = 1
      Top = 1
      Width = 365
      Height = 98
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object cxLabel1: TcxLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Margins.Left = 10
        Margins.Right = 10
        Caption = #1056#1072#1079#1076#1077#1083
        Style.TextStyle = [fsBold]
      end
      object DocumentSection: TcxImageComboBox
        AlignWithMargins = True
        Left = 10
        Top = 21
        Margins.Left = 10
        Margins.Right = 10
        Properties.Items = <>
        Properties.OnChange = DocumentSectionPropertiesChange
        TabOrder = 1
        Width = 335
      end
      object cxLabel2: TcxLabel
        AlignWithMargins = True
        Left = 10
        Top = 46
        Margins.Left = 10
        Margins.Right = 10
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
        Style.TextStyle = [fsBold]
      end
      object Description: TcxTextEdit
        AlignWithMargins = True
        Left = 10
        Top = 64
        Margins.Left = 10
        Margins.Right = 10
        Properties.MaxLength = 200
        TabOrder = 3
        Width = 335
      end
    end
  end
  object cxGroupBox1: TcxGroupBox [2]
    Left = 490
    Top = 131
    Align = alRight
    Caption = #1054#1087#1086#1074#1077#1089#1090#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    TabOrder = 2
    ExplicitLeft = -39
    ExplicitHeight = 80
    Height = 462
    Width = 353
    object UsersList: TcxCheckListBox
      AlignWithMargins = True
      Left = 6
      Top = 18
      Width = 341
      Height = 432
      Align = alClient
      Items = <>
      TabOrder = 0
      ExplicitLeft = 93
      ExplicitTop = 15
      ExplicitWidth = 260
      ExplicitHeight = 300
    end
  end
  object cxGroupBox2: TcxGroupBox [3]
    Left = 0
    Top = 131
    Align = alClient
    Caption = #1042#1099#1073#1086#1088' '#1092#1072#1081#1083#1072
    TabOrder = 3
    ExplicitLeft = 72
    ExplicitTop = 152
    Height = 462
    Width = 490
    object Tree: TcxShellTreeView
      AlignWithMargins = True
      Left = 6
      Top = 18
      Width = 478
      Height = 432
      Align = alClient
      DragDropSettings.AllowDragObjects = False
      Indent = 19
      Options.ContextMenus = False
      ParentShowHint = False
      RightClickSelect = True
      ShowHint = False
      ShowInfoTips = True
      TabOrder = 0
      OnChange = TreeChange
      ExplicitLeft = -61
      ExplicitTop = -94
      ExplicitWidth = 430
      ExplicitHeight = 345
    end
  end
  inherited BM: TdxBarManager
    Left = 472
    Top = 48
    PixelsPerInch = 96
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
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 520
    Top = 48
    qoStartTransaction = True
  end
  object QR: TpFIBQuery
    Transaction = trRead
    Database = DM.FB
    Left = 568
    Top = 48
    qoStartTransaction = True
  end
end
