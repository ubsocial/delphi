unit uEx1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    strMatriz: TStringGrid;
    btnGerar: TButton;
    strPar: TStringGrid;
    strImpar: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    strNum: TStringGrid;
    strParDesc: TStringGrid;
    strImparDesc: TStringGrid;
    strNumDesc: TStringGrid;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  matriz: array[0..10,0..9] of Integer;
  vetPar: array of Integer;
  vetImpar: array of Integer;
  vetDif: array of Integer;
  t: Integer = 0;
  x: String;

implementation

{$R *.dfm}

  function matIguais(c: Integer; l: Integer; c4: Integer; opt: String; mat: TStringGrid; mat2: TStringGrid): TStringGrid;
  begin
    opt := mat.Cells[c,l];
    SetLength(vetDif,c4+1);
    vetDif[c4-1] := StrToInt(opt);
    mat2.ColCount := c4+1;
    mat2.Cells[c4,0] := mat.Cells[c,l];
  end;

  function matPar(c2: Integer; n: Integer; matPar: TStringGrid): TStringGrid;
  begin
    SetLength(vetPar,c2+1);
    vetPar[c2-1] := n;
    matPar.ColCount := c2+1;
    matPar.Cells[c2,0] := n.ToString;
  end;

  function matImpar(c3: Integer; n: Integer; matImpar: TStringGrid): TStringGrid;
  var i: Integer;
  begin
    SetLength(vetImpar,c3+1);
    vetImpar[c3-1] := n;
    matImpar.ColCount := c3+1;
    matImpar.Cells[c3,0] := n.ToString;
  end;

  procedure desc(var lista: Array of Integer);
  var
    i,t: Integer;
    c: Boolean;
  begin
    c := true;
    while c do
    begin
      c := False;
      for i:=Low(lista) to High(lista)-1 do
      begin
        if (lista[i]<lista[i+1]) then
        begin
          t := lista[i+1];
          lista[i+1] := lista[i];
          lista[i] := t;
          c := True;
        end;
      end;
    end;
  end;



procedure TForm1.btnGerarClick(Sender: TObject);
var
  l,c,c2,c3,c4,c5,i,n,lnd,cnd,iguais: Integer;
  opt: String;
begin
  Randomize;
  c2 := 0;
  c3 := 0;
  c4 := 0;
  for l := 0 to strMatriz.RowCount-1 do
  begin
    for c := 0 to strMatriz.ColCount-1 do
    begin
      n := Random(100);
      strMatriz.Cells[c,l] := IntToStr(n);
      matriz[l,c] := StrToInt(strMatriz.Cells[c,l]);

      //Pares e �mpares
      if (n mod 2=0) then
      begin
        matPar(c2,n,strPar);
        inc(c2);
      end
      else
      begin
        matImpar(c3,n,strImpar);
        inc(c3);
      end;
    end;
  end;

  //N�meros diferentes
  for l := 0 to strMatriz.RowCount-1 do
  begin
    for c := 0 to strMatriz.ColCount-1 do
    begin
      iguais := 0;
      for lnd := 0 to strMatriz.RowCount-1 do
      begin
        for cnd := 0 to strMatriz.ColCount-1 do
        begin
          if strMatriz.Cells[c,l]=strMatriz.Cells[cnd,lnd] then
          begin
            inc(iguais);
          end;
        end;
      end;
      if iguais=1 then
      begin
        matIguais(c,l,c4,opt,strMatriz,strNum);
        inc(c4);
      end;
    end;
  end;

  desc(vetImpar);
  for i := Low(vetImpar) to High(vetImpar) do
  begin
    strImparDesc.ColCount := i+1;
    strImparDesc.Cells[i,0] := vetImpar[i].ToString;
  end;

  desc(vetPar);
  for i := Low(vetPar) to High(vetPar) do
  begin
    strParDesc.ColCount := i;
    strparDesc.Cells[i,0] := vetPar[i].ToString;
  end;

  desc(vetDif);
  for i := Low(vetDif) to High(vetDif) do
  begin
    strNumDesc.ColCount := i;
    strNumDesc.Cells[i,0] := vetDif[i].ToString;
  end;
end;

end.
