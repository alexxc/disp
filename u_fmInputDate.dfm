object fmInputDate: TfmInputDate
  Left = 455
  Top = 322
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1042#1074#1086#1076' '#1076#1072#1090#1099
  ClientHeight = 42
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LCaption: TLabel
    Left = 17
    Top = 13
    Width = 71
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1090#1091
  end
  object eDate: TcxDateEdit
    Left = 94
    Top = 10
    EditValue = 39283d
    ParentFont = False
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 0
    Width = 83
  end
  object cxButton1: TcxButton
    Left = 192
    Top = 8
    Width = 65
    Height = 23
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = cxButton1Click
  end
end
