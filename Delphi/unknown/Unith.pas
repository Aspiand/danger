unit Unith;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  Tiname = class(TForm)
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
    opokok: TEdit;
    otunjangan: TEdit;
    ototal: TEdit;
    bdaftar: TSpeedButton;
    bsave: TSpeedButton;
    breset: TSpeedButton;
    bclose: TSpeedButton;
    procedure bcloseClick(Sender: TObject);
    procedure bresetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  iname: Tiname;

implementation

{$R *.dfm}

procedure Tiname.bcloseClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure Tiname.bresetClick(Sender: TObject);
begin
  ibagian.ItemIndex := -1;
  inik.Text := '';
  iname.Text := '';
  opokok.Text := '0';
  otunjangan.Text := '0';
  ototal.Text := '0';
end;

end.
