unit Dokter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFDokter = class(TForm)
    Image1: TImage;
    ToolBar1: TToolBar;
    newButton: TSpeedButton;
    saveButton: TSpeedButton;
    updateButton: TSpeedButton;
    deleteButton: TSpeedButton;
    cancelButton: TSpeedButton;
    closeButton: TSpeedButton;
    ADODokter: TADOTable;
    ADODokternip: TStringField;
    ADODokternama: TStringField;
    ADODoktertempat_lahir: TStringField;
    ADODoktertanggal_lahir: TDateField;
    ADODoktersip: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    DBGrid: TDBGrid;
    BindSourceDB: TBindSourceDB;
    BindingsList: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    procedure newButtonClick(Sender: TObject);
    procedure saveButtonClick(Sender: TObject);
    procedure updateButtonClick(Sender: TObject);
    procedure deleteButtonClick(Sender: TObject);
    procedure cancelButtonClick(Sender: TObject);
    procedure closeButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDokter: TFDokter;

implementation

{$R *.dfm}

uses MainUnit;

procedure TFDokter.cancelButtonClick(Sender: TObject);
begin
  ADODokter.Cancel;
end;

procedure TFDokter.closeButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TFDokter.deleteButtonClick(Sender: TObject);
begin
  ADODokter.Delete;
end;

procedure TFDokter.newButtonClick(Sender: TObject);
begin
  ADODokter.Insert;
end;

procedure TFDokter.saveButtonClick(Sender: TObject);
begin
  ADODokter.Post;
end;

procedure TFDokter.updateButtonClick(Sender: TObject);
begin
  ADODokter.Edit;
end;

end.
