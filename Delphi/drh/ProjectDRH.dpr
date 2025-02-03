program ProjectDRH;

uses
  Vcl.Forms,
  Unith in 'Unith.pas' {FDRH};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFDRH, FDRH);
  Application.Run;
end.
