inherited fmContragents: TfmContragents
  Left = 411
  Top = 251
  Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
  ClientHeight = 742
  ClientWidth = 1043
  Color = clWindow
  Ctl3D = False
  ExplicitWidth = 1059
  ExplicitHeight = 780
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1043
    ExplicitWidth = 1043
  end
  object DetailSplitter: TcxSplitter [1]
    Left = 0
    Top = 368
    Width = 1043
    Height = 5
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salBottom
    Control = Pages
    OnAfterOpen = DetailSplitterAfterOpen
    OnAfterClose = DetailSplitterAfterClose
  end
  object PanelTOP: TPanel [2]
    Left = 0
    Top = 31
    Width = 1043
    Height = 337
    Align = alClient
    TabOrder = 2
    object cxDBTreeList1: TcxDBTreeList
      Left = 1
      Top = 1
      Width = 72
      Height = 335
      Align = alLeft
      Bands = <
        item
        end>
      DataController.DataSource = dsTree
      DataController.ImageIndexField = 'CHILD_EXISTS'
      DataController.ParentField = 'PID'
      DataController.KeyField = 'ID'
      Navigator.Buttons.CustomButtons = <>
      OptionsData.Editing = False
      OptionsData.Deleting = False
      OptionsSelection.HideFocusRect = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.TreeLineStyle = tllsSolid
      RootValue = -1
      TabOrder = 0
      object cxDBTreeList1NAME: TcxDBTreeListColumn
        Caption.Text = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'NAME'
        Width = 100
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object TreeSplitter: TcxSplitter
      Left = 73
      Top = 1
      Width = 5
      Height = 335
      HotZoneClassName = 'TcxMediaPlayer9Style'
      Control = cxDBTreeList1
      OnAfterOpen = TreeSplitterAfterOpen
      OnAfterClose = TreeSplitterAfterClose
    end
    object gridContragents: TcxGrid
      Left = 78
      Top = 1
      Width = 964
      Height = 335
      Align = alClient
      TabOrder = 2
      object gridContragentsTable: TcxGridDBTableView
        OnDblClick = gridContragentsTableDblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsContragents
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,##0'
            Kind = skCount
            FieldName = 'ID'
            Column = gridContragentsTableNAME
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'CURRENT_DOLG'
            Column = gridContragentsTableCURRENT_DOLG
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'MAT_QTY_DOC'
            Column = gridContragentsTableMAT_QTY_DOC
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'MAT_QTY'
            Column = gridContragentsTableMAT_QTY
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'MAT_QTY_DELTA'
            Column = gridContragentsTableMAT_QTY_DELTA
          end
          item
            Format = '#,##0.000'
            Kind = skSum
            FieldName = 'MAT_SQUARE'
            Column = gridContragentsTableMAT_SQUARE
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'OBESPECH_ACTIVE'
            Column = gridContragentsTableOBESPECH_ACTIVE
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'OBESPECH_ACTIVE_OUTDATED'
            Column = gridContragentsTableOBESPECH_ACTIVE_OUTDATED
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = gridContragentsTableINVOICE_AMOUNT_REMAIN
          end
          item
            Kind = skSum
            Column = gridContragentsTableINVOICE_CONTROL_COUNT
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = gridContragentsTableINVOICE_AMOUNT_REMAIN_CONTROL
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0'
            Kind = skCount
            FieldName = 'ID'
            Column = gridContragentsTableNAME
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'INVOICE_AMOUNT'
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'PAYMENTS_AMOUNT'
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'CURRENT_DOLG'
            Column = gridContragentsTableCURRENT_DOLG
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            FieldName = 'MAT_QTY'
            Column = gridContragentsTableMAT_QTY
          end
          item
            Format = '#,##0.000'
            Kind = skSum
            FieldName = 'MAT_SQUARE'
            Column = gridContragentsTableMAT_SQUARE
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'OBESPECH_ACTIVE'
            Column = gridContragentsTableOBESPECH_ACTIVE
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'OBESPECH_ACTIVE_OUTDATED'
            Column = gridContragentsTableOBESPECH_ACTIVE_OUTDATED
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            FieldName = 'MAT_QTY_DOC'
            Column = gridContragentsTableMAT_QTY_DOC
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            FieldName = 'MAT_QTY_DELTA'
            Column = gridContragentsTableMAT_QTY_DELTA
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            FieldName = 'IS_ACT_2016_EXISTS'
            Column = gridContragentsTableIS_ACT_2016_EXISTS
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = gridContragentsTableINVOICE_AMOUNT_REMAIN
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = gridContragentsTableINVOICE_CONTROL_COUNT
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = gridContragentsTableINCOICE_ACTIVE_COUNT
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = gridContragentsTableINVOICE_AMOUNT_REMAIN_CONTROL
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Editing = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GridLines = glHorizontal
        OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
        OptionsView.HeaderAutoHeight = True
        Styles.Content = DM.cxStyleNormal
        Styles.OnGetContentStyle = gridContragentsTableStylesGetContentStyle
        object gridContragentsTableID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Options.Editing = False
        end
        object gridContragentsTableIS_FOLDER: TcxGridDBColumn
          DataBinding.FieldName = 'IS_FOLDER'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DM.ToolImages
          Properties.Items = <
            item
              Value = False
            end
            item
              ImageIndex = 16
              Value = True
            end>
          Properties.ReadOnly = True
          MinWidth = 24
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Sorting = False
          VisibleForCustomization = False
          Width = 24
          IsCaptionAssigned = True
        end
        object gridContragentsTableNAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          SortIndex = 0
          SortOrder = soAscending
          Width = 325
        end
        object gridContragentsTableORGANIZATION_NAME: TcxGridDBColumn
          Caption = #1044#1086#1087
          DataBinding.FieldName = 'ORGANIZATION_NAME'
          Width = 260
        end
        object gridContragentsTableCODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 60
        end
        object gridContragentsTableMANAGER_NAME: TcxGridDBColumn
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          DataBinding.FieldName = 'MANAGER_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 114
        end
        object gridContragentsTableCLIENT_TYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1082#1083#1080#1077#1085#1090#1072
          DataBinding.FieldName = 'CLIENT_TYPE'
          RepositoryItem = DM.erClientType
          HeaderAlignmentHorz = taCenter
          Width = 136
        end
        object gridContragentsTableSERVICE_STATE: TcxGridDBColumn
          Caption = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'SERVICE_STATE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Images = DM.ImageListStatuses
          Properties.Items = <
            item
              Description = #1053#1077#1090
              ImageIndex = 16
              Value = 0
            end
            item
              Description = #1054#1078#1080#1076#1072#1085#1080#1077
              ImageIndex = 17
              Value = 1
            end
            item
              Description = #1044#1072
              ImageIndex = 19
              Value = 2
            end
            item
              Description = #1055#1077#1088#1077#1080#1084'.'
              Value = 3
            end>
          RepositoryItem = DM.erServiceType
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Sorting = False
          Width = 116
        end
        object gridContragentsTableGROUP_NAME: TcxGridDBColumn
          Caption = #1043#1088#1091#1087#1087#1072
          DataBinding.FieldName = 'GROUP_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 156
        end
        object gridContragentsTableDEBTOR_TYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1076#1086#1083#1078#1085#1080#1082#1072
          DataBinding.FieldName = 'DEBTOR_TYPE'
          RepositoryItem = DM.erDebtorType
          HeaderAlignmentHorz = taCenter
          Width = 135
        end
        object gridContragentsTableLAST_INVOICE_DT: TcxGridDBColumn
          Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1089#1095#1105#1090
          DataBinding.FieldName = 'LAST_INVOICE_DT'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object gridContragentsTableLAST_PAYMENT_DT: TcxGridDBColumn
          Caption = #1054#1087#1083#1072#1090#1072
          DataBinding.FieldName = 'LAST_PAYMENT_DT'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
          Width = 92
        end
        object gridContragentsTableINCOICE_ACTIVE_COUNT: TcxGridDBColumn
          Caption = #1057#1095#1077#1090#1086#1074' > 2 '#1084#1077#1089'.'
          DataBinding.FieldName = 'INVOICE_ACTIVE_COUNT'
          HeaderAlignmentHorz = taCenter
          Width = 83
        end
        object gridContragentsTableINVOICE_CONTROL_COUNT: TcxGridDBColumn
          Caption = #1057#1095#1077#1090#1086#1074' '#1085#1072' '#1082#1086#1085#1090#1088#1086#1083#1077
          DataBinding.FieldName = 'INVOICE_CONTROL_COUNT'
          PropertiesClassName = 'TcxTextEditProperties'
        end
        object gridContragentsTableCURRENT_DOLG: TcxGridDBColumn
          Caption = #1053#1077#1086#1087#1083#1072#1095#1077#1085#1086
          DataBinding.FieldName = 'CURRENT_DOLG'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Styles.Content = DM.cxStyleBlue
          Styles.OnGetContentStyle = cxGrid1DBTableView1CURRENT_DOLGStylesGetContentStyle
          Width = 96
        end
        object gridContragentsTableINVOICE_AMOUNT_REMAIN: TcxGridDBColumn
          Caption = #1044#1086#1083#1075' '#1087#1086' '#1089#1095#1077#1090#1072#1084
          DataBinding.FieldName = 'INVOICE_AMOUNT_REMAIN'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          HeaderAlignmentHorz = taCenter
          Styles.Content = DM.cxStyleRed
          Width = 90
        end
        object gridContragentsTableINVOICE_AMOUNT_REMAIN_CONTROL: TcxGridDBColumn
          Caption = #1044#1086#1083#1075' '#1087#1086' '#1089#1095#1077#1090#1072#1084' '#1085#1072' '#1082#1086#1085#1090#1088#1086#1083#1077
          DataBinding.FieldName = 'INVOICE_AMOUNT_REMAIN_CONTROL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          Width = 90
        end
        object gridContragentsTableINN: TcxGridDBColumn
          Caption = #1048#1053#1053' / '#1050#1055#1055
          DataBinding.FieldName = 'INN'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 154
        end
        object gridContragentsTableDESCRIPTION: TcxGridDBColumn
          Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088
          DataBinding.FieldName = 'DESCRIPTION'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          MinWidth = 80
          Options.Editing = False
          Width = 150
        end
        object gridContragentsTableDESCRIPTION_MODIFY_BY: TcxGridDBColumn
          Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088' - '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
          DataBinding.FieldName = 'DESCRIPTION_USER_NAME'
          Width = 93
        end
        object gridContragentsTableDESCRIPTION_MODIFY_DT: TcxGridDBColumn
          Caption = #1052#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088' - '#1076#1072#1090#1072
          DataBinding.FieldName = 'DESCRIPTION_DATE'
          Width = 80
        end
        object gridContragentsTablePARENT2: TcxGridDBColumn
          Caption = #1043#1088#1091#1087#1087#1072' 1'
          DataBinding.FieldName = 'PARENT1'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 193
        end
        object gridContragentsTablePARENT1: TcxGridDBColumn
          Caption = #1043#1088#1091#1087#1087#1072' 2'
          DataBinding.FieldName = 'PARENT2'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 258
        end
        object gridContragentsTableIN_CONTROL: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1086#1083#1100
          DataBinding.FieldName = 'IN_CONTROL'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DM.ImageListStatuses
          Properties.Items = <
            item
              Description = #1044#1072
              ImageIndex = 9
              Value = 1
            end
            item
              Value = 0
            end>
          Properties.ShowDescriptions = False
          Width = 60
        end
        object gridContragentsTableIS_CLEANING: TcxGridDBColumn
          Caption = #1050#1083#1080#1085#1080#1085#1075
          DataBinding.FieldName = 'IS_CLEANING'
          RepositoryItem = DM.erCheckGreen
          Width = 55
        end
        object gridContragentsTableIS_GK: TcxGridDBColumn
          Caption = #1043#1050
          DataBinding.FieldName = 'IS_GK'
          RepositoryItem = DM.erCheckGreen
          Width = 31
        end
        object gridContragentsTableIS_VIP: TcxGridDBColumn
          Caption = 'VIP'
          DataBinding.FieldName = 'IS_VIP'
          RepositoryItem = DM.erCheckGreen
          Width = 46
        end
        object gridContragentsTableIS_ACTIVE_MAT: TcxGridDBColumn
          Caption = #1045#1089#1090#1100' '#1082#1086#1074#1088#1099
          DataBinding.FieldName = 'IS_ACTIVE_MAT'
          RepositoryItem = DM.erCheckGreen
        end
        object gridContragentsTableMAT_SQUARE: TcxGridDBColumn
          Caption = #1055#1083#1086#1097#1072#1076#1100' '#1082#1086#1074#1088#1086#1074
          DataBinding.FieldName = 'MAT_SQUARE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object gridContragentsTableMAT_QTY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' ('#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077')'
          DataBinding.FieldName = 'MAT_QTY'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0;-,0'
          Width = 93
        end
        object gridContragentsTableMAT_QTY_DOC: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' ('#1072#1082#1090#1099')'
          DataBinding.FieldName = 'MAT_QTY_DOC'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0'
          Properties.EditFormat = '0'
        end
        object gridContragentsTableMAT_QTY_DELTA: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' ('#1088#1072#1079#1085#1080#1094#1072')'
          DataBinding.FieldName = 'MAT_QTY_DELTA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0'
          Properties.EditFormat = '0'
        end
        object gridContragentsTableOBESPECH_ACTIVE: TcxGridDBColumn
          Caption = #1054#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077
          DataBinding.FieldName = 'OBESPECH_ACTIVE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 88
        end
        object gridContragentsTableOBESPECH_ACTIVE_OUTDATED: TcxGridDBColumn
          Caption = #1054#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077' '#1087#1088#1086#1089#1088#1086#1095#1077#1085#1086
          DataBinding.FieldName = 'OBESPECH_ACTIVE_OUTDATED'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 89
        end
        object gridContragentsTableIS_DOG_EXISTS: TcxGridDBColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088
          DataBinding.FieldName = 'IS_DOG_EXISTS'
          RepositoryItem = DM.erCheckGreen
        end
        object gridContragentsTableDOG_MAX_DATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072#1088#1072
          DataBinding.FieldName = 'DOG_MAX_DATE'
          MinWidth = 80
          Width = 80
        end
        object gridContragentsTableLAST_DELIVERTY_DATE: TcxGridDBColumn
          Caption = #1057#1095#1105#1090' '#1076#1086#1089#1090#1072#1074#1083#1077#1085
          DataBinding.FieldName = 'LAST_DELIVERTY_DATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 80
        end
        object gridContragentsTableLAST_INVOICE_ACCEPTED: TcxGridDBColumn
          Caption = #1057#1095#1105#1090#1072' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1105#1085
          DataBinding.FieldName = 'LAST_INVOICE_ACCEPTED'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 80
        end
        object gridContragentsTableIS_ACT_2016_EXISTS: TcxGridDBColumn
          Caption = #1045#1089#1090#1100' '#1072#1082#1090' 2016'
          DataBinding.FieldName = 'IS_ACT_2016_EXISTS'
          RepositoryItem = DM.erCheckGreen
        end
        object gridContragentsTableCREATED_DT: TcxGridDBColumn
          Caption = #1044#1086#1073#1072#1074#1083#1077#1085
          DataBinding.FieldName = 'CREATED_DATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Width = 82
        end
        object gridContragentsTableCOOPERATION_STATUS: TcxGridDBColumn
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1095#1077#1089#1090#1074#1086
          DataBinding.FieldName = 'COOPERATION_STATUS'
          RepositoryItem = DM.erCooperationStatus
          Width = 117
        end
        object gridContragentsTableIS_COMPETITOR: TcxGridDBColumn
          Caption = #1050#1086#1085#1082#1091#1088#1077#1085#1090
          DataBinding.FieldName = 'IS_COMPETITOR'
          RepositoryItem = DM.erCheckGreen
        end
        object gridContragentsTableCOMPETITOR_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'COMPETITOR_NAME'
          Visible = False
          Width = 200
        end
        object gridContragentsTableREQUEST_SOURCE: TcxGridDBColumn
          Caption = #1048#1089#1090#1086#1095#1085#1080#1082' '#1079#1072#1103#1074#1082#1080
          DataBinding.FieldName = 'REQUEST_SOURCE'
          Width = 106
        end
        object gridContragentsTablePAYMENT_DALAY_DAYS: TcxGridDBColumn
          Caption = #1054#1090#1089#1088#1086#1095#1082#1072
          DataBinding.FieldName = 'PAYMENT_DALAY_DAYS'
        end
        object gridContragentsTableLAST_ACT_IN_DT: TcxGridDBColumn
          Caption = #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1089#1085#1103#1090#1080#1077
          DataBinding.FieldName = 'LAST_ACT_IN_DT'
          PropertiesClassName = 'TcxDateEditProperties'
        end
        object gridContragentsTableMANAGER_DESCRIPTION: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
          DataBinding.FieldName = 'MANAGER_DESCRIPTION'
          PropertiesClassName = 'TcxMemoProperties'
          Width = 73
        end
        object gridContragentsTableREGION_CODE: TcxGridDBColumn
          Caption = #1056#1077#1075#1080#1086#1085
          DataBinding.FieldName = 'REGION_CODE'
          RepositoryItem = DM.erRegion
          Options.SortByDisplayText = isbtOn
        end
        object gridContragentsTableIS_DOC_TO_EMAIL: TcxGridDBColumn
          Caption = #1044#1086#1082#1080' '#1085#1072' Email'
          DataBinding.FieldName = 'IS_DOC_TO_EMAIL'
          RepositoryItem = DM.erCheckGreen
        end
        object gridContragentsTablePAYMENT_TYPE: TcxGridDBColumn
          Caption = #1054#1087#1083#1072#1090#1072
          DataBinding.FieldName = 'PAYMENT_TYPE'
          RepositoryItem = DM.erPaymentType
        end
        object gridContragentsTableLAW_IS_RESHENIE: TcxGridDBColumn
          Caption = #1057#1091#1076
          DataBinding.FieldName = 'LAW_IS_RESHENIE'
          RepositoryItem = DM.erCheckGreen
          Width = 46
        end
        object gridContragentsTableINVOICE_CATEGORY: TcxGridDBColumn
          Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
          DataBinding.FieldName = 'INVOICE_CATEGORY'
          RepositoryItem = DM.erInvoiceCategory
        end
      end
      object gridContragentsLevel1: TcxGridLevel
        GridView = gridContragentsTable
      end
    end
  end
  object Pages: TcxPageControl [3]
    Left = 0
    Top = 373
    Width = 1043
    Height = 369
    Align = alBottom
    TabOrder = 3
    Properties.ActivePage = tabBalance
    Properties.CustomButtons.Buttons = <>
    OnChange = PagesChange
    ClientRectBottom = 363
    ClientRectLeft = 2
    ClientRectRight = 1037
    ClientRectTop = 27
    object tabBalance: TcxTabSheet
      Caption = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1077#1090#1099
      ImageIndex = 0
      object dockBalance: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1035
        Height = 31
        Align = dalTop
        BarManager = BM
      end
      object GridDocuments: TcxGrid
        Left = 0
        Top = 31
        Width = 1035
        Height = 305
        Align = alClient
        TabOrder = 1
        object GridDocumentsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsBalanceDocuments
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = GridDocumentsDBTableView1AMOUNT_IN
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = GridDocumentsDBTableView1AMOUNT_OUT
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = GridDocumentsDBTableView1AMOUNT_DOLG
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'DOC_DATE'
              Column = GridDocumentsDBTableView1DOC_DATE
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'AMOUNT_IN'
              Column = GridDocumentsDBTableView1AMOUNT_IN
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'AMOUNT_OUT'
              Column = GridDocumentsDBTableView1AMOUNT_OUT
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'AMOUNT_DOLG'
              Column = GridDocumentsDBTableView1AMOUNT_DOLG
            end
            item
              Kind = skSum
              FieldName = 'IN_CONTROL'
              Column = GridDocumentsDBTableView1IN_CONTROL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
          object GridDocumentsDBTableView1STATUS: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.DropDownRows = 3
            Properties.Images = DM.ImageListStatuses
            Properties.Items = <
              item
                Description = #1053#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
                ImageIndex = 20
                Value = 0
              end
              item
                Description = #1055#1088#1086#1074#1077#1076#1077#1085
                ImageIndex = 7
                Value = 2
              end
              item
                Description = #1053#1077' '#1087#1088#1086#1074#1077#1076#1077#1085
                Value = 1
              end>
            Properties.ShowDescriptions = False
            RepositoryItem = DM.erDocStatus
            Width = 20
            IsCaptionAssigned = True
          end
          object GridDocumentsDBTableView1DOC_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'DOC_DATE'
            Options.Editing = False
            Width = 73
          end
          object GridDocumentsDBTableView1DELIVERY_DATE: TcxGridDBColumn
            Caption = #1044#1086#1089#1090#1072#1074#1083#1077#1085
            DataBinding.FieldName = 'DELIVERY_DATE'
            Width = 72
          end
          object GridDocumentsDBTableView1DOC_NUM: TcxGridDBColumn
            Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            DataBinding.FieldName = 'DOC_NUM'
            Options.Editing = False
            Width = 92
          end
          object GridDocumentsDBTableView1DOC_TYPE: TcxGridDBColumn
            Caption = #1058#1080#1087
            DataBinding.FieldName = 'DOC_TYPE_NAME'
            Options.Editing = False
            Width = 104
          end
          object GridDocumentsDBTableView1AMOUNT_IN: TcxGridDBColumn
            Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
            DataBinding.FieldName = 'AMOUNT_IN'
            Options.Editing = False
            Width = 105
          end
          object GridDocumentsDBTableView1AMOUNT_OUT: TcxGridDBColumn
            Caption = #1054#1087#1083#1072#1095#1077#1085#1086
            DataBinding.FieldName = 'AMOUNT_OUT'
            Options.Editing = False
            Width = 103
          end
          object GridDocumentsDBTableView1AMOUNT_DOLG: TcxGridDBColumn
            Caption = #1044#1086#1083#1075
            DataBinding.FieldName = 'AMOUNT_DOLG'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Styles.OnGetContentStyle = GridDocumentsDBTableView1AMOUNT_DOLGStylesGetContentStyle
            Width = 99
          end
          object GridDocumentsDBTableView1DESCRIPTION: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 136
            IsCaptionAssigned = True
          end
          object GridDocumentsDBTableView1IN_CONTROL: TcxGridDBColumn
            Caption = #1050#1086#1085#1090#1088#1086#1083#1100
            DataBinding.FieldName = 'IN_CONTROL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 74
          end
          object GridDocumentsDBTableView1DOC_DESCRIPTION: TcxGridDBColumn
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
            DataBinding.FieldName = 'DOC_DESCRIPTION'
            Width = 231
          end
          object GridDocumentsDBTableView1PERIOD_DATE: TcxGridDBColumn
            Caption = #1055#1077#1088#1080#1086#1076
            DataBinding.FieldName = 'PERIOD_DATE'
            OnGetDataText = GridDocumentsDBTableView1PERIOD_DATEGetDataText
            Width = 107
          end
        end
        object GridDocumentsLevel1: TcxGridLevel
          GridView = GridDocumentsDBTableView1
        end
      end
    end
    object tabJournal: TcxTabSheet
      Caption = #1046#1091#1088#1085#1072#1083
      ImageIndex = 1
      inline frameJournal: TframeJournal
        Left = 0
        Top = 0
        Width = 1035
        Height = 336
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1035
        ExplicitHeight = 336
        inherited Grid: TcxGrid
          Width = 1035
          Height = 305
          ExplicitWidth = 1035
          ExplicitHeight = 305
        end
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 1035
          ExplicitWidth = 1035
        end
        inherited BM: TdxBarManager
          PixelsPerInch = 96
        end
      end
    end
    object tabDocuments: TcxTabSheet
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      ImageIndex = 2
      object dockDocuments: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1035
        Height = 31
        Align = dalTop
        BarManager = BM
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 31
        Width = 1035
        Height = 305
        Align = alClient
        TabOrder = 1
        object cxGrid2DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid2DBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDocuments
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLines = glHorizontal
          object cxGrid2DBTableView1DOCUMENT_TYPE: TcxGridDBColumn
            Caption = #1056#1072#1079#1076#1077#1083
            DataBinding.FieldName = 'DOCUMENT_TYPE'
            RepositoryItem = DM.erDocumentSection
            Width = 180
          end
          object cxGrid2DBTableView1DESCRIPTION: TcxGridDBColumn
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
            DataBinding.FieldName = 'DESCRIPTION'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 445
          end
          object cxGrid2DBTableView1FILESIZE: TcxGridDBColumn
            Caption = #1056#1072#1079#1084#1077#1088', '#1050#1041
            DataBinding.FieldName = 'FILESIZE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.DisplayFormat = ',0.0;-,0.0'
            MinWidth = 80
            Width = 80
          end
          object cxGrid2DBTableView1DATA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA'
            Visible = False
          end
          object cxGrid2DBTableView1CREATED_BY_USER_ID: TcxGridDBColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            DataBinding.FieldName = 'CREATED_BY_USER_ID'
            RepositoryItem = DM.erUsers
            Width = 145
          end
          object cxGrid2DBTableView1CREATED_DT: TcxGridDBColumn
            Caption = #1044#1086#1073#1072#1074#1083#1077#1085
            DataBinding.FieldName = 'CREATED_DT'
            PropertiesClassName = 'TcxDateEditProperties'
            MinWidth = 100
            Width = 100
          end
          object cxGrid2DBTableView1FILENAME: TcxGridDBColumn
            Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
            DataBinding.FieldName = 'FILENAME'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 446
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object tabDocDog: TcxTabSheet
      Caption = #1044#1086#1075#1086#1074#1086#1088#1099
      ImageIndex = 4
      object Grid: TcxGrid
        Left = 0
        Top = 31
        Width = 1035
        Height = 305
        Align = alClient
        TabOrder = 0
        object gridDocDog: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDocDog
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'ID'
              Column = gridDocDogNAME
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object gridDocDogNAME: TcxGridDBColumn
            Caption = #1050#1083#1080#1077#1085#1090
            DataBinding.FieldName = 'NAME'
            Visible = False
            Width = 200
          end
          object gridDocDogNOMER_DOG: TcxGridDBColumn
            Caption = #1044#1086#1075#1086#1074#1086#1088' '#8470
            DataBinding.FieldName = 'NOMER_DOG'
            Width = 105
          end
          object gridDocDogDATE_START: TcxGridDBColumn
            Caption = #1053#1072#1095#1072#1083#1086
            DataBinding.FieldName = 'DATE_START'
            MinWidth = 80
            Width = 80
          end
          object gridDocDogDATE_END: TcxGridDBColumn
            Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
            DataBinding.FieldName = 'DATE_END'
            MinWidth = 80
            Width = 80
          end
          object gridDocDogSUMMER_DATE: TcxGridDBColumn
            Caption = #1051#1077#1090#1086
            DataBinding.FieldName = 'SUMMER_DATE'
            MinWidth = 80
            Width = 80
          end
          object gridDocDogWINTER_DATE: TcxGridDBColumn
            Caption = #1047#1080#1084#1072
            DataBinding.FieldName = 'WINTER_DATE'
            MinWidth = 80
            Width = 80
          end
          object gridDocDogDOG_TYPE: TcxGridDBColumn
            Caption = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
            DataBinding.FieldName = 'DOG_TYPE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #1054#1073#1099#1095#1085#1099#1081
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #1055#1083#1086#1097#1072#1076#1082#1072
                Value = 1
              end
              item
                Description = #1043#1086#1089#1082#1086#1085#1090#1088#1072#1082#1090
                Value = 2
              end
              item
                Description = #1060#1086#1088#1084#1072' '#1082#1083#1080#1077#1085#1090#1072
                Value = 3
              end>
            RepositoryItem = DM.cbDOG_TYPE
            Width = 142
          end
          object gridDocDogDESCRIPTION: TcxGridDBColumn
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 200
          end
          object gridDocDogEXT: TcxGridDBColumn
            Caption = #1058#1080#1087' '#1092#1072#1081#1083#1072
            DataBinding.FieldName = 'EXT'
            Width = 90
          end
          object gridDocDogCREATED_BY_USER_ID: TcxGridDBColumn
            Caption = #1050#1090#1086' '#1076#1086#1073#1072#1074#1080#1083
            DataBinding.FieldName = 'CREATED_BY_USER_ID'
            RepositoryItem = DM.erUsers
            Width = 132
          end
          object gridDocDogDOC_DT: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'DOC_DT'
            MinWidth = 100
            Width = 100
          end
        end
        object GridLevel1: TcxGridLevel
          GridView = gridDocDog
        end
      end
      object dockDocDog: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1035
        Height = 31
        Align = dalTop
        BarManager = BM
      end
    end
    object tabMAT: TcxTabSheet
      Caption = #1040#1076#1088#1077#1089#1072' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
      ImageIndex = 3
      object cxGrid3: TcxGrid
        Left = 0
        Top = 31
        Width = 1035
        Height = 305
        Align = alClient
        TabOrder = 0
        object cxGrid3DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsContractAddress
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'ID'
              Column = cxGrid3DBTableView1IS_ACTIVE
            end
            item
              Kind = skSum
              FieldName = 'QTY_MAT'
              Column = cxGrid3DBTableView1QTY_MAT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.HeaderAutoHeight = True
          object cxGrid3DBTableView1IS_ACTIVE: TcxGridDBColumn
            DataBinding.FieldName = 'IS_ACTIVE'
            RepositoryItem = DM.erCheckGreen
            Width = 34
            IsCaptionAssigned = True
          end
          object cxGrid3DBTableView1ADDRESS: TcxGridDBColumn
            Caption = #1040#1076#1088#1077#1089
            DataBinding.FieldName = 'ADDRESS'
            Width = 256
          end
          object cxGrid3DBTableView1MAT_NAME: TcxGridDBColumn
            Caption = #1050#1086#1074#1088#1080#1082
            DataBinding.FieldName = 'MAT_NAME'
            Width = 200
          end
          object cxGrid3DBTableView1DESCRIPTION: TcxGridDBColumn
            Caption = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'SERVICE_NAME'
            Width = 248
          end
          object cxGrid3DBTableView1PHONE: TcxGridDBColumn
            Caption = #1058#1077#1083#1077#1092#1086#1085
            DataBinding.FieldName = 'PHONE'
            Width = 191
          end
          object cxGrid3DBTableView1CONTACT_NAME: TcxGridDBColumn
            Caption = #1050#1086#1085#1090#1072#1082#1090
            DataBinding.FieldName = 'CONTACT_NAME'
            Width = 200
          end
          object cxGrid3DBTableView1QTY_MAT: TcxGridDBColumn
            Caption = #1050'-'#1074#1086
            DataBinding.FieldName = 'QTY_MAT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0;-,0'
          end
          object cxGrid3DBTableView1WEEKS: TcxGridDBColumn
            Caption = #1053#1077#1076#1077#1083#1080
            DataBinding.FieldName = 'WEEKS'
            MinWidth = 60
            Width = 60
          end
          object cxGrid3DBTableView1DAYS: TcxGridDBColumn
            Caption = #1044#1085#1080
            DataBinding.FieldName = 'DAYS'
            Width = 133
          end
          object cxGrid3DBTableView1REGION_NAME: TcxGridDBColumn
            Caption = #1056#1072#1081#1086#1085
            DataBinding.FieldName = 'REGION_NAME'
            Width = 200
          end
          object cxGrid3DBTableView1PRICE_REPLACE_SQUARE: TcxGridDBColumn
            Caption = #1047#1072#1084#1077#1085#1072' 1'#1084#178' ('#1073#1077#1079' '#1053#1044#1057')'
            DataBinding.FieldName = 'PRICE_REPLACE_SQUARE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            Width = 69
          end
          object cxGrid3DBTableView1SQUARE: TcxGridDBColumn
            Caption = #1055#1083#1086#1097#1072#1076#1100', '#1084#178
            DataBinding.FieldName = 'SQUARE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.000;-,0.000'
            Width = 88
          end
          object cxGrid3DBTableView1IS_MAT_FILTER: TcxGridDBColumn
            Caption = #1054#1090#1073#1080#1088#1072#1090#1100
            DataBinding.FieldName = 'IS_MAT_FILTER'
            RepositoryItem = DM.erCheckGreen
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
      object dockService: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1035
        Height = 31
        Align = dalTop
        BarManager = BM
      end
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
          ItemName = 'bbExportList'
        end
        item
          Visible = True
          ItemName = 'bbTree'
        end
        item
          Visible = True
          ItemName = 'bbDetail'
        end
        item
          Visible = True
          ItemName = 'bbEdit'
        end
        item
          Visible = True
          ItemName = 'bbEditDescription'
        end
        item
          Visible = True
          ItemName = 'bbSetManagerControl'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbResetSettings'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object BMBar1: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Balans'
      CaptionButtons = <>
      DockControl = dockBalance
      DockedDockControl = dockBalance
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1296
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDocsOnlyAccepted'
        end
        item
          Visible = True
          ItemName = 'moneyDateStart'
        end
        item
          Visible = True
          ItemName = 'moneyDateEnd'
        end
        item
          Visible = True
          ItemName = 'bbBalanceDocumentsRefresh'
        end
        item
          Visible = True
          ItemName = 'bbInvoiceControl'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbBalance'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object BMBar3: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Documents'
      CaptionButtons = <>
      DockControl = dockDocuments
      DockedDockControl = dockDocuments
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1472
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDocumentsRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbDocumentsAdd'
        end
        item
          Visible = True
          ItemName = 'bbDogAdd'
        end
        item
          Visible = True
          ItemName = 'bbDocumentEdit'
        end
        item
          Visible = True
          ItemName = 'bbDocumentView'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbMakeDog'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object BMBar4: TdxBar [3]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'DocDog'
      CaptionButtons = <>
      DockControl = dockDocDog
      DockedDockControl = dockDocDog
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1472
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDocDogRefresh'
        end
        item
          Visible = True
          ItemName = 'bbDogAdd'
        end
        item
          Visible = True
          ItemName = 'bbDocDogDocView'
        end
        item
          Visible = True
          ItemName = 'bbDocDogDocEdit'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object BMBar2: TdxBar [4]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1054#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077
      CaptionButtons = <>
      DockControl = dockService
      DockedDockControl = dockService
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1077
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbServiceSeport'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object bbDetail: TdxBarButton
      Caption = #1044#1077#1090#1072#1083#1080
      Category = 0
      Hint = #1044#1077#1090#1072#1083#1080
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      ImageIndex = 15
      PaintStyle = psCaptionGlyph
      OnClick = bbDetailClick
    end
    object moneyDateStart: TcxBarEditItem
      Caption = #1055#1086#1088#1080#1086#1076' '#1089
      Category = 0
      Hint = #1055#1086#1088#1080#1086#1076' '#1089
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object moneyDateEnd: TcxBarEditItem
      Caption = ' '#1087#1086' '
      Category = 0
      Hint = ' '#1087#1086' '
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object bbBalanceDocumentsRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      OnClick = bbBalanceDocumentsRefreshClick
    end
    object bbTree: TdxBarButton
      Caption = #1044#1077#1088#1077#1074#1086
      Category = 0
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1080#1083#1080' '#1089#1082#1088#1099#1090#1100' '#1076#1077#1088#1077#1074#1086
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 18
      PaintStyle = psCaptionGlyph
      OnClick = bbTreeClick
    end
    object bbEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1051#1090#1082#1088#1099#1090#1100' '#1092#1086#1088#1084#1091' '#1088#1077#1076#1078#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1082#1086#1085#1090#1072#1088#1075#1077#1085#1090#1072
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbEditClick
    end
    object bbExportList: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 28
      PaintStyle = psCaptionGlyph
      OnClick = bbExportListClick
    end
    object bbResetSettings: TdxBarButton
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
      Category = 0
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 6
      PaintStyle = psCaptionInMenu
      OnClick = bbResetSettingsClick
    end
    object bbDocumentsAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1074' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093
      Visible = ivAlways
      ImageIndex = 22
      PaintStyle = psCaptionGlyph
      OnClick = bbDocumentsAddClick
    end
    object bbDocumentsRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = bbDocumentsRefreshClick
    end
    object bbDocumentView: TdxBarButton
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      Category = 0
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088
      Visible = ivAlways
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
      OnClick = bbDocumentViewClick
    end
    object bbInvoiceControl: TdxBarButton
      Caption = #1050#1086#1085#1090#1088#1086#1083#1100
      Category = 0
      Hint = #1050#1086#1085#1090#1088#1086#1083#1100
      Visible = ivAlways
      ImageIndex = 32
      PaintStyle = psCaptionGlyph
      OnClick = bbInvoiceControlClick
    end
    object bbBalance: TdxBarButton
      Caption = #1040#1082#1090' '#1089#1074#1077#1088#1082#1080
      Category = 0
      Hint = #1040#1082#1090' '#1089#1074#1077#1088#1082#1080
      Visible = ivAlways
      ImageIndex = 27
      PaintStyle = psCaptionGlyph
      OnClick = bbBalanceClick
    end
    object bbMakeDog: TdxBarButton
      Caption = #1044#1086#1075#1086#1074#1086#1088
      Category = 0
      Hint = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088
      Visible = ivNever
      PaintStyle = psCaptionGlyph
      OnClick = bbMakeDogClick
    end
    object bbDogAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1082#1072#1085' '#1076#1086#1075#1086#1074#1086#1088#1072
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1082#1072#1085' '#1076#1086#1075#1086#1074#1086#1088#1072
      Visible = ivAlways
      ImageIndex = 40
      PaintStyle = psCaptionGlyph
      OnClick = bbDogAddClick
    end
    object bbDocumentEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbDocumentEditClick
    end
    object bbDocDogRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
    end
    object bbDocDogDocView: TdxBarButton
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      Category = 0
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088
      Visible = ivAlways
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
      OnClick = bbDocDogDocViewClick
    end
    object bbDocDogDocEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbDocDogDocEditClick
    end
    object bbAct2016: TdxBarButton
      Caption = #1055#1086' '#1074#1089#1077#1084' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1072#1085#1085#1099#1084
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1072#1082#1090#1099' '#1089#1074#1077#1088#1082#1080' '#1076#1083#1103' '#1074#1099#1073#1088#1072#1085#1085#1099#1093' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1086#1074
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
      OnClick = bbAct2016Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1057#1074#1077#1088#1082#1072' '#1087#1086' '#1082#1086#1074#1088#1072#1084
      Category = 0
      Visible = ivAlways
      ImageIndex = 15
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'bbRepSverka'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'bbAct2016'
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = #1055#1086' '#1090#1077#1082#1091#1097#1077#1084#1091
      Category = 0
      Hint = #1055#1086' '#1090#1077#1082#1091#1097#1077#1084#1091
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1040#1085#1072#1083#1080#1079' '#1072#1082#1090#1086#1074
      Category = 0
      Hint = #1040#1085#1072#1083#1080#1079' '#1072#1082#1090#1086#1074
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = #1040#1082#1090' '#1089#1074#1077#1088#1082#1080
      Category = 0
      Hint = #1040#1082#1090' '#1089#1074#1077#1088#1082#1080
      Visible = ivAlways
    end
    object bbRepSverka: TdxBarButton
      Caption = #1057#1074#1077#1088#1082#1072' '#1082#1086#1074#1088#1086#1074
      Category = 0
      Hint = #1057#1074#1077#1088#1082#1072' '#1082#1086#1074#1088#1086#1074
      Visible = ivAlways
      OnClick = bbRepSverkaClick
    end
    object bbEditDescription: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbEditDescriptionClick
    end
    object bbSetManagerControl: TdxBarButton
      Caption = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1085#1072' '#1082#1086#1085#1090#1088#1086#1083#1100
      Category = 0
      Hint = #1055#1086#1089#1090#1072#1074#1080#1090#1100' '#1085#1072' '#1082#1086#1085#1090#1088#1086#1083#1100
      Visible = ivNever
      ImageIndex = 34
      PaintStyle = psCaptionGlyph
      OnClick = bbSetManagerControlClick
    end
    object bbDocsOnlyAccepted: TdxBarButton
      Caption = #1058#1086#1083#1100#1082#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1085#1099#1077
      Category = 0
      Hint = #1058#1086#1083#1100#1082#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1085#1099#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbDocsOnlyAcceptedClick
    end
    object bbServiceSeport: TdxBarButton
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1102
      Category = 0
      Hint = #1054#1090#1095#1077#1090' '#1087#1086' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1102
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = bbServiceSeportClick
    end
  end
  object Contragents: TpFIBDataSet
    RefreshSQL.Strings = (
      'execute block('
      '  PID T_PID=:PID,'
      '  OLD_ID T_PID=:OLD_ID'
      ')'
      'returns('
      '  ID T_ID,'
      '  INVOICE_CATEGORY T_PID,'
      '  LAW_IS_RESHENIE T_BOOLEAN,'
      '  IS_FOLDER T_BOOLEAN,'
      '  PARENT1 T_NAME,'
      '  PARENT2 T_NAME,'
      '  NAME T_NAME,'
      '  ORGANIZATION_NAME T_NAME,'
      '  CODE T_1C_CODE,'
      '  MANAGER_NAME T_NAME,'
      '  CLIENT_TYPE T_PID,'
      '  SERVICE_STATE T_INT,'
      '  GROUP_NAME T_NAME,'
      '  DEBTOR_TYPE T_PID,'
      '  LAST_INVOICE_DT T_DATE,'
      '  LAST_PAYMENT_DT T_DATE,'
      '  INN T_INN,'
      '  DESCRIPTION T_DESCRIPTION,'
      '  DESCRIPTION_USER_NAME T_USERNAME,'
      '  DESCRIPTION_DATE T_DATETIME,'
      '  IN_CONTROL T_BOOLEAN,'
      '  IS_CLEANING T_BOOLEAN,'
      '  IS_GK T_BOOLEAN,'
      '  IS_VIP T_BOOLEAN,'
      '  IS_ACTIVE_MAT T_BOOLEAN,'
      '  MAT_SQUARE T_SQUARE,'
      '  MAT_QTY T_QTY,'
      '  MAT_QTY_DOC T_QTY,'
      '  MAT_QTY_DELTA T_QTY,'
      '  OBESPECH_ACTIVE T_AMOUNT,'
      '  OBESPECH_ACTIVE_OUTDATED T_AMOUNT,'
      '  IS_DOG_EXISTS T_BOOLEAN,'
      '  IS_ACT_2016_EXISTS T_BOOLEAN,'
      '  DOG_MAX_DATE T_DATE,'
      '  LAST_DELIVERTY_DATE T_DATE,'
      '  LAST_INVOICE_ACCEPTED T_DATE,'
      '  CREATED_DATE T_DATE,'
      '  COOPERATION_STATUS T_PID,'
      '  IS_COMPETITOR T_BOOLEAN,'
      '  COMPETITOR_NAME T_NAME,'
      '  REQUEST_SOURCE T_NAME,'
      '  PAYMENT_DALAY_DAYS T_INT,'
      '  INVOICE_ACTIVE_COUNT T_INT,'
      '  INVOICE_CONTROL_COUNT T_INT,'
      '  CURRENT_DOLG T_AMOUNT,'
      '  INVOICE_AMOUNT_REMAIN T_AMOUNT,'
      '  INVOICE_AMOUNT_REMAIN_CONTROL T_AMOUNT,'
      
        '  LAST_ACT_IN_DT T_DATE,  -- '#1044#1072#1090#1072' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1089#1085#1103#1090#1080#1103' '#1082#1086#1074#1088#1086#1074' '#1087#1086' '#1072#1082 +
        #1090#1091
      
        '  MANAGER_DESCRIPTION  type of column CONTRAGENTS.MANAGER_DESCRI' +
        'PTION,'
      '  REGION_CODE type of column CONTRAGENTS.REGION_CODE,'
      '  DOCUMENT_EMAIL type of column contragents.DOCUMENT_EMAIL,'
      '  IS_DOC_TO_EMAIL type of column contragents.IS_DOC_TO_EMAIL,'
      '  PAYMENT_TYPE type of column contragents.PAYMENT_TYPE'
      ')'
      'as'
      '  declare variable H T_INT ;'
      '  declare variable W T_INT ;'
      '  declare variable Q T_INT ;'
      '  declare variable vDELIVERY_DATE T_DATE;'
      '  declare variable vIN_CONTROL T_BOOLEAN;'
      '  declare variable vAMOUNT_REMAIN T_AMOUNT;'
      '  declare variable vPID T_PID;'
      '  declare variable vPID2 T_PID;'
      '  declare variable vINVOICE_DT T_DATE;'
      '  declare variable vInvoiceControl T_BOOLEAN;'
      ''
      'begin'
      '  for select'
      '    C.ID,'
      '    C.INVOICE_CATEGORY, C.LAW_IS_RESHENIE,'
      '    C.IS_FOLDER, C.PID, C.NAME, C.CODE, C.INN,'
      '    C.CLIENT_TYPE, C.SERVICE_STATE,'
      
        '    (select U.NAME from USERS U where U.ID=C.MANAGER_ID) MANAGER' +
        '_NAME,'
      
        '    (select name from CONTRAGENT_GROUPS where ID=C.MASTER_PID) G' +
        'ROUP_NAME,'
      
        '    (select O.DESCRIPTION from ORGANIZATIONS O where O.ID = coal' +
        'esce(C.ORGANIZATION_ID, 1)) ORGANIZATION_NAME,'
      
        '    (select NAME from REFBOOK where ID=(select first 1 R.SOURCE ' +
        'from REQUEST R where R.CONTRAGENT_ID=C.ID order by R.ID desc)) R' +
        'EQUEST_SOURCE,'
      
        '    C.DESCRIPTION,  (select u.NAME from users u where u.LOGIN_NA' +
        'ME=c.DESCRIPTION_MODIFY_BY) DESCRIPTION_USER_NAME, cast(C.DESCRI' +
        'PTION_MODIFY_DT as T_DATE) DESCRIPTION_DATE,'
      '    cast(c.created_dt as T_DATE) CREATED_DATE,'
      
        '    IIF(exists(select 1 from CONTRAGENT_JOURNAL J where J.CONTRA' +
        'GENT_ID=C.ID and J.RECORD_TYPE=30), 1, 0) IS_ACT_2016_EXISTS,'
      
        '    (select max(DD.DATE_END) from DOCUMENTS_DOG DD where DD.CONT' +
        'RAGENT_ID=C.ID) DOG_MAX_DATE,'
      
        '    (select cast(max(J.CREATED_DT) as T_DATE) from CONTRAGENT_JO' +
        'URNAL J where J.CONTRAGENT_ID=c.id and J.RECORD_TYPE=12) LAST_IN' +
        'VOICE_ACCEPTED,'
      
        '    (select sum(O.AMOUNT) from OBESPECH O where O.CONTRAGENT_ID=' +
        'C.ID and O.STATUS=1) OBESPECH_ACTIVE,'
      
        '    (select sum(O.AMOUNT) from OBESPECH O where O.CONTRAGENT_ID=' +
        'C.ID and O.STATUS=1 and O.UNLOCK_DATE<current_date) OBESPECH_ACT' +
        'IVE_OUTDATED,'
      
        '    nullif((select sum(coalesce(T.QTY_OUT, 0)) - sum(coalesce(T.' +
        'QTY_IN, 0)) from DOC_ACT_IN_OUT D, DOC_ACT_IN_OUT_T T where D.ID' +
        '=T.PID and D.CONTRAGENT_ID=C.ID and D.STATUS=2), 0) MAT_QTY_DOC,'
      
        '    (select IIF(COUNT(DOCUMENTS.ID)>0, 1, 0) from DOCUMENTS wher' +
        'e DOCUMENTS.CONTRAGENT_ID=C.ID and DOCUMENTS.DOCUMENT_TYPE=2) IS' +
        '_DOG_EXISTS,'
      '    nullif(C.CURRENT_BALANCE, 0) CURRENT_DOLG,'
      '    nullif(C.INCOICE_ACTIVE_COUNT, 0),'
      '    C.IS_CLEANING, C.IS_GK, C.IS_VIP,'
      '    nullif(C.PAYMENT_DELAY_DAYS, 0),'
      '    C.LAST_INVOICE_DT, C.LAST_PAYMENT_DT,'
      '    C.DEBTOR_TYPE, C.MANAGER_DESCRIPTION,'
      '    C.REGION_CODE,'
      '    c.DOCUMENT_EMAIL, coalesce(c.IS_DOC_TO_EMAIL, 0),'
      '    C.PAYMENT_TYPE'
      ''
      '  from SP_GET_CONTRAGENTS_ID(:PID, :OLD_ID) SP, CONTRAGENTS C'
      '  where'
      '    C.ID=SP.ID'
      '  into'
      '    :ID,'
      '    :INVOICE_CATEGORY, :LAW_IS_RESHENIE,'
      '    :IS_FOLDER, :vPID, :NAME, :CODE, :INN,'
      '    :CLIENT_TYPE, :SERVICE_STATE,'
      '    :MANAGER_NAME, :GROUP_NAME, :ORGANIZATION_NAME,'
      '    :REQUEST_SOURCE,'
      
        '    :DESCRIPTION, :DESCRIPTION_USER_NAME, :DESCRIPTION_DATE, :CR' +
        'EATED_DATE,'
      '    :IS_ACT_2016_EXISTS, :DOG_MAX_DATE, :LAST_INVOICE_ACCEPTED,'
      '    :OBESPECH_ACTIVE, :OBESPECH_ACTIVE_OUTDATED,'
      '    :MAT_QTY_DOC, :IS_DOG_EXISTS,'
      '    :CURRENT_DOLG, :INVOICE_ACTIVE_COUNT,'
      '    :IS_CLEANING, :IS_GK, :IS_VIP, :PAYMENT_DALAY_DAYS,'
      '    :LAST_INVOICE_DT, :LAST_PAYMENT_DT,'
      '    :DEBTOR_TYPE,'
      '    :MANAGER_DESCRIPTION, :REGION_CODE,'
      '    :DOCUMENT_EMAIL, :IS_DOC_TO_EMAIL,'
      '    :PAYMENT_TYPE'
      '  do begin'
      '    LAST_ACT_IN_DT = null;'
      '    if (:IS_FOLDER=0)  then'
      '      select first 1 D.DOC_DT from DOC_ACT_IN_OUT D'
      
        '      where D.CONTRAGENT_ID=:ID and D.STATUS=2 and coalesce(D.IN' +
        '_COUNT, 0)<>0 order by D.DOC_DT desc'
      '      into :LAST_ACT_IN_DT;'
      ''
      '    PARENT1 = null; PARENT2 = null;'
      '    if (vPID is not null) then begin'
      
        '      select C.NAME, C.PID from CONTRAGENTS C where C.ID=:vPID i' +
        'nto :PARENT1, :vPID2;'
      '      if (vPID2 is not null) then'
      
        '        select C.NAME from CONTRAGENTS C where C.ID=:vPID2 into ' +
        ':PARENT2;'
      '    end'
      '      '
      
        '    COOPERATION_STATUS = null; IS_COMPETITOR = null; COMPETITOR_' +
        'NAME = null;'
      
        '    select ATTR.COOPERATION_STATUS, coalesce(ATTR.IS_COMPETITOR,' +
        ' 0) IS_COMPETITOR, ATTR.COMPETITOR_NAME from CONTRAGENTS_ATTR AT' +
        'TR where ATTR.ID=:ID into :COOPERATION_STATUS, :IS_COMPETITOR, :' +
        'COMPETITOR_NAME;'
      ''
      ''
      '    MAT_SQUARE = 0; MAT_QTY = 0;'
      '    for select'
      '      REF_MAT.WIDTH, REF_MAT.HEIGHT, ADDRESS_SERVICE.QTY_MAT'
      '    from'
      
        '      CONTRAGENTS_CONTRACT, CONTRACT_ADDRESS, ADDRESS_SERVICE, R' +
        'EF_MAT'
      '    where'
      '      CONTRAGENTS_CONTRACT.CONTRAGENT_ID=:ID'
      '      and REF_MAT.ID=ADDRESS_SERVICE.MAT_ID'
      '      and ADDRESS_SERVICE.ADDRESS_ID=CONTRACT_ADDRESS.ID'
      '      and ADDRESS_SERVICE.IS_ACTIVE=1'
      '      and CONTRACT_ADDRESS.CONTRACT_ID=CONTRAGENTS_CONTRACT.ID'
      
        '      and (ADDRESS_SERVICE.DAY_1+ADDRESS_SERVICE.DAY_2+ADDRESS_S' +
        'ERVICE.DAY_3+ADDRESS_SERVICE.DAY_4+ADDRESS_SERVICE.DAY_5+ADDRESS' +
        '_SERVICE.DAY_6+ADDRESS_SERVICE.DAY_7) >0'
      '    into :W, :H, :Q do begin'
      '      MAT_SQUARE = MAT_SQUARE + (W*H / 10000.000) * Q;'
      '      MAT_QTY = MAT_QTY+Q;'
      '    end'
      '    IS_ACTIVE_MAT = IIF(MAT_QTY>0, 1, 0);'
      
        '    MAT_QTY_DELTA = nullif(coalesce(MAT_QTY_DOC, 0)-coalesce(MAT' +
        '_QTY, 0), 0);'
      
        '    LAST_DELIVERTY_DATE = null; vDELIVERY_DATE = null; IN_CONTRO' +
        'L=0; vIN_CONTROL=0;'
      '    INVOICE_AMOUNT_REMAIN = 0;'
      '    INVOICE_AMOUNT_REMAIN_CONTROL = 0;'
      '    vAMOUNT_REMAIN = 0;'
      ''
      '    for select'
      
        '      cast(I.DOC_DT as T_DATE), I.DELIVERY_DATE, coalesce(I.IN_C' +
        'ONTROL, 0), I.AMOUNT_REMAIN, coalesce(I.IN_CONTROL, 0)'
      '    from INVOICE I where I.CONTRAGENT_ID=:ID and I.STATUS=2'
      '    into'
      
        '      :vINVOICE_DT, :vDELIVERY_DATE, :vIN_CONTROL, :vAMOUNT_REMA' +
        'IN, :vInvoiceControl do begin'
      '      if (vInvoiceControl=1) then'
      '        INVOICE_CONTROL_COUNT = INVOICE_CONTROL_COUNT+1;'
      
        '      if ((vDELIVERY_DATE is not null) and ((LAST_DELIVERTY_DATE' +
        ' is null) or (LAST_DELIVERTY_DATE < vDELIVERY_DATE)))  then'
      '        LAST_DELIVERTY_DATE = vDELIVERY_DATE;'
      '      if (vIN_CONTROL=1) then begin'
      '        IN_CONTROL=1;'
      
        '        INVOICE_AMOUNT_REMAIN_CONTROL = INVOICE_AMOUNT_REMAIN_CO' +
        'NTROL + vAMOUNT_REMAIN;'
      '      end'
      '      if (vINVOICE_DT<=current_date) then'
      
        '        INVOICE_AMOUNT_REMAIN = INVOICE_AMOUNT_REMAIN + vAMOUNT_' +
        'REMAIN;'
      '    end'
      '    INVOICE_AMOUNT_REMAIN = NULLIF(INVOICE_AMOUNT_REMAIN, 0);'
      
        '    INVOICE_AMOUNT_REMAIN_CONTROL = NULLIF(INVOICE_AMOUNT_REMAIN' +
        '_CONTROL, 0);'
      '    INVOICE_CONTROL_COUNT = NULLIF(INVOICE_CONTROL_COUNT, 0);'
      '    suspend;'
      '  end'
      'end'
      '')
    SelectSQL.Strings = (
      'execute block('
      '  PID T_PID=:PID,'
      '  OLD_ID T_PID=:OLD_ID'
      ')'
      'returns('
      '  ID T_ID,'
      '  INVOICE_CATEGORY T_PID,'
      '  LAW_IS_RESHENIE T_BOOLEAN,'
      '  IS_FOLDER T_BOOLEAN,'
      '  PARENT1 T_NAME,'
      '  PARENT2 T_NAME,'
      '  NAME T_NAME,'
      '  ORGANIZATION_NAME T_NAME,'
      '  CODE T_1C_CODE,'
      '  MANAGER_NAME T_NAME,'
      '  CLIENT_TYPE T_PID,'
      '  SERVICE_STATE T_INT,'
      '  GROUP_NAME T_NAME,'
      '  DEBTOR_TYPE T_PID,'
      '  LAST_INVOICE_DT T_DATE,'
      '  LAST_PAYMENT_DT T_DATE,'
      '  INN T_INN,'
      '  DESCRIPTION T_DESCRIPTION,'
      '  DESCRIPTION_USER_NAME T_USERNAME,'
      '  DESCRIPTION_DATE T_DATETIME,'
      '  IN_CONTROL T_BOOLEAN,'
      '  IS_CLEANING T_BOOLEAN,'
      '  IS_GK T_BOOLEAN,'
      '  IS_VIP T_BOOLEAN,'
      '  IS_ACTIVE_MAT T_BOOLEAN,'
      '  MAT_SQUARE T_SQUARE,'
      '  MAT_QTY T_QTY,'
      '  MAT_QTY_DOC T_QTY,'
      '  MAT_QTY_DELTA T_QTY,'
      '  OBESPECH_ACTIVE T_AMOUNT,'
      '  OBESPECH_ACTIVE_OUTDATED T_AMOUNT,'
      '  IS_DOG_EXISTS T_BOOLEAN,'
      '  IS_ACT_2016_EXISTS T_BOOLEAN,'
      '  DOG_MAX_DATE T_DATE,'
      '  LAST_DELIVERTY_DATE T_DATE,'
      '  LAST_INVOICE_ACCEPTED T_DATE,'
      '  CREATED_DATE T_DATE,'
      '  COOPERATION_STATUS T_PID,'
      '  IS_COMPETITOR T_BOOLEAN,'
      '  COMPETITOR_NAME T_NAME,'
      '  REQUEST_SOURCE T_NAME,'
      '  PAYMENT_DALAY_DAYS T_INT,'
      '  INVOICE_ACTIVE_COUNT T_INT,'
      '  INVOICE_CONTROL_COUNT T_INT,'
      '  CURRENT_DOLG T_AMOUNT,'
      '  INVOICE_AMOUNT_REMAIN T_AMOUNT,'
      '  INVOICE_AMOUNT_REMAIN_CONTROL T_AMOUNT,'
      
        '  LAST_ACT_IN_DT T_DATE,  -- '#1044#1072#1090#1072' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1089#1085#1103#1090#1080#1103' '#1082#1086#1074#1088#1086#1074' '#1087#1086' '#1072#1082 +
        #1090#1091
      
        '  MANAGER_DESCRIPTION  type of column CONTRAGENTS.MANAGER_DESCRI' +
        'PTION,'
      '  REGION_CODE type of column CONTRAGENTS.REGION_CODE,'
      '  DOCUMENT_EMAIL type of column contragents.DOCUMENT_EMAIL,'
      '  IS_DOC_TO_EMAIL type of column contragents.IS_DOC_TO_EMAIL,'
      '  PAYMENT_TYPE type of column contragents.PAYMENT_TYPE'
      ')'
      'as'
      '  declare variable H T_INT ;'
      '  declare variable W T_INT ;'
      '  declare variable Q T_INT ;'
      '  declare variable vDELIVERY_DATE T_DATE;'
      '  declare variable vIN_CONTROL T_BOOLEAN;'
      '  declare variable vAMOUNT_REMAIN T_AMOUNT;'
      '  declare variable vPID T_PID;'
      '  declare variable vPID2 T_PID;'
      '  declare variable vINVOICE_DT T_DATE;'
      '  declare variable vInvoiceControl T_BOOLEAN;'
      ''
      'begin'
      '  for select'
      '    C.ID,'
      '    C.INVOICE_CATEGORY, C.LAW_IS_RESHENIE,'
      '    C.IS_FOLDER, C.PID, C.NAME, C.CODE, C.INN,'
      '    C.CLIENT_TYPE, C.SERVICE_STATE,'
      
        '    (select U.NAME from USERS U where U.ID=C.MANAGER_ID) MANAGER' +
        '_NAME,'
      
        '    (select name from CONTRAGENT_GROUPS where ID=C.MASTER_PID) G' +
        'ROUP_NAME,'
      
        '    (select O.DESCRIPTION from ORGANIZATIONS O where O.ID = coal' +
        'esce(C.ORGANIZATION_ID, 1)) ORGANIZATION_NAME,'
      
        '    (select NAME from REFBOOK where ID=(select first 1 R.SOURCE ' +
        'from REQUEST R where R.CONTRAGENT_ID=C.ID order by R.ID desc)) R' +
        'EQUEST_SOURCE,'
      
        '    C.DESCRIPTION,  (select u.NAME from users u where u.LOGIN_NA' +
        'ME=c.DESCRIPTION_MODIFY_BY) DESCRIPTION_USER_NAME, cast(C.DESCRI' +
        'PTION_MODIFY_DT as T_DATE) DESCRIPTION_DATE,'
      '    cast(c.created_dt as T_DATE) CREATED_DATE,'
      
        '    IIF(exists(select 1 from CONTRAGENT_JOURNAL J where J.CONTRA' +
        'GENT_ID=C.ID and J.RECORD_TYPE=30), 1, 0) IS_ACT_2016_EXISTS,'
      
        '    (select max(DD.DATE_END) from DOCUMENTS_DOG DD where DD.CONT' +
        'RAGENT_ID=C.ID) DOG_MAX_DATE,'
      
        '    (select cast(max(J.CREATED_DT) as T_DATE) from CONTRAGENT_JO' +
        'URNAL J where J.CONTRAGENT_ID=c.id and J.RECORD_TYPE=12) LAST_IN' +
        'VOICE_ACCEPTED,'
      
        '    (select sum(O.AMOUNT) from OBESPECH O where O.CONTRAGENT_ID=' +
        'C.ID and O.STATUS=1) OBESPECH_ACTIVE,'
      
        '    (select sum(O.AMOUNT) from OBESPECH O where O.CONTRAGENT_ID=' +
        'C.ID and O.STATUS=1 and O.UNLOCK_DATE<current_date) OBESPECH_ACT' +
        'IVE_OUTDATED,'
      
        '    nullif((select sum(coalesce(T.QTY_OUT, 0)) - sum(coalesce(T.' +
        'QTY_IN, 0)) from DOC_ACT_IN_OUT D, DOC_ACT_IN_OUT_T T where D.ID' +
        '=T.PID and D.CONTRAGENT_ID=C.ID and D.STATUS=2), 0) MAT_QTY_DOC,'
      
        '    (select IIF(COUNT(DOCUMENTS.ID)>0, 1, 0) from DOCUMENTS wher' +
        'e DOCUMENTS.CONTRAGENT_ID=C.ID and DOCUMENTS.DOCUMENT_TYPE=2) IS' +
        '_DOG_EXISTS,'
      '    nullif(C.CURRENT_BALANCE, 0) CURRENT_DOLG,'
      '    nullif(C.INCOICE_ACTIVE_COUNT, 0),'
      '    C.IS_CLEANING, C.IS_GK, C.IS_VIP,'
      '    nullif(C.PAYMENT_DELAY_DAYS, 0),'
      '    C.LAST_INVOICE_DT, C.LAST_PAYMENT_DT,'
      '    C.DEBTOR_TYPE, C.MANAGER_DESCRIPTION,'
      '    C.REGION_CODE,'
      '    c.DOCUMENT_EMAIL, coalesce(c.IS_DOC_TO_EMAIL, 0),'
      '    C.PAYMENT_TYPE'
      ''
      '  from SP_GET_CONTRAGENTS_ID(:PID, :OLD_ID) SP, CONTRAGENTS C'
      '  where'
      '    C.ID=SP.ID'
      '  into'
      '    :ID,'
      '    :INVOICE_CATEGORY, :LAW_IS_RESHENIE,'
      '    :IS_FOLDER, :vPID, :NAME, :CODE, :INN,'
      '    :CLIENT_TYPE, :SERVICE_STATE,'
      '    :MANAGER_NAME, :GROUP_NAME, :ORGANIZATION_NAME,'
      '    :REQUEST_SOURCE,'
      
        '    :DESCRIPTION, :DESCRIPTION_USER_NAME, :DESCRIPTION_DATE, :CR' +
        'EATED_DATE,'
      '    :IS_ACT_2016_EXISTS, :DOG_MAX_DATE, :LAST_INVOICE_ACCEPTED,'
      '    :OBESPECH_ACTIVE, :OBESPECH_ACTIVE_OUTDATED,'
      '    :MAT_QTY_DOC, :IS_DOG_EXISTS,'
      '    :CURRENT_DOLG, :INVOICE_ACTIVE_COUNT,'
      '    :IS_CLEANING, :IS_GK, :IS_VIP, :PAYMENT_DALAY_DAYS,'
      '    :LAST_INVOICE_DT, :LAST_PAYMENT_DT,'
      '    :DEBTOR_TYPE,'
      '    :MANAGER_DESCRIPTION, :REGION_CODE,'
      '    :DOCUMENT_EMAIL, :IS_DOC_TO_EMAIL,'
      '    :PAYMENT_TYPE'
      '  do begin'
      '    LAST_ACT_IN_DT = null;'
      '    if (:IS_FOLDER=0)  then'
      '      select first 1 D.DOC_DT from DOC_ACT_IN_OUT D'
      
        '      where D.CONTRAGENT_ID=:ID and D.STATUS=2 and coalesce(D.IN' +
        '_COUNT, 0)<>0 order by D.DOC_DT desc'
      '      into :LAST_ACT_IN_DT;'
      ''
      '    PARENT1 = null; PARENT2 = null;'
      '    if (vPID is not null) then begin'
      
        '      select C.NAME, C.PID from CONTRAGENTS C where C.ID=:vPID i' +
        'nto :PARENT1, :vPID2;'
      '      if (vPID2 is not null) then'
      
        '        select C.NAME from CONTRAGENTS C where C.ID=:vPID2 into ' +
        ':PARENT2;'
      '    end'
      '      '
      
        '    COOPERATION_STATUS = null; IS_COMPETITOR = null; COMPETITOR_' +
        'NAME = null;'
      
        '    select ATTR.COOPERATION_STATUS, coalesce(ATTR.IS_COMPETITOR,' +
        ' 0) IS_COMPETITOR, ATTR.COMPETITOR_NAME from CONTRAGENTS_ATTR AT' +
        'TR where ATTR.ID=:ID into :COOPERATION_STATUS, :IS_COMPETITOR, :' +
        'COMPETITOR_NAME;'
      ''
      ''
      '    MAT_SQUARE = 0; MAT_QTY = 0;'
      '    for select'
      '      REF_MAT.WIDTH, REF_MAT.HEIGHT, ADDRESS_SERVICE.QTY_MAT'
      '    from'
      
        '      CONTRAGENTS_CONTRACT, CONTRACT_ADDRESS, ADDRESS_SERVICE, R' +
        'EF_MAT'
      '    where'
      '      CONTRAGENTS_CONTRACT.CONTRAGENT_ID=:ID'
      '      and REF_MAT.ID=ADDRESS_SERVICE.MAT_ID'
      '      and ADDRESS_SERVICE.ADDRESS_ID=CONTRACT_ADDRESS.ID'
      '      and ADDRESS_SERVICE.IS_ACTIVE=1'
      '      and CONTRACT_ADDRESS.CONTRACT_ID=CONTRAGENTS_CONTRACT.ID'
      
        '      and (ADDRESS_SERVICE.DAY_1+ADDRESS_SERVICE.DAY_2+ADDRESS_S' +
        'ERVICE.DAY_3+ADDRESS_SERVICE.DAY_4+ADDRESS_SERVICE.DAY_5+ADDRESS' +
        '_SERVICE.DAY_6+ADDRESS_SERVICE.DAY_7) >0'
      '    into :W, :H, :Q do begin'
      '      MAT_SQUARE = MAT_SQUARE + (W*H / 10000.000) * Q;'
      '      MAT_QTY = MAT_QTY+Q;'
      '    end'
      '    IS_ACTIVE_MAT = IIF(MAT_QTY>0, 1, 0);'
      
        '    MAT_QTY_DELTA = nullif(coalesce(MAT_QTY_DOC, 0)-coalesce(MAT' +
        '_QTY, 0), 0);'
      
        '    LAST_DELIVERTY_DATE = null; vDELIVERY_DATE = null; IN_CONTRO' +
        'L=0; vIN_CONTROL=0;'
      '    INVOICE_AMOUNT_REMAIN = 0;'
      '    INVOICE_AMOUNT_REMAIN_CONTROL = 0;'
      '    vAMOUNT_REMAIN = 0;'
      ''
      '    for select'
      
        '      cast(I.DOC_DT as T_DATE), I.DELIVERY_DATE, coalesce(I.IN_C' +
        'ONTROL, 0), I.AMOUNT_REMAIN, coalesce(I.IN_CONTROL, 0)'
      '    from INVOICE I where I.CONTRAGENT_ID=:ID and I.STATUS=2'
      '    into'
      
        '      :vINVOICE_DT, :vDELIVERY_DATE, :vIN_CONTROL, :vAMOUNT_REMA' +
        'IN, :vInvoiceControl do begin'
      '      if (vInvoiceControl=1) then'
      '        INVOICE_CONTROL_COUNT = INVOICE_CONTROL_COUNT+1;'
      
        '      if ((vDELIVERY_DATE is not null) and ((LAST_DELIVERTY_DATE' +
        ' is null) or (LAST_DELIVERTY_DATE < vDELIVERY_DATE)))  then'
      '        LAST_DELIVERTY_DATE = vDELIVERY_DATE;'
      '      if (vIN_CONTROL=1) then begin'
      '        IN_CONTROL=1;'
      
        '        INVOICE_AMOUNT_REMAIN_CONTROL = INVOICE_AMOUNT_REMAIN_CO' +
        'NTROL + vAMOUNT_REMAIN;'
      '      end'
      '      if (vINVOICE_DT<=current_date) then'
      
        '        INVOICE_AMOUNT_REMAIN = INVOICE_AMOUNT_REMAIN + vAMOUNT_' +
        'REMAIN;'
      '    end'
      '    INVOICE_AMOUNT_REMAIN = NULLIF(INVOICE_AMOUNT_REMAIN, 0);'
      
        '    INVOICE_AMOUNT_REMAIN_CONTROL = NULLIF(INVOICE_AMOUNT_REMAIN' +
        '_CONTROL, 0);'
      '    INVOICE_CONTROL_COUNT = NULLIF(INVOICE_CONTROL_COUNT, 0);'
      '    suspend;'
      '  end'
      'end'
      '')
    AfterOpen = ContragentsAfterScroll
    AfterScroll = ContragentsAfterScroll
    Transaction = trRead
    Database = DM.FB
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 384
    Top = 152
    WaitEndMasterScroll = True
    dcForceOpen = True
  end
  object dsContragents: TDataSource
    DataSet = Contragents
    Left = 464
    Top = 152
  end
  object BalanceDocuments: TpFIBDataSet
    SelectSQL.Strings = (
      'execute block('
      '  CONTRAGENT_ID T_PID = :CONTRAGENT_ID,'
      '  DATE_START T_date = :DATE_START,'
      '  DATE_END T_date = :DATE_END,'
      '  ONLY_ACCEPTED T_BOOLEAN = :ONLY_ACCEPTED'
      ') returns ('
      '  ID T_PID,'
      '  DOC_DATE T_DATE,'
      '  DELIVERY_DATE T_DATE,'
      '  DOC_NUM t_doc_num,'
      '  DOC_TYPE T_INT,         -- 1- '#1089#1095#1077#1090', 2 - '#1086#1087#1083#1072#1090#1072
      '  DOC_TYPE_NAME t_name,'
      '  AMOUNT_IN t_amount,'
      '  AMOUNT_OUT t_amount,'
      '  AMOUNT_DOLG T_AMOUNT,'
      '  DESCRIPTION t_description,'
      '  DOC_DESCRIPTION T_DESCRIPTION,'
      '  STATUS T_INT,'
      '  IN_CONTROL T_BOOLEAN,'
      '  PERIOD_DATE T_DATE'
      ')'
      'as'
      '  declare variable v_invoice_date t_date;'
      '  declare variable v_invoice_num t_doc_num;'
      '  declare variable v_invoice_id t_pid;'
      '  declare variable v_payment_type t_int;'
      '  declare variable D varchar(10);'
      'begin'
      '  if (ONLY_ACCEPTED is null) then'
      '    ONLY_ACCEPTED = 0;'
      '  for select * from ('
      '    select ID,'
      
        '      1 DOC_TYPE, I.doc_dt, I.DELIVERY_DATE, I.doc_num, I.amount' +
        ' AMOUNT_IN, null AMOUNT_OUT, description,'
      '      null invoice_id, null payment_type, I.STATUS,'
      '      coalesce(I.IN_CONTROL, 0) IN_CONTROL'
      '    from invoice I'
      '    where 1=1'
      
        '      and ((I.STATUS=2  and :ONLY_ACCEPTED=1) or (:ONLY_ACCEPTED' +
        '=0))'
      '      and I.contragent_id = :contragent_id'
      '      and (I.doc_dt >= :DATE_START or :DATE_START is null)'
      '      and (I.doc_dt <= :DATE_END or :DATE_END is null )'
      '--      and (cast(I.DOC_DT as T_DATE) <= current_date)'
      ''
      ''
      '    union all'
      ''
      '    select ID,'
      
        '      2 DOC_TYPE, P.doc_dt, null DELIVERY_DATE, P.doc_num, null ' +
        'AMOUNT_IN, P.amount AMOUNT_OUT, P.description,'
      
        '      P.invoice_id invoice_id, P.payment_type payment_type, P.ST' +
        'ATUS,'
      '      0 IN_CONTROL'
      '     from payments P'
      '     where  1=1'
      
        '      and ((P.STATUS=2  and :ONLY_ACCEPTED=1) or (:ONLY_ACCEPTED' +
        '=0))'
      '--      and P.STATUS=2'
      '      and P.contragent_id = :contragent_id'
      '      and (P.doc_dt >= :DATE_START or :DATE_START is null)'
      '      and (P.doc_dt <= :DATE_END or :DATE_END is null )'
      ''
      '  ) DOCS'
      '  order by DOCS.DOC_DT, DOCS.DOC_NUM'
      '  into :ID,'
      
        '    :doc_type, :doc_date, :DELIVERY_DATE, :doc_num, :amount_in, ' +
        ':amount_out, :doc_description,'
      '    :v_invoice_id, :v_payment_type, :STATUS, :IN_CONTROL'
      '   do begin'
      '     description = '#39#39';'
      '    if (DOC_TYPE=1) then begin'
      '      DOC_TYPE_NAME = '#39#1057#1095#1077#1090' '#1085#1072' '#1086#1087#1083#1072#1090#1091#39';'
      
        '      select coalesce(sum(P.AMOUNT), 0) from PAYMENTS P where P.' +
        'INVOICE_ID=:ID and P.STATUS=2 into :AMOUNT_OUT;'
      '      AMOUNT_DOLG = AMOUNT_IN - AMOUNT_OUT;'
      '      AMOUNT_OUT = null;'
      '    end else begin'
      '      AMOUNT_DOLG = null;'
      
        '      DOC_TYPE_NAME = decode(:v_payment_type, 1, '#39#1054#1087#1083#1072#1090#1072' - '#1041#1072#1085#1082#39 +
        ', 2, '#39#1054#1087#1083#1072#1090#1072' - '#1050#1072#1089#1089#1072#39');'
      '      v_invoice_num = '#39#39';'
      '      if (:v_invoice_id is not null) then begin'
      
        '        select i.doc_dt, i.doc_num from invoice i where i.id = :' +
        'v_invoice_id into :v_invoice_date, :v_invoice_num;'
      '      end'
      '      select STR from SP_DATE_FORMAT(:v_invoice_date) into :d;'
      
        '      description = '#39#1054#1087#1083#1072#1090#1072' '#1089#1095#1077#1090#1072' '#39' || :v_invoice_num || '#39' '#1086#1090' '#39'|' +
        '| :d;'
      '    end'
      
        '    PERIOD_DATE = '#39'01.'#39'||extract(MONTH from DOC_DATE)||'#39'.'#39'||extr' +
        'act(YEAR from DOC_DATE);'
      '    suspend;'
      '  end'
      ''
      ''
      ''
      'end')
    Transaction = trRead
    Database = DM.FB
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 48
    Top = 152
  end
  object dsBalanceDocuments: TDataSource
    DataSet = BalanceDocuments
    OnDataChange = dsBalanceDocumentsDataChange
    Left = 144
    Top = 152
  end
  object Tree: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select -1 ID, null PID, '#39#1042#1089#1077#39' NAME, 22 CHILD_EXISTS from rdb$dat' +
        'abase'
      ''
      'union all'
      'select * from ('
      'select'
      '  C.ID,'
      '  IIF(C.ID=C.PID, -1, C.PID) PID,'
      '  IIF(TRIM(C.NAME)='#39#39', '#39'?????'#39', C.NAME) NAME,'
      
        '  (IIF(EXISTS(select 1 from contragents where pid=c.id), 22, NUL' +
        'L)) CHILD_EXISTS'
      'from'
      '  CONTRAGENTS C'
      'where'
      '  C.IS_FOLDER=1'
      'order by C.NAME'
      ')')
    AfterScroll = TreeAfterScroll
    Transaction = trRead
    Database = DM.FB
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 8
    Top = 64
  end
  object dsTree: TDataSource
    DataSet = Tree
    Left = 48
    Top = 64
  end
  object Documents: TpFIBDataSet
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'select'
      
        '  ID, DOCUMENT_TYPE, DESCRIPTION, FILENAME, CREATED_by_user_ID, ' +
        'CREATED_DT,'
      '  cast(FILESIZE/1024.0 as T_AMOUNT) FILESIZE'
      'from documents doc where doc.id=:id')
    SelectSQL.Strings = (
      'select'
      
        '  ID, DOCUMENT_TYPE, DESCRIPTION, FILENAME, CREATED_by_user_ID, ' +
        'CREATED_DT,'
      '  cast(FILESIZE/1024.0 as T_AMOUNT) FILESIZE'
      'from documents doc where doc.CONTRAGENT_ID=:CONTRAGENT_ID')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 48
    Top = 264
    WaitEndMasterScroll = True
    dcForceMasterRefresh = True
    dcForceOpen = True
  end
  object dsDocuments: TDataSource
    DataSet = Documents
    OnDataChange = dsDocumentsDataChange
    Left = 144
    Top = 264
  end
  object ContractAddress: TpFIBDataSet
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      '')
    SelectSQL.Strings = (
      'select'
      '  SRV.ID,'
      '  C.NAME CONTRAGENT_NAME,'
      '  CA.NAME ADDRESS, CA.CONTACT_NAME, CA.PHONE,'
      '  M.DESCRIPTION MAT_NAME,'
      '  M.WIDTH, M.HEIGHT,'
      '  cast((M.WIDTH * M.HEIGHT) / 10000.000 as T_SQUARE) SQUARE,'
      ''
      
        '  cast(NULLIF((SRV.PRICE_REPLACE / (M.WIDTH * M.HEIGHT / 10000.0' +
        '00)), 0) as T_AMOUNT)  PRICE_REPLACE_SQUARE,'
      ''
      '  NULLIF(SRV.PRICE_REPLACE, 0) PRICE_REPLACE,'
      '  NULLIF(SRV.PRICE_PERIOD, 0) PRICE_PERIOD,'
      '  NULLIF(SRV.PRICE_REFUND, 0) PRICE_REFUND,'
      '  SRV.DESCRIPTION SERVICE_NAME,'
      '  nullif(SRV.QTY_MAT, 0) QTY_MAT ,'
      
        '  IIF(SRV.WEEK_1=1, '#39'1'#39', '#39' '#39')||IIF(SRV.WEEK_2=1, '#39'2'#39', '#39' '#39')||IIF(' +
        'SRV.WEEK_3=1, '#39'3'#39', '#39' '#39')||IIF(SRV.WEEK_4=1, '#39'4'#39', '#39' '#39') WEEKS,'
      
        '  IIF(SRV.DAY_1=1, '#39#1055#1085#39', '#39'  '#39')||IIF(SRV.DAY_2=1, '#39#1042#1090#39', '#39'  '#39')||II' +
        'F(SRV.DAY_3=1, '#39#1057#1088#39', '#39'  '#39')||IIF(SRV.DAY_4=1, '#39#1063#1090#39', '#39'  '#39')||IIF(SR' +
        'V.DAY_5=1, '#39#1055#1090#39', '#39'  '#39')||IIF(SRV.DAY_6=1, '#39#1057#1073#39', '#39'  '#39')||IIF(SRV.DA' +
        'Y_7=1, '#39#1042#1089#39', '#39'  '#39') DAYS,'
      
        '  IIF((SRV.DAY_1=1 or SRV.DAY_2=1 or SRV.DAY_3=1 or SRV.DAY_4=1 ' +
        'or SRV.DAY_5=1 or SRV.DAY_6=1 or SRV.DAY_7=1), 1, 0) IS_ACTIVE,'
      '  R.DESCRIPTION REGION_NAME,'
      '  coalesce(CA.IS_MAT_FILTER, 0) IS_MAT_FILTER'
      ''
      'from'
      
        '  ADDRESS_SERVICE SRV, CONTRACT_ADDRESS  CA, CONTRAGENTS_CONTRAC' +
        'T, CONTRAGENTS C, REF_MAT M, SERVICE_REGIONS R'
      'where 1=1'
      
        '--  (SRV.DAY_1>0 OR SRV.DAY_2>0 OR SRV.DAY_3>0 OR SRV.DAY_4>0 OR' +
        ' SRV.DAY_5>0 OR SRV.DAY_6>0 OR SRV.DAY_7>0)'
      '  and C.ID=coalesce(:CONTRAGENT_ID, 1461)'
      '  and CA.ID=SRV.ADDRESS_ID and SRV.IS_ACTIVE=1'
      '  and CONTRAGENTS_CONTRACT.ID=CA.CONTRACT_ID'
      '  and C.ID=CONTRAGENTS_CONTRACT.CONTRAGENT_ID'
      '  and M.ID=SRV.MAT_ID'
      '  and R.ID=CA.REGION_ID'
      '--  and C.NAME containing '#39#1082#1086#1085#1086#1074#1072#1083#1086#1074#39)
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 48
    Top = 320
    WaitEndMasterScroll = True
    dcForceMasterRefresh = True
    dcForceOpen = True
  end
  object dsContractAddress: TDataSource
    DataSet = ContractAddress
    OnDataChange = dsDocumentsDataChange
    Left = 144
    Top = 320
  end
  object DocDog: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      '  doc.id, doc.CONTRAGENT_ID, doc.EXT, doc.CREATED_BY_USER_ID,'
      '  DD.SUMMER_DATE, DD.WINTER_DATE,'
      '  coalesce(dd.modify_dt, dd.created_dt) DOC_DT,'
      
        '  DD.NOMER_DOG, DD.DATE_START, DD.DATE_END, DD.DOG_TYPE, DD.DESC' +
        'RIPTION,'
      '  C.NAME'
      'from DOCUMENTS DOC'
      'left join DOCUMENTS_DOG DD on DD.ID=DOC.ID'
      'left join CONTRAGENTS C on C.ID=DOC.CONTRAGENT_ID'
      'where'
      '  DOC.id=:ID')
    SelectSQL.Strings = (
      'select'
      '  doc.id, doc.EXT, doc.CREATED_BY_USER_ID,'
      '  DD.SUMMER_DATE,'
      '  DD.WINTER_DATE,'
      '  coalesce(dd.modify_dt, dd.created_dt) DOC_DT,'
      '  coalesce(DD.NOMER_DOG, '#39'-- '#1053#1045' '#1047#1040#1055#1054#1051#1053#1045#1053#1054' --'#39') NOMER_DOG,'
      '  DD.DATE_START, DD.DATE_END, DD.DOG_TYPE,'
      
        '  coalesce(DD.DESCRIPTION, '#39'-- '#1044#1040#1053#1053#1067#1045' '#1053#1045' '#1047#1040#1055#1054#1051#1053#1045#1053#1067' --'#39') DESCRIPT' +
        'ION,'
      '  C.NAME'
      'from DOCUMENTS DOC'
      'left join DOCUMENTS_DOG DD on DD.ID=DOC.ID'
      'left join VW_CONTRAGENTS C on C.ID=DOC.CONTRAGENT_ID'
      'where'
      '  DOC.DOCUMENT_TYPE=2'
      '  and C.ID = coalesce(:CONTRAGENT_ID, 2917)'
      '')
    Transaction = trRead
    Database = DM.FB
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 264
    Top = 520
  end
  object dsDocDog: TDataSource
    DataSet = DocDog
    OnDataChange = dsDocDogDataChange
    Left = 312
    Top = 520
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 384
    Top = 208
    qoStartTransaction = True
  end
end
