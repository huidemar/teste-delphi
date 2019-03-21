unit Calculadora.Calculadora;

interface

type
  TCalculadora = class
  private
    FNumero1: Double;
    FNumero2: Double;
  public
    procedure SetNumero1(Valor: Double);
    procedure SetNumero2(Valor: Double);
    function GetNumero1: Double;
    function GetNumero2: Double;
    constructor Create;
    destructor Destroy; override;
    function Operacao: Double; overload; virtual; abstract;
  end;


implementation

{ TCalculadora }

constructor TCalculadora.Create;
begin
end;

destructor TCalculadora.Destroy;
begin

  inherited;
end;

function TCalculadora.GetNumero1: Double;
begin
  Result := FNumero1;
end;

function TCalculadora.GetNumero2: Double;
begin
  Result := FNumero2;
end;

procedure TCalculadora.SetNumero1(Valor: Double);
begin
  Self.FNumero1 := Valor;
end;

procedure TCalculadora.SetNumero2(Valor: Double);
begin
  Self.FNumero2 := Valor;
end;

end.
