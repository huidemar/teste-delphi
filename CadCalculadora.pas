unit CadCalculadora;

interface

uses
  Calculadora.ImpostoA,
  Calculadora.ImpostoB,
  Calculadora.ImpostoC,
  Calculadora.Operacoes,
  Calculadora.Calculadora,
  Calculadora.Somar,
  Calculadora.Subtrair,
  Calculadora.Multiplicar,
  Calculadora.Dividir,
  System.StrUtils,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.Actions, Vcl.ActnList;

type
  TFCadCalculadora = class(TFBase)
    edtVisor: TLabeledEdit;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btnLimpar: TButton;
    btnDividir: TButton;
    btMultiplicar: TButton;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnIgual: TButton;
    btn0: TButton;
    edtMsg: TLabeledEdit;
    GroupBox1: TGroupBox;
    btnImpostoA: TButton;
    btnImpostoB: TButton;
    btnImpostoC: TButton;
    procedure btnSubtrairClick(Sender: TObject);
    procedure btMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure btnImpostoAClick(Sender: TObject);
    procedure btnImpostoBClick(Sender: TObject);
    procedure btnImpostoCClick(Sender: TObject);
  private
    FImpostoB: Double;
    FImpostoC: Double;
    FUltimoNumero: Double;
    FTotal: Double;
    FOperacao: TCalculadoraOperacao;
    FCalculadora: TCalculadora;
    procedure Calcular;
    procedure Limpar(LimparVisor: Boolean = True);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCalculadora: TFCadCalculadora;

implementation

{$R *.dfm}

{ TFCadCalculadora }

procedure TFCadCalculadora.Calcular;
begin
  try
    case FOperacao of
      tcoSomar:       FCalculadora := TSomar.Create;
      tcoSubtrair:    FCalculadora := TSubtrair.Create;
      tcoMultiplicar: FCalculadora := TMultiplicar.Create;
      tcoDividir:     FCalculadora := TDividir.Create;
      tcoImposto:     FCalculadora := TImpostoA.Create;
      tcoImpostoB:    FCalculadora := TImpostoB.Create;
      tcoImpostoC:    FCalculadora := TImpostoC.Create;
    end;
    FCalculadora.SetNumero1(FTotal);
    FCalculadora.SetNumero2(StrToFloatDef(edtVisor.Text,0));
    FTotal := FCalculadora.Operacao();
  finally
    edtMsg.Text := FTotal.ToString();
    edtVisor.Text := '';
    FUltimoNumero := FTotal;
    FCalculadora.Free;
  end;
end;

procedure TFCadCalculadora.FormShow(Sender: TObject);
begin
  inherited;
  Limpar;
end;

procedure TFCadCalculadora.Limpar(LimparVisor: Boolean = True);
begin
  FUltimoNumero := 0;
  FTotal        := 0;
  FImpostoB     := 0;
  FImpostoC     := 0;
  FOperacao     := tcoSomar;
  if LimparVisor then
    begin
      edtVisor.Clear;
      edtMsg.Clear;
    end
  else
    begin
      edtVisor.Text := edtMsg.Text;
      edtMsg.Clear;
    end;

end;

procedure TFCadCalculadora.btnImpostoAClick(Sender: TObject);
begin
  inherited;
  Calcular;
  FOperacao := tcoImposto;
  btnIgualClick(btnIgual);
end;

procedure TFCadCalculadora.btnImpostoBClick(Sender: TObject);
begin
  inherited;
  Calcular;
  FOperacao := tcoImpostoB;
  btnIgualClick(btnIgual);
end;

procedure TFCadCalculadora.btnImpostoCClick(Sender: TObject);
begin
  inherited;
  Calcular;
  FOperacao := tcoImpostoC;
  btnIgualClick(btnIgual);
end;

procedure TFCadCalculadora.btMultiplicarClick(Sender: TObject);
begin
  inherited;
  Calcular;
  FOperacao := tcoMultiplicar;
end;

procedure TFCadCalculadora.btnClick(Sender: TObject);
begin
  inherited;
  if (FUltimoNumero = 0) then
    edtVisor.Text := Trim(TButton(Sender).Caption)
  else
    edtVisor.Text := edtVisor.Text + Trim(TButton(Sender).Caption);
  FUltimoNumero := StrToFloat(edtVisor.Text);
end;

procedure TFCadCalculadora.btnDividirClick(Sender: TObject);
begin
  inherited;
  Calcular;
  FOperacao := tcoDividir;
end;

procedure TFCadCalculadora.btnIgualClick(Sender: TObject);
begin
  inherited;
  Calcular;
  Limpar(False);
end;

procedure TFCadCalculadora.btnLimparClick(Sender: TObject);
begin
  inherited;
  FOperacao := tcoLimpar;
  Limpar;
end;

procedure TFCadCalculadora.btnSomarClick(Sender: TObject);
begin
  inherited;
  Calcular;
  FOperacao := tcoSomar;
end;

procedure TFCadCalculadora.btnSubtrairClick(Sender: TObject);
begin
  inherited;
  Calcular;
  FOperacao := tcoSubtrair;
end;

end.
