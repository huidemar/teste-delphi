program prjOTeste;

uses
  Vcl.Forms,
  MenuPrincipal in 'MenuPrincipal.pas' {FMenuPrincipal},
  Base in 'Base.pas' {FBase},
  CadCalculadora in 'CadCalculadora.pas' {FCadCalculadora},
  Calculadora.Calculadora in 'Classes\Calculadora.Calculadora.pas',
  Calculadora.Dividir in 'Classes\Calculadora.Dividir.pas',
  Calculadora.Imposto in 'Classes\Calculadora.Imposto.pas',
  Calculadora.ImpostoA in 'Classes\Calculadora.ImpostoA.pas',
  Calculadora.ImpostoB in 'Classes\Calculadora.ImpostoB.pas',
  Calculadora.ImpostoC in 'Classes\Calculadora.ImpostoC.pas',
  Calculadora.Multiplicar in 'Classes\Calculadora.Multiplicar.pas',
  Calculadora.Operacoes in 'Classes\Calculadora.Operacoes.pas',
  Calculadora.Somar in 'Classes\Calculadora.Somar.pas',
  Calculadora.Subtrair in 'Classes\Calculadora.Subtrair.pas',
  CadEntidades in 'CadEntidades.pas' {FCadEntidades},
  Entidade.Pessoa in 'Classes\Entidade.Pessoa.pas',
  Entidade.Funcionario in 'Classes\Entidade.Funcionario.pas',
  Entidade.Dependente in 'Classes\Entidade.Dependente.pas',
  Calculadora.ImpostoIR in 'Classes\Calculadora.ImpostoIR.pas',
  uDm in 'uDm.pas' {Dm: TDataModule},
  Classes.Atributo in 'Classes\Classes.Atributo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMenuPrincipal, FMenuPrincipal);
  Application.CreateForm(TFCadEntidades, FCadEntidades);
  Application.CreateForm(TDm, Dm);
  Application.Run;
end.
