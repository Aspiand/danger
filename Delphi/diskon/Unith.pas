unit Unith;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFLatihan7 = class(TForm)
    h1: TLabel;
    jk: TLabel;
    lukuran: TLabel;
    lpelanggan: TLabel;
    lharga: TLabel;
    ldiscount: TLabel;
    ltotal: TLabel;
    oharga: TEdit;
    ipria: TRadioButton;
    iwanita: TRadioButton;
    iukuran: TComboBox;
    ipelanggan: TCheckBox;
    odiskon: TEdit;
    ototal: TEdit;
    close: TButton;
    reset: TButton;
    hitung: TButton;
    procedure hitungClick(Sender: TObject);
    procedure closeClick(Sender: TObject);
    procedure resetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLatihan7: TFLatihan7;

implementation

{$R *.dfm}

procedure TFLatihan7.closeClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TFLatihan7.hitungClick(Sender: TObject);
const apria:Array[0..2] of real = (500000, 550000, 600000);
const awanita:Array[0..2] of real = (450000, 500000, 550000);
var harga, diskon, total : real;
begin
  harga := 0;
  diskon := 0;
  total := 0;

  if ipria.Checked then
  begin
    harga := apria[iukuran.ItemIndex];
  end;

  if iwanita.Checked then
  begin
    harga := awanita[iukuran.ItemIndex];
  end;

  if ipelanggan.Checked then
  begin
    diskon := harga * (10/100)
  end;


  oharga.Text := currtostr(harga);
  odiskon.Text := currtostr(diskon);
  ototal.Text := currtostr(harga - diskon);
end;

procedure TFLatihan7.resetClick(Sender: TObject);
begin
  ipria.Checked := False;
  iwanita.Checked := False;

  iukuran.Text := '';

  ipelanggan.Checked := False;

  oharga.Text := '';
  odiskon.Text := '';
  ototal.Text := '';
end;

end.
