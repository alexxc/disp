inherited fmPolis: TfmPolis
  BorderStyle = bsDialog
  Caption = #1057#1090#1088#1072#1093#1086#1074#1086#1081' '#1087#1086#1083#1080#1089
  ClientHeight = 295
  ClientWidth = 251
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  ExplicitWidth = 257
  ExplicitHeight = 323
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 251
    ExplicitWidth = 251
  end
  object cxGroupBox1: TcxGroupBox [1]
    Left = 0
    Top = 31
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 5
    Height = 264
    Width = 251
    object cxLabel1: TcxLabel
      Left = 15
      Top = 17
      Caption = #1057#1077#1088#1080#1103
      Transparent = True
    end
    object DOC_NUMBER: TcxDBTextEdit
      Left = 111
      Top = 32
      DataBinding.DataField = 'DOC_NUMBER'
      DataBinding.DataSource = dsPOLIS
      Properties.MaxLength = 15
      TabOrder = 0
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 111
      Top = 17
      Caption = #1053#1086#1084#1077#1088
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 17
      Top = 59
      Caption = #1057#1090#1088#1072#1093#1086#1074#1072#1103' '#1082#1086#1084#1087#1072#1085#1080#1103
      Transparent = True
    end
    object COMPANY: TcxDBLookupComboBox
      Left = 17
      Top = 74
      DataBinding.DataField = 'COMPANY'
      DataBinding.DataSource = dsPOLIS
      Properties.ClearKey = 46
      Properties.DropDownRows = 15
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsPOLIS_COMPANY
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 215
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 106
      Caption = #1044#1077#1081#1089#1090#1074#1091#1077#1090' '#1089' '
      Transparent = True
    end
    object DATE_START: TcxDBDateEdit
      Left = 17
      Top = 121
      DataBinding.DataField = 'DATE_START'
      DataBinding.DataSource = dsPOLIS
      Properties.ClearKey = 46
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      Width = 80
    end
    object cxLabel5: TcxLabel
      Left = 111
      Top = 106
      Caption = #1055#1086
      Transparent = True
    end
    object DATE_END: TcxDBDateEdit
      Left = 111
      Top = 121
      DataBinding.DataField = 'DATE_END'
      DataBinding.DataSource = dsPOLIS
      Properties.ClearKey = 46
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 80
    end
    object cxLabel6: TcxLabel
      Left = 17
      Top = 148
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
      Transparent = True
    end
    object DESCRIPTION: TcxDBMemo
      Left = 17
      Top = 167
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsPOLIS
      Properties.MaxLength = 200
      TabOrder = 4
      Height = 78
      Width = 215
    end
    object DOC_SERIAL: TcxDBComboBox
      Left = 17
      Top = 32
      DataBinding.DataField = 'DOC_SERIAL'
      DataBinding.DataSource = dsPOLIS
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items.Strings = (
        'XXX'
        'CCC'
        'EEE'
        'BBB')
      Properties.Revertable = True
      TabOrder = 11
      Width = 80
    end
  end
  inherited BM: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited bbClose: TdxBarButton
      PaintStyle = psStandard
    end
    inherited bbRefresh: TdxBarButton
      PaintStyle = psStandard
      OnClick = bbRefreshClick
    end
    inherited bbSave: TdxBarButton
      PaintStyle = psStandard
    end
  end
  object POLIS: TpFIBDataSet
    UpdateSQL.Strings = (
      'update AUTO_POLIS SET'
      ' AUTO_ID=:AUTO_ID,'
      ' DOC_SERIAL=:DOC_SERIAL,'
      ' DOC_NUMBER=:DOC_NUMBER,'
      ' COMPANY=:COMPANY,'
      ' DATE_START=:DATE_START,'
      ' DATE_END=:DATE_END,'
      ' DESCRIPTION=:DESCRIPTION'
      'where'
      '  ID=:ID ')
    DeleteSQL.Strings = (
      'delete from AUTO_POLIS where ID=:ID')
    InsertSQL.Strings = (
      
        'insert into AUTO_POLIS( AUTO_ID, DOC_SERIAL, DOC_NUMBER, COMPANY' +
        ', DATE_START, DATE_END, DESCRIPTION)'
      
        'values (:AUTO_ID, :DOC_SERIAL, :DOC_NUMBER, :COMPANY, :DATE_STAR' +
        'T, :DATE_END, :DESCRIPTION)'
      'returning ID')
    RefreshSQL.Strings = (
      
        'select ID, AUTO_ID, DOC_SERIAL, DOC_NUMBER, COMPANY, DATE_START,' +
        ' DATE_END, DESCRIPTION'
      'from AUTO_POLIS P'
      'where'
      '    P.ID=:ID'
      '')
    SelectSQL.Strings = (
      
        'select ID, AUTO_ID, DOC_SERIAL, DOC_NUMBER, COMPANY, DATE_START,' +
        ' DATE_END, DESCRIPTION'
      'from AUTO_POLIS P'
      'where'
      '    P.ID=:ID')
    AfterEdit = POLISAfterEdit
    AfterPost = POLISAfterPost
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 56
    Top = 208
  end
  object dsPOLIS: TDataSource
    DataSet = POLIS
    Left = 72
    Top = 224
  end
  object POLIS_COMPANY: TpFIBDataSet
    SelectSQL.Strings = (
      'select ID, NAME from POLIS_COMPANY order by NAME')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 136
    Top = 216
  end
  object dsPOLIS_COMPANY: TDataSource
    DataSet = POLIS_COMPANY
    Left = 160
    Top = 224
  end
end
