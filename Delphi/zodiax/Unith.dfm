object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Zodiax'
  ClientHeight = 251
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object h1: TLabel
    Left = 8
    Top = 8
    Width = 180
    Height = 25
    Caption = 'Ramalan Bintang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Idate: TLabel
    Left = 17
    Top = 64
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object lhk: TLabel
    Left = 17
    Top = 94
    Width = 66
    Height = 13
    Caption = 'Hari Kelahiran'
  end
  object lzodiac: TLabel
    Left = 17
    Top = 121
    Width = 31
    Height = 13
    Caption = 'Zodiac'
  end
  object loutput: TLabel
    Left = 17
    Top = 147
    Width = 41
    Height = 13
    Caption = 'Ramalan'
  end
  object SpeedButton1: TSpeedButton
    Left = 17
    Top = 212
    Width = 41
    Height = 22
    Caption = 'close'
    OnClick = SpeedButton1Click
  end
  object tanggal: TDateTimePicker
    Left = 112
    Top = 64
    Width = 186
    Height = 21
    Date = 45523.000000000000000000
    Time = 0.593567511576111400
    TabOrder = 0
    OnChange = tanggalChange
    OnUserInput = tanggalUserInput
  end
  object hari_lahir: TEdit
    Left = 112
    Top = 91
    Width = 186
    Height = 21
    TabOrder = 1
  end
  object ozodiac: TEdit
    Left = 112
    Top = 118
    Width = 186
    Height = 21
    TabOrder = 2
  end
  object memo: TMemo
    Left = 112
    Top = 145
    Width = 185
    Height = 89
    Lines.Strings = (
      'memo')
    TabOrder = 3
  end
end
