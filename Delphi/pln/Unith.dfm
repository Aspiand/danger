object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Listrik'
  ClientHeight = 516
  ClientWidth = 314
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
    Top = 32
    Width = 297
    Height = 23
    Caption = 'Simulasi Perhitungan Tarif PLN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lpemakaian: TLabel
    Left = 16
    Top = 296
    Width = 51
    Height = 13
    Caption = 'Pemakaian'
  end
  object lobeban: TLabel
    Left = 16
    Top = 328
    Width = 59
    Height = 13
    Caption = 'Biaya Beban'
  end
  object lopemakaian: TLabel
    Left = 16
    Top = 355
    Width = 80
    Height = 13
    Caption = 'Biaya Pemakaian'
  end
  object lomaterai: TLabel
    Left = 16
    Top = 409
    Width = 36
    Height = 13
    Caption = 'Materai'
  end
  object Label1: TLabel
    Left = 16
    Top = 382
    Width = 44
    Height = 13
    Caption = 'PPJU 3%'
  end
  object lototal_tagihan: TLabel
    Left = 16
    Top = 452
    Width = 65
    Height = 13
    Caption = 'Total Tagihan'
  end
  object hitung: TButton
    Left = 214
    Top = 483
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 0
    OnClick = hitungClick
  end
  object group_golongan: TRadioGroup
    Left = 16
    Top = 61
    Width = 273
    Height = 97
    Caption = 'Golongan Tarif'
    Items.Strings = (
      'Sosial'
      'Rumah Tangga'
      'Bisnis')
    TabOrder = 1
    OnClick = group_golonganClick
  end
  object group_daya: TRadioGroup
    Left = 16
    Top = 175
    Width = 273
    Height = 97
    Caption = 'Daya'
    TabOrder = 2
  end
  object ipemakaian: TEdit
    Left = 112
    Top = 293
    Width = 177
    Height = 21
    TabOrder = 3
  end
  object obeban: TEdit
    Left = 112
    Top = 325
    Width = 177
    Height = 21
    TabOrder = 4
  end
  object opemakaian: TEdit
    Left = 112
    Top = 352
    Width = 177
    Height = 21
    TabOrder = 5
  end
  object oppju: TEdit
    Left = 112
    Top = 379
    Width = 177
    Height = 21
    TabOrder = 6
  end
  object omaterai: TEdit
    Left = 112
    Top = 406
    Width = 177
    Height = 21
    TabOrder = 7
  end
  object ototal: TEdit
    Left = 112
    Top = 449
    Width = 177
    Height = 21
    TabOrder = 8
  end
end
