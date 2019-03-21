unit Calculadora.Imposto;

interface

uses Calculadora.Calculadora, System.SysUtils;

type
  TImposto = class(TCalculadora)
  private
    class var FImpostoA: Double;
    class var FImpostoB: Double;
    class var FImpostoC: Double;
  public
    constructor Create;
    Destructor Destroy; override;
    class procedure SetImpostoA(Valor: Double);
    class procedure SetImpostoB(Valor: Double);
    class function GetImpostoA: Double;
    class function GetImpostoB: Double;
    class function GetImpostoC: Double;
    function Operacao: Double; override;
  end;

implementation

{ TImposto }

constructor TImposto.Create;
begin

end;

destructor TImposto.Destroy;
begin

  inherited;
end;

class function TImposto.GetImpostoA: Double;
begin
  Result := FImpostoA;
end;

class function TImposto.GetImpostoB: Double;
begin
  Result := FImpostoB;
end;

class function TImposto.GetImpostoC: Double;
begin
  Result := FImpostoC;
end;

function TImposto.Operacao: Double;
begin
  Result:=0;
end;

class procedure TImposto.SetImpostoA(Valor: Double);
begin
  FImpostoA := 0;
  FImpostoB := 0;
  FImpostoC := 0;
  FImpostoA := Valor;
end;

class procedure TImposto.SetImpostoB(Valor: Double);
begin
  FImpostoB := Valor;
end;

end.
