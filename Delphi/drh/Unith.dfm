object FDRH: TFDRH
  Left = 0
  Top = 0
  Caption = 'Daftar Riwayat Hidup'
  ClientHeight = 587
  ClientWidth = 757
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
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 14
    Height = 13
    Caption = 'Nik'
    FocusControl = input_nik
  end
  object Label2: TLabel
    Left = 40
    Top = 64
    Width = 27
    Height = 13
    Caption = 'Nama'
    FocusControl = input_nama
  end
  object Label3: TLabel
    Left = 40
    Top = 104
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
    FocusControl = input_tempat_lahir
  end
  object Label4: TLabel
    Left = 40
    Top = 144
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
    FocusControl = input_tanggal_lahir
  end
  object Label5: TLabel
    Left = 40
    Top = 184
    Width = 33
    Height = 13
    Caption = 'Agama'
    FocusControl = input_agama
  end
  object Label6: TLabel
    Left = 40
    Top = 224
    Width = 48
    Height = 13
    Caption = 'Pekerjaan'
    FocusControl = input_pekerjaan
  end
  object Label7: TLabel
    Left = 40
    Top = 264
    Width = 33
    Height = 13
    Caption = 'Alamat'
    FocusControl = input_alamat
  end
  object Label8: TLabel
    Left = 40
    Top = 376
    Width = 41
    Height = 13
    Caption = 'Kodepos'
    FocusControl = input_kodepos
  end
  object input_nik: TDBEdit
    Left = 40
    Top = 40
    Width = 264
    Height = 21
    DataField = 'nik'
    DataSource = RiwayatSource
    TabOrder = 0
  end
  object input_nama: TDBEdit
    Left = 40
    Top = 80
    Width = 264
    Height = 21
    DataField = 'nama'
    DataSource = RiwayatSource
    TabOrder = 1
  end
  object input_tempat_lahir: TDBEdit
    Left = 40
    Top = 120
    Width = 264
    Height = 21
    DataField = 'tempat_lahir'
    DataSource = RiwayatSource
    TabOrder = 2
  end
  object input_tanggal_lahir: TDBEdit
    Left = 40
    Top = 160
    Width = 264
    Height = 21
    DataField = 'tanggal_lahir'
    DataSource = RiwayatSource
    TabOrder = 3
  end
  object input_agama: TDBEdit
    Left = 40
    Top = 200
    Width = 264
    Height = 21
    DataField = 'agama'
    DataSource = RiwayatSource
    TabOrder = 4
  end
  object input_pekerjaan: TDBEdit
    Left = 40
    Top = 240
    Width = 264
    Height = 21
    DataField = 'pekerjaan'
    DataSource = RiwayatSource
    TabOrder = 5
  end
  object input_alamat: TDBMemo
    Left = 40
    Top = 280
    Width = 264
    Height = 89
    DataField = 'alamat'
    DataSource = RiwayatSource
    TabOrder = 6
  end
  object input_kodepos: TDBEdit
    Left = 40
    Top = 392
    Width = 264
    Height = 21
    DataField = 'kodepos'
    DataSource = RiwayatSource
    TabOrder = 7
  end
  object ADOC: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=data_riwayat_hidup'
    LoginPrompt = False
    Left = 352
    Top = 24
  end
  object Riwayat: TADOQuery
    Connection = ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM riwayat')
    Left = 408
    Top = 24
    object Riwayatnik: TStringField
      FieldName = 'nik'
      Size = 17
    end
    object Riwayatnama: TStringField
      FieldName = 'nama'
      Size = 50
    end
    object Riwayattempat_lahir: TStringField
      FieldName = 'tempat_lahir'
    end
    object Riwayattanggal_lahir: TDateField
      FieldName = 'tanggal_lahir'
    end
    object Riwayatagama: TStringField
      FieldName = 'agama'
      Size = 10
    end
    object Riwayatpekerjaan: TStringField
      FieldName = 'pekerjaan'
      Size = 15
    end
    object Riwayatalamat: TMemoField
      FieldName = 'alamat'
      BlobType = ftMemo
    end
    object Riwayatkodepos: TStringField
      FieldName = 'kodepos'
      Size = 6
    end
  end
  object RiwayatSource: TDataSource
    DataSet = Riwayat
    Left = 472
    Top = 24
  end
end
