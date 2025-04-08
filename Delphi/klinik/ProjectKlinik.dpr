program ProjectKlinik;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {Klinik},
  Pasien in 'Pasien.pas' {FPasien},
  Dokter in 'Dokter.pas' {FDokter};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TKlinik, Klinik);
  Application.CreateForm(TFPasien, FPasien);
  Application.CreateForm(TFDokter, FDokter);
  Application.Run;
end.
