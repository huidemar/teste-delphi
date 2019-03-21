unit Entidade.Funcionario;

interface

uses
  Entidade.Pessoa,
  System.SysUtils,
  Entidade.Dependente,
  System.Generics.Collections;

type
  TFuncionario = class(TPessoa)
  private
    FCPF: String;
    FSalario: Currency;
    FListaDependente: TList<TDependente>;
    procedure SetCPF(const Value: String);
    procedure SetSalario(const Value: Currency);
    procedure SetListaDependente(const Value: TList<TDependente>);
  public
    property CPF: String read FCPF write SetCPF;
    property Salario: Currency read FSalario write SetSalario;
    property ListaDependente:TList<TDependente> read FListaDependente write SetListaDependente;
    constructor Create;
    destructor Destroy; override;
    function CalculaIR: Currency;
    function CalculaINSS: Currency;
  end;

implementation

{ TFuncionario }

function TFuncionario.CalculaINSS: Currency;
var
  d: TDependente;
  qtde: Integer;
begin
  Result := 0;
  for d in ListaDependente do
    begin
      if d.IsCalculaINSS='S' then
        exit(FSalario * 8 / 100);
    end;
end;

function TFuncionario.CalculaIR: Currency;
var
  d: TDependente;
  qtde: Integer;
begin
  qtde := 0;
  for d in ListaDependente do
    begin
      if d.IsCalculaIR='S' then
        Inc(qtde);
    end;
  Result := (FSalario - (qtde * 100));
  Result :=  (Result * (15 / 100));
end;

constructor TFuncionario.Create;
begin
  FListaDependente := TList<TDependente>.Create;
end;

destructor TFuncionario.Destroy;
var
  d: TDependente;
begin
  for d in ListaDependente do
    begin
      d.Free;
    end;
  ListaDependente.Free;
  inherited;
end;

procedure TFuncionario.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TFuncionario.SetListaDependente(const Value: TList<TDependente>);
begin
  FListaDependente := Value;
end;

procedure TFuncionario.SetSalario(const Value: Currency);
begin
  if Value < 0 then
    raise Exception.Create('Sal�rio n�o pode ser menor que a zero !');
  FSalario := Value;
end;

end.
