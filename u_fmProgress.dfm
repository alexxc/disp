object fmProgress: TfmProgress
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
  ClientHeight = 86
  ClientWidth = 325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object buttonCancel: TcxButton
    Left = 104
    Top = 48
    Width = 105
    Height = 25
    Caption = #1055#1088#1077#1088#1074#1072#1090#1100
    TabOrder = 0
    OnClick = buttonCancelClick
  end
  object ProgressBar: TcxProgressBar
    AlignWithMargins = True
    Left = 10
    Top = 10
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Align = alTop
    TabOrder = 1
    Width = 305
  end
end
