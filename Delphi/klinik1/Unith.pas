unit Unith;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.Grids, Vcl.DBGrids;

type
  TMainForm = class(TForm)
    ADOC: TADOConnection;
    dokter: TADOTable;
    dokternip: TStringField;
    dokternama: TStringField;
    doktertempat_lahir: TStringField;
    doktertanggal_lahir: TDateField;
    doktersip: TStringField;
    inputNip: TDBEdit;
    DokterDataSource: TDataSource;
    namaCaption: TLabel;
    inputNama: TDBEdit;
    Label3: TLabel;
    inputTempatLahir: TDBEdit;
    Label4: TLabel;
    sipCaption: TLabel;
    inputSip: TDBEdit;
    Label1: TLabel;
    inputTanggalLahir: TDateTimePicker;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    dokterGrid: TDBGrid;
    baruButton: TButton;
    simpanButton: TButton;
    editButton: TButton;
    cancelButton: TButton;
    hapusButton: TButton;
    procedure cancelButtonClick(Sender: TObject);
    procedure simpanButtonClick(Sender: TObject);
    procedure baruButtonClick(Sender: TObject);
    procedure editButtonClick(Sender: TObject);
    procedure hapusButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.baruButtonClick(Sender: TObject);
begin
  dokter.Insert;
end;

procedure TMainForm.cancelButtonClick(Sender: TObject);
begin
  dokter.Cancel;
end;

procedure TMainForm.editButtonClick(Sender: TObject);
begin
  dokter.Edit;
end;

procedure TMainForm.hapusButtonClick(Sender: TObject);
begin
  dokter.Delete;
end;

procedure TMainForm.simpanButtonClick(Sender: TObject);
begin
  dokter.Post;
end;

end.
