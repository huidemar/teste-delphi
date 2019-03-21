unit Calculadora.Multiplicar;

interface

uses Calculadora.Calculadora;

type
  TMultiplicar = class(TCalculadora)
  private
  public
    constructor Create;
    destructor Destroy; override;
    function Operacao: Double; override;
  end;

implementation

{ TMultiplicar }

constructor TMultiplicar.Create;
begin

end;

destructor TMultiplicar.Destroy;
begin

  inherited;
end;

function TMultiplicar.Operacao: Double;
begin
  Result := GetNumero1 * GetNumero2;
end;

end.
