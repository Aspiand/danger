unit Unith;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Data.DB,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons;

type
  TMainForm = class(TForm)
    ToolBar1: TToolBar;
    Connection: TADOConnection;
    Pasien: TADOTable;
    Pasiennik: TIntegerField;
    Pasiennama: TStringField;
    Pasientempat_lahir: TStringField;
    Pasientanggal_lahir: TDateField;
    Pasienjenis_kelamin: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    PasienSource: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    inputJenisKelamin: TComboBox;
    DateTimePicker1: TDateTimePicker;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkControlToField1: TLinkControlToField;
    DBGrid1: TDBGrid;
    baruButton: TSpeedButton;
    simpanButto: TSpeedButton;
    ubahButton: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure baruButtonClick(Sender: TObject);
    procedure ubahButtonClick(Sender: TObject);
    procedure delteButtonClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure simpanButtoClick(Sender: TObject);
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
  Pasien.Insert;
end;

procedure TMainForm.delteButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.simpanButtoClick(Sender: TObject);
begin
  Pasien.Post;
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
  Pasien.Delete;
end;

procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.ubahButtonClick(Sender: TObject);
begin
  Pasien.Edit;
end;

end.
