unit Unith;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.Buttons, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

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
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    input_pekerjaan: TDBEdit;
    Label7: TLabel;
    input_alamat: TDBMemo;
    Label8: TLabel;
    input_kodepos: TDBEdit;
    DataGrid: TDBGrid;
    ToolBar1: TToolBar;
    tutup: TSpeedButton;
    tambah_data: TSpeedButton;
    batal: TSpeedButton;
    hapus_data: TSpeedButton;
    ubah_data: TSpeedButton;
    simpan_data: TSpeedButton;
    input_tanggal_lahir: TDateTimePicker;
    input_agama: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    input_tempat_lahir: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure tambah_dataClick(Sender: TObject);
    procedure batalClick(Sender: TObject);
    procedure simpan_dataClick(Sender: TObject);
    procedure ubah_dataClick(Sender: TObject);
    procedure hapus_dataClick(Sender: TObject);
    procedure tutupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDRH: TFDRH;

implementation

{$R *.dfm}

procedure TFDRH.batalClick(Sender: TObject);
begin
  FormShow(Sender);

  riwayat.Cancel;
end;

procedure TFDRH.FormShow(Sender: TObject);
begin
  tambah_data.Enabled := True;
  simpan_data.Enabled := False;
  ubah_data.Enabled := True;
  hapus_data.Enabled := True;
  batal.Enabled := False;
  tutup.Enabled := True;
end;

procedure TFDRH.hapus_dataClick(Sender: TObject);
begin
  riwayat.Delete;
end;

procedure TFDRH.simpan_dataClick(Sender: TObject);
begin
  FormShow(Sender);

  riwayat.Post;
end;

procedure TFDRH.tambah_dataClick(Sender: TObject);
begin
  tambah_data.Enabled := False;
  simpan_data.Enabled := True;
  ubah_data.Enabled := False;
  hapus_data.Enabled := False;
  batal.Enabled := True;
  tutup.Enabled := True;


  riwayat.Insert;
end;

procedure TFDRH.tutupClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFDRH.ubah_dataClick(Sender: TObject);
begin
  riwayat.Edit;
end;

procedure clear_input();
begin
end;

end.
