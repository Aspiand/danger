object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 324
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grid: TStringGrid
    Left = 8
    Top = 33
    Width = 465
    Height = 281
    ColCount = 7
    RowCount = 11
    TabOrder = 0
  end
  object bclose: TBitBtn
    Left = 398
    Top = 8
    Width = 75
    Height = 19
    Caption = 'Close'
    TabOrder = 1
    OnClick = bcloseClick
  end
end
