object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 349
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lnis: TLabel
    Left = 32
    Top = 67
    Width = 17
    Height = 13
    Caption = 'NIS'
  end
  object lnama: TLabel
    Left = 32
    Top = 94
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object ltempat_lahir: TLabel
    Left = 32
    Top = 138
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object ltanggal_lahir: TLabel
    Left = 32
    Top = 179
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object ljk: TLabel
    Left = 33
    Top = 211
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object ldarah: TLabel
    Left = 33
    Top = 238
    Width = 77
    Height = 13
    Caption = 'Golongan Darah'
  end
  object lkandung: TLabel
    Left = 33
    Top = 265
    Width = 61
    Height = 13
    Caption = 'Ibu Kandung'
  end
  object h1: TLabel
    Left = 104
    Top = 24
    Width = 56
    Height = 23
    Caption = 'Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object inis: TEdit
    Left = 128
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object inama: TEdit
    Left = 128
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object itanggal_lahir: TDateTimePicker
    Left = 128
    Top = 171
    Width = 121
    Height = 21
    Date = 45579.000000000000000000
    Time = 0.312474780090269600
    TabOrder = 2
  end
  object ijk: TComboBox
    Left = 128
    Top = 208
    Width = 121
    Height = 21
    ItemIndex = 0
    TabOrder = 3
    Text = '-'
    Items.Strings = (
      'Pria'
      'Wanita'
      'Stainless Steel')
  end
  object itempat_lahir: TEdit
    Left = 128
    Top = 135
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object idarah: TComboBox
    Left = 128
    Top = 235
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '-'
    Items.Strings = (
      'A'
      'B'
      'AB'#11
      'O')
  end
  object ikandung: TEdit
    Left = 128
    Top = 262
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Button1: TButton
    Left = 174
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
  end
  object MyConnection1: TMyConnection
    Database = 'freedb_Hamka218'
    Username = 'freedb_Smkn4'
    Server = 'sql.freedb.tech'
    Connected = True
    Left = 24
    Top = 296
    EncryptedPassword = '89FF8FFF8CFFDCFFA5FFB7FFC7FF9EFFADFF9DFF9CFFDAFFA7FFABFFA9FF'
  end
  object siswa: TMyTable
    TableName = 'siswa'
    Connection = MyConnection1
    Left = 104
    Top = 296
    object siswaNIS: TStringField
      FieldName = 'NIS'
      Size = 10
    end
    object siswaNama: TStringField
      FieldName = 'Nama'
      Size = 30
    end
    object siswaTempatLahir: TStringField
      FieldName = 'TempatLahir'
      Size = 25
    end
    object siswaTglLahir: TDateField
      FieldName = 'TglLahir'
    end
    object siswaJK: TStringField
      FieldName = 'JK'
      Size = 10
    end
    object siswaGolDarah: TStringField
      FieldName = 'GolDarah'
      Size = 2
    end
    object siswaIbuKandung: TStringField
      FieldName = 'IbuKandung'
      Size = 30
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = siswa
    ScopeMappings = <>
    Left = 200
    Top = 16
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'NIS'
      Control = inis
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'Nama'
      Control = inama
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TempatLahir'
      Control = itempat_lahir
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'TglLahir'
      Control = itanggal_lahir
      Track = True
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'JK'
      Control = ijk
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField2: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'GolDarah'
      Control = idarah
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'IbuKandung'
      Control = ikandung
      Track = True
    end
  end
end
