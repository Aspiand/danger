unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Imaging.jpeg, Data.DB, Data.Win.ADODB;

type
  TKlinik = class(TForm)
    Image1: TImage;
    MainMenu: TMainMenu;
    File1: TMenuItem;
    FormPasien1: TMenuItem;
    FormDokter1: TMenuItem;
    ADOConnection: TADOConnection;
    utup1: TMenuItem;
    procedure FormPasien1Click(Sender: TObject);
    procedure utup1Click(Sender: TObject);
    procedure FormDokter1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Klinik: TKlinik;

implementation

{$R *.dfm}

uses Pasien, Dokter;

procedure TKlinik.FormDokter1Click(Sender: TObject);
begin
  FDokter.ShowModal;
end;

procedure TKlinik.FormPasien1Click(Sender: TObject);
begin
  FPasien.ShowModal;
end;

procedure TKlinik.utup1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
