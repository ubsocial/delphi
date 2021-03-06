unit uAula4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.Buttons;

type
  TForm1 = class(TForm)
    popMenuArquivo: TPopupMenu;
    MainMenu1: TMainMenu;
    btnAbrirPopupMenu: TButton;
    btnFecharPopupMenu: TButton;
    optArquivo: TMenuItem;
    Abrir1: TMenuItem;
    Fechar1: TMenuItem;
    optSair: TMenuItem;
    Arquivo1: TMenuItem;
    Abrir2: TMenuItem;
    Fechar2: TMenuItem;
    optSalvar: TMenuItem;
    Editar1: TMenuItem;
    Inicio1: TMenuItem;
    Final1: TMenuItem;
    tmrDataHora: TTimer;
    lblDataHora: TLabel;
    memLista: TMemo;
    btnGerarLista: TButton;
    stgMat: TStringGrid;
    bitBtnGerarMatriz: TBitBtn;
    btnPontos: TButton;
    procedure btnAbrirPopupMenuClick(Sender: TObject);
    procedure btnFecharPopupMenuClick(Sender: TObject);
    procedure tmrDataHoraTimer(Sender: TObject);
    procedure btnGerarListaClick(Sender: TObject);
    procedure bitBtnGerarMatrizClick(Sender: TObject);
    procedure btnPontosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Pontos = Record
    X, Y: Integer;
    Cor: String;
    OnOff: Boolean;
  End;

  TRegistro = Class
    Nome: String;
    Telefone: String;
    Cidade: String;
  End;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bitBtnGerarMatrizClick(Sender: TObject);
var
  col, lin, num: Integer;
  matriz: array [1 .. 5, 1 .. 5] of Integer;
begin
  // Inicialização (Fixes - Cabeçalho)
  for lin := 0 to stgMat.RowCount - 1 do
  begin
    stgMat.Cells[0, lin + 1] := IntToStr(lin + 1);
  end;
  for col := 0 to stgMat.ColCount - 1 do
  begin
    stgMat.Cells[col + 1, 0] := IntToStr(col + 1);
  end;

  // Inicialização (Linhas editáveis)
  num := 0;
  for lin := 1 to stgMat.RowCount - 1 do
  begin
    for col := 1 to stgMat.ColCount - 1 do
    begin
      stgMat.Cells[col, lin] := IntToStr(num);
      matriz[lin, col] := StrToInt(stgMat.Cells[col, lin]);
      inc(num, 2);
    end;
  end;
end;

procedure TForm1.btnAbrirPopupMenuClick(Sender: TObject);
begin
  popMenuArquivo.Popup(10, 50);
end;

procedure TForm1.btnFecharPopupMenuClick(Sender: TObject);
begin
  popMenuArquivo.CloseMenu;
end;

procedure TForm1.btnGerarListaClick(Sender: TObject);
var
  lista: array [0 .. 5] of Integer;
  soma, I: Integer;
begin
  soma := 0;
  for I := Low(lista) to High(lista) do
  begin
    lista[I] := soma;
    memLista.Lines.Add(lista[I].ToString);
    inc(soma);
  end;
end;

procedure TForm1.btnPontosClick(Sender: TObject);
var
  PontosTela: Array [1 .. 1024] of Pontos;
begin
  PontosTela[1].X := 300;
  PontosTela[1].Y := 679;
  PontosTela[1].Cor := 'Azul';
  PontosTela[1].OnOff := True;
  ShowMessage(PontosTela[1].X.ToString);
end;

procedure TForm1.tmrDataHoraTimer(Sender: TObject);
begin
  lblDataHora.Caption := TimeToStr(time) + ' ' +
    FormatDateTime('dddd, dd "de" mmmm "de" yyyy', now);
end;

end.
