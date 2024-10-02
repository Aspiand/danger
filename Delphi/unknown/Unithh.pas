unit Unithh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm2 = class(TForm)
    grid: TStringGrid;
    bclose: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure bcloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  NoUrut : Integer; // IMPOSTOR

implementation

{$R *.dfm}

procedure TForm2.bcloseClick(Sender: TObject);
begin
  Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  With grid do
  begin
    Cells[0 ,0] := 'NO';
    Cells[1 ,0] := 'NIK';
    Cells[2 ,0] := 'NAMA';
    Cells[3 ,0] := 'BAGIAN';
    Cells[4 ,0] := 'GAJI POKOK';
    Cells[5 ,0] := 'TUNJANGAN';
    Cells[6 ,0] := 'TOTAL';
  end;
end;

procedure TForm2.FormShow(Sender: TObject);
var Baris : Integer;
begin
  for Baris := 0 to NoUrut - 1 do
  begin
//    Cells[0, Baris + 1] := IntToStr(Baris + 1);
  end;
    
end;

end.
