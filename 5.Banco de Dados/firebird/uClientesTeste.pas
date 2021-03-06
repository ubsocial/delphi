unit uClientesTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmClientesTeste = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientesTeste: TfrmClientesTeste;

implementation

{$R *.dfm}

uses uDM, uMenu;

procedure TfrmClientesTeste.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm.tbClientes.Close;
end;

procedure TfrmClientesTeste.FormShow(Sender: TObject);
begin
  dm.tbClientes.Open;
end;

end.
