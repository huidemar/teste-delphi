unit Calculadora.Dividir;

interface

uses Calculadora.Calculadora, SysUtils;

type
  TDividir = class(TCalculadora)
  private
  public
    constructor Create;
    destructor Destroy; override;
    function Operacao: Double; override;
  end;

implementation

{ TDividir }

constructor TDividir.Create;
begin

end;

destructor TDividir.Destroy;
begin

  inherited;
end;

function TDividir.Operacao: Double;
begin
  Result := 0;
  if (GetNumero2 = 0) then
    raise Exception.Create('Não é possível dividir por zero!!');
  Result := GetNumero1 / GetNumero2;
end;

end.
