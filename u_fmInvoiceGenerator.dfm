inherited fmInvoiceGenerator: TfmInvoiceGenerator
  Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' ('#1089#1095#1077#1090#1072')'
  ClientHeight = 621
  ClientWidth = 1182
  OnCreate = FormCreate
  ExplicitWidth = 1198
  ExplicitHeight = 660
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1182
    ExplicitWidth = 1182
  end
  object PreviewPanel: TPanel [1]
    Left = 305
    Top = 31
    Width = 877
    Height = 590
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
  end
  object GroupParams: TcxGroupBox [2]
    Left = 0
    Top = 31
    Align = alLeft
    Caption = ' '#1057#1086#1089#1090#1072#1074' '#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '
    PanelStyle.Active = True
    PanelStyle.CaptionIndent = 5
    TabOrder = 2
    Height = 590
    Width = 305
    object InvoiceCount: TcxSpinEdit
      Left = 10
      Top = 23
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.OnChange = InvoiceCountPropertiesChange
      Style.LookAndFeel.NativeStyle = True
      Style.Shadow = False
      Style.TextStyle = []
      Style.TransparentBorder = True
      Style.ButtonStyle = btsDefault
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 42
    end
    object cbInvoice: TcxCheckBox
      Left = 58
      Top = 23
      Caption = #1057#1095#1105#1090
      Properties.Alignment = taLeftJustify
      TabOrder = 1
      OnClick = cbInvoiceClick
    end
    object cbAct: TcxCheckBox
      Left = 58
      Top = 50
      Caption = #1040#1082#1090
      Properties.Alignment = taLeftJustify
      TabOrder = 5
      OnClick = cbInvoiceClick
    end
    object ActCount: TcxSpinEdit
      Left = 10
      Top = 50
      Properties.Alignment.Horz = taCenter
      Properties.ImmediatePost = True
      Properties.OnChange = InvoiceCountPropertiesChange
      Style.ButtonStyle = btsDefault
      TabOrder = 4
      Width = 42
    end
    object cbSF: TcxCheckBox
      Left = 202
      Top = 23
      Caption = #1057#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1072
      Properties.Alignment = taLeftJustify
      TabOrder = 3
      OnClick = cbInvoiceClick
    end
    object SFCount: TcxSpinEdit
      Left = 154
      Top = 23
      Properties.Alignment.Horz = taCenter
      Properties.ImmediatePost = True
      Properties.OnChange = InvoiceCountPropertiesChange
      Style.ButtonStyle = btsDefault
      TabOrder = 2
      Width = 42
    end
    object cbPKO: TcxCheckBox
      Left = 58
      Top = 79
      Caption = #1055#1088#1080#1093#1086#1076#1085#1080#1082
      Properties.Alignment = taLeftJustify
      TabOrder = 9
      OnClick = cbInvoiceClick
    end
    object PKOCount: TcxSpinEdit
      Left = 10
      Top = 79
      Properties.Alignment.Horz = taCenter
      Properties.ImmediatePost = True
      Properties.OnChange = InvoiceCountPropertiesChange
      Style.ButtonStyle = btsDefault
      TabOrder = 8
      Width = 42
    end
    object cbDetail: TcxCheckBox
      Left = 202
      Top = 50
      Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103
      Properties.Alignment = taLeftJustify
      TabOrder = 7
      OnClick = cbInvoiceClick
    end
    object DetailCount: TcxSpinEdit
      Left = 154
      Top = 50
      Properties.Alignment.Horz = taCenter
      Properties.ImmediatePost = True
      Properties.OnChange = InvoiceCountPropertiesChange
      Style.ButtonStyle = btsDefault
      TabOrder = 6
      Width = 42
    end
    object cbPost: TcxCheckBox
      Left = 202
      Top = 79
      Caption = #1055#1086#1095#1090#1072
      Properties.Alignment = taLeftJustify
      TabOrder = 11
      OnClick = cbInvoiceClick
    end
    object PostCount: TcxSpinEdit
      Left = 154
      Top = 79
      Properties.Alignment.Horz = taCenter
      Properties.ImmediatePost = True
      Properties.OnChange = InvoiceCountPropertiesChange
      Style.ButtonStyle = btsDefault
      TabOrder = 10
      Width = 42
    end
    object cbNakl: TcxCheckBox
      Left = 58
      Top = 120
      Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103
      Enabled = False
      Properties.Alignment = taLeftJustify
      TabOrder = 13
      OnClick = cbInvoiceClick
    end
    object NaklCount: TcxSpinEdit
      Left = 10
      Top = 120
      Enabled = False
      Properties.Alignment.Horz = taCenter
      Properties.ImmediatePost = True
      Properties.OnChange = InvoiceCountPropertiesChange
      Style.ButtonStyle = btsDefault
      TabOrder = 12
      Width = 42
    end
    object cbStamp: TcxCheckBox
      Left = 154
      Top = 120
      Caption = #1055#1077#1095#1072#1090#1080' '#1080' '#1087#1086#1076#1087#1080#1089#1080
      Properties.Alignment = taLeftJustify
      Style.TextStyle = [fsBold]
      TabOrder = 14
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 156
      Caption = #1055#1086' '#1076#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1080
      Transparent = True
    end
    object DOVER_ID: TcxDBExtLookupComboBox
      Left = 10
      Top = 172
      DataBinding.DataField = 'DOVER_ID'
      DataBinding.DataSource = dsData
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.ImmediatePost = True
      Properties.View = GridsDBTableView1
      Properties.KeyFieldNames = 'ID'
      Properties.ListFieldItem = GridsDBTableView1TXT
      Properties.OnChange = DOVER_IDPropertiesChange
      TabOrder = 15
      Width = 232
    end
    object btnDoverClear: TcxButton
      Left = 242
      Top = 170
      Width = 24
      Height = 24
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000A0A0A1336383768646866C0797E7CE7717573D6666A68C33739
        396A040404070000000000000000000000000000000000000000000000000000
        00001F201F3B7B7F7DEB868B89FF929694FF9EA2A0FFA8ABAAFF9CA09FFF8C91
        8FFF777C7AE5292B2A4F00000000000000000000000000000000000000002627
        274F7A7D7CF86E7170FF6B6D6DFF818684FF858A88FF888D8BFF858A88FF6D70
        6FFF737775FF818684F81F201F3B00000000000000000000000003030307686C
        69E5676A68FFB2B3B2FFE0E0E0FF666866FF7C817EFF7E8380FF686A69FFE0E1
        E0FFB4B4B4FF737775FF7B7F7DEB0A0A0A1300000000000000002D2E2C6A6E71
        6DFF606260FFDDDEDDFFFFFFFFFFE0E0E0FF636564FF646665FFE0E0E0FFFFFF
        FFFFE0E0E0FF6B6D6CFF818684FF3537376800000000000000004D4F4CC36769
        66FF696B68FF5B5D5BFFD9D9D9FFFFFFFFFFDFE0DFFFE0E0E0FFFFFFFFFFE0E0
        E0FF636564FF787C79FF7B7F7CFF5E615FC000000000000000004F514DD66062
        5EFF626460FF646662FF585A58FFD6D6D6FFFFFFFFFFFFFFFFFFDFE0DFFF5F61
        5FFF6F7370FF727573FF747875FF6B6E6CE700000000000000004F504CE75D5E
        5AFF696A66FF6E6F6CFF626361FFE2E2E2FFFFFFFFFFFFFFFFFFE0E0E0FF6465
        64FF7A7C79FF787A78FF707370FF5D605DD6000000000000000040403CC17576
        72FF767774FF656564FFE2E2E2FFFFFFFFFFE3E3E3FFD6D6D6FFFFFFFFFFE0E0
        E0FF696969FF848582FF858884FF535552C400000000000000001E1E1C687171
        6DFF6D6D6AFFE1E1E1FFFFFFFFFFE3E3E3FF6D6D6BFF6C6C6AFFD6D6D6FFFFFF
        FFFFE1E1E1FF727371FF80817FFF2829286A0000000000000000050505134D4C
        48EC787775FFB4B4B4FFE1E1E1FF70706FFF92928FFF959592FF747472FFD7D7
        D7FFB4B4B4FF80807EFF5C5D59E7020302070000000000000000000000000E0E
        0D3B595853F9838280FF7D7C7BFF9E9E9CFFA0A09EFFA2A29FFFA3A3A0FF8282
        80FF888886FF666763F9191A184F000000000000000000000000000000000000
        000012110F4F43423DE7878683FFAAA9A7FFAFAEACFFB0AFADFFACABA9FF8D8C
        89FF4F4E4AEC1111103B00000000000000000000000000000000000000000000
        000000000000010101071616136A2C2A26C344423DDA484742E92F2E2AC01A19
        1768050504130000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      TabOrder = 16
      OnClick = btnDoverClearClick
    end
    object btnDoverPost: TcxButton
      Left = 265
      Top = 170
      Width = 24
      Height = 24
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Enabled = False
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000322A1986596230FA2E211577000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000706
        03134B5A2AE03FC45AFF4D7938F9221A0D5E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002422
        0F714A9A45FF58E992FF4CD274FF476E2BF31715094700000000000000000000
        000000000000000000000000000000000000000000000000000002020107324C
        18BC5BCF7AFF7CE8ABFF6DE8A3FF51CE74FF416925EB0F120635000000000000
        0000000000000000000000000000000000000000000000000000111905484393
        3CFE89EEB5FF96F3C5FF8AEBB8FF79ECAFFF50CC72FF386119DF090D04240000
        00000000000000000000000000000000000000000000010100031E3F0A9A6CCE
        82FFA1FAD1FF5CCD76FF78E6A5FF95F3C8FF7CF2B8FF4FC86DFF2E5B14D0060B
        021C0000000000000000000000000000000000000000071002273C8C30F798FC
        C9FF5EC673FE26620AE4378E2CF56CE398FF91F9CCFF7CF7C1FF4BC364FF224F
        0AB70205010D00000000000000000000000000000000143B08825AD07AFF5FD5
        7FFF1E5A0CC0000000010C1C0445267514E251CB6DFF81F9C6FF7AFECAFF44C0
        5DFF1B4C06A9010200050000000000000000000000002C8B26E944D062FF1C65
        0FC403080112000000000000000006110228165005AB3AB446FF6EF2B3FF72FF
        D0FF3FBB53FF1141028E00000000000000000000000024901BF61C7512CF030C
        011B00000000000000000000000000000000010200050A30006A25961DF659E8
        96FF69FFD2FF38B849FF0A3B007E000000000000000003110121020B01170000
        0000000000000000000000000000000000000000000000000000041A00361478
        09D542D46EFF65FCBEFF34B746FF043200660000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000010A
        00150751009B2FBE47FF5BF5A4FF2BB23AFD022A004E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000320060179923E344DD69FF1AA01EED00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000160029097D0CC50D9D0FEF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      TabOrder = 17
      OnClick = btnDoverPostClick
    end
    object btnPrint: TcxButton
      Left = 72
      Top = 215
      Width = 140
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      Default = True
      TabOrder = 19
      OnClick = btnPrintClick
    end
  end
  inherited BM: TdxBarManager
    PixelsPerInch = 96
  end
  object Data: TpFIBDataSet
    UpdateSQL.Strings = (
      'update INVOICE set'
      '  Invoice.DOVER_ID=:DOVER_ID'
      'where'
      '  Invoice.ID=:ID')
    RefreshSQL.Strings = (
      'select'
      '  I.ID, cast(I.DOC_DT as T_DATE) DOC_DATE, I.DOC_NUM,'
      
        '  I.CONTRAGENT_ID, I.PERIOD_START, I.PERIOD_END, I.CONTRACT_ID, ' +
        'I.DESCRIPTION INVOICE_DESCRIPTION,'
      '  I.AMOUNT, I.AMOUNT_NDS,'
      '  coalesce(C.PAYMENT_TYPE, 0) PAYMENT_TYPE,'
      '  CC.DESCRIPTION, CC.CONTRACT_NUM, CC.CONTRACT_DATE,'
      
        '  c.NAME C_NAME, c.FULLNAME C_FULLNAME, C.INN C_INN, C.UR_ADDRES' +
        'S C_ADDRESS,'
      
        '  IIF(coalesce(C.PERSON_NAME, '#39#39')='#39#39', '#39'_________________________' +
        '_____________________________'#39', C.PERSON_NAME) C_RUK_NAME,'
      '  O.ID ORGANIZATION_ID,'
      
        '  O.DESCRIPTION O_NAME, O.BANK_NAME, O.BIK, O.BANK_CITY, O.KS, O' +
        '.RS, O.INN O_INN, O.KPP O_KPP, O.POST_ADDRESS O_ADDRESS,'
      '  A.NAME SERVICE_ADDRESS, I.ADDRESS_ID,'
      
        '  E_RUK.NAME_LAST ||'#39'.'#39'||(substring(E_RUK.NAME_FIRST from 1 for ' +
        '1))||'#39'.'#39'||(substring(E_RUK.NAME_SECOND from 1 for 1)) NAME_RUK,'
      '  E_RUK.NAME_RP  NAME_RUK_RP,'
      '  E_RUK.SIGNATURE RUK_SIGNATURE,'
      '  E_BUH.SIGNATURE BUH_SIGNATURE,'
      '  RUK_POST.DESCRIPTION NAME_RUK_POST,'
      '  RUK_POST.DESCRIPTION_RP NAME_RUK_POST_RP,'
      
        '  E_BUH.NAME_LAST ||'#39'.'#39'||(substring(E_BUH.NAME_FIRST from 1 for ' +
        '1))||'#39'.'#39'||(substring(E_BUH.NAME_SECOND from 1 for 1)) NAME_BUH,'
      '  I.DOVER_ID,'
      '  O.STAMP'
      'from invoice I'
      'left join CONTRAGENTS_CONTRACT CC on CC.ID=I.CONTRACT_ID'
      'left join CONTRACT_ADDRESS A on A.ID=I.ADDRESS_ID'
      'left join contragents c on c.ID=i.CONTRAGENT_ID'
      'left join ORGANIZATIONS O on O.ID=coalesce(C.ORGANIZATION_ID, 1)'
      'left join REF_EMPLOE E_RUK on E_RUK.ID=O.DIRECTOR_ID'
      
        'left join REF_EMPLOE_POST RUK_POST on RUK_POST.ID=E_RUK.POSITION' +
        '_ID'
      'left join REF_EMPLOE E_BUH on E_BUH.ID=O.ACCOUNTANT_ID'
      'where i.id=:ID'
      '')
    SelectSQL.Strings = (
      'select'
      '  I.ID, cast(I.DOC_DT as T_DATE) DOC_DATE, I.DOC_NUM, '
      
        '  I.CONTRAGENT_ID, I.PERIOD_START, I.PERIOD_END, I.CONTRACT_ID, ' +
        'I.DESCRIPTION INVOICE_DESCRIPTION,'
      '  I.AMOUNT, I.AMOUNT_NDS,      '
      '  coalesce(C.PAYMENT_TYPE, 0) PAYMENT_TYPE,'
      '  CC.DESCRIPTION, CC.CONTRACT_NUM, CC.CONTRACT_DATE,'
      
        '  c.NAME C_NAME, c.FULLNAME C_FULLNAME, C.INN C_INN, C.UR_ADDRES' +
        'S C_ADDRESS,'
      
        '  IIF(coalesce(C.PERSON_NAME, '#39#39')='#39#39', '#39'_________________________' +
        '_____________________________'#39', C.PERSON_NAME) C_RUK_NAME,'
      '  O.ID ORGANIZATION_ID,'
      
        '  O.DESCRIPTION O_NAME, O.BANK_NAME, O.BIK, O.BANK_CITY, O.KS, O' +
        '.RS, O.INN O_INN, O.KPP O_KPP, O.POST_ADDRESS O_ADDRESS,'
      '  A.NAME SERVICE_ADDRESS, I.ADDRESS_ID,       '
      
        '  E_RUK.NAME_LAST ||'#39'.'#39'||(substring(E_RUK.NAME_FIRST from 1 for ' +
        '1))||'#39'.'#39'||(substring(E_RUK.NAME_SECOND from 1 for 1)) NAME_RUK,'
      '  E_RUK.NAME_RP  NAME_RUK_RP,'
      '  E_RUK.SIGNATURE RUK_SIGNATURE,'
      '  E_BUH.SIGNATURE BUH_SIGNATURE,'
      '  RUK_POST.DESCRIPTION NAME_RUK_POST,'
      '  RUK_POST.DESCRIPTION_RP NAME_RUK_POST_RP,'
      
        '  E_BUH.NAME_LAST ||'#39'.'#39'||(substring(E_BUH.NAME_FIRST from 1 for ' +
        '1))||'#39'.'#39'||(substring(E_BUH.NAME_SECOND from 1 for 1)) NAME_BUH,'
      '  I.DOVER_ID,'
      '  O.STAMP'
      'from invoice I'
      'left join CONTRAGENTS_CONTRACT CC on CC.ID=I.CONTRACT_ID'
      'left join CONTRACT_ADDRESS A on A.ID=I.ADDRESS_ID'
      'left join contragents c on c.ID=i.CONTRAGENT_ID'
      'left join ORGANIZATIONS O on O.ID=coalesce(C.ORGANIZATION_ID, 1)'
      'left join REF_EMPLOE E_RUK on E_RUK.ID=O.DIRECTOR_ID'
      
        'left join REF_EMPLOE_POST RUK_POST on RUK_POST.ID=E_RUK.POSITION' +
        '_ID'
      'left join REF_EMPLOE E_BUH on E_BUH.ID=O.ACCOUNTANT_ID'
      'where i.id=:ID')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 512
    Top = 328
  end
  object Report: TfrxReport
    Version = '6.0.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoClose]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42850.590933078700000000
    ReportOptions.LastChange = 42850.590933078700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPreview = ReportPreview
    OnUserFunction = ReportUserFunction
    Left = 400
    Top = 280
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object Grids: TcxGridViewRepository
    Left = 352
    Top = 88
    object GridsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.GridMode = True
      DataController.DataSource = dsDover
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      object GridsDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object GridsDBTableView1E_NAME: TcxGridDBColumn
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        DataBinding.FieldName = 'E_NAME'
        SortIndex = 0
        SortOrder = soAscending
        Width = 143
      end
      object GridsDBTableView1DOC_NUM: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'DOC_NUM'
        Width = 60
      end
      object GridsDBTableView1DOC_DATE: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DOC_DATE'
        Width = 60
      end
      object GridsDBTableView1TXT: TcxGridDBColumn
        DataBinding.FieldName = 'TXT'
        Visible = False
      end
    end
  end
  object Dover: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  D.ID, E.NAME_LAST E_NAME, D.DOC_NUM, D.DOC_DATE,'
      
        '  E.NAME_LAST||'#39' '#8470#39'||'#39' '#39'||D.DOC_NUM||'#39' '#1086#1090' '#39'|| (select STR from S' +
        'P_DATE_FORMAT(D.DOC_DATE)) TXT'
      'from'
      '  DOVER D, ORGANIZATIONS O, REF_EMPLOE E'
      'where'
      '  D.ORGANIZATION_ID=O.ID'
      '  and E.ID=D.EMPLOE_ID'
      '  and O.ID=coalesce(:ORGANIZATION_ID, 6)')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 440
    Top = 192
  end
  object dsDover: TDataSource
    DataSet = Dover
    Left = 472
    Top = 192
  end
  object dsData: TDataSource
    DataSet = Data
    Left = 520
    Top = 384
  end
end
