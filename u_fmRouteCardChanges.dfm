inherited fmRouteCardChanges: TfmRouteCardChanges
  Left = 403
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = #1056#1072#1089#1093#1086#1078#1076#1077#1085#1080#1077' '#1076#1083#1103' '#1084#1072#1088#1096#1088#1091#1090#1085#1086#1081' '#1082#1072#1088#1090#1099
  ClientHeight = 417
  ClientWidth = 1062
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  ExplicitWidth = 1078
  ExplicitHeight = 456
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1062
    ExplicitWidth = 1062
  end
  object GroupMain: TcxGroupBox [1]
    Left = 0
    Top = 31
    Align = alLeft
    Caption = ' '#1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1077' '#1076#1072#1085#1085#1099#1077' '
    PanelStyle.Active = True
    TabOrder = 1
    Height = 386
    Width = 402
    object cxGroupBox1: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 398
      Height = 206
      Width = 396
      object cxLabel2: TcxLabel
        Left = 8
        Top = 20
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 72
      end
      object CONTRAGENT_NAME: TcxDBLabel
        Left = 8
        Top = 36
        DataBinding.DataField = 'CONTRAGENT_NAME'
        DataBinding.DataSource = dsDOC
        Style.TextStyle = [fsBold]
        Transparent = True
        Height = 21
        Width = 383
      end
      object cxLabel1: TcxLabel
        Left = 8
        Top = 53
        Caption = #1040#1076#1088#1077#1089
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 43
      end
      object ADDRESS_NAME: TcxDBLabel
        Left = 8
        Top = 67
        DataBinding.DataField = 'ADDRESS_NAME'
        DataBinding.DataSource = dsDOC
        Style.TextStyle = [fsBold]
        Transparent = True
        Height = 21
        Width = 383
      end
      object cxLabel9: TcxLabel
        Left = 8
        Top = 84
        Caption = #1050#1086#1074#1105#1088
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 43
      end
      object MAT_NAME: TcxDBLabel
        Left = 8
        Top = 99
        DataBinding.DataField = 'MAT_NAME'
        DataBinding.DataSource = dsDOC
        Style.TextStyle = [fsBold]
        Transparent = True
        Height = 21
        Width = 383
      end
      object cxLabel4: TcxLabel
        Left = 8
        Top = 117
        Caption = #1042#1086#1076#1080#1090#1077#1083#1100
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 61
      end
      object DRIVER_ID: TcxDBLookupComboBox
        Left = 8
        Top = 131
        RepositoryItem = DM.erAUTO_DRIVER
        DataBinding.DataField = 'DRIVER_ID'
        DataBinding.DataSource = dsDOC
        Enabled = False
        Properties.ListColumns = <>
        Properties.OnInitPopup = DRIVER_IDPropertiesInitPopup
        TabOrder = 7
        Width = 158
      end
      object cxLabel3: TcxLabel
        Left = 8
        Top = 152
        Caption = #1055#1083#1072#1085
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 37
      end
      object COUNT_FACT: TcxDBLabel
        Left = 8
        Top = 168
        DataBinding.DataField = 'COUNT_FACT'
        DataBinding.DataSource = dsDOC
        Properties.Alignment.Horz = taCenter
        Style.TextStyle = [fsBold]
        Transparent = True
        Height = 21
        Width = 29
        AnchorX = 23
      end
      object cxLabel5: TcxLabel
        Left = 48
        Top = 152
        Caption = #1056#1072#1079#1083#1086#1078#1080#1083#1080
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 107
      end
      object FACT_OUT: TcxDBSpinEdit
        Left = 53
        Top = 167
        DataBinding.DataField = 'FACT_OUT'
        DataBinding.DataSource = dsDOC
        Properties.Alignment.Horz = taCenter
        Properties.ImmediatePost = True
        Properties.SpinButtons.Position = sbpHorzLeftRight
        Style.LookAndFeel.NativeStyle = False
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        Width = 49
      end
      object cxLabel6: TcxLabel
        Left = 123
        Top = 152
        Caption = #1057#1085#1103#1083#1080
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 158
      end
      object FACT_IN: TcxDBSpinEdit
        Left = 118
        Top = 167
        DataBinding.DataField = 'FACT_IN'
        DataBinding.DataSource = dsDOC
        Properties.Alignment.Horz = taCenter
        Properties.ImmediatePost = True
        Properties.SpinButtons.Position = sbpHorzLeftRight
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        Width = 49
      end
      object cxLabel7: TcxLabel
        Left = 183
        Top = 117
        Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        AnchorX = 240
      end
      object FACT_STATUS: TcxDBImageComboBox
        Left = 183
        Top = 132
        DataBinding.DataField = 'FACT_STATUS'
        DataBinding.DataSource = dsDOC
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        Properties.Items = <>
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 15
        Width = 208
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 3
      Top = 209
      Align = alClient
      Caption = ' '#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080' '#1076#1080#1089#1087#1077#1090#1095#1077#1088#1072' '
      ParentFont = False
      Style.BorderColor = clNone
      Style.BorderStyle = ebsNone
      Style.Edges = []
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 208
      ExplicitWidth = 398
      ExplicitHeight = 176
      Height = 174
      Width = 396
      object FACT_DESCRIPTION: TcxDBMemo
        Left = 1
        Top = 13
        Align = alClient
        DataBinding.DataField = 'FACT_DESCRIPTION'
        DataBinding.DataSource = dsDOC
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 154
        Width = 394
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 402
    Top = 31
    Width = 660
    Height = 386
    Align = alClient
    TabOrder = 2
    object GroupOld: TcxGroupBox
      Left = 1
      Top = 240
      Align = alBottom
      Caption = 
        ' '#1042#1085#1080#1084#1072#1085#1080#1077'! '#1045#1089#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1088#1072#1089#1093#1086#1078#1076#1077#1085#1080#1103#1093'  '#1087#1086' '#1101#1090#1086#1081' '#1087#1086#1079#1080#1094#1080#1080' '#1080' '#1072#1076#1088 +
        #1077#1089#1091' '#1074' '#1076#1088#1091#1075#1080#1093' '#1084#1072#1088#1096#1088#1091#1090#1085#1099#1093' '#1082#1072#1088#1090#1072#1093
      PanelStyle.Active = True
      TabOrder = 0
      Height = 145
      Width = 658
      object cxGrid1: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 23
        Width = 652
        Height = 119
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsOLD_DOCS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1ROUTE_CARD_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'ROUTE_CARD_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 70
          end
          object cxGrid1DBTableView1ROUTE_CARD_NUM: TcxGridDBColumn
            Caption = #8470' '#1082#1072#1088#1090#1099
            DataBinding.FieldName = 'ROUTE_CARD_NUM'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 70
          end
          object cxGrid1DBTableView1STATUS: TcxGridDBColumn
            Caption = #1057#1090#1072#1090#1091#1089
            DataBinding.FieldName = 'STATUS'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 150
          end
          object cxGrid1DBTableView1COUNT_PLAN: TcxGridDBColumn
            Caption = #1055#1083#1072#1085
            DataBinding.FieldName = 'COUNT_PLAN'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxGrid1DBTableView1COUNT_FACT_OUT: TcxGridDBColumn
            Caption = #1056#1072#1079#1083
            DataBinding.FieldName = 'COUNT_FACT_OUT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxGrid1DBTableView1COUNT_FACT_IN: TcxGridDBColumn
            Caption = #1057#1085#1103#1083
            DataBinding.FieldName = 'COUNT_FACT_IN'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
            DataBinding.FieldName = 'DESCRIPTION'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Width = 150
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      PanelStyle.Active = True
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 1
      Height = 239
      Width = 658
      inline frameJournal: TframeJournal
        Left = 3
        Top = 3
        Width = 652
        Height = 233
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 652
        ExplicitHeight = 233
        inherited Grid: TcxGrid
          Width = 652
          Height = 202
          ExplicitWidth = 652
          ExplicitHeight = 202
          inherited GridDBTableView1: TcxGridDBTableView
            OptionsView.GroupByBox = False
            inherited GridDBTableView1IS_REPORT: TcxGridDBColumn
              MinWidth = 20
              Options.HorzSizing = True
            end
            inherited GridDBTableView1RECORD_SUBTYPE_NAME: TcxGridDBColumn
              Visible = False
            end
          end
        end
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 652
          ExplicitWidth = 654
        end
        inherited BM: TdxBarManager
          PixelsPerInch = 96
          inherited BarJournal: TdxBar
            ItemLinks = <
              item
                Visible = True
                ItemName = 'bbRefresh'
              end
              item
                Visible = True
                ItemName = 'bbAdd'
              end>
          end
          inherited bbRefresh: TdxBarButton
            Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1078#1091#1088#1085#1072#1083
            Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1078#1091#1088#1085#1072#1083
          end
          inherited bbAdd: TdxBarButton
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
          end
          inherited bbCooperation: TdxBarButton
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1078#1091#1088#1085#1072#1083
            ImageIndex = 2
            OnClick = frameJournalbbCooperationClick
          end
        end
        inherited Journal: TpFIBDataSet
          Top = 168
        end
        inherited dsJournal: TDataSource
          Left = 88
          Top = 168
        end
        inherited trJournal: TpFIBTransaction
          Top = 168
        end
        inherited trJournalWrite: TpFIBTransaction
          Top = 176
        end
      end
    end
  end
  inherited BM: TdxBarManager
    Left = 148
    Top = 336
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
  object DOC: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute block('
      '  ID T_PID =:ID,'
      '  FACT_STATUS T_PID = :FACT_STATUS,'
      '  FACT_IN T_INT = :FACT_IN,'
      '  FACT_OUT T_INT = :FACT_OUT,'
      '  FACT_DESCRIPTION T_DESCRIPTION = :FACT_DESCRIPTION,'
      '  DRIVER_ID T_PID=:DRIVER_ID'
      ')'
      'as'
      '  declare variable DOC_ID T_PID;'
      '--  declare variable OLD_DRIVER_ID T_PID;'
      'begin'
      
        '  select T.PID from DOC_ROUTE_CARD_T T where T.ID=:ID into :DOC_' +
        'ID;'
      
        '--  select DOC.DRIVER_ID from DOC_ROUTE_CARD DOC where DOC.ID=:D' +
        'OC_ID into :OLD_DRIVER_ID;'
      
        '--  if (coalesce(:OLD_DRIVER_ID, 0)<>coalesce(:DRIVER_ID, 0)) th' +
        'en begin'
      
        '--    update DOC_ROUTE_CARD DOC set DOC.DRIVER_ID=:DRIVER_ID whe' +
        're DOC.ID=:DOC_ID;'
      '--  end'
      ''
      '  update DOC_ROUTE_CARD_T set'
      '    FACT_STATUS=:FACT_STATUS,'
      '    FACT_IN=:FACT_IN,'
      '    FACT_OUT=:FACT_OUT,'
      '    FACT_DESCRIPTION=:FACT_DESCRIPTION,'
      '    FACT_MODIFY_BY = current_user,'
      '    FACT_MODIFY_DT=current_timestamp'
      '  where'
      '    ID=:ID;'
      'end'
      '')
    RefreshSQL.Strings = (
      'select'
      '  T.ID,'
      '  T.FACT_DESCRIPTION,'
      '  CHG.ID CHG_ID,'
      '  CHG.MANAGER_DESCRIPTION,'
      '  T.FACT_STATUS,'
      '  C.ID CONTRAGENT_ID,'
      '  A.ID ADDRESS_ID,'
      '  MAT.ID MAT_ID,'
      '  coalesce(T.FACT_IN, T.COUNT_FACT) FACT_IN,'
      '  coalesce(T.FACT_OUT, T.COUNT_FACT) FACT_OUT,'
      '  DOC.DOC_NUM, DOC.DOC_DT, REF_STORAGE.DESCRIPTION STORAGE_NAME,'
      '  REF_ROUTES.DESCRIPTION ROUTE_NAME,'
      '  T.DOC_DATE,'
      '  T.COUNT_PLAN, T.COUNT_FACT,'
      '  C.NAME CONTRAGENT_NAME,'
      '  A.NAME ADDRESS_NAME,'
      '  ADDRESS_SERVICE.DESCRIPTION SERVICE_NAME,'
      '  ADDRESS_SERVICE.QTY_MAT,'
      '  MAT.DESCRIPTION MAT_NAME,'
      '  DOC.DRIVER_ID'
      'from'
      '  DOC_ROUTE_CARD_T T'
      '  left join DOC_ROUTE_CARD DOC on DOC.ID=T.PID'
      '  left join CONTRAGENTS C on C.ID=T.CLIENT_ID'
      '  left join CONTRACT_ADDRESS A on A.ID=T.ADDRESS_ID'
      '  left join ADDRESS_SERVICE on ADDRESS_SERVICE.ID=T.SERVICE_ID'
      '  left join REF_MAT MAT on MAT.ID=ADDRESS_SERVICE.MAT_ID'
      '  left join REF_STORAGE on REF_STORAGE.ID=DOC.STORAGE_ID'
      '  left join REF_ROUTES on REF_ROUTES.ID=DOC.ROUTE_ID'
      
        '  left join DOC_ROUTE_CARD_CHANGES CHG on CHG.ROUTE_CARD_T_ID=T.' +
        'ID'
      'where'
      '  T.ID=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  T.ID,'
      '  T.FACT_DESCRIPTION,'
      '  CHG.ID CHG_ID,'
      '  CHG.MANAGER_DESCRIPTION,'
      '  T.FACT_STATUS,'
      '  C.ID CONTRAGENT_ID,'
      '  A.ID ADDRESS_ID,'
      '  MAT.ID MAT_ID,'
      '  coalesce(T.FACT_IN, T.COUNT_FACT) FACT_IN,'
      '  coalesce(T.FACT_OUT, T.COUNT_FACT) FACT_OUT,'
      '  DOC.DOC_NUM, DOC.DOC_DT, REF_STORAGE.DESCRIPTION STORAGE_NAME,'
      '  REF_ROUTES.DESCRIPTION ROUTE_NAME,'
      '  T.DOC_DATE,'
      '  T.COUNT_PLAN, T.COUNT_FACT,'
      '  C.NAME CONTRAGENT_NAME,'
      '  A.NAME ADDRESS_NAME,'
      '  ADDRESS_SERVICE.DESCRIPTION SERVICE_NAME,'
      '  ADDRESS_SERVICE.QTY_MAT,'
      '  MAT.DESCRIPTION MAT_NAME,'
      '  DOC.DRIVER_ID'
      'from'
      '  DOC_ROUTE_CARD_T T'
      '  left join DOC_ROUTE_CARD DOC on DOC.ID=T.PID'
      '  left join CONTRAGENTS C on C.ID=T.CLIENT_ID'
      '  left join CONTRACT_ADDRESS A on A.ID=T.ADDRESS_ID'
      '  left join ADDRESS_SERVICE on ADDRESS_SERVICE.ID=T.SERVICE_ID'
      '  left join REF_MAT MAT on MAT.ID=ADDRESS_SERVICE.MAT_ID'
      '  left join REF_STORAGE on REF_STORAGE.ID=DOC.STORAGE_ID'
      '  left join REF_ROUTES on REF_ROUTES.ID=DOC.ROUTE_ID'
      
        '  left join DOC_ROUTE_CARD_CHANGES CHG on CHG.ROUTE_CARD_T_ID=T.' +
        'ID'
      'where'
      '  T.ID=coalesce(:ID, 3602390)'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 212
    Top = 200
  end
  object dsDOC: TDataSource
    DataSet = DOC
    Left = 252
    Top = 200
  end
  object OLD_DOCS: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  CHG.ROUTE_CARD_DATE, CHG.ROUTE_CARD_NUM,'
      '  (select NAME from REFBOOK where ID=CHG.STATUS) STATUS,'
      '  CHG.DESCRIPTION,'
      '  C.NAME CONTRAGENT_NAME,'
      '  CHG.COUNT_PLAN, CHG.COUNT_FACT_OUT, CHG.COUNT_FACT_IN'
      'from DOC_ROUTE_CARD_CHANGES CHG, CONTRAGENTS C'
      'where'
      '  C.ID=CHG.CONTRAGENT_ID'
      '  and CHG.CONTRAGENT_ID=:CONTRAGENT_ID'
      '  and CHG.MAT_ID=:MAT_ID'
      '  and CHG.ADDRESS_ID=:ADDRESS_ID'
      '  and CHG.ROUTE_CARD_T_ID<>:ID'
      '--  and CHG.CONTRAGENT_ID=3177'
      '--  and CHG.MAT_ID=211'
      '--  and CHG.ADDRESS_ID=13783'
      '--  and CHG.ROUTE_CARD_T_ID<>3598082'
      'order by'
      '  CHG.ROUTE_CARD_DATE desc')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 344
    Top = 200
    poImportDefaultValues = False
    poEmptyStrToNull = False
  end
  object dsOLD_DOCS: TDataSource
    DataSet = OLD_DOCS
    Left = 400
    Top = 200
  end
  object qDescr: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    SQL.Strings = (
      'update DOC_ROUTE_CARD_CHANGES CHG set'
      
        '  CHG.MANAGER_DESCRIPTION = coalesce(CHG.MANAGER_DESCRIPTION, '#39#39 +
        ')||:DESCR'
      'where'
      '  CHG.ID=:ID')
    Left = 216
    Top = 256
    qoStartTransaction = True
  end
  object ACTIONS: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      '  C.STATUS, R.NAME STATUS_NAME'
      'from'
      '  DOC_ROUTE_CARD_CHANGES C, REFBOOK R'
      'where'
      '  C.ROUTE_CARD_T_ID=:ID'
      '  and R.ID=C.STATUS')
    SelectSQL.Strings = (
      'select'
      '  C.STATUS, R.NAME STATUS_NAME'
      'from'
      '  DOC_ROUTE_CARD_CHANGES C, REFBOOK R'
      'where'
      '  C.ROUTE_CARD_T_ID=coalesce(:ID, 3602390)'
      '  and R.ID=C.STATUS')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 272
    Top = 40
  end
  object dsACTIONS: TDataSource
    DataSet = ACTIONS
    Left = 312
    Top = 40
  end
end
