inherited fmAutoEdit: TfmAutoEdit
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1072#1074#1090#1086
  ClientHeight = 498
  ClientWidth = 595
  ExplicitWidth = 611
  ExplicitHeight = 532
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 595
    ExplicitWidth = 595
  end
  object Pages: TcxPageControl [1]
    Left = 0
    Top = 31
    Width = 595
    Height = 467
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = tabMain
    Properties.CustomButtons.Buttons = <>
    Properties.Images = DM.ToolImages
    ClientRectBottom = 461
    ClientRectLeft = 2
    ClientRectRight = 589
    ClientRectTop = 28
    object tabMain: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 193
        Align = alClient
        Caption = ' '#1056#1077#1077#1089#1090#1088' '#1088#1077#1084#1086#1085#1090#1086#1074' '
        TabOrder = 0
        Height = 240
        Width = 587
        inline frameAutoServiceReestr: TframeAutoServiceReestr
          Left = 3
          Top = 15
          Width = 581
          Height = 216
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = -1
          ExplicitWidth = 583
          ExplicitHeight = 239
          inherited Dock: TdxBarDockControl
            Width = 581
            ExplicitWidth = 583
          end
          inherited cxGrid1: TcxGrid
            Width = 581
            Height = 185
            ExplicitWidth = 581
            ExplicitHeight = 185
          end
          inherited BM: TdxBarManager
            DockControlHeights = (
              0
              0
              0
              0)
          end
          inherited DATA: TpFIBDataSet
            RefreshTransactionKind = tkUpdateTransaction
            Left = 184
            Top = 80
          end
          inherited dsDATA: TDataSource
            Left = 232
            Top = 80
          end
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Style.BorderStyle = ebsNone
        TabOrder = 1
        Height = 193
        Width = 587
        object cxLabel1: TcxLabel
          Left = 19
          Top = 15
          Caption = #1052#1086#1076#1077#1083#1100' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 299
          Top = 16
          Caption = #1043#1086#1089'. '#1085#1086#1084#1077#1088
          Transparent = True
        end
        object labelVIN: TcxLabel
          Left = 427
          Top = 16
          Caption = 'VIN'
          Transparent = True
        end
        object MODEL_NAME: TcxTextEdit
          Left = 19
          Top = 31
          Properties.MaxLength = 200
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Width = 274
        end
        object GOS_NOMER: TcxTextEdit
          Left = 299
          Top = 31
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 20
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Width = 120
        end
        object VIN: TcxTextEdit
          Left = 427
          Top = 31
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 20
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Width = 120
        end
        object cxLabel3: TcxLabel
          Left = 19
          Top = 58
          Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
          Transparent = True
        end
        object PRODUCTION_ID: TcxLookupComboBox
          Left = 19
          Top = 74
          RepositoryItem = DM.erProduction
          Properties.ImmediatePost = True
          Properties.ListColumns = <>
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Width = 134
        end
        object IS_ACTIVE: TcxCheckBox
          Left = 445
          Top = 114
          Caption = #1040#1082#1090#1080#1074
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Transparent = True
        end
        object FUEL_TYPE: TcxImageComboBox
          Left = 19
          Top = 113
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
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Width = 101
        end
        object labelFUEL_TYPE: TcxLabel
          Left = 19
          Top = 98
          Caption = #1042#1080#1076' '#1090#1086#1087#1083#1080#1074#1072
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 18
          Top = 140
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
          Transparent = True
        end
        object DESCRIPTION: TcxTextEdit
          Left = 20
          Top = 156
          Properties.MaxLength = 200
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Width = 545
        end
        object cxLabel6: TcxLabel
          Left = 308
          Top = 96
          Caption = #1058#1077#1082#1091#1097#1077#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077
          Transparent = True
        end
        object STATUS: TcxImageComboBox
          Left = 308
          Top = 113
          RepositoryItem = DM.erAutomobileStatus
          EditValue = '1'
          Properties.Images = DM.ImageListStatuses
          Properties.Items = <
            item
              Description = #1042' '#1088#1072#1073#1086#1090#1077
              ImageIndex = 8
              Value = 1
            end
            item
              Description = #1056#1077#1079#1077#1088#1074
              ImageIndex = 5
              Value = 4
            end
            item
              Description = #1059#1090#1080#1083#1100
              ImageIndex = 6
              Value = 3
            end>
          Properties.ReadOnly = True
          Properties.OnEditValueChanged = STATUSPropertiesEditValueChanged
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 14
          Width = 101
        end
        object cxLabel7: TcxLabel
          Left = 165
          Top = 99
          Caption = 'GPS ID'
          Transparent = True
        end
        object GPS_ID: TcxTextEdit
          Left = 165
          Top = 114
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 20
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 16
          Width = 120
        end
        object cxLabel8: TcxLabel
          Left = 300
          Top = 60
          Caption = #1055#1058#1057
          Transparent = True
        end
        object PTS: TcxTextEdit
          Left = 299
          Top = 75
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 20
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 18
          Width = 120
        end
        object cxLabel9: TcxLabel
          Left = 427
          Top = 60
          Caption = #1057#1058#1057
          Transparent = True
        end
        object STS: TcxTextEdit
          Left = 427
          Top = 75
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 20
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 20
          Width = 120
        end
        object cxLabel10: TcxLabel
          Left = 159
          Top = 58
          Caption = #1042#1083#1072#1076#1077#1083#1077#1094
          Transparent = True
        end
        object ORGANIZATION_ID: TcxLookupComboBox
          Left = 159
          Top = 74
          Properties.ClearKey = 46
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
              Width = 100
              FieldName = 'NAME'
            end>
          Properties.ListSource = DM.dsrefOrganizations
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 22
          Width = 134
        end
      end
    end
    object tabDrivers: TcxTabSheet
      Caption = #1055#1086#1083#1080#1089#1099' '#1080' '#1074#1086#1076#1080#1090#1077#1083#1080
      object List2: TcxListBox
        Left = 319
        Top = 248
        Width = 180
        Height = 192
        ItemHeight = 13
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnDblClick = List2DblClick
      end
      object btnAdd: TcxButton
        Left = 202
        Top = 231
        Width = 111
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFB7A190FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFB7A394FFB7A1
          90FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFBCAB9DFFB9A5
          95FFB7A190FF0000000000000000000000000000000000000000B7A190FFB7A1
          90FFB7A190FFB7A190FF00000000B7A190FFB7A190FFBBA797FFC0B0A1FFC0B0
          A1FFBBA797FFB7A190FF00000000000000000000000000000000B7A190FFC5B4
          A5FFC5B4A5FFB7A190FF00000000B7A190FFC5B4A5FFC5B4A5FFC5B4A5FFC5B4
          A5FFC5B4A5FFBDA999FFB7A190FF000000000000000000000000B7A190FFCBBA
          AAFFCBBAAAFFB7A190FF00000000B7A190FFCBBAAAFFCBBAAAFFCBBAAAFFCBBA
          AAFFCBBAAAFFCBBAAAFFBFAB9BFFB7A190FF0000000000000000B7A190FFD1BF
          AFFFD1BFAFFFB7A190FF00000000B7A190FFD1BFAFFFD1BFAFFFD1BFAFFFD1BF
          AFFFD1BFAFFFD1BFAFFFD1BFAFFFC2AD9DFFB7A190FF00000000B7A190FFD7C5
          B4FFD7C5B4FFB7A190FF00000000B7A190FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5
          B4FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5B4FFC8B6A6FFB7A190FFB7A190FFDCC9
          B9FFDCC9B9FFB7A190FF00000000B7A190FFDCC9B9FFDCC9B9FFDCC9B9FFDCC9
          B9FFDCC9B9FFDCC9B9FFDCC9B9FFE4D6C9FFCCBBACFFB7A190FFB7A190FFE2CF
          BEFFE2CFBEFFB7A190FF00000000B7A190FFE2CFBEFFE2CFBEFFE2CFBEFFE2CF
          BEFFE2CFBEFFE2CFBEFFE9DACDFFCEBCAEFFB7A190FF00000000B7A190FFE8D4
          C3FFE8D4C3FFB7A190FF00000000B7A190FFE8D4C3FFE8D4C3FFE8D4C3FFE8D4
          C3FFE8D4C3FFEDDED1FFCFBDAFFFB7A190FF0000000000000000B7A190FFF4E8
          DDFFF4E8DDFFB7A190FF00000000B7A190FFF4E8DDFFF1E2D4FFEDD9C7FFEDD9
          C7FFF1E2D4FFD0BEB0FFB7A190FF000000000000000000000000B7A190FFB7A1
          90FFB7A190FFB7A190FF00000000B7A190FFB7A190FFD1BFB1FFF2DDCBFFF5E5
          D7FFD1BFB1FFB7A190FF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFF9E9DAFFD3C1
          B2FFB7A190FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFD3C1B3FFB7A1
          90FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFB7A190FF0000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 1
        OnClick = btnAddClick
      end
      object btnAddAll: TcxButton
        Left = 202
        Top = 262
        Width = 111
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1089#1077#1093
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFB7A190FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFB7A394FFB7A1
          90FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFBCAB9DFFB9A5
          95FFB7A190FF0000000000000000000000000000000000000000B7A190FFB7A1
          90FFB7A190FFB7A190FF00000000B7A190FFB7A190FFBBA797FFC0B0A1FFC0B0
          A1FFBBA797FFB7A190FF00000000000000000000000000000000B7A190FFC5B4
          A5FFC5B4A5FFB7A190FF00000000B7A190FFC5B4A5FFC5B4A5FFC5B4A5FFC5B4
          A5FFC5B4A5FFBDA999FFB7A190FF000000000000000000000000B7A190FFCBBA
          AAFFCBBAAAFFB7A190FF00000000B7A190FFCBBAAAFFCBBAAAFFCBBAAAFFCBBA
          AAFFCBBAAAFFCBBAAAFFBFAB9BFFB7A190FF0000000000000000B7A190FFD1BF
          AFFFD1BFAFFFB7A190FF00000000B7A190FFD1BFAFFFD1BFAFFFD1BFAFFFD1BF
          AFFFD1BFAFFFD1BFAFFFD1BFAFFFC2AD9DFFB7A190FF00000000B7A190FFD7C5
          B4FFD7C5B4FFB7A190FF00000000B7A190FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5
          B4FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5B4FFC8B6A6FFB7A190FFB7A190FFDCC9
          B9FFDCC9B9FFB7A190FF00000000B7A190FFDCC9B9FFDCC9B9FFDCC9B9FFDCC9
          B9FFDCC9B9FFDCC9B9FFDCC9B9FFE4D6C9FFCCBBACFFB7A190FFB7A190FFE2CF
          BEFFE2CFBEFFB7A190FF00000000B7A190FFE2CFBEFFE2CFBEFFE2CFBEFFE2CF
          BEFFE2CFBEFFE2CFBEFFE9DACDFFCEBCAEFFB7A190FF00000000B7A190FFE8D4
          C3FFE8D4C3FFB7A190FF00000000B7A190FFE8D4C3FFE8D4C3FFE8D4C3FFE8D4
          C3FFE8D4C3FFEDDED1FFCFBDAFFFB7A190FF0000000000000000B7A190FFF4E8
          DDFFF4E8DDFFB7A190FF00000000B7A190FFF4E8DDFFF1E2D4FFEDD9C7FFEDD9
          C7FFF1E2D4FFD0BEB0FFB7A190FF000000000000000000000000B7A190FFB7A1
          90FFB7A190FFB7A190FF00000000B7A190FFB7A190FFD1BFB1FFF2DDCBFFF5E5
          D7FFD1BFB1FFB7A190FF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFF9E9DAFFD3C1
          B2FFB7A190FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFD3C1B3FFB7A1
          90FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFB7A190FF0000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 2
        OnClick = btnAddAllClick
      end
      object btnRemove: TcxButton
        Left = 202
        Top = 305
        Width = 111
        Height = 25
        Caption = #1059#1073#1088#1072#1090#1100
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFB7A190FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B7A190FFB7A394FFB7A190FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B7A190FFB9A595FFBCAB9DFFB7A190FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B7A190FFBBA797FFC0B0A1FFC0B0A1FFBBA797FFB7A1
          90FFB7A190FF00000000B7A190FFB7A190FFB7A190FFB7A190FF000000000000
          000000000000B7A190FFBDA999FFC5B4A5FFC5B4A5FFC5B4A5FFC5B4A5FFC5B4
          A5FFB7A190FF00000000B7A190FFC5B4A5FFC5B4A5FFB7A190FF000000000000
          0000B7A190FFBFAB9BFFCBBAAAFFCBBAAAFFCBBAAAFFCBBAAAFFCBBAAAFFCBBA
          AAFFB7A190FF00000000B7A190FFCBBAAAFFCBBAAAFFB7A190FF00000000B7A1
          90FFC2AD9DFFD1BFAFFFD1BFAFFFD1BFAFFFD1BFAFFFD1BFAFFFD1BFAFFFD1BF
          AFFFB7A190FF00000000B7A190FFD1BFAFFFD1BFAFFFB7A190FFB7A190FFC8B6
          A6FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5
          B4FFB7A190FF00000000B7A190FFD7C5B4FFD7C5B4FFB7A190FFB7A190FFCCBB
          ACFFE4D6C9FFDCC9B9FFDCC9B9FFDCC9B9FFDCC9B9FFDCC9B9FFDCC9B9FFDCC9
          B9FFB7A190FF00000000B7A190FFDCC9B9FFDCC9B9FFB7A190FF00000000B7A1
          90FFCEBCAEFFE9DACDFFE2CFBEFFE2CFBEFFE2CFBEFFE2CFBEFFE2CFBEFFE2CF
          BEFFB7A190FF00000000B7A190FFE2CFBEFFE2CFBEFFB7A190FF000000000000
          0000B7A190FFCFBDAFFFEDDED1FFE8D4C3FFE8D4C3FFE8D4C3FFE8D4C3FFE8D4
          C3FFB7A190FF00000000B7A190FFE8D4C3FFE8D4C3FFB7A190FF000000000000
          000000000000B7A190FFD0BEB0FFF1E2D4FFEDD9C7FFEDD9C7FFF1E2D4FFF4E8
          DDFFB7A190FF00000000B7A190FFF4E8DDFFF4E8DDFFB7A190FF000000000000
          00000000000000000000B7A190FFD1BFB1FFF5E5D7FFF2DDCBFFD1BFB1FFB7A1
          90FFB7A190FF00000000B7A190FFB7A190FFB7A190FFB7A190FF000000000000
          0000000000000000000000000000B7A190FFD3C1B2FFF9E9DAFFB7A190FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B7A190FFD3C1B3FFB7A190FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFB7A190FF0000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 3
        OnClick = btnRemoveClick
      end
      object btnRemoveAll: TcxButton
        Left = 202
        Top = 336
        Width = 111
        Height = 25
        Caption = #1059#1073#1088#1072#1090#1100' '#1074#1089#1077#1093
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFB7A190FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B7A190FFB7A394FFB7A190FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B7A190FFB9A595FFBCAB9DFFB7A190FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B7A190FFBBA797FFC0B0A1FFC0B0A1FFBBA797FFB7A1
          90FFB7A190FF00000000B7A190FFB7A190FFB7A190FFB7A190FF000000000000
          000000000000B7A190FFBDA999FFC5B4A5FFC5B4A5FFC5B4A5FFC5B4A5FFC5B4
          A5FFB7A190FF00000000B7A190FFC5B4A5FFC5B4A5FFB7A190FF000000000000
          0000B7A190FFBFAB9BFFCBBAAAFFCBBAAAFFCBBAAAFFCBBAAAFFCBBAAAFFCBBA
          AAFFB7A190FF00000000B7A190FFCBBAAAFFCBBAAAFFB7A190FF00000000B7A1
          90FFC2AD9DFFD1BFAFFFD1BFAFFFD1BFAFFFD1BFAFFFD1BFAFFFD1BFAFFFD1BF
          AFFFB7A190FF00000000B7A190FFD1BFAFFFD1BFAFFFB7A190FFB7A190FFC8B6
          A6FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5B4FFD7C5
          B4FFB7A190FF00000000B7A190FFD7C5B4FFD7C5B4FFB7A190FFB7A190FFCCBB
          ACFFE4D6C9FFDCC9B9FFDCC9B9FFDCC9B9FFDCC9B9FFDCC9B9FFDCC9B9FFDCC9
          B9FFB7A190FF00000000B7A190FFDCC9B9FFDCC9B9FFB7A190FF00000000B7A1
          90FFCEBCAEFFE9DACDFFE2CFBEFFE2CFBEFFE2CFBEFFE2CFBEFFE2CFBEFFE2CF
          BEFFB7A190FF00000000B7A190FFE2CFBEFFE2CFBEFFB7A190FF000000000000
          0000B7A190FFCFBDAFFFEDDED1FFE8D4C3FFE8D4C3FFE8D4C3FFE8D4C3FFE8D4
          C3FFB7A190FF00000000B7A190FFE8D4C3FFE8D4C3FFB7A190FF000000000000
          000000000000B7A190FFD0BEB0FFF1E2D4FFEDD9C7FFEDD9C7FFF1E2D4FFF4E8
          DDFFB7A190FF00000000B7A190FFF4E8DDFFF4E8DDFFB7A190FF000000000000
          00000000000000000000B7A190FFD1BFB1FFF5E5D7FFF2DDCBFFD1BFB1FFB7A1
          90FFB7A190FF00000000B7A190FFB7A190FFB7A190FFB7A190FF000000000000
          0000000000000000000000000000B7A190FFD3C1B2FFF9E9DAFFB7A190FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B7A190FFD3C1B3FFB7A190FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B7A190FFB7A190FF0000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 4
        OnClick = btnRemoveAllClick
      end
      object cxLabel5: TcxLabel
        Left = 319
        Top = 205
        Caption = #1054#1089#1085#1086#1074#1085#1086#1081' '#1074#1086#1076#1080#1090#1077#1083#1100
        Transparent = True
      end
      object MAIN_DRIVER: TcxLookupComboBox
        Left = 319
        Top = 221
        RepositoryItem = DM.erAUTO_DRIVER
        Properties.ListColumns = <>
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Width = 180
      end
      object cbDriverFilter: TcxCheckBox
        Left = 16
        Top = 201
        Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072#1084
        State = cbsChecked
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Transparent = True
        OnClick = cbDriverFilterClick
      end
      object List1: TcxListBox
        Left = 16
        Top = 221
        Width = 180
        Height = 219
        ItemHeight = 13
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        OnDblClick = List1DblClick
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = #1057#1090#1088#1072#1093#1086#1074#1099#1077' '#1087#1086#1083#1080#1089#1099
        TabOrder = 9
        Height = 187
        Width = 587
        object dockPolis: TdxBarDockControl
          Left = 3
          Top = 15
          Width = 581
          Height = 31
          Align = dalTop
          BarManager = BM
          ExplicitLeft = 2
          ExplicitTop = -1
          ExplicitWidth = 583
        end
        object cxGrid1: TcxGrid
          Left = 3
          Top = 46
          Width = 581
          Height = 132
          Align = alClient
          TabOrder = 1
          object GridPolisView: TcxGridDBTableView
            OnDblClick = GridPolisViewDblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsPOLIS
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object GridPolisViewID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
            end
            object GridPolisViewAUTO_ID: TcxGridDBColumn
              DataBinding.FieldName = 'AUTO_ID'
              Visible = False
            end
            object GridPolisViewDOC_SERIAL: TcxGridDBColumn
              Caption = #1057#1077#1088#1080#1103
              DataBinding.FieldName = 'DOC_SERIAL'
              MinWidth = 50
              Options.HorzSizing = False
              Width = 50
            end
            object GridPolisViewDOC_NUMBER: TcxGridDBColumn
              Caption = #1053#1086#1084#1077#1088
              DataBinding.FieldName = 'DOC_NUMBER'
              MinWidth = 120
              Options.HorzSizing = False
              Width = 120
            end
            object GridPolisViewCOMPANY_NAME: TcxGridDBColumn
              Caption = #1057#1090#1088#1072#1093#1086#1074#1072#1103' '#1082#1086#1084#1087#1072#1085#1080#1103
              DataBinding.FieldName = 'COMPANY_NAME'
              Width = 200
            end
            object GridPolisViewDATE_START: TcxGridDBColumn
              Caption = #1053#1072#1095#1072#1083#1086
              DataBinding.FieldName = 'DATE_START'
              MinWidth = 80
              Options.HorzSizing = False
              Width = 80
            end
            object GridPolisViewDATE_END: TcxGridDBColumn
              Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
              DataBinding.FieldName = 'DATE_END'
              MinWidth = 80
              Options.HorzSizing = False
              Width = 80
            end
            object GridPolisViewDESCRIPTION: TcxGridDBColumn
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
              DataBinding.FieldName = 'DESCRIPTION'
              Width = 200
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = GridPolisView
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      ImageIndex = 15
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inline frameDocuments: TframeDocuments
        Left = 0
        Top = 0
        Width = 587
        Height = 433
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 587
        ExplicitHeight = 433
        inherited dockDocuments: TdxBarDockControl
          Width = 587
          ExplicitWidth = 587
        end
        inherited cxGrid2: TcxGrid
          Width = 587
          Height = 402
          ExplicitWidth = 587
          ExplicitHeight = 402
        end
        inherited BM: TdxBarManager
          DockControlHeights = (
            0
            0
            0
            0)
          inherited BMBar1: TdxBar
            ItemLinks = <
              item
                Visible = True
                ItemName = 'bbRefresh'
              end
              item
                Visible = True
                ItemName = 'bbAdd'
              end
              item
                Visible = True
                ItemName = 'bbEdit'
              end
              item
                Visible = True
                ItemName = 'bbView'
              end>
          end
          inherited bbAdd: TdxBarButton
            OnClick = frameDocuments1bbAddClick
          end
        end
      end
    end
    object tabJournal: TcxTabSheet
      Caption = #1046#1091#1088#1085#1072#1083
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inline frameJournal: TframeJournal
        Left = 0
        Top = 0
        Width = 587
        Height = 433
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 587
        ExplicitHeight = 433
        inherited Grid: TcxGrid
          Width = 587
          Height = 402
          ExplicitWidth = 587
          ExplicitHeight = 402
        end
        inherited dxBarDockControl1: TdxBarDockControl
          Width = 587
          ExplicitWidth = 587
        end
        inherited BM: TdxBarManager
          DockControlHeights = (
            0
            0
            0
            0)
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
          inherited bbAdd: TdxBarButton
            OnClick = frameJournalbbAddClick
          end
        end
      end
    end
  end
  inherited BM: TdxBarManager
    Left = 401
    Top = 319
    DockControlHeights = (
      0
      0
      0
      0)
    object BMBar1: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1057#1090#1088#1072#1093#1086#1074#1072#1085#1080#1077
      CaptionButtons = <>
      DockControl = dockPolis
      DockedDockControl = dockPolis
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 796
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRefreshPolis'
        end
        item
          Visible = True
          ItemName = 'bbNewPolis'
        end
        item
          Visible = True
          ItemName = 'bbEditPolis'
        end
        item
          Visible = True
          ItemName = 'bbDeletePolis'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    inherited bbRefresh: TdxBarButton
      OnClick = bbRefreshClick
    end
    object bbRefreshPolis: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = bbRefreshPolisClick
    end
    object bbNewPolis: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 17
      PaintStyle = psCaptionGlyph
      OnClick = bbNewPolisClick
    end
    object bbEditPolis: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = bbEditPolisClick
    end
    object bbDeletePolis: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      OnClick = bbDeletePolisClick
    end
  end
  object POLIS: TpFIBDataSet
    UpdateSQL.Strings = (
      '')
    DeleteSQL.Strings = (
      'delete from AUTO_POLIS where ID=:ID')
    InsertSQL.Strings = (
      '')
    RefreshSQL.Strings = (
      'select'
      '  ID, AUTO_ID, DOC_SERIAL, DOC_NUMBER,'
      
        '  COMPANY, (select NAME from POLIS_COMPANY where ID=P.COMPANY) C' +
        'OMPANY_NAME,'
      '  DATE_START, DATE_END, DESCRIPTION'
      'from AUTO_POLIS P'
      'where'
      '    P.ID=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  ID, AUTO_ID, DOC_SERIAL, DOC_NUMBER,'
      
        '  COMPANY, (select NAME from POLIS_COMPANY where ID=P.COMPANY) C' +
        'OMPANY_NAME,'
      '  DATE_START, DATE_END, DESCRIPTION'
      'from AUTO_POLIS P'
      'where'
      '    P.AUTO_ID=:ID')
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 376
    Top = 392
  end
  object dsPOLIS: TDataSource
    DataSet = POLIS
    OnDataChange = dsPOLISDataChange
    Left = 392
    Top = 408
  end
  object QR: TpFIBQuery
    Transaction = trRead
    Database = DM.FB
    Left = 136
    Top = 200
    qoStartTransaction = True
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 184
    Top = 200
    qoStartTransaction = True
  end
end
