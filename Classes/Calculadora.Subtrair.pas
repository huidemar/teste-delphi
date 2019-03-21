unit Calculadora.Subtrair;

interface

uses Calculadora.Calculadora;

type
  TSubtrair = class(TCalculadora)
  private
  public
    constructor Create;
    destructor Destroy; override;
    function Operacao: Double; override;
  end;

implementation

{ TSubtrair }

constructor TSubtrair.Create;
begin

end;

destructor TSubtrair.Destroy;
begin

  inherited;
end;

function TSubtrair.Operacao: Double;
begin
  Result := GetNumero1 - GetNumero2;
end;

end.
