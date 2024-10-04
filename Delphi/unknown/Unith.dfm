object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Input'
  ClientHeight = 352
  ClientWidth = 340
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object h1: TLabel
    Left = 16
    Top = 18
    Width = 93
    Height = 14
    Caption = 'Data Karyawan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lnik: TLabel
    Left = 16
    Top = 59
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lname: TLabel
    Left = 16
    Top = 86
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object bdaftar: TSpeedButton
    Left = 230
    Top = 18
    Width = 75
    Height = 22
    Caption = 'Daftar'
    OnClick = bdaftarClick
  end
  object inik: TEdit
    Left = 80
    Top = 56
    Width = 225
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object iname: TEdit
    Left = 80
    Top = 83
    Width = 225
    Height = 21
    TabOrder = 1
  end
  object ibagian: TRadioGroup
    Left = 80
    Top = 120
    Width = 225
    Height = 57
    Caption = 'Bagian'
    Columns = 2
    Items.Strings = (
      'Administrasi'
      'Kepegawaian'
      'Keuangan'
      'Pemasaran')
    TabOrder = 2
  end
  object openghasilan: TGroupBox
    Left = 80
    Top = 191
    Width = 225
    Height = 106
    Caption = 'Penghasilan'
    TabOrder = 3
    object lpkok: TLabel
      Left = 14
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Gaji Pokok'
    end
    object ltunjangan: TLabel
      Left = 14
      Top = 51
      Width = 51
      Height = 13
      Caption = 'Tunjangan'
    end
    object ltotal: TLabel
      Left = 14
      Top = 78
      Width = 24
      Height = 13
      Caption = 'Total'
    end
  end
  object pokok: TEdit
    Left = 173
    Top = 212
    Width = 116
    Height = 21
    NumbersOnly = True
    TabOrder = 4
    Text = '0'
    OnChange = pokokChange
  end
  object tunjangan: TEdit
    Left = 173
    Top = 239
    Width = 116
    Height = 21
    NumbersOnly = True
    TabOrder = 5
    Text = '0'
    OnChange = tunjanganChange
  end
  object total: TEdit
    Left = 173
    Top = 266
    Width = 116
    Height = 21
    NumbersOnly = True
    TabOrder = 6
    Text = '0'
  end
  object bsave: TBitBtn
    Left = 80
    Top = 303
    Width = 65
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = bsaveClick
  end
  object breset: TBitBtn
    Left = 160
    Top = 303
    Width = 65
    Height = 25
    Caption = 'Reset'
    TabOrder = 8
    OnClick = bresetClick
  end
  object bclose: TBitBtn
    Left = 240
    Top = 303
    Width = 65
    Height = 25
    Caption = 'Close'
    TabOrder = 9
    OnClick = bcloseClick
  end
end
