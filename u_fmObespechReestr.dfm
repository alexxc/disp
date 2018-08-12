inherited fmObespechReestr: TfmObespechReestr
  Caption = #1054#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077
  ClientHeight = 555
  ClientWidth = 1085
  ExplicitWidth = 1101
  ExplicitHeight = 594
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1085
    ExplicitWidth = 1085
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1085
    Height = 468
    Align = alClient
    TabOrder = 1
    ExplicitTop = 37
    ExplicitHeight = 411
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.00'
          Position = spFooter
          Column = cxGrid1DBTableView1AMOUNT
        end
        item
          Format = '#,##0.00'
          Column = cxGrid1DBTableView1AMOUNT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid1DBTableView1STATUS
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1AMOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cxGrid1DBTableView1CONTRAGENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'CONTRAGENT_ID'
        Visible = False
      end
      object cxGrid1DBTableView1USER_ID: TcxGridDBColumn
        DataBinding.FieldName = 'USER_ID'
        Visible = False
      end
      object cxGrid1DBTableView1STATUS: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DM.ImageListStatuses
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <
          item
            Description = #1063#1077#1088#1085#1086#1074#1080#1082
            ImageIndex = 18
            Value = 0
          end
          item
            Description = #1047#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1086
            ImageIndex = 31
            Value = 1
          end
          item
            Description = #1042#1077#1088#1085#1091#1083#1086#1089#1100
            ImageIndex = 26
            Value = 2
          end
          item
            Description = #1040#1088#1093#1080#1074
            ImageIndex = 32
            Value = 3
          end>
        Width = 135
      end
      object cxGrid1DBTableView1ORGANIZATION_NAME: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'ORGANIZATION_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 124
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        DataBinding.FieldName = 'NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 228
      end
      object cxGrid1DBTableView1MANAGER_NAME: TcxGridDBColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'MANAGER_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 150
      end
      object cxGrid1DBTableView1AMOUNT: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 95
      end
      object cxGrid1DBTableView1LOCK_DATE: TcxGridDBColumn
        Caption = #1042#1099#1089#1090#1072#1074#1083#1077#1085#1080#1077
        DataBinding.FieldName = 'LOCK_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.SaveTime = False
        Properties.ShowTime = False
        Width = 80
      end
      object cxGrid1DBTableView1UNLOCK_DATE: TcxGridDBColumn
        Caption = #1057#1085#1103#1090#1080#1077
        DataBinding.FieldName = 'UNLOCK_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.SaveTime = False
        Properties.ShowTime = False
        Width = 80
      end
      object cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
        DataBinding.FieldName = 'DESCRIPTION'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 200
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object DESCRIPTION: TcxDBMemo [2]
    Left = 0
    Top = 504
    Align = alBottom
    DataBinding.DataField = 'DESCRIPTION'
    DataBinding.DataSource = dsDATA
    TabOrder = 2
    Height = 51
    Width = 1085
  end
  object cxSplitter1: TcxSplitter [3]
    Left = 0
    Top = 499
    Width = 1085
    Height = 5
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salBottom
    Control = DESCRIPTION
    ExplicitTop = 496
    ExplicitWidth = 5
  end
  inherited trRead: TpFIBTransaction
    Left = 200
    Top = 32
  end
  inherited trWrite: TpFIBTransaction
    Left = 256
    Top = 32
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
          ItemName = 'bbFilter'
        end
        item
          Visible = True
          ItemName = 'bbContragent'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object bbFilter: TdxBarSubItem
      Caption = #1060#1080#1083#1100#1090#1088
      Category = 0
      Visible = ivAlways
      ImageIndex = 5
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbFilter0'
        end
        item
          Visible = True
          ItemName = 'bbFilter1'
        end
        item
          Visible = True
          ItemName = 'bbFilter2'
        end
        item
          Visible = True
          ItemName = 'bbFilter3'
        end>
      OnCloseUp = bbFilterCloseUp
    end
    object bbFilter0: TdxBarButton
      Caption = #1063#1077#1088#1085#1086#1074#1080#1082
      Category = 0
      Hint = #1063#1077#1088#1085#1086#1074#1080#1082
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object bbFilter1: TdxBarButton
      Tag = 1
      Caption = #1047#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1086
      Category = 0
      Hint = #1047#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1086
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object bbFilter2: TdxBarButton
      Tag = 2
      Caption = #1042#1077#1088#1085#1091#1083#1086#1089#1100
      Category = 0
      Hint = #1042#1077#1088#1085#1091#1083#1086#1089#1100
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object bbFilter3: TdxBarButton
      Tag = 3
      Caption = #1040#1088#1093#1080#1074
      Category = 0
      Hint = #1040#1088#1093#1080#1074
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object bbContragent: TdxBarButton
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      Category = 0
      Enabled = False
      Hint = #1050#1072#1088#1090#1086#1095#1082#1072' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = bbContragentClick
    end
  end
  object DATA: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      
        '  O.ID, O.CONTRAGENT_ID, O.USER_ID, O.AMOUNT, O.STATUS, O.LOCK_D' +
        'ATE, O.UNLOCK_DATE, O.DESCRIPTION,'
      '  coalesce(C.NAME, '#39#1047#1072#1103#1074#1082#1072' '#39'||R.ID) NAME,'
      '  R.ID REQUEST_ID,'
      '  ORG.SHORTNAME ORGANIZATION_NAME,'
      '  coalesce(UR.NAME,  UC.NAME) MANAGER_NAME'
      'from OBESPECH O'
      'left join CONTRAGENTS C on C.ID=O.CONTRAGENT_ID'
      'left join REQUEST R on R.ID=O.REQUEST_ID'
      
        'left join ORGANIZATIONS ORG on ORG.ID=coalesce(C.ORGANIZATION_ID' +
        ', 1)'
      'left join users UC on UC.ID=C.MANAGER_ID'
      'left join users UR on UR.ID=R.MANAGER_ID'
      'where O.ID=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      
        '  O.ID, O.CONTRAGENT_ID, O.USER_ID, O.AMOUNT, O.STATUS, O.LOCK_D' +
        'ATE, O.UNLOCK_DATE, O.DESCRIPTION,'
      '  coalesce(C.NAME, '#39#1047#1072#1103#1074#1082#1072' '#39'||R.ID) NAME,'
      '  R.ID REQUEST_ID,'
      '  ORG.SHORTNAME ORGANIZATION_NAME,'
      '  coalesce(UR.NAME,  UC.NAME) MANAGER_NAME'
      'from OBESPECH O'
      'left join CONTRAGENTS C on C.ID=O.CONTRAGENT_ID'
      'left join REQUEST R on R.ID=O.REQUEST_ID'
      
        'left join ORGANIZATIONS ORG on ORG.ID=coalesce(C.ORGANIZATION_ID' +
        ', 1)'
      'left join users UC on UC.ID=C.MANAGER_ID'
      'left join users UR on UR.ID=R.MANAGER_ID'
      'where 1=1'
      'order by O.LOCK_DATE, O.UNLOCK_DATE'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    Left = 304
    Top = 96
  end
  object dsDATA: TDataSource
    DataSet = DATA
    OnDataChange = dsDATADataChange
    Left = 344
    Top = 104
  end
end
