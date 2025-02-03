unit Unith;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask;

type
  TFDRH = class(TForm)
    ADOC: TADOConnection;
    Riwayat: TADOQuery;
    Riwayatnik: TStringField;
    Riwayatnama: TStringField;
    Riwayattempat_lahir: TStringField;
    Riwayattanggal_lahir: TDateField;
    Riwayatagama: TStringField;
    Riwayatpekerjaan: TStringField;
    Riwayatalamat: TMemoField;
    Riwayatkodepos: TStringField;
    Label1: TLabel;
    input_nik: TDBEdit;
    RiwayatSource: TDataSource;
    Label2: TLabel;
    input_nama: TDBEdit;
    Label3: TLabel;
    input_tempat_lahir: TDBEdit;
    Label4: TLabel;
    input_tanggal_lahir: TDBEdit;
    Label5: TLabel;
    input_agama: TDBEdit;
    Label6: TLabel;
    input_pekerjaan: TDBEdit;
    Label7: TLabel;
    input_alamat: TDBMemo;
    Label8: TLabel;
    input_kodepos: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDRH: TFDRH;

implementation

{$R *.dfm}

end.
