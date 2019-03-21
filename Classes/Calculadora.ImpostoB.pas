unit Calculadora.ImpostoB;

interface

uses Calculadora.Imposto;

type
  TImpostoB = class(TImposto)
  private
  public
    function Operacao: Double; override;
  end;

implementation

{ TImpostoB }

function TImpostoB.Operacao: Double;
begin
  Result := GetImpostoA - 15;
  SetImpostoB(Result);
end;

end.
