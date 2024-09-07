object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Number To Text by Aspian'
  ClientHeight = 153
  ClientWidth = 326
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 37
    Height = 13
    Caption = 'Number'
  end
  object input: TEdit
    Left = 67
    Top = 21
    Width = 230
    Height = 21
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 0
    OnChange = inputChange
  end
  object output: TMemo
    Left = 24
    Top = 48
    Width = 225
    Height = 94
    Lines.Strings = (
      'output')
    ReadOnly = True
    TabOrder = 1
  end
  object o1: TEdit
    Left = 264
    Top = 48
    Width = 33
    Height = 21
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 2
  end
  object o2: TEdit
    Left = 264
    Top = 86
    Width = 33
    Height = 21
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 3
  end
  object o3: TEdit
    Left = 264
    Top = 121
    Width = 33
    Height = 21
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 4
  end
end
