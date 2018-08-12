inherited fmJournalRecord: TfmJournalRecord
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080' '#1074' '#1078#1091#1088#1085#1072#1083
  ClientHeight = 382
  ClientWidth = 879
  FormStyle = fsNormal
  Visible = False
  OnCreate = FormCreate
  ExplicitWidth = 885
  ExplicitHeight = 410
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 879
    ExplicitWidth = 879
  end
  object cxLabel2: TcxLabel [1]
    Left = 8
    Top = 31
    Caption = #1056#1072#1079#1076#1077#1083
    Properties.Alignment.Horz = taLeftJustify
  end
  object RecordType: TcxImageComboBox [2]
    Left = 8
    Top = 49
    RepositoryItem = DM.erJournalRecordType
    Properties.Items = <>
    Properties.OnChange = RecordTypePropertiesChange
    TabOrder = 3
    Width = 241
  end
  object ControlDate: TcxDateEdit [3]
    Left = 273
    Top = 49
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 5
    Width = 108
  end
  object cxLabel4: TcxLabel [4]
    Left = 273
    Top = 32
    Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1076#1072#1090#1072
    Properties.Alignment.Horz = taLeftJustify
  end
  object Memo: TcxMemo [5]
    Left = 8
    Top = 76
    Properties.OnChange = RecordTypePropertiesChange
    TabOrder = 8
    Height = 300
    Width = 596
  end
  object UsersList: TcxCheckListBox [6]
    AlignWithMargins = True
    Left = 610
    Top = 76
    Width = 260
    Height = 300
    Items = <>
    TabOrder = 2
  end
  object cxLabel1: TcxLabel [7]
    Left = 610
    Top = 50
    Caption = #1054#1087#1086#1074#1077#1097#1077#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081':'
    Properties.Alignment.Horz = taLeftJustify
  end
  object cxLabel3: TcxLabel [8]
    Left = 386
    Top = 53
    Caption = #1044#1072#1090#1072' '#1085#1072#1087#1086#1084#1080#1085#1072#1085#1080#1103
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taLeftJustify
  end
  inherited BM: TdxBarManager
    Left = 32
    Top = 328
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbSave'
        end
        item
          Visible = True
          ItemName = 'bbTemplates'
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
    object bbTemplates: TdxBarSubItem [4]
      Caption = #1064#1072#1073#1083#1086#1085
      Category = 0
      Visible = ivNever
      ImageIndex = 42
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbTemplateInvoice'
        end>
    end
    object bbTemplateInvoice: TdxBarButton [5]
      Caption = #1050#1086#1085#1090#1088#1086#1083#1100' '#1089#1095#1077#1090#1086#1074
      Category = 0
      Hint = #1050#1086#1085#1090#1088#1086#1083#1100' '#1089#1095#1077#1090#1086#1074
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
      OnClick = bbTemplateInvoiceClick
    end
  end
  object QR: TpFIBQuery
    Transaction = trRead
    Database = DM.FB
    SQL.Strings = (
      'select * from VW_CONTRAGENTS where ID=:ID')
    Left = 72
    Top = 328
    qoStartTransaction = True
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    SQL.Strings = (
      'select * from VW_CONTRAGENTS where ID=:ID')
    Left = 120
    Top = 328
    qoStartTransaction = True
  end
end
