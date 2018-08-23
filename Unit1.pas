unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmCalculadora = class(TForm)
    edResultado: TEdit;
    bt7: TButton;
    bt8: TButton;
    bt9: TButton;
    btSoma: TButton;
    bt5: TButton;
    bt4: TButton;
    bt6: TButton;
    btSubtrair: TButton;
    bt2: TButton;
    bt1: TButton;
    bt3: TButton;
    btMultiplicar: TButton;
    bt0: TButton;
    btLimpar: TButton;
    btIgual: TButton;
    btDividir: TButton;
    procedure btSomaClick(Sender: TObject);
    procedure btSubtrairClick(Sender: TObject);
    procedure btMultiplicarClick(Sender: TObject);
    procedure btDividirClick(Sender: TObject);
    procedure NumeroClick(Sender: TObject);
    procedure btIgualClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

     // DECLAROU DUAS/ TRES VARIAVEIS
    FOperacao: Char;
    FTotal: Double;
    FUltimoNumero: Double;

    procedure Calcular;
    procedure Limpar;
  public
    { Public declarations }
  end;

var
  FrmCalculadora: TFrmCalculadora;

implementation

{$R *.dfm}
  // CADA BOTÃO EU PEGUEI A VARIAVEL E CHAMEI O NOME
procedure TFrmCalculadora.NumeroClick(Sender: TObject);
begin
//CHAMANDO A VARIAVEL EDRESULTADO, CHAMEI TODOS OS PARAMETROS "BOTÃO";

  if FUltimoNumero = 0 then
      edResultado.Text := TButton(Sender).Caption
    else
      edResultado.Text := edResultado.Text + TButton(Sender).Caption;

      FUltimoNumero := StrToFloat (edResultado.Text);



end;

procedure TFrmCalculadora.btDividirClick(Sender: TObject);
begin
FUltimoNumero := StrToFloat (edResultado.Text);
  Calcular;

  FOperacao := '/';
end;

procedure TFrmCalculadora.btIgualClick(Sender: TObject);
begin
  Calcular;


end;

procedure TFrmCalculadora.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TFrmCalculadora.btMultiplicarClick(Sender: TObject);
begin
FUltimoNumero := StrToFloat (edResultado.Text);
  Calcular;

  FOperacao := 'x';
end;

procedure TFrmCalculadora.btSomaClick(Sender: TObject);
begin
FUltimoNumero := StrToFloat (edResultado.Text);
  Calcular;

  FOperacao := '+';
end;

procedure TFrmCalculadora.btSubtrairClick(Sender: TObject);
begin

FUltimoNumero := StrToFloat (edResultado.Text);
   Calcular;

   FOperacao := '-';
end;

procedure TFrmCalculadora.Calcular;
begin
  case FOperacao of
    '+':  FTotal := FTotal + StrToFloat (edResultado.Text);

    '-':  FTotal := FTotal - StrToFloat (edResultado.Text);

    '*':  FTotal := FTotal * StrToFloat (edResultado.Text);

    '/':  FTotal := FTotal / StrToFloat (edResultado.Text);

  end;

    edResultado.Text := FloatToStr (FTotal);
    FUltimoNumero := 0;

  end;
procedure TFrmCalculadora.FormCreate(Sender: TObject);
begin
  Limpar;
end;

procedure TFrmCalculadora.Limpar;
begin

  FUltimoNumero := 0;
  edResultado.Text := '0';
  FOperacao := '+';
  FTotal := 0;



end;



end.
