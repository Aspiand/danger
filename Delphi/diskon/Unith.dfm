object FLatihan7: TFLatihan7
  Left = 0
  Top = 0
  Caption = 'Diskon'
  ClientHeight = 277
  ClientWidth = 284
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
    Left = 16
    Top = 16
    Width = 191
    Height = 25
    Caption = 'Departemen Store'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object jk: TLabel
    Left = 16
    Top = 64
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object lukuran: TLabel
    Left = 16
    Top = 89
    Width = 34
    Height = 13
    Caption = 'Ukuran'
  end
  object lpelanggan: TLabel
    Left = 16
    Top = 116
    Width = 50
    Height = 13
    Caption = 'Pelanggan'
  end
  object lharga: TLabel
    Left = 16
    Top = 156
    Width = 29
    Height = 13
    Caption = 'Harga'
  end
  object ldiscount: TLabel
    Left = 16
    Top = 183
    Width = 41
    Height = 13
    Caption = 'Discount'
  end
  object ltotal: TLabel
    Left = 16
    Top = 210
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object oharga: TEdit
    Left = 128
    Top = 153
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object ipria: TRadioButton
    Left = 128
    Top = 63
    Width = 41
    Height = 17
    Caption = 'Pria'
    TabOrder = 1
  end
  object iwanita: TRadioButton
    Left = 208
    Top = 63
    Width = 65
    Height = 17
    Caption = 'Wanita'
    TabOrder = 2
  end
  object iukuran: TComboBox
    Left = 128
    Top = 86
    Width = 145
    Height = 21
    TabOrder = 3
    Items.Strings = (
      'S'
      'M'
      'L')
  end
  object ipelanggan: TCheckBox
    Left = 128
    Top = 113
    Width = 97
    Height = 17
    Caption = 'Ya'
    TabOrder = 4
  end
  object odiskon: TEdit
    Left = 128
    Top = 180
    Width = 145
    Height = 21
    TabOrder = 5
  end
  object ototal: TEdit
    Left = 128
    Top = 207
    Width = 145
    Height = 21
    TabOrder = 6
  end
  object close: TButton
    Left = 198
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 7
    OnClick = closeClick
  end
  object reset: TButton
    Left = 117
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 8
    OnClick = resetClick
  end
  object hitung: TButton
    Left = 36
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 9
    OnClick = hitungClick
  end
end
