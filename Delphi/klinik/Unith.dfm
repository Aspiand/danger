object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 407
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object namaCaption: TLabel
    Left = 24
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Nama'
    FocusControl = inputNama
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
    FocusControl = inputTempatLahir
  end
  object Label4: TLabel
    Left = 24
    Top = 136
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object sipCaption: TLabel
    Left = 24
    Top = 176
    Width = 16
    Height = 13
    Caption = 'SIP'
    FocusControl = inputSip
  end
  object Label1: TLabel
    Left = 24
    Top = 13
    Width = 17
    Height = 13
    Caption = 'NIP'
    FocusControl = inputNama
  end
  object inputNip: TDBEdit
    Left = 24
    Top = 32
    Width = 329
    Height = 21
    DataField = 'nip'
    DataSource = DokterDataSource
    TabOrder = 0
  end
  object inputNama: TDBEdit
    Left = 24
    Top = 72
    Width = 329
    Height = 21
    DataField = 'nama'
    DataSource = DokterDataSource
    TabOrder = 1
  end
  object inputTempatLahir: TDBEdit
    Left = 24
    Top = 112
    Width = 329
    Height = 21
    DataField = 'tempat_lahir'
    DataSource = DokterDataSource
    TabOrder = 2
  end
  object inputSip: TDBEdit
    Left = 24
    Top = 192
    Width = 329
    Height = 21
    DataField = 'sip'
    DataSource = DokterDataSource
    TabOrder = 3
  end
  object inputTanggalLahir: TDateTimePicker
    Left = 24
    Top = 155
    Width = 329
    Height = 21
    Date = 45705.000000000000000000
    Time = 0.260864560186746500
    TabOrder = 4
  end
  object dokterGrid: TDBGrid
    Left = 0
    Top = 217
    Width = 542
    Height = 190
    Align = alBottom
    DataSource = DokterDataSource
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'NIP'
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Tempat Lahir'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Lahir'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'SIP'
        Width = 76
        Visible = True
      end>
  end
  object baruButton: TButton
    Left = 459
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 6
    OnClick = baruButtonClick
  end
  object simpanButton: TButton
    Left = 459
    Top = 61
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = simpanButtonClick
  end
  object editButton: TButton
    Left = 459
    Top = 92
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 8
    OnClick = editButtonClick
  end
  object cancelButton: TButton
    Left = 459
    Top = 123
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 9
    OnClick = cancelButtonClick
  end
  object ADOC: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;User I' +
      'D=root;Data Source=klinik;Initial Catalog=uts_aspian'
    DefaultDatabase = 'uts_aspian'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 392
    Top = 16
  end
  object dokter: TADOTable
    Connection = ADOC
    CursorType = ctStatic
    TableName = 'dokter'
    Left = 392
    Top = 64
    object dokternip: TStringField
      FieldName = 'nip'
      Size = 15
    end
    object dokternama: TStringField
      FieldName = 'nama'
      Size = 25
    end
    object doktertempat_lahir: TStringField
      FieldName = 'tempat_lahir'
      Size = 25
    end
    object doktertanggal_lahir: TDateField
      FieldName = 'tanggal_lahir'
    end
    object doktersip: TStringField
      FieldName = 'sip'
      Size = 25
    end
  end
  object DokterDataSource: TDataSource
    DataSet = dokter
    Left = 384
    Top = 120
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = dokter
    ScopeMappings = <>
    Left = 392
    Top = 168
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 484
    Top = 181
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'tanggal_lahir'
      Control = inputTanggalLahir
      Track = True
    end
  end
end
