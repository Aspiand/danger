unit Unith;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  DBAccess, MyAccess, MemDS, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TForm1 = class(TForm)
    lnis: TLabel;
    lnama: TLabel;
    ltempat_lahir: TLabel;
    ltanggal_lahir: TLabel;
    ljk: TLabel;
    ldarah: TLabel;
    inis: TEdit;
    inama: TEdit;
    itanggal_lahir: TDateTimePicker;
    ijk: TComboBox;
    itempat_lahir: TEdit;
    idarah: TComboBox;
    ikandung: TEdit;
    lkandung: TLabel;
    h1: TLabel;
    MyConnection1: TMyConnection;
    siswa: TMyTable;
    siswaNIS: TStringField;
    siswaNama: TStringField;
    siswaTempatLahir: TStringField;
    siswaTglLahir: TDateField;
    siswaJK: TStringField;
    siswaGolDarah: TStringField;
    siswaIbuKandung: TStringField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    LinkControlToField5: TLinkControlToField;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  siswa.post;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
siswa.Open;
siswa.Insert;
end;

end.
