unit Unith;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  KRec = Record
      NIK : String[10];
      Nama : String[30];
      KodeBagian : Integer;
      GajiPokok : Real;
      Tunjangan : Real;
    End;
  TForm1 = class(TForm)
    inik: TEdit;
    iname: TEdit;
    h1: TLabel;
    lnik: TLabel;
    lname: TLabel;
    ibagian: TRadioGroup;
    openghasilan: TGroupBox;
    lpkok: TLabel;
    ltunjangan: TLabel;
    ltotal: TLabel;
    pokok: TEdit;
    tunjangan: TEdit;
    total: TEdit;
    bdaftar: TSpeedButton;
    bsave: TBitBtn;
    breset: TBitBtn;
    bclose: TBitBtn;
    procedure bcloseClick(Sender: TObject);
    procedure bresetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bdaftarClick(Sender: TObject);
    procedure pokokChange(Sender: TObject);
    procedure tunjanganChange(Sender: TObject);
    procedure bsaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Karyawan : ARray[0..9] of KRec;
  NoUrut : Integer;

implementation

{$R *.dfm}

uses Unithh;

procedure TForm1.bcloseClick(Sender: TObject);
begin
   application.Terminate;
end;

procedure TForm1.bdaftarClick(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.bresetClick(Sender: TObject);
begin
  inik.Clear;
  iname.Clear;
  ibagian.ItemIndex := -1;
  pokok.Text := '0';
  tunjangan.Text := '0';
  total.Text := '0';
end;

procedure TForm1.bsaveClick(Sender: TObject);
begin
  if MessageDlg('Simpan Data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Karyawan[NoUrut].NIK := inik.Text;
    Karyawan[NoUrut].Nama := iname.Text;
    Karyawan[NoUrut].KodeBagian := ibagian.ItemIndex;
    Karyawan[NoUrut].GajiPokok := StrToFloat(pokok.Text);
    Karyawan[NoUrut].Tunjangan := StrToFloat(tunjangan.Text);

    NoUrut := NoUrut + 1;

    bresetClick(Self);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  NoUrut := 0;
end;

procedure TForm1.pokokChange(Sender: TObject);
var G, T : Real;
begin
  if pokok.Text <> '' then
    G := StrToFloat(pokok.Text)
  else
    G := 0;

  if tunjangan.Text <> '' then
    T := StrToFloat(tunjangan.Text)
  else
    T := 0;

  total.Text := FormatFloat(',0', G + T);
end;

procedure TForm1.tunjanganChange(Sender: TObject);
var G, T : Real;
begin
  if pokok.Text <> '' then
    G := StrToFloat(pokok.Text)
  else
    G := 0;

  if tunjangan.Text <> '' then
    T := StrToFloat(tunjangan.Text)
  else
    T := 0;

  total.Text := FormatFloat(',0', G + T);
end;

end.
