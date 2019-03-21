unit Entidade.Dependente;

interface

uses Entidade.Pessoa, Classes.Atributo;

type
  TDependente = class(TPessoa)
  private
    FIsCalculaINSS: String;
    FIsCalculaIR: String;
    FFuncionario_Cpf: String;
  public
    [TIDAtributo('CalculaIR')]
    property IsCalculaIR: String read FIsCalculaIR write FIsCalculaIR;
    [TIDAtributo('CalculaINSS')]
    property IsCalculaINSS: String read FIsCalculaINSS write FIsCalculaINSS;
    property Funcionario_Cpf: String read FFuncionario_Cpf write FFuncionario_Cpf;
    constructor Create(pFuncionario_Cpf, pNome, pIsCalculaIR, pIsCalculaINSS: String);
    destructor Destroy; override;
  end;

implementation

{ TDependente }

constructor TDependente.Create(pFuncionario_Cpf, pNome, pIsCalculaIR, pIsCalculaINSS: String);
begin
  inherited Create;
  FFuncionario_Cpf := pFuncionario_Cpf;
  Nome := pNome;
  FIsCalculaIR := pIsCalculaIR;
  FIsCalculaINSS := pIsCalculaINSS;
end;

destructor TDependente.Destroy;
begin

  inherited;
end;

end.
