unit Unith;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    hitung: TButton;
    group_golongan: TRadioGroup;
    h1: TLabel;
    group_daya: TRadioGroup;
    lpemakaian: TLabel;
    ipemakaian: TEdit;
    lobeban: TLabel;
    lopemakaian: TLabel;
    lomaterai: TLabel;
    Label1: TLabel;
    lototal_tagihan: TLabel;
    obeban: TEdit;
    opemakaian: TEdit;
    oppju: TEdit;
    omaterai: TEdit;
    ototal: TEdit;
    procedure group_golonganClick(Sender: TObject);
    procedure hitungClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.group_golonganClick(Sender: TObject);
begin
  group_daya.Items.Clear;
  case group_golongan.ItemIndex of
    0: begin
      group_daya.Items.Add('450');
      group_daya.Items.Add('950');
    end;

    1..2: begin
      group_daya.Items.Add('450');
      group_daya.Items.Add('950');
      group_daya.Items.Add('1300');
    end;
  end;
end;

procedure TForm1.hitungClick(Sender: TObject);
const Abiaya_beban:Array[0..2, 0..2] of integer = (
  ((4500), (135000), (0)),
  ((4950), (180000), (39130)),
  ((10575), (23850), (36660))
);

const Abiaya_pemakaian:Array[0..2, 0..2, 0..2] of integer = (
  ((123, 265, 360), (200, 295, 360), (0, 0, 0)),
  ((165, 360, 495), (275, 445, 495), (385, 445, 495)),
  ((254, 420, 470), (420, 465, 515), (470, 473, 523))
);
var
  biaya_total, biaya_pemakaian, biaya_beban, ppju, total, materai : Real;
  pemakaian, blok : Integer;
begin
  biaya_beban := Abiaya_beban[group_golongan.ItemIndex, group_daya.ItemIndex];
  pemakaian := StrToInt(ipemakaian.Text);
  case (pemakaian) of
    0..30 : blok := 0;
    31..60 : blok := 1;
    else blok := 2;
  end;

  biaya_pemakaian := pemakaian * Abiaya_pemakaian[group_golongan.ItemIndex, group_daya.ItemIndex, blok];

  ppju := (biaya_pemakaian + biaya_beban) * 3/100;
  total := biaya_pemakaian + biaya_beban + ppju;

  if total < 250000 then materai := 0
  else if total <= 1000000 then materai := 3000
  else materai := 6000;


  // Output
  oppju.Text := FormatFloat(',0', ppju);
  obeban.Text := FormatFloat(',0', biaya_beban);
  opemakaian.Text := FormatFloat(',0', biaya_pemakaian);
  omaterai.Text := FormatFloat(',0', materai);
  ototal.Text := FormatFloat(',0', total);
end;

end.
