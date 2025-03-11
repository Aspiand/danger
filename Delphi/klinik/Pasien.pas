unit Pasien;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Buttons, Vcl.ComCtrls, Data.DB,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFPasien = class(TForm)
    Image1: TImage;
    ToolBar1: TToolBar;
    newButton: TSpeedButton;
    saveButton: TSpeedButton;
    ADOQPasien: TADOQuery;
    ADOQPasiennik: TIntegerField;
    ADOQPasiennama: TStringField;
    ADOQPasientempat_lahir: TStringField;
    ADOQPasientanggal_lahir: TDateField;
    ADOQPasienjenis_kelamin: TStringField;
    Label1: TLabel;
    Nik: TDBEdit;
    PasienDataSource: TDataSource;
    Label2: TLabel;
    Nama: TDBEdit;
    Label3: TLabel;
    TempatLahir: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    TanggalLahir: TDateTimePicker;
    JenisKelamin: TComboBox;
    DBGrid: TDBGrid;
    BindSourceDB: TBindSourceDB;
    BindingsList: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    closeButton: TSpeedButton;
    cancelButton: TSpeedButton;
    deleteButton: TSpeedButton;
    updateButton: TSpeedButton;
    procedure closeButtonClick(Sender: TObject);
    procedure newButtonClick(Sender: TObject);
    procedure updateButtonClick(Sender: TObject);
    procedure saveButtonClick(Sender: TObject);
    procedure deleteButtonClick(Sender: TObject);
    procedure cancelButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPasien: TFPasien;

implementation

{$R *.dfm}

uses MainUnit;

procedure TFPasien.cancelButtonClick(Sender: TObject);
begin
  ADOQPasien.Cancel;
end;

procedure TFPasien.closeButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TFPasien.deleteButtonClick(Sender: TObject);
begin
  ADOQPasien.Delete;
end;

procedure TFPasien.newButtonClick(Sender: TObject);
begin
  ADOQPasien.Insert;
end;

procedure TFPasien.saveButtonClick(Sender: TObject);
begin
  ADOQPasien.Post;
end;

procedure TFPasien.updateButtonClick(Sender: TObject);
begin
  ADOQPasien.Edit;
end;

end.
