unit Calculadora.ImpostoA;

interface

uses Calculadora.Imposto;

type
  TImpostoA = class(TImposto)
  private
  public
    Constructor Create;
    Destructor Destroy; override;
    function Operacao: Double; override;
  end;

implementation

{ TImpostoA }

constructor TImpostoA.Create;
begin
  SetImpostoA(0);
end;

destructor TImpostoA.Destroy;
begin

  inherited;
end;

function TImpostoA.Operacao: Double;
begin
  Result := ((GetNumero1 * (20 / 100)) - 500);

  SetImpostoA(Result);
end;

end.
