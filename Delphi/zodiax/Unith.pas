unit Unith;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    h1: TLabel;
    Idate: TLabel;
    lhk: TLabel;
    lzodiac: TLabel;
    loutput: TLabel;
    tanggal: TDateTimePicker;
    hari_lahir: TEdit;
    ozodiac: TEdit;
    SpeedButton1: TSpeedButton;
    memo: TMemo;
    procedure tanggalChange(Sender: TObject);
    procedure tanggalUserInput(Sender: TObject; const UserString: string;
      var DateAndTime: TDateTime; var AllowChange: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm1.tanggalChange(Sender: TObject);
const hari:Array[1..7] of String = (
  'Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'
);
const zodiac:Array[1..12] of String = (
  'Aquarius', 'Pisces', 'Aries', 'Taurus',
  'Gemini', 'Cancer', 'Leo', 'Virgo',
  'Libra', 'Scorpio', 'Sagitarius', 'Capricorn'
);
var
  year, month, day : word;
  zodiax:integer;
begin
  DecodeDate(tanggal.date, year, month, day);
  case month of
  1 : case day of
        1..20: zodiax := 12;
        21..31: zodiax := 1;
      end;
  2 : case day of
        1..19 : zodiax := 1;
        20..29 : zodiax := 2;
      end;
  3 : case day of
        1..21 : zodiax := 2;
        22..31 : zodiax := 3;
      end;
  4 : case day of
        1..20 : zodiax := 3;
        21..30 : zodiax := 4;
      end;
  5 : case day of
        1..22 : zodiax := 4;
        23..31 : zodiax := 5;
      end;
  6 : case day of
        1..23 : zodiax := 5;
        24..31 : zodiax := 6;
      end;
  7 : case day of
        1..23 : zodiax := 5;
        24..30 : zodiax := 7;
      end;
  8 : case day of
        1..23 : zodiax := 7;
        24..31 : zodiax := 8;
      end;
  9 : case day of
        1..23 : zodiax := 8;
        24..30 : zodiax := 9;
      end;
  10 : case day of
        1..23 : zodiax := 9;
        24..31 : zodiax := 10;
       end;
  11 : case day of
        1..22 : zodiax := 10;
        23..30 : zodiax := 11;
       end;
  12 : case day of
        1..21 : zodiax := 11;
        22..31 : zodiax := 12;
       end;
  end;

  hari_lahir.Text := hari[DayOfWeek(tanggal.Date)];
  ozodiac.Text := zodiac[zodiax];
  memo.text := 'Isi ramalan:' + zodiac[zodiax];


end;
procedure TForm1.tanggalUserInput(Sender: TObject; const UserString: string;
  var DateAndTime: TDateTime; var AllowChange: Boolean);
begin
  AllowChange := True;
end;

end.
