program Gaji;

uses
  Vcl.Forms,
  Unith in 'Unith.pas' {FLatihan06};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFLatihan06, FLatihan06);
  Application.Run;
end.
