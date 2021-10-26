unit uPagina2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPagina2 = class(TForm)
    btnAnterior: TButton;
    procedure btnAnteriorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPagina2: TfrmPagina2;

implementation

{$R *.dfm}

uses uInicio;

procedure TfrmPagina2.btnAnteriorClick(Sender: TObject);
begin
  frmPagina2.Hide;
  frmInicio.Show;
end;

end.
