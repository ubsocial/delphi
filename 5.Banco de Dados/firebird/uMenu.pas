unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    abelas1: TMenuItem;
    optClientes: TMenuItem;
    procedure optClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses uClientesTeste, uDM;

procedure TfrmMenu.optClientesClick(Sender: TObject);
begin
  frmClientesTeste.Show;
end;

end.
