program diskon;

uses
  Vcl.Forms,
  Unith in 'Unith.pas' {FLatihan7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFLatihan7, FLatihan7);
  Application.Run;
end.
