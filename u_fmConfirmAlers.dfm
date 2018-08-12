object fmConfirmAlerts: TfmConfirmAlerts
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1054#1090#1084#1077#1090#1080#1090#1100' '#1082#1072#1082' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1086#1077'?'
  ClientHeight = 68
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bYes: TcxButton
    Left = 193
    Top = 21
    Width = 153
    Height = 25
    Caption = #1044#1072','#1086#1090#1084#1077#1090#1080#1090#1100
    TabOrder = 0
  end
  object bReDate: TcxButton
    Left = 368
    Top = 21
    Width = 153
    Height = 25
    Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080' '#1085#1072' '#1076#1088#1091#1075#1091#1102' '#1076#1072#1090#1091
    TabOrder = 1
  end
  object bNo: TcxButton
    Left = 24
    Top = 21
    Width = 153
    Height = 25
    Caption = #1053#1077#1090
    TabOrder = 2
    OnClick = bNoClick
  end
end
