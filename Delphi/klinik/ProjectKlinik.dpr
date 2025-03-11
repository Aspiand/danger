program ProjectKlinik;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {Klinik};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TKlinik, Klinik);
  Application.Run;
end.
