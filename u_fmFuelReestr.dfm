inherited fmFuelReestr: TfmFuelReestr
  Caption = #1059#1095#1077#1090' '#1087#1086#1090#1088#1077#1073#1083#1077#1085#1080#1103' '#1088#1077#1089#1091#1088#1089#1086#1074
  ClientHeight = 742
  ClientWidth = 1020
  OnCreate = FormCreate
  ExplicitWidth = 1036
  ExplicitHeight = 780
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1020
    Visible = False
    ExplicitWidth = 1020
    ExplicitHeight = 3
  end
  object Pages: TcxPageControl [1]
    Left = 0
    Top = 3
    Width = 1020
    Height = 739
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabReport
    Properties.CustomButtons.Buttons = <>
    OnChange = PagesChange
    ClientRectBottom = 733
    ClientRectLeft = 2
    ClientRectRight = 1014
    ClientRectTop = 27
    object tabData: TcxTabSheet
      Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
      ImageIndex = 0
      object gridData: TcxGrid
        Left = 0
        Top = 31
        Width = 1012
        Height = 675
        Align = alClient
        TabOrder = 0
        object viewFuel: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDATA
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = viewFuel_1
            end
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'DAY_1_FUEL'
              Column = viewFuel_1
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = viewFuel_2
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_2
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_3
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_4
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_5
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_6
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_7
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_ALL
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_1
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_2
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_3
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_4
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_5
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_6
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_7
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewFuel_ALL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GridLines = glVertical
          OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
          OptionsView.HeaderAutoHeight = True
          OptionsView.BandHeaders = False
          Bands = <
            item
            end>
          object viewFuel_AUTO_ID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AUTO_ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object viewFuel_PRODUCTON_NAME: TcxGridDBBandedColumn
            Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
            DataBinding.FieldName = 'PRODUCTON_NAME'
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = False
            GroupIndex = 0
            MinWidth = 120
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object viewFuel_AUTO_GOS_NOMER: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088
            DataBinding.FieldName = 'AUTO_GOS_NOMER'
            PropertiesClassName = 'TcxTextEditProperties'
            MinWidth = 90
            Options.Editing = False
            Options.HorzSizing = False
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object viewFuel_AUTO_MODEL: TcxGridDBBandedColumn
            Caption = #1052#1086#1076#1077#1083#1100
            DataBinding.FieldName = 'AUTO_MODEL'
            PropertiesClassName = 'TcxTextEditProperties'
            MinWidth = 140
            Options.Editing = False
            Options.HorzSizing = False
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object viewFuel_FUEL_TYPE: TcxGridDBBandedColumn
            Caption = #1058#1086#1087#1083#1080#1074#1086
            DataBinding.FieldName = 'FUEL_TYPE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #1040#1048'-92'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #1044#1058
                Value = 1
              end>
            MinWidth = 50
            Options.Editing = False
            Options.HorzSizing = False
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object viewFuel_1: TcxGridDBBandedColumn
            Tag = 1
            Caption = #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082
            DataBinding.FieldName = 'DAY_1_FUEL'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.ReadOnly = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Styles.Content = DM.cxStyleBlue
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object viewFuel_2: TcxGridDBBandedColumn
            Tag = 2
            Caption = #1042#1090#1086#1088#1085#1080#1082
            DataBinding.FieldName = 'DAY_2_FUEL'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object viewFuel_3: TcxGridDBBandedColumn
            Tag = 3
            Caption = #1057#1088#1077#1076#1072
            DataBinding.FieldName = 'DAY_3_FUEL'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object viewFuel_4: TcxGridDBBandedColumn
            Tag = 4
            Caption = #1063#1077#1090#1074#1077#1088#1075
            DataBinding.FieldName = 'DAY_4_FUEL'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object viewFuel_5: TcxGridDBBandedColumn
            Tag = 5
            Caption = #1055#1103#1090#1085#1080#1094#1072
            DataBinding.FieldName = 'DAY_5_FUEL'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object viewFuel_6: TcxGridDBBandedColumn
            Tag = 6
            Caption = #1057#1091#1073#1073#1086#1090#1072
            DataBinding.FieldName = 'DAY_6_FUEL'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            SortIndex = 1
            SortOrder = soAscending
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object viewFuel_7: TcxGridDBBandedColumn
            Tag = 7
            Caption = #1042#1086#1089#1082#1088#1077#1089#1077#1085#1100#1077
            DataBinding.FieldName = 'DAY_7_FUEL'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object viewFuel_ALL: TcxGridDBBandedColumn
            Caption = #1047#1072' 7 '#1076#1085#1077#1081
            DataBinding.FieldName = 'ALLDAYS_FUEL'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taRightJustify
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Styles.Content = DM.cxStyleRedBgnd
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object viewKM: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDATA
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_1
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_2
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_3
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_4
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_5
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_6
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_7
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_ALL
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_1
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_2
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_3
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_4
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_5
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_6
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_7
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewKM_ALL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.BandMoving = False
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GridLines = glVertical
          OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
          OptionsView.BandHeaders = False
          Bands = <
            item
            end>
          object viewKM_AUTO_ID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AUTO_ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object viewKM_PRODUCTON_NAME: TcxGridDBBandedColumn
            Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
            DataBinding.FieldName = 'PRODUCTON_NAME'
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = False
            GroupIndex = 0
            MinWidth = 120
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object viewKM_AUTO_GOS_NOMER: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088
            DataBinding.FieldName = 'AUTO_GOS_NOMER'
            PropertiesClassName = 'TcxTextEditProperties'
            MinWidth = 100
            Options.Editing = False
            Options.HorzSizing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object viewKM_AUTO_MODEL: TcxGridDBBandedColumn
            Caption = #1052#1086#1076#1077#1083#1100
            DataBinding.FieldName = 'AUTO_MODEL'
            PropertiesClassName = 'TcxTextEditProperties'
            MinWidth = 100
            Options.Editing = False
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object viewKMFUEL_TYPE: TcxGridDBBandedColumn
            Caption = #1058#1086#1087#1083#1080#1074#1086
            DataBinding.FieldName = 'FUEL_TYPE'
            RepositoryItem = DM.erFuelType
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object viewKM_1: TcxGridDBBandedColumn
            Tag = 1
            Caption = #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082
            DataBinding.FieldName = 'DAY_1'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            MinWidth = 100
            Styles.Content = DM.cxStyleBlue
            Styles.Footer = DM.cxStyleBlue
            Styles.GroupSummary = DM.cxStyleBlue
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object viewKM_2: TcxGridDBBandedColumn
            Tag = 2
            Caption = #1042#1090#1086#1088#1085#1080#1082
            DataBinding.FieldName = 'DAY_2'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            MinWidth = 100
            Styles.Content = DM.cxStyleBlue
            Styles.Footer = DM.cxStyleBlue
            Styles.GroupSummary = DM.cxStyleBlue
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object viewKM_3: TcxGridDBBandedColumn
            Tag = 3
            Caption = #1057#1088#1077#1076#1072
            DataBinding.FieldName = 'DAY_3'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            MinWidth = 100
            Styles.Content = DM.cxStyleBlue
            Styles.Footer = DM.cxStyleBlue
            Styles.GroupSummary = DM.cxStyleBlue
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object viewKM_4: TcxGridDBBandedColumn
            Tag = 4
            Caption = #1063#1077#1090#1074#1077#1088#1075
            DataBinding.FieldName = 'DAY_4'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            MinWidth = 100
            Styles.Content = DM.cxStyleBlue
            Styles.Footer = DM.cxStyleBlue
            Styles.GroupSummary = DM.cxStyleBlue
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object viewKM_5: TcxGridDBBandedColumn
            Tag = 5
            Caption = #1055#1103#1090#1085#1080#1094#1072
            DataBinding.FieldName = 'DAY_5'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            MinWidth = 100
            Styles.Content = DM.cxStyleBlue
            Styles.Footer = DM.cxStyleBlue
            Styles.GroupSummary = DM.cxStyleBlue
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object viewKM_6: TcxGridDBBandedColumn
            Tag = 6
            Caption = #1057#1091#1073#1073#1086#1090#1072
            DataBinding.FieldName = 'DAY_6'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            MinWidth = 100
            Styles.Content = DM.cxStyleBlue
            Styles.Footer = DM.cxStyleBlue
            Styles.GroupSummary = DM.cxStyleBlue
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object viewKM_7: TcxGridDBBandedColumn
            Tag = 7
            Caption = #1042#1086#1089#1082#1088#1077#1089#1077#1085#1100#1077
            DataBinding.FieldName = 'DAY_7'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ImmediateDropDownWhenActivated = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.PopupControl = panelList
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            MinWidth = 100
            Styles.Content = DM.cxStyleBlue
            Styles.Footer = DM.cxStyleBlue
            Styles.GroupSummary = DM.cxStyleBlue
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object viewKM_ALL: TcxGridDBBandedColumn
            Caption = #1047#1072' 7 '#1076#1085#1077#1081
            DataBinding.FieldName = 'DAY_ALL'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 64
            Options.Editing = False
            Styles.Content = DM.cxStyleRedBgnd
            Styles.GroupSummary = DM.cxStyleBlue
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object viewResources: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsResource
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = viewResourcesDAY_1
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_1
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = viewResourcesDAY_2
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_2
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = viewResourcesDAY_3
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = viewResourcesDAY_4
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = viewResourcesDAY_5
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = viewResourcesDAY_6
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = viewResourcesDAY_7
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = viewResourcesDAY_ALL
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_3
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_4
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_5
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_6
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_7
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_ALL
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_1
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_2
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_3
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_4
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_5
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_6
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_7
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = viewResourcesDAY_ALL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
          OptionsView.BandHeaders = False
          Bands = <
            item
            end>
          object viewResourcesRESOURCE_NAME: TcxGridDBBandedColumn
            Caption = #1056#1077#1089#1091#1088#1089
            DataBinding.FieldName = 'RESOURCE_NAME'
            Options.Editing = False
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object viewResourcesRESOURCE_TYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RESOURCE_TYPE'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object viewResourcesPRODUCTON_ID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRODUCTON_ID'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object viewResourcesPRODUCTON_NAME: TcxGridDBBandedColumn
            Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
            DataBinding.FieldName = 'PRODUCTON_NAME'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object viewResourcesDAY_1: TcxGridDBBandedColumn
            Tag = 1
            DataBinding.FieldName = 'DAY_1'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.ClearKey = 46
            Properties.PopupClientEdge = True
            Properties.PopupControl = panelResource
            Properties.PopupSizeable = False
            Properties.PopupSysPanelStyle = True
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            MinWidth = 90
            Options.HorzSizing = False
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object viewResourcesDAY_2: TcxGridDBBandedColumn
            Tag = 2
            DataBinding.FieldName = 'DAY_2'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.ClearKey = 46
            Properties.PopupClientEdge = True
            Properties.PopupControl = panelResource
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            MinWidth = 90
            Options.HorzSizing = False
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object viewResourcesDAY_3: TcxGridDBBandedColumn
            Tag = 3
            DataBinding.FieldName = 'DAY_3'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.ClearKey = 46
            Properties.PopupClientEdge = True
            Properties.PopupControl = panelResource
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            MinWidth = 90
            Options.HorzSizing = False
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object viewResourcesDAY_4: TcxGridDBBandedColumn
            Tag = 4
            DataBinding.FieldName = 'DAY_4'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.ClearKey = 46
            Properties.PopupClientEdge = True
            Properties.PopupControl = panelResource
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            MinWidth = 90
            Options.HorzSizing = False
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object viewResourcesDAY_5: TcxGridDBBandedColumn
            Tag = 5
            DataBinding.FieldName = 'DAY_5'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.ClearKey = 46
            Properties.PopupClientEdge = True
            Properties.PopupControl = panelResource
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            MinWidth = 90
            Options.HorzSizing = False
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object viewResourcesDAY_6: TcxGridDBBandedColumn
            Tag = 6
            DataBinding.FieldName = 'DAY_6'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.ClearKey = 46
            Properties.PopupClientEdge = True
            Properties.PopupControl = panelResource
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            MinWidth = 90
            Options.HorzSizing = False
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object viewResourcesDAY_7: TcxGridDBBandedColumn
            Tag = 7
            DataBinding.FieldName = 'DAY_7'
            PropertiesClassName = 'TcxPopupEditProperties'
            Properties.ClearKey = 46
            Properties.PopupClientEdge = True
            Properties.PopupControl = panelResource
            Properties.OnInitPopup = TableViewDAY_2PropertiesInitPopup
            MinWidth = 90
            Options.HorzSizing = False
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object viewResourcesDAY_ALL: TcxGridDBBandedColumn
            Caption = #1047#1072' 7 '#1076#1085#1077#1081
            DataBinding.FieldName = 'DAY_ALL'
            MinWidth = 90
            Options.HorzSizing = False
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object gridDataLevel1: TcxGridLevel
          GridView = viewResources
        end
      end
      object dockData: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1012
        Height = 31
        Align = dalTop
        BarManager = BM
      end
      object panelResource: TcxGroupBox
        Left = 40
        Top = 361
        Caption = #1056#1072#1089#1093#1086#1076' '#1093#1086#1083#1086#1076#1085#1086#1081' '#1074#1086#1076#1099', M'#179
        PanelStyle.Active = True
        TabOrder = 2
        Visible = False
        Height = 65
        Width = 193
        object editResource: TcxCurrencyEdit
          Left = 16
          Top = 24
          Properties.DisplayFormat = ',0.00;-,0.00'
          TabOrder = 0
          Width = 121
        end
        object btnResourceSave: TcxButton
          Left = 143
          Top = 24
          Width = 41
          Height = 22
          Caption = 'OK'
          Default = True
          TabOrder = 1
          OnClick = btnResourceSaveClick
        end
      end
    end
    object tabReport: TcxTabSheet
      Caption = #1054#1090#1095#1105#1090
      ImageIndex = 2
      object ReportCube: TcxDBPivotGrid
        Left = 0
        Top = 31
        Width = 1012
        Height = 675
        Align = alClient
        DataSource = dsREPORT
        Groups = <>
        OptionsDataField.AreaIndex = 1
        OptionsView.TotalsForSingleValues = True
        TabOrder = 0
        object cxDBPivotGrid1DOC_DATE: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          IsCaptionAssigned = True
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DOC_DATE'
          Visible = True
          Width = 130
          UniqueName = #1044#1072#1090#1072
        end
        object cxDBPivotGrid1KM: TcxDBPivotGridField
          Area = faData
          AreaIndex = 1
          IsCaptionAssigned = True
          Caption = #1050#1052
          DataBinding.FieldName = 'KM'
          Options.Sizing = False
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0;-,0'
          Visible = True
          Width = 60
          UniqueName = #1050#1052
        end
        object cxDBPivotGrid1PRODUCTION_ID: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          IsCaptionAssigned = True
          Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
          DataBinding.FieldName = 'PRODUCTION_ID'
          RepositoryItem = DM.erProduction
          Visible = True
          UniqueName = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
        end
        object cxDBPivotGrid1QTY_0: TcxDBPivotGridField
          AreaIndex = 0
          IsCaptionAssigned = True
          Caption = #1040#1048'92'
          DataBinding.FieldName = 'QTY_92'
          Options.Sizing = False
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0;-,0'
          Width = 40
          UniqueName = #1040#1048'92'
        end
        object cxDBPivotGrid1QTY_1: TcxDBPivotGridField
          AreaIndex = 1
          IsCaptionAssigned = True
          Caption = #1044#1058
          DataBinding.FieldName = 'QTY_DT'
          Options.Sizing = False
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0;-,0'
          Width = 40
          UniqueName = #1044#1058
        end
        object cxDBPivotGrid1ROUTE_COUNT: TcxDBPivotGridField
          Area = faData
          AreaIndex = 2
          IsCaptionAssigned = True
          Caption = #1052#1072#1088#1096'-'#1074
          DataBinding.FieldName = 'ROUTE_COUNT'
          Width = 60
          UniqueName = #1052#1072#1088#1096'-'#1074
        end
        object cxDBPivotGrid1ADDRESS_COUNT: TcxDBPivotGridField
          Area = faData
          AreaIndex = 3
          IsCaptionAssigned = True
          Caption = #1040#1076#1088#1077#1089#1086#1074
          DataBinding.FieldName = 'ADDRESS_COUNT'
          Visible = True
          Width = 60
          UniqueName = #1040#1076#1088#1077#1089#1086#1074
        end
        object cxDBPivotGrid1MAT_SQUARE: TcxDBPivotGridField
          Area = faData
          AreaIndex = 4
          IsCaptionAssigned = True
          Caption = #1055#1083#1086#1097#1072#1076#1100
          DataBinding.FieldName = 'MAT_SQUARE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0'
          Visible = True
          Width = 77
          UniqueName = #1055#1083#1086#1097#1072#1076#1100
        end
        object ReportCubeFUEL_TYPE: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 1
          IsCaptionAssigned = True
          Caption = #1058#1086#1087#1083#1080#1074#1086
          DataBinding.FieldName = 'FUEL_TYPE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #1040#1048'92'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = #1044#1058
              Value = '1'
            end>
          Visible = True
          UniqueName = #1058#1086#1087#1083#1080#1074#1086
        end
        object ReportCubeQTY: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          IsCaptionAssigned = True
          Caption = #1051#1080#1090#1088#1086#1074
          DataBinding.FieldName = 'QTY'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0'
          Visible = True
          Width = 60
          UniqueName = #1051#1080#1090#1088#1086#1074
        end
      end
      object dockReport: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1012
        Height = 31
        Align = dalTop
        BarManager = BM
      end
    end
  end
  object panelList: TPanel [2]
    Left = 506
    Top = 258
    Width = 479
    Height = 157
    TabOrder = 2
    Visible = False
    object GridInput: TcxGrid
      Left = 1
      Top = 32
      Width = 477
      Height = 124
      Align = alClient
      TabOrder = 0
      object viewInputFuel: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsInput
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0'
            Kind = skCount
            FieldName = 'ID'
            Column = viewInputFuelNAME
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'QTY'
            Column = viewInputFuelQTY
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'KM'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object viewInputFuelNAME: TcxGridDBColumn
          Caption = #1042#1086#1076#1080#1090#1077#1083#1100
          DataBinding.FieldName = 'DRIVER_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              Caption = #1042#1086#1076#1080#1090#1077#1083#1100
              FieldName = 'NAME'
            end>
          Properties.ListSource = dsDrivers
          MinWidth = 100
          Options.HorzSizing = False
          Width = 100
        end
        object viewInputFuelCARD_NUMBER: TcxGridDBColumn
          Caption = #1050#1072#1088#1090#1072
          DataBinding.FieldName = 'CARD_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              Caption = #1053#1086#1084#1077#1088' '#1082#1072#1088#1090#1099
              FieldName = 'CARD_NUMBER'
            end>
          Properties.ListSource = dsFuelCard
          MinWidth = 100
          Options.HorzSizing = False
          Width = 100
        end
        object viewInputFuelQTY: TcxGridDBColumn
          Caption = #1047#1072#1087#1088', '#1083
          DataBinding.FieldName = 'QTY'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 50
          Options.HorzSizing = False
          Width = 50
        end
        object viewInputFuelKM: TcxGridDBColumn
          Caption = #1055#1088#1086#1073#1077#1075
          DataBinding.FieldName = 'KM'
        end
        object viewInputFuelQTY_REMAIN: TcxGridDBColumn
          Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094', '#1083
          DataBinding.FieldName = 'QTY_REMAIN'
        end
      end
      object GridInputLevel1: TcxGridLevel
        GridView = viewInputFuel
      end
    end
    object dxBarDockControl2: TdxBarDockControl
      Left = 1
      Top = 1
      Width = 477
      Height = 31
      Align = dalTop
      BarManager = BM
    end
  end
  inherited BM: TdxBarManager
    AlwaysSaveText = True
    Top = 496
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      DockControl = dockData
      DockedDockControl = dockData
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbFuel'
        end
        item
          Visible = True
          ItemName = 'bbKM'
        end
        item
          Visible = True
          ItemName = 'bbResources'
        end
        item
          Visible = True
          ItemName = 'bbRoutes'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbLeft'
        end
        item
          Visible = True
          ItemName = 'bbDate'
        end
        item
          Visible = True
          ItemName = 'bbRight'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbExportData'
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
      Caption = #1056#1077#1076#1072#1082#1090#1086#1088
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1092
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbEditNew'
        end
        item
          Visible = True
          ItemName = 'bbEditDelete'
        end
        item
          Visible = True
          ItemName = 'bbEditSave'
        end
        item
          Visible = True
          ItemName = 'bbEditClose'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object BMBar2: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1054#1090#1095#1077#1090
      CaptionButtons = <>
      DockControl = dockReport
      DockedDockControl = dockReport
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1373
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbReportRefresh'
        end
        item
          Visible = True
          ItemName = 'bbReportStartDate'
        end
        item
          Visible = True
          ItemName = 'bbReportEndDate'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbExportReport'
        end
        item
          Visible = True
          ItemName = 'bbReport'
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
      WholeRow = False
    end
    object bbEditSave: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 12
      PaintStyle = psCaptionGlyph
      OnClick = bbEditSaveClick
    end
    object bbEditClose: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      ImageIndex = 47
      PaintStyle = psCaptionGlyph
      OnClick = bbEditCloseClick
    end
    object bbEditNew: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbEditNewClick
    end
    object bbEditDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      OnClick = bbEditDeleteClick
    end
    object bbDate: TdxBarDateCombo
      Caption = #1044#1072#1090#1072
      Category = 0
      Hint = #1044#1072#1090#1072
      Visible = ivAlways
      OnChange = bbDateChange
      OnCurChange = bbDateCurChange
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFF0000
        00FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080FF0000
        80FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFF000080FF000080FF000080FF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FF00000000FF800000FF8000
        00FF800000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00000000FF800000FF8000
        00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF0000
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ShowEditor = False
    end
    object bbLeft: TdxBarButton
      Caption = #1053#1072#1079#1072#1076
      Category = 0
      Hint = #1053#1072#1079#1072#1076
      Visible = ivAlways
      ImageIndex = 50
      PaintStyle = psCaptionGlyph
      OnClick = bbLeftClick
    end
    object bbRight: TdxBarButton
      Caption = #1042#1087#1077#1088#1077#1076
      Category = 0
      Hint = #1042#1087#1077#1088#1077#1076
      Visible = ivAlways
      ImageIndex = 49
      PaintStyle = psCaptionGlyph
      OnClick = bbRightClick
    end
    object bbFuel: TdxBarButton
      Caption = #1056#1072#1089#1093#1086#1076' '#1090#1086#1087#1083#1080#1074#1072
      Category = 0
      Hint = #1056#1072#1089#1093#1086#1076' '#1090#1086#1087#1083#1080#1074#1072
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbFuelClick
    end
    object bbKM: TdxBarButton
      Caption = #1055#1088#1086#1073#1077#1075' '#1072#1074#1090#1086
      Category = 0
      Hint = #1055#1088#1086#1073#1077#1075' '#1072#1074#1090#1086
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbKMClick
    end
    object bbReportRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = bbReportRefreshClick
    end
    object bbReportStartDate: TdxBarDateCombo
      Caption = #1053#1072#1095#1072#1083#1086
      Category = 0
      Hint = #1053#1072#1095#1072#1083#1086
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFF0000
        00FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080FF0000
        80FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFF000080FF000080FF000080FF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FF00000000FF800000FF8000
        00FF800000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00000000FF800000FF8000
        00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF0000
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ShowCaption = True
      ShowEditor = False
      OnCloseUp = bbReportStartDateCloseUp
      ShowClearButton = False
    end
    object bbReportEndDate: TdxBarDateCombo
      Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
      Category = 0
      Hint = #1054#1082#1086#1085#1095#1072#1085#1080#1077
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFF0000
        00FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000080FF000080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080FF0000
        80FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFF000080FF000080FF000080FF0000
        80FF000080FFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFF000080FF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FF800000FF800000FF800000FF800000FF800000FF8000
        00FF800000FF800000FF800000FF000000FFFF00FF00000000FF800000FF8000
        00FF800000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFFF00FF00000000FF800000FF8000
        00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF0000
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ShowCaption = True
      ShowEditor = False
      OnCloseUp = bbReportStartDateCloseUp
      ShowClearButton = False
    end
    object bbResources: TdxBarButton
      Caption = #1055#1086#1090#1088#1077#1073#1083#1077#1085#1080#1077' '#1074#1086#1076#1099' '#1080' '#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1090#1074#1072
      Category = 0
      Hint = #1055#1086#1090#1088#1077#1073#1083#1077#1085#1080#1077' '#1074#1086#1076#1099' '#1080' '#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1090#1074#1072
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbResourcesClick
    end
    object bbExportData: TdxBarButton
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Hint = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 28
      PaintStyle = psCaptionGlyph
      OnClick = bbExportDataClick
    end
    object bbExportReport: TdxBarButton
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Hint = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 28
      PaintStyle = psCaptionGlyph
      OnClick = bbExportReportClick
    end
    object bbReport: TdxBarButton
      Caption = #1054#1090#1095#1105#1090
      Category = 0
      Hint = #1054#1090#1095#1105#1090
      Visible = ivNever
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = bbReportClick
    end
    object bbRoutes: TdxBarButton
      Caption = #1052#1072#1088#1096#1088#1091#1090#1099
      Category = 0
      Hint = #1052#1072#1088#1096#1088#1091#1090#1099
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbRoutesClick
    end
  end
  object dataFUEL: TpFIBDataSet
    RefreshSQL.Strings = (
      'execute block('
      '  AUTO_ID T_ID=:AUTO_ID,'
      '  DATE_START T_DATE = :DATE_START'
      ')'
      'returns('
      '  AUTO_GOS_NOMER T_NAME,'
      '  AUTO_MODEL T_NAME,'
      '  FUEL_TYPE T_INT,'
      '  PRODUCTON_NAME T_NAME,'
      '  DAY_1_FUEL T_INT,'
      '  DAY_2_FUEL T_INT,'
      '  DAY_3_FUEL T_INT,'
      '  DAY_4_FUEL T_INT,'
      '  DAY_5_FUEL T_INT,'
      '  DAY_6_FUEL T_INT,'
      '  DAY_7_FUEL T_INT,'
      '  ALLDAYS_FUEL T_INT,'
      '  DAY_1_KM T_INT,'
      '  DAY_2_KM T_INT,'
      '  DAY_3_KM T_INT,'
      '  DAY_4_KM T_INT,'
      '  DAY_5_KM T_INT,'
      '  DAY_6_KM T_INT,'
      '  DAY_7_KM T_INT,'
      '  ALLDAYS_KM T_INT'
      ')'
      'as'
      '  declare variable vDATE T_DATE;'
      '  declare variable vDAY T_INT;'
      '  declare variable vQTY T_INT;'
      '  declare variable vKM T_INT;'
      '  declare variable DATE_END T_DATE;'
      'begin'
      '  if (DATE_START is null) then'
      '    DATE_START = current_date;'
      '  DATE_END = DateAdd(6 DAY to DATE_START);'
      '  select'
      '    A.GOS_NOMER, A.MODEL_NAME, coalesce(A.FUEL_TYPE, 0), P.NAME'
      '  from AUTOMOBILE A'
      '  left join REF_PRODUCTIONS P on P.ID=A.PRODUCTION_ID'
      '  where'
      '    A.ID=:AUTO_ID'
      '  into'
      '    :AUTO_GOS_NOMER, :AUTO_MODEL, :FUEL_TYPE, :PRODUCTON_NAME;'
      ''
      
        '  DAY_1_FUEL = 0; DAY_2_FUEL = 0; DAY_3_FUEL = 0; DAY_4_FUEL = 0' +
        '; DAY_5_FUEL = 0; DAY_6_FUEL = 0; DAY_7_FUEL = 0; ALLDAYS_FUEL =' +
        ' 0;'
      
        '  DAY_1_KM = 0; DAY_2_KM = 0; DAY_3_KM = 0; DAY_4_KM = 0; DAY_5_' +
        'KM = 0; DAY_6_KM = 0; DAY_7_KM = 0; ALLDAYS_KM = 0;'
      '  for'
      
        '    select R.DOC_DATE, coalesce(R.QTY, 0), coalesce(R.KM, 0) fro' +
        'm FUEL_REESTR R'
      '    where'
      '      R.AUTO_ID=:AUTO_ID'
      '      and R.DOC_DATE between :DATE_START and :DATE_END'
      '    into :vDATE, :vQTY, :vKM'
      '  do begin'
      '    vDAY = vDATE - DATE_START + 1;'
      ''
      '    DAY_1_FUEL = DAY_1_FUEL + IIF(vDAY=1, vQTY, 0);'
      '    DAY_2_FUEL = DAY_2_FUEL + IIF(vDAY=2, vQTY, 0);'
      '    DAY_3_FUEL = DAY_3_FUEL + IIF(vDAY=3, vQTY, 0);'
      '    DAY_4_FUEL = DAY_4_FUEL + IIF(vDAY=4, vQTY, 0);'
      '    DAY_5_FUEL = DAY_5_FUEL + IIF(vDAY=5, vQTY, 0);'
      '    DAY_6_FUEL = DAY_6_FUEL + IIF(vDAY=6, vQTY, 0);'
      '    DAY_7_FUEL = DAY_7_FUEL + IIF(vDAY=7, vQTY, 0);'
      '    ALLDAYS_FUEL = ALLDAYS_FUEL+vQTY;'
      ''
      '    DAY_1_KM = DAY_1_KM + IIF(vDAY=1, vKM, 0);'
      '    DAY_2_KM = DAY_2_KM + IIF(vDAY=2, vKM, 0);'
      '    DAY_3_KM = DAY_3_KM + IIF(vDAY=3, vKM, 0);'
      '    DAY_4_KM = DAY_4_KM + IIF(vDAY=4, vKM, 0);'
      '    DAY_5_KM = DAY_5_KM + IIF(vDAY=5, vKM, 0);'
      '    DAY_6_KM = DAY_6_KM + IIF(vDAY=6, vKM, 0);'
      '    DAY_7_KM = DAY_7_KM + IIF(vDAY=7, vKM, 0);'
      '    ALLDAYS_KM = ALLDAYS_KM+vKM;'
      '  end'
      '  DAY_1_FUEL = nullif(DAY_1_FUEL, 0);'
      '  DAY_2_FUEL = nullif(DAY_2_FUEL, 0);'
      '  DAY_3_FUEL = nullif(DAY_3_FUEL, 0);'
      '  DAY_4_FUEL = nullif(DAY_4_FUEL, 0);'
      '  DAY_5_FUEL = nullif(DAY_5_FUEL, 0);'
      '  DAY_6_FUEL = nullif(DAY_6_FUEL, 0);'
      '  DAY_7_FUEL = nullif(DAY_7_FUEL, 0);'
      '  ALLDAYS_FUEL = nullif(ALLDAYS_FUEL, 0);'
      '  DAY_1_KM = nullif(DAY_1_KM, 0);'
      '  DAY_2_KM = nullif(DAY_2_KM, 0);'
      '  DAY_3_KM = nullif(DAY_3_KM, 0);'
      '  DAY_4_KM = nullif(DAY_4_KM, 0);'
      '  DAY_5_KM = nullif(DAY_5_KM, 0);'
      '  DAY_6_KM = nullif(DAY_6_KM, 0);'
      '  DAY_7_KM = nullif(DAY_7_KM, 0);'
      '  ALLDAYS_KM = nullif(ALLDAYS_KM, 0);'
      '  suspend;'
      ''
      'end')
    SelectSQL.Strings = (
      'execute block('
      '  DATE_START T_DATE = :DATE_START'
      ')'
      'returns('
      '  AUTO_ID T_ID,'
      '  AUTO_GOS_NOMER T_NAME,'
      '  AUTO_MODEL T_NAME,'
      '  FUEL_TYPE T_INT,'
      '  PRODUCTON_NAME T_NAME,'
      '  DAY_1_FUEL T_INT,'
      '  DAY_2_FUEL T_INT,'
      '  DAY_3_FUEL T_INT,'
      '  DAY_4_FUEL T_INT,'
      '  DAY_5_FUEL T_INT,'
      '  DAY_6_FUEL T_INT,'
      '  DAY_7_FUEL T_INT,'
      '  ALLDAYS_FUEL T_INT,'
      '  DAY_1_KM T_INT,'
      '  DAY_2_KM T_INT,'
      '  DAY_3_KM T_INT,'
      '  DAY_4_KM T_INT,'
      '  DAY_5_KM T_INT,'
      '  DAY_6_KM T_INT,'
      '  DAY_7_KM T_INT,'
      '  ALLDAYS_KM T_INT'
      ')'
      'as'
      '  declare variable vDATE T_DATE;'
      '  declare variable vDAY T_INT;'
      '  declare variable vQTY T_INT;'
      '  declare variable vKM T_INT;'
      '  declare variable DATE_END T_DATE;'
      'begin'
      '  DATE_START = coalesce(DATE_START, current_date);'
      '  DATE_END = DateAdd(6 DAY to DATE_START);'
      ''
      '  for select'
      
        '    A.ID, A.GOS_NOMER, A.MODEL_NAME, coalesce(A.FUEL_TYPE, 0), P' +
        '.NAME'
      '  from AUTOMOBILE A'
      '  left join REF_PRODUCTIONS P on P.ID=A.PRODUCTION_ID'
      '  where'
      '    coalesce(A.IS_ACTIVE, 1)=1'
      
        '--    and ((A.PRODUCTION_ID=:PRODUCTION_ID) or (:PRODUCTION_ID i' +
        's null))'
      '  into'
      
        '    :AUTO_ID, :AUTO_GOS_NOMER, :AUTO_MODEL, :FUEL_TYPE, :PRODUCT' +
        'ON_NAME'
      '  do begin'
      
        '    DAY_1_FUEL = 0; DAY_2_FUEL = 0; DAY_3_FUEL = 0; DAY_4_FUEL =' +
        ' 0; DAY_5_FUEL = 0; DAY_6_FUEL = 0; DAY_7_FUEL = 0; ALLDAYS_FUEL' +
        ' = 0;'
      
        '    DAY_1_KM = 0; DAY_2_KM = 0; DAY_3_KM = 0; DAY_4_KM = 0; DAY_' +
        '5_KM = 0; DAY_6_KM = 0; DAY_7_KM = 0; ALLDAYS_KM = 0;'
      ''
      '    if (:FUEL_TYPE<10) then begin'
      '      -- '#1040#1074#1090#1086#1084#1086#1073#1080#1083#1080' - '#1079#1072#1087#1088#1072#1074#1082#1080' '#1080' '#1087#1088#1086#1073#1077#1075
      '      for'
      
        '        select R.DOC_DATE, coalesce(R.QTY, 0), coalesce(R.KM, 0)' +
        ' from FUEL_REESTR R'
      '        where'
      '          R.AUTO_ID=:AUTO_ID'
      '          and R.DOC_DATE between :DATE_START and :DATE_END'
      '        into :vDATE, :vQTY, :vKM'
      '      do begin'
      '        vDAY = vDATE - DATE_START + 1;'
      ''
      '        DAY_1_FUEL = DAY_1_FUEL + IIF(vDAY=1, vQTY, 0);'
      '        DAY_2_FUEL = DAY_2_FUEL + IIF(vDAY=2, vQTY, 0);'
      '        DAY_3_FUEL = DAY_3_FUEL + IIF(vDAY=3, vQTY, 0);'
      '        DAY_4_FUEL = DAY_4_FUEL + IIF(vDAY=4, vQTY, 0);'
      '        DAY_5_FUEL = DAY_5_FUEL + IIF(vDAY=5, vQTY, 0);'
      '        DAY_6_FUEL = DAY_6_FUEL + IIF(vDAY=6, vQTY, 0);'
      '        DAY_7_FUEL = DAY_7_FUEL + IIF(vDAY=7, vQTY, 0);'
      '        ALLDAYS_FUEL = ALLDAYS_FUEL+vQTY;'
      ''
      '        DAY_1_KM = DAY_1_KM + IIF(vDAY=1, vKM, 0);'
      '        DAY_2_KM = DAY_2_KM + IIF(vDAY=2, vKM, 0);'
      '        DAY_3_KM = DAY_3_KM + IIF(vDAY=3, vKM, 0);'
      '        DAY_4_KM = DAY_4_KM + IIF(vDAY=4, vKM, 0);'
      '        DAY_5_KM = DAY_5_KM + IIF(vDAY=5, vKM, 0);'
      '        DAY_6_KM = DAY_6_KM + IIF(vDAY=6, vKM, 0);'
      '        DAY_7_KM = DAY_7_KM + IIF(vDAY=7, vKM, 0);'
      '        ALLDAYS_KM = ALLDAYS_KM+vKM;'
      '      end'
      ''
      '    end'
      ''
      '      DAY_1_FUEL = nullif(DAY_1_FUEL, 0);'
      '      DAY_2_FUEL = nullif(DAY_2_FUEL, 0);'
      '      DAY_3_FUEL = nullif(DAY_3_FUEL, 0);'
      '      DAY_4_FUEL = nullif(DAY_4_FUEL, 0);'
      '      DAY_5_FUEL = nullif(DAY_5_FUEL, 0);'
      '      DAY_6_FUEL = nullif(DAY_6_FUEL, 0);'
      '      DAY_7_FUEL = nullif(DAY_7_FUEL, 0);'
      '      ALLDAYS_FUEL = nullif(ALLDAYS_FUEL, 0);'
      '      DAY_1_KM = nullif(DAY_1_KM, 0);'
      '      DAY_2_KM = nullif(DAY_2_KM, 0);'
      '      DAY_3_KM = nullif(DAY_3_KM, 0);'
      '      DAY_4_KM = nullif(DAY_4_KM, 0);'
      '      DAY_5_KM = nullif(DAY_5_KM, 0);'
      '      DAY_6_KM = nullif(DAY_6_KM, 0);'
      '      DAY_7_KM = nullif(DAY_7_KM, 0);'
      '      ALLDAYS_KM = nullif(ALLDAYS_KM, 0);'
      '      suspend;'
      ''
      ''
      ''
      '  end'
      ''
      'end'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 200
    Top = 224
  end
  object dsDATA: TDataSource
    DataSet = dataFUEL
    Left = 232
    Top = 256
  end
  object qInput: TpFIBDataSet
    UpdateSQL.Strings = (
      'update fuel_reestr  set'
      '    DRIVER_ID= :DRIVER_ID,'
      '    CARD_ID = :CARD_ID,'
      '    QTY=:QTY,'
      '    KM=:KM,'
      '    QTY_REMAIN=:QTY_REMAIN'
      'where ID=:ID')
    DeleteSQL.Strings = (
      'delete from FUEL_REESTR where ID=:ID')
    InsertSQL.Strings = (
      
        'insert into fuel_reestr (DOC_DATE, AUTO_ID, DRIVER_ID, CARD_ID, ' +
        'QTY, KM, QTY_REMAIN) values (:D, :AUTO_ID, :DRIVER_ID, :CARD_ID,' +
        ' :QTY, :KM, :QTY_REMAIN)')
    SelectSQL.Strings = (
      'select'
      '  R.ID,'
      '  R.DRIVER_ID,'
      '  R.CARD_ID,'
      '  R.QTY,'
      '  D.NAME, C.CARD_NUMBER,'
      '  R.KM, R.QTY_REMAIN'
      'from'
      '  FUEL_REESTR R'
      '  left join AUTO_DRIVER D on D.ID=R.DRIVER_ID'
      '  left join FUEL_CARD C on C.ID=R.CARD_ID'
      'where'
      '  R.AUTO_ID=:AUTO_ID'
      '  and R.DOC_DATE=:D'
      '')
    AutoUpdateOptions.UpdateTableName = 'FUEL_REESTR'
    AutoUpdateOptions.KeyFields = 'ID'
    AutoUpdateOptions.GeneratorName = 'G_ID'
    AutoUpdateOptions.AutoParamsToFields = True
    AfterInsert = qInputAfterInsert
    BeforePost = qInputBeforePost
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    AutoCommit = True
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 104
    Top = 304
  end
  object dsInput: TDataSource
    DataSet = qInput
    Left = 152
    Top = 304
  end
  object REF_DRIVERS: TpFIBDataSet
    SelectSQL.Strings = (
      'select distinct'
      '  D.ID,  D.NAME'
      'from'
      '  AUTO_DRIVER D'
      '--left join AUTO_DRIVERS AD on AD.DRIVER_ID=D.ID'
      'where 1=1'
      '--  and ((AD.AUTO_ID=:AUTO_ID) or (:AUTO_ID is null))'
      
        '  and ((coalesce(D.PRODUCTION_ID, 0)=coalesce(:PRODUCTION_ID, 0)' +
        ') or (coalesce(:PRODUCTION_ID, 0)=0))'
      '  and coalesce(D.IS_ACTIVE, 1)=1'
      'order by'
      '  D.NAME')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 440
    Top = 248
  end
  object dsDrivers: TDataSource
    DataSet = REF_DRIVERS
    Left = 504
    Top = 248
  end
  object REF_FUEL_CARD: TpFIBDataSet
    SelectSQL.Strings = (
      'select C.ID, C.CARD_NUMBER from FUEL_CARD C'
      'where'
      '  coalesce(C.IS_ACTIVE, 1)=1'
      
        '  and ((PRODUCTION_ID = :PRODUCTION_ID) or (PRODUCTION_ID is nul' +
        'l) or (:PRODUCTION_ID is null))'
      'order by C.CARD_NUMBER')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 440
    Top = 496
  end
  object dsFuelCard: TDataSource
    DataSet = REF_FUEL_CARD
    Left = 512
    Top = 496
  end
  object REPORT: TpFIBDataSet
    SelectSQL.Strings = (
      'execute block('
      '  DATE_START DATE = :DATE_START,'
      '  DATE_END DATE = :DATE_END'
      ')'
      'returns('
      '  DOC_DATE DATE,'
      '  PRODUCTION_ID T_PID,'
      '  QTY_92 T_QTY,'
      '  QTY_DT T_QTY,'
      '  QTY T_QTY,'
      '  KM T_QTY,'
      '  ROUTE_COUNT T_INT,'
      '  ADDRESS_COUNT T_INT,'
      '  MAT_SQUARE T_SQUARE,'
      '  FUEL_TYPE T_INT'
      ')'
      'as'
      '  declare variable D1 DATE;'
      '  declare variable D2 DATE;'
      '  declare variable vOUT t_int;'
      ''
      'begin'
      '  if (DATE_START is null) then'
      '    DATE_START = current_date;'
      '  if (DATE_END is null) then'
      '    DATE_END = current_date;'
      '  if (DATE_START > DATE_END) then begin'
      '    DOC_DATE = DATE_START;'
      '    DATE_START = DATE_END;'
      '    DATE_END = DOC_DATE;'
      '  end'
      '  '
      '  DOC_DATE = DATE_START;'
      '  while (DOC_DATE <= :DATE_END) do begin'
      ''
      
        '    for select P.ID from REF_PRODUCTIONS P into :PRODUCTION_ID d' +
        'o begin'
      '      vOUT = 0;'
      '      for select'
      '        coalesce(A.FUEL_TYPE, 0) FUEL_TYPE,'
      '        sum(coalesce(FR.QTY, 0)),'
      '        sum(coalesce(FR.KM, 0))'
      '      from'
      '        FUEL_REESTR FR, AUTOMOBILE A'
      '      where'
      '        A.ID=FR.AUTO_ID'
      '        and FR.DOC_DATE=:DOC_DATE'
      '        and A.PRODUCTION_ID=:PRODUCTION_ID'
      '      group by'
      '        1'
      '      into'
      '        :FUEL_TYPE, :QTY, :KM'
      '      do begin'
      '        if (FUEL_TYPE=0) then begin'
      '          QTY_92=QTY;   QTY_DT = null;'
      '        end else if (FUEL_TYPE=1) then   begin'
      '          QTY_DT=QTY;    QTY_92 = null;'
      '        end'
      ''
      '        if (vOUT=0) then begin'
      '          select'
      '            count(distinct R.ID),'
      '            count(distinct T.ADDRESS_ID),'
      '            sum(T.SQUARE)'
      
        '          from DOC_ROUTE_CARD R, REF_STORAGE S, DOC_ROUTE_CARD_T' +
        ' T'
      '          where'
      '            T.PID=R.ID'
      '            and R.STORAGE_ID=S.ID'
      '            and S.PRODUCTION_ID=:PRODUCTION_ID'
      '            and R.STATUS=2'
      '            and cast(R.DOC_DT as T_DATE)=:DOC_DATE'
      '          into :ROUTE_COUNT, :ADDRESS_COUNT, :MAT_SQUARE;'
      '          vOut = 1;'
      '        end else begin'
      '          ROUTE_COUNT=null; ADDRESS_COUNT=null; MAT_SQUARE=null;'
      '        end'
      
        '--        if ((:QTY>0) or (:ROUTE_COUNT>0) or (:ADDRESS_COUNT>0)' +
        ' or (:MAT_SQUARE>0)) then'
      '          suspend;'
      ''
      '      end'
      ''
      ''
      ''
      ''
      ''
      '    end'
      ''
      '    DOC_DATE = DOC_DATE + 1;'
      '  end'
      ''
      ''
      'end'
      ''
      '')
    AutoCalcFields = False
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 312
    Top = 264
    poImportDefaultValues = False
    poGetOrderInfo = False
  end
  object dsREPORT: TDataSource
    DataSet = REPORT
    Left = 352
    Top = 264
  end
  object Dialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = #1060#1072#1081#1083#1099' Excel|*.xls'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 992
    Top = 40
  end
  object IMPORT: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 88
    Top = 248
    object IMPORTAUTO_ID: TIntegerField
      FieldName = 'AUTO_ID'
    end
    object IMPORTGPS_ID: TIntegerField
      FieldName = 'GPS_ID'
    end
    object IMPORTGOS_NOMER: TStringField
      FieldName = 'GOS_NOMER'
      Size = 100
    end
    object IMPORTREP_DATE: TDateField
      FieldName = 'REP_DATE'
    end
    object IMPORTREP_VALUE: TCurrencyField
      FieldName = 'REP_VALUE'
    end
    object IMPORTDB_VALUE: TCurrencyField
      FieldName = 'DB_VALUE'
    end
  end
  object dsImport: TDataSource
    DataSet = IMPORT
    Left = 152
    Top = 248
  end
  object dataResource: TpFIBDataSet
    RefreshSQL.Strings = (
      'execute block('
      '  DATE_START T_DATE = :DATE_START,'
      '  RESOURCE_TYPE T_PID = :RESOURCE_TYPE,'
      '  PRODUCTON_ID T_PID= :PRODUCTON_ID'
      ')'
      'returns('
      '  DAY_1 T_INT,'
      '  DAY_2 T_INT,'
      '  DAY_3 T_INT,'
      '  DAY_4 T_INT,'
      '  DAY_5 T_INT,'
      '  DAY_6 T_INT,'
      '  DAY_7 T_INT,'
      '  DAY_ALL T_INT'
      ')'
      'as'
      '  declare variable vDATE T_DATE;'
      '  declare variable vDAY T_INT;'
      '  declare variable vQTY T_INT;'
      '  declare variable DATE_END T_DATE;'
      'begin'
      '  DATE_START = coalesce(DATE_START, current_date);'
      '  DATE_END = DateAdd(6 DAY to DATE_START);'
      
        '  DAY_1 = 0; DAY_2 = 0; DAY_3 = 0; DAY_4 = 0; DAY_5 = 0; DAY_6 =' +
        ' 0; DAY_7 = 0; DAY_ALL = 0;'
      ''
      '    -- '#1056#1077#1089#1091#1088#1089#1099
      
        '      for select RR.DOC_DATE, coalesce(RR.QTY, 0) from RESOURCE_' +
        'REESTR RR where'
      
        '        RR.PRODUCTION_ID=:PRODUCTON_ID and RR.RESOURCE_TYPE = :R' +
        'ESOURCE_TYPE'
      '        and RR.DOC_DATE between :DATE_START and :DATE_END'
      '        into :vDATE, :vQTY'
      '        do begin'
      '          vDAY = vDATE - DATE_START + 1;'
      ''
      '          DAY_1 = DAY_1 + IIF(vDAY=1, vQTY, 0);'
      '          DAY_2 = DAY_2 + IIF(vDAY=2, vQTY, 0);'
      '          DAY_3 = DAY_3 + IIF(vDAY=3, vQTY, 0);'
      '          DAY_4 = DAY_4 + IIF(vDAY=4, vQTY, 0);'
      '          DAY_5 = DAY_5 + IIF(vDAY=5, vQTY, 0);'
      '          DAY_6 = DAY_6 + IIF(vDAY=6, vQTY, 0);'
      '          DAY_7 = DAY_7 + IIF(vDAY=7, vQTY, 0);'
      '          DAY_ALL = DAY_ALL+vQTY;'
      '        end'
      ''
      '      DAY_1 = nullif(DAY_1, 0);'
      '      DAY_2 = nullif(DAY_2, 0);'
      '      DAY_3 = nullif(DAY_3, 0);'
      '      DAY_4 = nullif(DAY_4, 0);'
      '      DAY_5 = nullif(DAY_5, 0);'
      '      DAY_6 = nullif(DAY_6, 0);'
      '      DAY_7 = nullif(DAY_7, 0);'
      '      DAY_ALL = nullif(DAY_ALL, 0);'
      '      suspend;'
      ''
      ''
      ''
      'end')
    SelectSQL.Strings = (
      'execute block('
      '  DATE_START T_DATE = :DATE_START'
      ')'
      'returns('
      '  RESOURCE_NAME T_NAME,'
      '  RESOURCE_TYPE T_INT,'
      '  PRODUCTON_ID T_PID,'
      '  PRODUCTON_NAME T_NAME,'
      '  DAY_1 T_INT,'
      '  DAY_2 T_INT,'
      '  DAY_3 T_INT,'
      '  DAY_4 T_INT,'
      '  DAY_5 T_INT,'
      '  DAY_6 T_INT,'
      '  DAY_7 T_INT,'
      '  DAY_ALL T_INT'
      ')'
      'as'
      '  declare variable vDATE T_DATE;'
      '  declare variable vDAY T_INT;'
      '  declare variable vQTY T_INT;'
      '  declare variable DATE_END T_DATE;'
      'begin'
      '  DATE_START = coalesce(DATE_START, '#39'27.06.2016'#39');'
      '  DATE_END = DateAdd(6 DAY to DATE_START);'
      '  for select'
      '    P.ID, '#39#1043#1086#1088#1103#1095#1072#1103' '#1074#1086#1076#1072#39', 10, P.NAME from REF_PRODUCTIONS P'
      '  union all'
      
        '    select P.ID, '#39#1061#1086#1083#1086#1076#1085#1072#1103' '#1074#1086#1076#1072#39', 11, P.NAME from REF_PRODUCTION' +
        'S P'
      '  union all'
      
        '    select P.ID, '#39#1069#1083#1077#1082#1090#1088#1086#1101#1085#1077#1088#1075#1080#1103#39', 12, P.NAME from REF_PRODUCTIO' +
        'NS P'
      ''
      
        '--    and ((A.PRODUCTION_ID=:PRODUCTION_ID) or (:PRODUCTION_ID i' +
        's null))'
      '  into'
      
        '    :PRODUCTON_ID, :RESOURCE_NAME, :RESOURCE_TYPE, :PRODUCTON_NA' +
        'ME'
      '  do begin'
      
        '    DAY_1 = 0; DAY_2 = 0; DAY_3 = 0; DAY_4 = 0; DAY_5 = 0; DAY_6' +
        ' = 0; DAY_7 = 0; DAY_ALL = 0;'
      ''
      '    -- '#1056#1077#1089#1091#1088#1089#1099
      
        '      for select RR.DOC_DATE, coalesce(RR.QTY, 0) from RESOURCE_' +
        'REESTR RR where'
      
        '        RR.PRODUCTION_ID=:PRODUCTON_ID and RR.RESOURCE_TYPE = :R' +
        'ESOURCE_TYPE'
      '        and RR.DOC_DATE between :DATE_START and :DATE_END'
      
        '--        and extract(year from RR.DOC_DATE) = extract(YEAR from' +
        ' :DATE_START)'
      
        '--        and extract(week from RR.DOC_DATE) = extract(week from' +
        ' :DATE_START)'
      '        into :vDATE, :vQTY'
      '        do begin'
      '          vDAY = vDATE - DATE_START + 1;'
      '    '
      '          DAY_1 = DAY_1 + IIF(vDAY=1, vQTY, 0);'
      '          DAY_2 = DAY_2 + IIF(vDAY=2, vQTY, 0);'
      '          DAY_3 = DAY_3 + IIF(vDAY=3, vQTY, 0);'
      '          DAY_4 = DAY_4 + IIF(vDAY=4, vQTY, 0);'
      '          DAY_5 = DAY_5 + IIF(vDAY=5, vQTY, 0);'
      '          DAY_6 = DAY_6 + IIF(vDAY=6, vQTY, 0);'
      '          DAY_7 = DAY_7 + IIF(vDAY=7, vQTY, 0);'
      '          DAY_ALL = DAY_ALL+vQTY;'
      '        end'
      ''
      '      DAY_1 = nullif(DAY_1, 0);'
      '      DAY_2 = nullif(DAY_2, 0);'
      '      DAY_3 = nullif(DAY_3, 0);'
      '      DAY_4 = nullif(DAY_4, 0);'
      '      DAY_5 = nullif(DAY_5, 0);'
      '      DAY_6 = nullif(DAY_6, 0);'
      '      DAY_7 = nullif(DAY_7, 0);'
      '      DAY_ALL = nullif(DAY_ALL, 0);'
      '      suspend;'
      ''
      ''
      ''
      '  end'
      'end'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 320
    Top = 200
  end
  object dataKM: TpFIBDataSet
    RefreshSQL.Strings = (
      'execute block('
      '  DATE_START T_DATE = :DATE_START,'
      '  AUTO_ID T_PID=:AUTO_ID'
      ')'
      'returns('
      '  AUTO_GOS_NOMER T_NAME,'
      '  AUTO_MODEL T_NAME,'
      '  FUEL_TYPE T_PID,'
      '  PRODUCTON_NAME T_NAME,'
      '  DAY_1 T_INT,'
      '  DAY_2 T_INT,'
      '  DAY_3 T_INT,'
      '  DAY_4 T_INT,'
      '  DAY_5 T_INT,'
      '  DAY_6 T_INT,'
      '  DAY_7 T_INT,'
      '  DAY_ALL T_INT'
      ')'
      'as'
      '  declare variable vDATE T_DATE;'
      '  declare variable vDAY T_INT;'
      '  declare variable vKM T_INT;'
      '  declare variable DATE_END T_DATE;'
      'begin'
      '  DATE_START = coalesce(DATE_START, '#39'27.06.2016'#39');'
      '  DATE_END = DateAdd(6 DAY to DATE_START);'
      ''
      '  for select'
      '    A.ID, A.GOS_NOMER, A.MODEL_NAME, P.NAME, A.FUEL_TYPE'
      '  from AUTOMOBILE A'
      '  left join REF_PRODUCTIONS P on P.ID=A.PRODUCTION_ID'
      '  where'
      '    coalesce(A.IS_ACTIVE, 1)=1'
      '    and A.ID=:AUTO_ID'
      '  into'
      
        '    :AUTO_ID, :AUTO_GOS_NOMER, :AUTO_MODEL, :PRODUCTON_NAME, :FU' +
        'EL_TYPE'
      '  do begin'
      
        '    DAY_1 = 0; DAY_2 = 0; DAY_3 = 0; DAY_4 = 0; DAY_5 = 0; DAY_6' +
        ' = 0; DAY_7 = 0; DAY_ALL= 0;'
      '    for'
      '      select R.DOC_DATE, coalesce(R.KM, 0) from FUEL_REESTR R'
      '      where'
      '        R.AUTO_ID=:AUTO_ID'
      '        and R.DOC_DATE between :DATE_START and :DATE_END'
      '      into :vDATE, :vKM'
      '    do begin'
      '      vDAY = vDATE - DATE_START + 1;'
      ''
      '      DAY_1 = DAY_1 + IIF(vDAY=1, vKM, 0);'
      '      DAY_2 = DAY_2 + IIF(vDAY=2, vKM, 0);'
      '      DAY_3 = DAY_3 + IIF(vDAY=3, vKM, 0);'
      '      DAY_4 = DAY_4 + IIF(vDAY=4, vKM, 0);'
      '      DAY_5 = DAY_5 + IIF(vDAY=5, vKM, 0);'
      '      DAY_6 = DAY_6 + IIF(vDAY=6, vKM, 0);'
      '      DAY_7 = DAY_7 + IIF(vDAY=7, vKM, 0);'
      '      DAY_ALL= DAY_ALL+vKM;'
      '    end'
      ''
      ''
      '    DAY_1 = nullif(DAY_1, 0);'
      '    DAY_2 = nullif(DAY_2, 0);'
      '    DAY_3 = nullif(DAY_3, 0);'
      '    DAY_4 = nullif(DAY_4, 0);'
      '    DAY_5 = nullif(DAY_5, 0);'
      '    DAY_6 = nullif(DAY_6, 0);'
      '    DAY_7 = nullif(DAY_7, 0);'
      '    DAY_ALL = nullif(DAY_ALL, 0);'
      '    suspend;'
      ''
      ''
      ''
      '  end'
      ''
      'end'
      '')
    SelectSQL.Strings = (
      'execute block('
      '  DATE_START T_DATE = :DATE_START'
      ')'
      'returns('
      '  AUTO_ID T_ID,'
      '  AUTO_GOS_NOMER T_NAME,'
      '  AUTO_MODEL T_NAME,'
      '  FUEL_TYPE T_PID,'
      '  PRODUCTON_NAME T_NAME,'
      '  DAY_1 T_INT,'
      '  DAY_2 T_INT,'
      '  DAY_3 T_INT,'
      '  DAY_4 T_INT,'
      '  DAY_5 T_INT,'
      '  DAY_6 T_INT,'
      '  DAY_7 T_INT,'
      '  DAY_ALL T_INT'
      ')'
      'as'
      '  declare variable vDATE T_DATE;'
      '  declare variable vDAY T_INT;'
      '  declare variable vKM T_INT;'
      '  declare variable DATE_END T_DATE;'
      'begin'
      '  DATE_START = coalesce(DATE_START, '#39'27.06.2016'#39');'
      '  DATE_END = DateAdd(6 DAY to DATE_START);'
      ''
      '  for select'
      '    A.ID, A.GOS_NOMER, A.MODEL_NAME, P.NAME, A.FUEL_TYPE'
      '  from AUTOMOBILE A'
      '  left join REF_PRODUCTIONS P on P.ID=A.PRODUCTION_ID'
      '  where'
      '    coalesce(A.IS_ACTIVE, 1)=1'
      '  into'
      
        '    :AUTO_ID, :AUTO_GOS_NOMER, :AUTO_MODEL, :PRODUCTON_NAME, :FU' +
        'EL_TYPE'
      '  do begin'
      
        '    DAY_1 = 0; DAY_2 = 0; DAY_3 = 0; DAY_4 = 0; DAY_5 = 0; DAY_6' +
        ' = 0; DAY_7 = 0; DAY_ALL= 0;'
      '    for'
      '      select R.DOC_DATE, coalesce(R.KM, 0) from FUEL_REESTR R'
      '      where'
      '        R.AUTO_ID=:AUTO_ID'
      '        and R.DOC_DATE between :DATE_START and :DATE_END'
      '      into :vDATE, :vKM'
      '    do begin'
      '      vDAY = vDATE - DATE_START + 1;'
      ''
      '      DAY_1 = DAY_1 + IIF(vDAY=1, vKM, 0);'
      '      DAY_2 = DAY_2 + IIF(vDAY=2, vKM, 0);'
      '      DAY_3 = DAY_3 + IIF(vDAY=3, vKM, 0);'
      '      DAY_4 = DAY_4 + IIF(vDAY=4, vKM, 0);'
      '      DAY_5 = DAY_5 + IIF(vDAY=5, vKM, 0);'
      '      DAY_6 = DAY_6 + IIF(vDAY=6, vKM, 0);'
      '      DAY_7 = DAY_7 + IIF(vDAY=7, vKM, 0);'
      '      DAY_ALL= DAY_ALL+vKM;'
      '    end'
      ''
      ''
      '    DAY_1 = nullif(DAY_1, 0);'
      '    DAY_2 = nullif(DAY_2, 0);'
      '    DAY_3 = nullif(DAY_3, 0);'
      '    DAY_4 = nullif(DAY_4, 0);'
      '    DAY_5 = nullif(DAY_5, 0);'
      '    DAY_6 = nullif(DAY_6, 0);'
      '    DAY_7 = nullif(DAY_7, 0);'
      '    DAY_ALL = nullif(DAY_ALL, 0);'
      '    suspend;'
      ''
      ''
      ''
      '  end'
      ''
      'end'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 240
    Top = 224
  end
  object dsResource: TDataSource
    DataSet = dataResource
    Left = 344
    Top = 368
  end
  object dataRoutes: TpFIBDataSet
    RefreshSQL.Strings = (
      'execute block('
      '  DATE_START T_DATE = :DATE_START,'
      '  RESOURCE_TYPE T_PID = :RESOURCE_TYPE,'
      '  PRODUCTON_ID T_PID= :PRODUCTON_ID'
      ')'
      'returns('
      '  DAY_1 T_INT,'
      '  DAY_2 T_INT,'
      '  DAY_3 T_INT,'
      '  DAY_4 T_INT,'
      '  DAY_5 T_INT,'
      '  DAY_6 T_INT,'
      '  DAY_7 T_INT,'
      '  DAY_ALL T_INT'
      ')'
      'as'
      '  declare variable vDATE T_DATE;'
      '  declare variable vDAY T_INT;'
      '  declare variable vQTY T_INT;'
      '  declare variable DATE_END T_DATE;'
      'begin'
      '  DATE_START = coalesce(DATE_START, current_date);'
      '  DATE_END = DateAdd(6 DAY to DATE_START);'
      
        '  DAY_1 = 0; DAY_2 = 0; DAY_3 = 0; DAY_4 = 0; DAY_5 = 0; DAY_6 =' +
        ' 0; DAY_7 = 0; DAY_ALL = 0;'
      ''
      '    -- '#1056#1077#1089#1091#1088#1089#1099
      
        '      for select RR.DOC_DATE, coalesce(RR.QTY, 0) from RESOURCE_' +
        'REESTR RR where'
      
        '        RR.PRODUCTION_ID=:PRODUCTON_ID and RR.RESOURCE_TYPE = :R' +
        'ESOURCE_TYPE'
      '        and RR.DOC_DATE between :DATE_START and :DATE_END'
      '        into :vDATE, :vQTY'
      '        do begin'
      '          vDAY = vDATE - DATE_START + 1;'
      ''
      '          DAY_1 = DAY_1 + IIF(vDAY=1, vQTY, 0);'
      '          DAY_2 = DAY_2 + IIF(vDAY=2, vQTY, 0);'
      '          DAY_3 = DAY_3 + IIF(vDAY=3, vQTY, 0);'
      '          DAY_4 = DAY_4 + IIF(vDAY=4, vQTY, 0);'
      '          DAY_5 = DAY_5 + IIF(vDAY=5, vQTY, 0);'
      '          DAY_6 = DAY_6 + IIF(vDAY=6, vQTY, 0);'
      '          DAY_7 = DAY_7 + IIF(vDAY=7, vQTY, 0);'
      '          DAY_ALL = DAY_ALL+vQTY;'
      '        end'
      ''
      '      DAY_1 = nullif(DAY_1, 0);'
      '      DAY_2 = nullif(DAY_2, 0);'
      '      DAY_3 = nullif(DAY_3, 0);'
      '      DAY_4 = nullif(DAY_4, 0);'
      '      DAY_5 = nullif(DAY_5, 0);'
      '      DAY_6 = nullif(DAY_6, 0);'
      '      DAY_7 = nullif(DAY_7, 0);'
      '      DAY_ALL = nullif(DAY_ALL, 0);'
      '      suspend;'
      ''
      ''
      ''
      'end')
    SelectSQL.Strings = (
      'execute block('
      '  DATE_START T_DATE = :DATE_START'
      ')'
      'returns('
      '  RESOURCE_NAME T_NAME,'
      '  RESOURCE_TYPE T_INT,'
      '  PRODUCTON_ID T_PID,'
      '  PRODUCTON_NAME T_NAME,'
      '  DAY_1 T_INT,'
      '  DAY_2 T_INT,'
      '  DAY_3 T_INT,'
      '  DAY_4 T_INT,'
      '  DAY_5 T_INT,'
      '  DAY_6 T_INT,'
      '  DAY_7 T_INT,'
      '  DAY_ALL T_INT'
      ')'
      'as'
      '  declare variable vDATE T_DATE;'
      '  declare variable vDAY T_INT;'
      '  declare variable vQTY T_INT;'
      '  declare variable DATE_END T_DATE;'
      'begin'
      '  DATE_START = coalesce(DATE_START, '#39'27.06.2016'#39');'
      '  DATE_END = DateAdd(6 DAY to DATE_START);'
      '  for select'
      '    P.ID, '#39#1044#1085#1077#1074#1085#1099#1077' '#1084#1072#1088#1096#1088#1091#1090#1099#39', 21, P.NAME from REF_PRODUCTIONS P'
      '  union all'
      
        '    select P.ID, '#39#1053#1086#1095#1085#1099#1077' '#1084#1072#1088#1096#1088#1091#1090#1099#39', 22, P.NAME from REF_PRODUCTI' +
        'ONS P'
      '  into'
      
        '    :PRODUCTON_ID, :RESOURCE_NAME, :RESOURCE_TYPE, :PRODUCTON_NA' +
        'ME'
      '  do begin'
      
        '    DAY_1 = 0; DAY_2 = 0; DAY_3 = 0; DAY_4 = 0; DAY_5 = 0; DAY_6' +
        ' = 0; DAY_7 = 0; DAY_ALL = 0;'
      ''
      '    -- '#1056#1077#1089#1091#1088#1089#1099
      
        '      for select RR.DOC_DATE, coalesce(RR.QTY, 0) from RESOURCE_' +
        'REESTR RR where'
      
        '        RR.PRODUCTION_ID=:PRODUCTON_ID and RR.RESOURCE_TYPE = :R' +
        'ESOURCE_TYPE'
      '        and RR.DOC_DATE between :DATE_START and :DATE_END'
      '        into :vDATE, :vQTY'
      '        do begin'
      '          vDAY = vDATE - DATE_START + 1;'
      '    '
      '          DAY_1 = DAY_1 + IIF(vDAY=1, vQTY, 0);'
      '          DAY_2 = DAY_2 + IIF(vDAY=2, vQTY, 0);'
      '          DAY_3 = DAY_3 + IIF(vDAY=3, vQTY, 0);'
      '          DAY_4 = DAY_4 + IIF(vDAY=4, vQTY, 0);'
      '          DAY_5 = DAY_5 + IIF(vDAY=5, vQTY, 0);'
      '          DAY_6 = DAY_6 + IIF(vDAY=6, vQTY, 0);'
      '          DAY_7 = DAY_7 + IIF(vDAY=7, vQTY, 0);'
      '          DAY_ALL = DAY_ALL+vQTY;'
      '        end'
      ''
      '      DAY_1 = nullif(DAY_1, 0);'
      '      DAY_2 = nullif(DAY_2, 0);'
      '      DAY_3 = nullif(DAY_3, 0);'
      '      DAY_4 = nullif(DAY_4, 0);'
      '      DAY_5 = nullif(DAY_5, 0);'
      '      DAY_6 = nullif(DAY_6, 0);'
      '      DAY_7 = nullif(DAY_7, 0);'
      '      DAY_ALL = nullif(DAY_ALL, 0);'
      '      suspend;'
      ''
      ''
      ''
      '  end'
      'end'
      '')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 392
    Top = 200
  end
  object dsRoutes: TDataSource
    DataSet = dataRoutes
    Left = 392
    Top = 368
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 328
    Top = 112
    qoStartTransaction = True
  end
end
