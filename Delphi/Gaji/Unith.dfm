object FLatihan06: TFLatihan06
  Left = 0
  Top = 0
  Caption = 'Latihan06'
  ClientHeight = 464
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object h1: TLabel
    Left = 24
    Top = 24
    Width = 260
    Height = 23
    Caption = 'Perhitungan Gaji Karyawan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lnama: TLabel
    Left = 24
    Top = 72
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object ldepartemen: TLabel
    Left = 24
    Top = 104
    Width = 59
    Height = 13
    Caption = 'Departemen'
  end
  object lgolongan: TLabel
    Left = 24
    Top = 136
    Width = 45
    Height = 13
    Caption = 'Golongan'
  end
  object lkelamin: TLabel
    Left = 24
    Top = 208
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object lstatus: TLabel
    Left = 24
    Top = 231
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object lanak: TLabel
    Left = 23
    Top = 256
    Width = 60
    Height = 13
    Caption = 'Jumlah Anak'
  end
  object lgpokok: TLabel
    Left = 24
    Top = 304
    Width = 49
    Height = 13
    Caption = 'Gaji Pokok'
  end
  object ltistri: TLabel
    Left = 23
    Top = 331
    Width = 73
    Height = 13
    Caption = 'Tunjangan Istri'
  end
  object ltanak: TLabel
    Left = 23
    Top = 358
    Width = 78
    Height = 13
    Caption = 'Tunjangan Anak'
  end
  object ltotalgaji: TLabel
    Left = 23
    Top = 385
    Width = 45
    Height = 13
    Caption = 'Total Gaji'
  end
  object inama: TEdit
    Left = 144
    Top = 69
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object idepartemen: TComboBox
    Left = 144
    Top = 101
    Width = 201
    Height = 21
    TabOrder = 1
    Items.Strings = (
      'Administrasi'
      'Keuangan'
      'Marketing')
  end
  object igolongan: TListBox
    Left = 144
    Top = 128
    Width = 201
    Height = 73
    ItemHeight = 13
    Items.Strings = (
      'I'
      'II'
      'III'
      'IV')
    TabOrder = 2
  end
  object ikpria: TRadioButton
    Left = 144
    Top = 207
    Width = 73
    Height = 17
    Caption = 'Pria'
    TabOrder = 3
  end
  object ikwanita: TRadioButton
    Left = 248
    Top = 207
    Width = 97
    Height = 17
    Caption = 'Wanita'
    TabOrder = 4
  end
  object imenikah: TCheckBox
    Left = 144
    Top = 230
    Width = 105
    Height = 17
    Caption = 'Menikah'
    TabOrder = 5
  end
  object ianak: TSpinEdit
    Left = 144
    Top = 253
    Width = 201
    Height = 22
    MaxValue = 10
    MinValue = 0
    TabOrder = 6
    Value = 0
  end
  object ogajipokok: TEdit
    Left = 144
    Top = 301
    Width = 201
    Height = 21
    TabOrder = 7
  end
  object otistri: TEdit
    Left = 144
    Top = 328
    Width = 201
    Height = 21
    TabOrder = 8
  end
  object otanak: TEdit
    Left = 144
    Top = 355
    Width = 201
    Height = 21
    TabOrder = 9
  end
  object ototalgaji: TEdit
    Left = 144
    Top = 382
    Width = 201
    Height = 21
    TabOrder = 10
  end
  object bhitung: TButton
    Left = 144
    Top = 424
    Width = 74
    Height = 25
    Caption = 'Hitung'
    TabOrder = 11
    OnClick = bhitungClick
  end
  object breset: TButton
    Left = 224
    Top = 424
    Width = 57
    Height = 25
    Caption = 'Reset'
    TabOrder = 12
    OnClick = bresetClick
  end
  object bclose: TButton
    Left = 288
    Top = 424
    Width = 57
    Height = 25
    Caption = 'Close'
    TabOrder = 13
    OnClick = bcloseClick
  end
end
