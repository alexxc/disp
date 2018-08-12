inherited fmRequestOfferItemEdit: TfmRequestOfferItemEdit
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 318
  ClientWidth = 502
  Position = poOwnerFormCenter
  ExplicitWidth = 518
  ExplicitHeight = 356
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 502
    ExplicitWidth = 502
  end
  object ADDRESS: TcxDBMaskEdit [1]
    Left = 24
    Top = 280
    DataBinding.DataField = 'ADDRESS'
    DataBinding.DataSource = fmRequestOffer.dsDETAIL
    TabOrder = 1
    OnKeyDown = QTYKeyDown
    Width = 449
  end
  object cxLabel1: TcxLabel [2]
    Left = 24
    Top = 265
    Caption = #1040#1076#1088#1077#1089
  end
  object MAT_TYPE: TcxDBLookupComboBox [3]
    Left = 24
    Top = 56
    DataBinding.DataField = 'MAT_TYPE'
    DataBinding.DataSource = fmRequestOffer.dsDETAIL
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'name'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DM.dsRequestMatType
    Properties.OnCloseUp = MAT_TYPEPropertiesCloseUp
    TabOrder = 5
    Width = 121
  end
  object labelMatType: TcxLabel [4]
    Left = 24
    Top = 41
    Caption = #1050#1086#1074#1077#1088
  end
  object cxLabel2: TcxLabel [5]
    Left = 23
    Top = 82
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1096#1090#1091#1082
  end
  object QTY: TcxDBTextEdit [6]
    Left = 23
    Top = 97
    DataBinding.DataField = 'QTY'
    DataBinding.DataSource = fmRequestOffer.dsDETAIL
    TabOrder = 6
    OnKeyDown = QTYKeyDown
    Width = 122
  end
  object groupPrice: TcxGroupBox [7]
    Left = 23
    Top = 129
    Caption = #1062#1077#1085#1072' '#1079#1072#1084#1077#1085#1099
    TabOrder = 7
    Height = 124
    Width = 273
    object PRICE: TcxDBTextEdit
      Left = 9
      Top = 33
      DataBinding.DataField = 'PRICE'
      DataBinding.DataSource = fmRequestOffer.dsDETAIL
      Properties.OnValidate = PRICEPropertiesValidate
      TabOrder = 0
      OnKeyDown = QTYKeyDown
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 9
      Top = 18
      Caption = #1047#1072' '#1096#1090#1091#1082#1091
    end
    object cxLabel5: TcxLabel
      Left = 136
      Top = 18
      Caption = #1047#1072' '#1084#178
    end
    object PRICE_M2: TcxDBTextEdit
      Left = 136
      Top = 33
      DataBinding.DataField = 'PRICE_M2'
      DataBinding.DataSource = fmRequestOffer.dsDETAIL
      Properties.OnValidate = PRICE_M2PropertiesValidate
      TabOrder = 1
      OnKeyDown = QTYKeyDown
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 9
      Top = 71
      Caption = #1057#1091#1084#1084#1072
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object AMOUNT: TcxDBTextEdit
      Left = 9
      Top = 86
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = fmRequestOffer.dsDETAIL
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 121
    end
  end
  object CHANGES: TcxDBRadioGroup [8]
    Left = 312
    Top = 41
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072#1084#1077#1085
    DataBinding.DataField = 'CHANGES'
    DataBinding.DataSource = fmRequestOffer.dsDETAIL
    Properties.ImmediatePost = True
    Properties.Items = <
      item
        Caption = '1 '#1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
        Value = '4'
      end
      item
        Caption = '2 '#1088#1072#1079#1072' '#1074' '#1085#1077#1076#1077#1083#1102
        Value = '8'
      end
      item
        Caption = '3 '#1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
        Value = '12'
      end
      item
        Caption = '4 '#1088#1072#1079#1072' '#1074' '#1085#1077#1076#1077#1083#1102
        Value = '16'
      end
      item
        Caption = '5 '#1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
        Value = '20'
      end
      item
        Caption = '6 '#1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
        Value = '24'
      end
      item
        Caption = '7 '#1088#1072#1079' '#1074' '#1085#1077#1076#1077#1083#1102
        Value = '28'
      end
      item
        Caption = '1 '#1088#1072#1079' '#1074' '#1084#1077#1089#1103#1094
        Value = '1'
      end
      item
        Caption = '2 '#1088#1072#1079#1072' '#1074' '#1084#1077#1089#1103#1094
        Value = '2'
      end>
    Properties.OnChange = MAT_TYPEPropertiesCloseUp
    TabOrder = 8
    Height = 212
    Width = 161
  end
  inherited trRead: TpFIBTransaction
    Left = 512
    Top = 248
  end
  inherited trWrite: TpFIBTransaction
    Left = 568
    Top = 248
  end
  inherited BM: TdxBarManager
    Left = 544
    Top = 80
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
end
