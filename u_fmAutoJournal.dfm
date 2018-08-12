inherited fmAutoJournal: TfmAutoJournal
  Caption = #1046#1091#1088#1085#1072#1083' '#1072#1074#1090#1086#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
  ClientHeight = 579
  ClientWidth = 1216
  ExplicitWidth = 1232
  ExplicitHeight = 617
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 1216
  end
  object Grid: TcxGrid [1]
    Left = 0
    Top = 31
    Width = 1216
    Height = 548
    Align = alClient
    TabOrder = 5
    ExplicitLeft = 392
    ExplicitTop = 272
    ExplicitWidth = 250
    ExplicitHeight = 200
    object GridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDATA
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      object GridDBTableView1D: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'D'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 81
      end
      object GridDBTableView1MODEL_NAME: TcxGridDBColumn
        Caption = #1052#1086#1076#1077#1083#1100
        DataBinding.FieldName = 'MODEL_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 78
      end
      object GridDBTableView1GOS_NOMER: TcxGridDBColumn
        Caption = #1043#1086#1089#1085#1086#1084#1077#1088
        DataBinding.FieldName = 'GOS_NOMER'
        Width = 93
      end
      object GridDBTableView1DRIVERS: TcxGridDBColumn
        Caption = #1042#1086#1076#1080#1090#1077#1083#1100
        DataBinding.FieldName = 'DRIVERS'
        Width = 78
      end
      object GridDBTableView1MESSAGE: TcxGridDBColumn
        Caption = #1058#1077#1082#1089#1090
        DataBinding.FieldName = 'MESSAGE'
        Width = 486
      end
      object GridDBTableView1RECORD_TYPE_NAME: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1079#1072#1087#1080#1089#1080
        DataBinding.FieldName = 'RECORD_TYPE_NAME'
        Width = 212
      end
      object GridDBTableView1USER_NAME: TcxGridDBColumn
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        DataBinding.FieldName = 'USER_NAME'
        Width = 150
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  inherited BM: TdxBarManager
    PixelsPerInch = 96
    inherited BMBar: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDateStart'
        end
        item
          Visible = True
          ItemName = 'bbDateEnd'
        end
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          Visible = True
          ItemName = 'bbExport'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end>
    end
    object bbExport: TdxBarButton [4]
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Hint = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 28
      OnClick = bbExportClick
    end
  end
  object DATA: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  J.ID,'
      
        '  J."MESSAGE", cast(J.CREATED_DT as T_DATE) D, R.NAME RECORD_TYP' +
        'E_NAME,'
      '  U.NAME USER_NAME,'
      '  A.MODEL_NAME, A.GOS_NOMER,'
      
        '  (select list((select drv.NAME from auto_driver drv where drv.I' +
        'D=DRVS.DRIVER_ID)) from AUTO_DRIVERS DRVS where drvs.AUTO_ID=J.A' +
        'UTO_ID) DRIVERS'
      'from'
      '  CONTRAGENT_JOURNAL J, USERS U, AUTOMOBILE A, REFBOOK R'
      'where'
      '  J.AUTO_ID is not null'
      '  and A.ID=J.AUTO_ID'
      '  and U.ID=J.USER_ID'
      '  and R.ID=J.RECORD_TYPE'
      '  and coalesce(j.IS_SYSTEM, 0)=0'
      
        '  and cast(J.CREATED_DT as T_DATE) between :DATE_START and :DATE' +
        '_END')
    Transaction = DM.trRead
    Database = DM.FB
    UpdateTransaction = DM.trWrite
    Left = 376
    Top = 104
  end
  object dsDATA: TDataSource
    DataSet = DATA
    Left = 408
    Top = 112
  end
end
