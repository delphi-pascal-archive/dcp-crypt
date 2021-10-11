object Form1: TForm1
  Left = 234
  Top = 128
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1088#1080#1084#1077#1088' "'#1044#1088#1077#1074#1077#1089#1085#1086'-'#1089#1090#1088#1091#1078#1077#1095#1085#1086#1075#1086'" (DCP) '#1096#1080#1092#1088#1086#1074#1072#1085#1080#1103
  ClientHeight = 234
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object btnEncr: TSpeedButton
    Left = 416
    Top = 199
    Width = 153
    Height = 27
    Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
    OnClick = btnEncrClick
  end
  object Label5: TLabel
    Left = 10
    Top = 206
    Width = 219
    Height = 16
    Caption = 'Original code written by David Barton'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 256
    Top = 199
    Width = 153
    Height = 27
    Caption = '"'#1057#1083#1091#1095#1072#1081#1085#1099#1081'" '#1082#1083#1102#1095
    OnClick = SpeedButton1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 570
    Height = 197
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 122
      Width = 41
      Height = 16
      Caption = #1058#1077#1082#1089#1090':'
    end
    object Label2: TLabel
      Left = 7
      Top = 149
      Width = 72
      Height = 16
      Caption = #1064#1080#1092#1088#1086#1074#1082#1072':'
    end
    object Label3: TLabel
      Left = 7
      Top = 176
      Width = 87
      Height = 16
      Caption = #1044#1077#1096#1080#1092#1088#1086#1074#1082#1072':'
    end
    object Label4: TLabel
      Left = 7
      Top = 11
      Width = 37
      Height = 16
      Caption = #1050#1083#1102#1095':'
    end
    object EdText: TEdit
      Left = 103
      Top = 112
      Width = 466
      Height = 21
      TabOrder = 0
      Text = #1053#1072#1088#1077#1079#1085#1086#1081' '#1073#1072#1090#1086#1085' '#1083#1091#1095#1096#1077' '#1092#1088#1072#1085#1094#1091#1079#1089#1082#1086#1081' '#1073#1091#1083#1082#1080
    end
    object EdShifr: TEdit
      Left = 103
      Top = 139
      Width = 466
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object EdResult: TEdit
      Left = 103
      Top = 166
      Width = 466
      Height = 21
      TabOrder = 2
    end
    object MemKey: TMemo
      Left = 103
      Top = 6
      Width = 466
      Height = 106
      Lines.Strings = (
        #1041#1083#1072', '#1073#1083#1072', '#1073#1083#1072'... '#1048' '#1090#1072#1082' '#1084#1086#1078#1085#1086' '#1087#1088#1086#1076#1086#1083#1078#1072#1090#1100' '#1080' '#1087#1088#1086#1076#1086#1083#1078#1072#1090#1100', '#1087#1086#1095#1090#1080' '
        #1073#1077#1089#1082#1086#1085#1077#1095#1085#1086)
      TabOrder = 3
    end
  end
end
