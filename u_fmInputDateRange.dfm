object fmInputDateRange: TfmInputDateRange
  Left = 455
  Top = 322
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1042#1074#1086#1076' '#1087#1077#1088#1080#1086#1076#1072
  ClientHeight = 52
  ClientWidth = 419
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
    Left = 11
    Top = 16
    Width = 93
    Height = 13
    Caption = #1042#1099#1073#1086#1088' '#1087#1077#1088#1080#1086#1076#1072':  '#1089
  end
  object Label1: TLabel
    Left = 201
    Top = 16
    Width = 18
    Height = 13
    Caption = ' '#1087#1086' '
  end
  object eDateStart: TcxDateEdit
    Left = 110
    Top = 11
    EditValue = 39283d
    ParentFont = False
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 0
    Width = 83
  end
  object cxButton1: TcxButton
    Left = 346
    Top = 8
    Width = 65
    Height = 23
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object eDateEnd: TcxDateEdit
    Left = 228
    Top = 11
    EditValue = 39283d
    ParentFont = False
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 2
    Width = 83
  end
end
