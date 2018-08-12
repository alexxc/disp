inherited fmManagersCalendar: TfmManagersCalendar
  Left = 420
  Top = 268
  Caption = #1050#1072#1083#1077#1085#1076#1072#1088#1100
  ClientHeight = 723
  ClientWidth = 929
  ExplicitWidth = 945
  ExplicitHeight = 761
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 929
    ExplicitWidth = 929
  end
  object Pages: TcxPageControl [1]
    Left = 0
    Top = 31
    Width = 929
    Height = 692
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 686
    ClientRectLeft = 2
    ClientRectRight = 923
    ClientRectTop = 27
    object cxTabSheet2: TcxTabSheet
      Caption = #1050#1072#1083#1077#1085#1076#1072#1088#1100
      ImageIndex = 1
      object gbDateNavigator: TcxGroupBox
        Left = 297
        Top = 0
        Align = alClient
        Caption = #1050#1072#1083#1077#1085#1076#1072#1088#1100
        TabOrder = 0
        Height = 659
        Width = 624
        object DateNavigator: TcxDateNavigator
          Left = 3
          Top = 15
          Width = 618
          Height = 635
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          SelectPeriod = False
          ShowDatesContainingEventsInBold = False
          ShowDatesContainingHolidaysInColor = True
          ShowWeekNumbers = False
          TabOrder = 0
          OnCustomDrawDayNumber = DateNavigatorCustomDrawDayNumber
          OnSelectionChanged = DateNavigatorSelectionChanged
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alLeft
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
        TabOrder = 1
        Height = 659
        Width = 297
        object cxGrid1: TcxGrid
          Left = 3
          Top = 15
          Width = 291
          Height = 138
          Align = alTop
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            DataController.DataSource = dsDays
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Options.Editing = False
              Width = 30
            end
            object cxGrid1DBTableView1DDAY: TcxGridDBColumn
              Caption = #1044#1077#1085#1100
              DataBinding.FieldName = 'DDAY'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082
                  ImageIndex = 0
                  Value = 1
                end
                item
                  Description = #1042#1090#1086#1088#1085#1080#1082
                  Value = 2
                end
                item
                  Description = #1057#1088#1077#1076#1072
                  Value = 3
                end
                item
                  Description = #1063#1077#1090#1074#1077#1088#1075
                  Value = 4
                end
                item
                  Description = #1055#1103#1090#1085#1080#1094#1072
                  Value = 5
                end
                item
                  Description = #1042#1099#1093#1086#1076#1085#1099#1077
                  Value = 0
                end>
              Options.Editing = False
              Width = 103
            end
            object cxGrid1DBTableView1USER_ID: TcxGridDBColumn
              Caption = #1052#1077#1085#1077#1076#1078#1077#1088
              DataBinding.FieldName = 'USER_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsUsers
              Width = 168
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object gbDateType: TcxGroupBox
          Left = 3
          Top = 153
          Align = alTop
          Caption = #1044#1072#1090#1072
          TabOrder = 1
          Height = 120
          Width = 291
          object DATE_TYPE_1: TcxRadioButton
            Tag = 1
            Left = 146
            Top = 16
            Width = 145
            Height = 17
            Caption = #1045#1078#1077#1075#1086#1076#1085#1099#1081' '#1087#1088#1072#1079#1076#1085#1080#1082
            Enabled = False
            TabOrder = 0
            Transparent = True
          end
          object DATE_TYPE_2: TcxRadioButton
            Tag = 2
            Left = 146
            Top = 33
            Width = 145
            Height = 17
            Caption = #1042#1099#1093#1086#1076#1085#1086#1081
            TabOrder = 1
            OnClick = DATE_TYPE_0Click
            Transparent = True
          end
          object DATE_TYPE_3: TcxRadioButton
            Tag = 3
            Left = 146
            Top = 50
            Width = 145
            Height = 17
            Caption = #1056#1072#1073#1086#1095#1080#1081
            TabOrder = 2
            OnClick = DATE_TYPE_0Click
            Transparent = True
          end
          object DATE_TYPE_0: TcxRadioButton
            Left = 3
            Top = 16
            Width = 113
            Height = 17
            Caption = #1054#1073#1099#1095#1085#1099#1081' '#1076#1077#1085#1100
            TabOrder = 3
            OnClick = DATE_TYPE_0Click
            Transparent = True
          end
          object MANAGER_ID: TcxLookupComboBox
            Left = 121
            Top = 80
            Properties.DropDownListStyle = lsFixedList
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsUsers
            Properties.OnCloseUp = MANAGER_IDPropertiesCloseUp
            TabOrder = 4
            Width = 143
          end
          object cxLabel1: TcxLabel
            Left = 4
            Top = 81
            Caption = #1044#1077#1078#1091#1088#1085#1099#1081' '#1084#1077#1085#1077#1076#1078#1077#1088
          end
          object btnClearManager: TcxButton
            Left = 264
            Top = 80
            Width = 18
            Height = 21
            OptionsImage.ImageIndex = 26
            OptionsImage.Images = DM.ToolImages
            TabOrder = 6
            OnClick = btnClearManagerClick
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 3
          Top = 273
          Align = alTop
          Caption = #1058#1077#1082#1091#1097#1080#1081' '#1084#1077#1085#1077#1076#1078#1077#1088
          TabOrder = 2
          Height = 72
          Width = 291
          object CURRENT_MANAGER: TcxLookupComboBox
            Left = 16
            Top = 24
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsUsers
            Properties.OnChange = CURRENT_MANAGERPropertiesChange
            TabOrder = 0
            Width = 185
          end
          object btnChangeManager: TcxButton
            Left = 213
            Top = 21
            Width = 75
            Height = 25
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100
            Enabled = False
            TabOrder = 1
            OnClick = btnChangeManagerClick
          end
        end
      end
    end
  end
  inherited trRead: TpFIBTransaction
    Left = 424
    Top = 168
  end
  inherited trWrite: TpFIBTransaction
    Left = 464
    Top = 168
  end
  inherited BM: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          Visible = True
          ItemName = 'bbToday'
        end
        item
          Visible = True
          ItemName = 'bbSave'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    inherited bbSave: TdxBarButton
      PaintStyle = psCaptionGlyph
    end
    object bbToday: TdxBarButton
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1085#1072' "'#1057#1077#1075#1086#1076#1085#1103'"'
      Category = 0
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1085#1072' "'#1057#1077#1075#1086#1076#1085#1103'"'
      Visible = ivAlways
      ImageIndex = 49
      PaintStyle = psCaptionGlyph
      OnClick = bbTodayClick
    end
  end
  object Days: TpFIBDataSet
    UpdateSQL.Strings = (
      'update PARAMS P set P.VAL_INT=:USER_ID where P.ID=:ID'
      '')
    RefreshSQL.Strings = (
      'select P.VAL_INT USER_ID from PARAMS P where P.ID=:ID'
      '')
    SelectSQL.Strings = (
      'execute block'
      'returns('
      '  ID T_PID,'
      '  USER_ID T_PID,'
      '  DDAY T_INT,'
      '  NAME type of column users.NAME'
      '  )'
      'as'
      'begin'
      
        '  select 1, P.ID, P.VAL_INT, U.NAME from PARAMS P left join user' +
        's U on u.ID=P.VAL_INT where P.NAME='#39'REQUEST_MANAGER_1'#39' into :DDA' +
        'Y, :ID, :USER_ID, :NAME;  suspend;'
      
        '  select 2, P.ID, P.VAL_INT, U.NAME from PARAMS P left join user' +
        's U on u.ID=P.VAL_INT where P.NAME='#39'REQUEST_MANAGER_2'#39' into :DDA' +
        'Y, :ID, :USER_ID, :NAME;  suspend;'
      
        '  select 3, P.ID, P.VAL_INT, U.NAME from PARAMS P left join user' +
        's U on u.ID=P.VAL_INT where P.NAME='#39'REQUEST_MANAGER_3'#39' into :DDA' +
        'Y, :ID, :USER_ID, :NAME;  suspend;'
      
        '  select 4, P.ID, P.VAL_INT, U.NAME from PARAMS P left join user' +
        's U on u.ID=P.VAL_INT where P.NAME='#39'REQUEST_MANAGER_4'#39' into :DDA' +
        'Y, :ID, :USER_ID, :NAME;  suspend;'
      
        '  select 5, P.ID, P.VAL_INT, U.NAME from PARAMS P left join user' +
        's U on u.ID=P.VAL_INT where P.NAME='#39'REQUEST_MANAGER_5'#39' into :DDA' +
        'Y, :ID, :USER_ID, :NAME;  suspend;'
      
        '  select 0, P.ID, P.VAL_INT, U.NAME from PARAMS P left join user' +
        's U on u.ID=P.VAL_INT where P.NAME='#39'REQUEST_MANAGER_0'#39' into :DDA' +
        'Y, :ID, :USER_ID, :NAME;  suspend;'
      'end')
    AfterPost = DaysAfterPost
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    SQLScreenCursor = crSQLWait
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 592
    Top = 232
  end
  object dsDays: TDataSource
    DataSet = Days
    Left = 624
    Top = 232
  end
  object qCheckDay: TpFIBQuery
    Transaction = DM.trRead
    Database = DM.FB
    SQL.Strings = (
      'execute block (ADATE T_DATE = :ADATE)'
      'returns ('
      '    DATE_TYPE T_INT)'
      'as'
      'declare variable ID T_PID = null;'
      'declare variable DOW T_INT;'
      'begin'
      '  if (ADATE is null) then'
      '    ADATE=current_date;'
      '  DATE_TYPE = 0;'
      ''
      
        '  select H.ID, H.DATE_TYPE from REF_HOLIDAYS H where H.DATE_DATE' +
        ' = :ADATE into :ID, :DATE_TYPE;'
      ''
      '  if (ID is null) then begin'
      '    select first 1 H.ID, H.DATE_TYPE from REF_HOLIDAYS H'
      '    where'
      '      H.DATE_TYPE=1 -- '#1045#1078#1077#1075#1086#1076#1085#1099#1081' '#1087#1088#1072#1079#1076#1085#1080#1082
      '      and extract(day from H.DATE_DATE)=extract(day from :ADATE)'
      
        '      and extract(month from H.DATE_DATE)=extract(month from :AD' +
        'ATE)'
      '    into :ID, :DATE_TYPE;'
      '  end'
      '  if (DATE_TYPE=0) then begin'
      '    DOW = extract(weekday from ADATE);'
      '    if (DOW in (0, 6)) then'
      '      DATE_TYPE = 2;'
      '  end'
      '  suspend;'
      'end')
    Left = 504
    Top = 232
    qoStartTransaction = True
  end
  object Users: TpFIBDataSet
    SelectSQL.Strings = (
      'select ID, NAME from ('
      'select'
      '  U.ID, U.NAME,'
      
        '  (select count(1) from SP_GET_USER_ROLES(U.LOGIN_NAME) R where ' +
        'R.ROLE_NAME='#39'MANAGER'#39') IS_MANAGER'
      'from USERS U'
      'where '
      '  U.IS_ACTIVE=1 and U.PHONE_MOBILE is not null'
      ') where IS_MANAGER>0')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    SQLScreenCursor = crSQLWait
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 592
    Top = 184
  end
  object dsUsers: TDataSource
    DataSet = Users
    Left = 624
    Top = 184
  end
  object Holidays: TpFIBDataSet
    UpdateSQL.Strings = (
      'update REF_HOLIDAYS H set'
      '  H.DATE_TYPE=:DATE_TYPE,'
      '  MANAGER_ID=:MANAGER_ID'
      'where ID=:ID')
    DeleteSQL.Strings = (
      'delete from REF_HOLIDAYS where ID=:ID')
    InsertSQL.Strings = (
      
        'insert into REF_HOLIDAYS(date_type, D, M, Y, MANAGER_ID) values ' +
        '(:date_type, :D, :M, :Y, :MANAGER_ID) returning ID')
    RefreshSQL.Strings = (
      'select'
      '    ID, DATE_TYPE,'
      '    coalesce(D, 0) D,'
      '    coalesce(M, 0) M,'
      '    coalesce(Y, 0) Y,'
      '    coalesce(MANAGER_ID, 0) manager_id'
      'from REF_HOLIDAYS H where ID=:ID')
    SelectSQL.Strings = (
      'select'
      '    ID, DATE_TYPE,'
      '    coalesce(D, 0) D,'
      '    coalesce(M, 0) M,'
      '    coalesce(Y, 0) Y,'
      '    coalesce(MANAGER_ID, 0) manager_id'
      'from'
      '    REF_HOLIDAYS H'
      'order by H.Y, H.M, H.D nulls first')
    Transaction = trRead
    Database = DM.FB
    UpdateTransaction = trWrite
    SQLScreenCursor = crSQLWait
    RefreshTransactionKind = tkUpdateTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm '
    Left = 592
    Top = 280
  end
  object QW: TpFIBQuery
    Transaction = trWrite
    Database = DM.FB
    Left = 90
    Top = 450
    qoStartTransaction = True
  end
end
