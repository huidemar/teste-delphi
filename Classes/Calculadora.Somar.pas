unit Calculadora.Somar;

interface

uses Calculadora.Calculadora;

type
  TSomar = class(TCalculadora)
  private
  public
    constructor Create;
    destructor Destroy; override;
    function Operacao: Double; override;
  end;

implementation

{ TSomar }

constructor TSomar.Create;
begin

end;

destructor TSomar.Destroy;
begin

end;

function TSomar.Operacao: Double;
begin
  Result := GetNumero1 + GetNumero2;
end;

end.
