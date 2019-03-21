unit Calculadora.ImpostoC;

interface
uses Calculadora.Imposto;

type
  TImpostoC = class(TImposto)
  private
  public
    constructor Create;
    Destructor Destroy; override;
    function Operacao: Double; override;
  end;

implementation

{ TImpostoC }

constructor TImpostoC.Create;
begin

end;

destructor TImpostoC.Destroy;
begin

  inherited;
end;

function TImpostoC.Operacao: Double;
begin
  Result := GetImpostoA + GetImpostoB;
end;

end.
