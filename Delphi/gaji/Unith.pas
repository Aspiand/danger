unit Unith;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TFLatihan06 = class(TForm)
    h1: TLabel;
    lnama: TLabel;
    ldepartemen: TLabel;
    lgolongan: TLabel;
    lkelamin: TLabel;
    lstatus: TLabel;
    lanak: TLabel;
    lgpokok: TLabel;
    ltistri: TLabel;
    ltanak: TLabel;
    ltotalgaji: TLabel;
    inama: TEdit;
    idepartemen: TComboBox;
    igolongan: TListBox;
    ikpria: TRadioButton;
    ikwanita: TRadioButton;
    imenikah: TCheckBox;
    ianak: TSpinEdit;
    ogajipokok: TEdit;
    otistri: TEdit;
    otanak: TEdit;
    ototalgaji: TEdit;
    bhitung: TButton;
    breset: TButton;
    bclose: TButton;
    procedure bcloseClick(Sender: TObject);
    procedure bresetClick(Sender: TObject);
    procedure bhitungClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLatihan06: TFLatihan06;

implementation

{$R *.dfm}

procedure TFLatihan06.bcloseClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TFLatihan06.bhitungClick(Sender: TObject);
const gaji:Array[0..2,0..3] of Real = (
  ( 750000, 1000000, 1250000, 1500000),
  (1000000, 1250000, 1500000, 1750000),
  (1250000, 1500000, 1750000, 2000000)
);
var gaji_pokok, tunjangan_istri, tunjangan_anak, jumlah_anak:real;
begin
  gaji_pokok := gaji[idepartemen.ItemIndex, igolongan.ItemIndex];
  tunjangan_istri := 0;
  tunjangan_anak := 0;
  jumlah_anak := ianak.Value;

  // tunjangan menikah
  if imenikah.Checked and ikpria.Checked then
    begin
      tunjangan_istri := gaji_pokok * 10/100;

      // tunjangan anak
      if jumlah_anak > 2 then
      begin
        jumlah_anak := 2;
      end;

      tunjangan_anak := (gaji_pokok * jumlah_anak) * 5/100;

      // end tunjangan anak
    end;

  if not (imenikah.Checked and ikpria.Checked) then
  begin
    otistri.Text := '';
    otanak.Text := '';
  end;
  // end tunjangan menikah


  ogajipokok.Text := FloatToStr(gaji_pokok);
  otistri.Text := FloatToStr(tunjangan_istri);
  otanak.text := FloatToStr(tunjangan_anak);
  ototalgaji.Text := FloatToStr(gaji_pokok + tunjangan_istri + tunjangan_anak);
end;

procedure TFLatihan06.bresetClick(Sender: TObject);
begin
  inama.Text := '';
  idepartemen.Text := '';
  ianak.Value := 0;
  ikpria.Checked := false;
  ikwanita.Checked := false;
  imenikah.Checked := false;

  ogajipokok.Text := '';
  otistri.Text := '';
  otanak.Text := '';
  ototalgaji.Text := '';
end;
end.
