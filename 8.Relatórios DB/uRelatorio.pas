unit uRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmRelatorio = class(TForm)
    rltRel: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand5: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel5: TRLLabel;
    RLDBResult1: TRLDBResult;
    procedure rltRelBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorio: TfrmRelatorio;

implementation

{$R *.dfm}

uses uClientes, uClientes2, uConsultas, uDM, uFirebird, uFornecedores,
  uProdutos;

procedure TfrmRelatorio.rltRelBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  dm.tbProdutos.Open;
end;

end.
