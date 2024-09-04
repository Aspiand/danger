unit Unith;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    input: TEdit;
    output: TMemo;
    o1: TEdit;
    o2: TEdit;
    o3: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure inputChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.FormCreate(Sender: TObject);
begin
  output.Text := '';
end;

procedure TForm1.inputChange(Sender: TObject);
var R, P, S : Integer;
begin // :(
  R := StrToInt(input.Text) Div 100;
  P := (StrToInt(input.Text) Mod 100) Div 10;
  S := (StrToInt(input.Text) Mod 100) Mod 10;

  output.Text := '';
  o1.Text := IntToStr(R);
  o2.Text := IntToStr(P);
  o3.Text := IntToStr(S);

  case R of
    0 : output.Text := 'Nol';
    1 : output.Text := 'Seratus';
    2 : output.Text := 'Dua Ratus';
    3 : output.Text := 'Tiga Ratus';
    4 : output.Text := 'Empat Ratus';
    5 : output.Text := 'Lima Ratus';
    6 : output.Text := 'Enam Ratus';
    7 : output.Text := 'Tujuh Ratus';
    8 : output.Text := 'Delapan Ratus';
    9 : output.Text := 'Sembilan Ratus';
  end;

  case P of
    2 : output.Text := output.Text + #32 + 'Dua Puluh';
    3 : output.Text := output.Text + #32 + 'Tiga Puluh';
    4 : output.Text := output.Text + #32 + 'Empat Puluh';
    5 : output.Text := output.Text + #32 + 'Lima Puluh';
    6 : output.Text := output.Text + #32 + 'Enam Puluh';
    7 : output.Text := output.Text + #32 + 'Tujuh Puluh';
    8 : output.Text := output.Text + #32 + 'Delapan Puluh';
    9 : output.Text := output.Text + #32 + 'Sembilan Puluh';
    1 : case S of
          0 : output.Text := output.Text + #32 + 'Sepuluh';
          1 : output.Text := output.Text + #32 + 'Sebelas';
          2 : output.Text := output.Text + #32 + 'Dua Belas';
          3 : output.Text := output.Text + #32 + 'Tiga Belas';
          4 : output.Text := output.Text + #32 + 'Empat Belas';
          5 : output.Text := output.Text + #32 + 'Lima Belas';
          6 : output.Text := output.Text + #32 + 'Enam Belas';
          7 : output.Text := output.Text + #32 + 'Tujuh Belas';
          8 : output.Text := output.Text + #32 + 'Delapan Belas';
          9 : output.Text := output.Text + #32 + 'Sembilan Belas';
        end;
  end;

  case P of
    2..9 : case S of
            1 : output.Text := output.Text + #32 + 'Satu';
            2 : output.Text := output.Text + #32 + 'Dua';
            3 : output.Text := output.Text + #32 + 'Tiga';
            4 : output.Text := output.Text + #32 + 'Empat';
            5 : output.Text := output.Text + #32 + 'Lima';
            6 : output.Text := output.Text + #32 + 'Enam';
            7 : output.Text := output.Text + #32 + 'Tujuh';
            8 : output.Text := output.Text + #32 + 'Delapan';
            9 : output.Text := output.Text + #32 + 'Sembilan';
           end;
  end;
end;
end.
