unit Entidade.Pessoa;

interface

uses System.SysUtils, uDm, Vcl.Dialogs;

type
  TPessoa = class
  private
    FNome: String;
    procedure SetNome(const Value: String);
  public
    property Nome: String read FNome write SetNome;
    function ToString: String; override;
    constructor Create;
    destructor Destroy; override;
    function Salvar:Boolean;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

function TPessoa.Salvar: Boolean;
var
  crud: TCrud;
begin
  Result := False;
  Dm.TheosConnection.Connected := True;
  Dm.TheosConnection.ExecSQL(crud.CRUD_Insert(Self));
  Result := True;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  if (Trim(Value)='') then
    raise Exception.Create('Nome n�o pode ser Vazio');
  FNome := Value;
end;

function TPessoa.ToString: String;
begin
  Result := Copy(ClassName, 2, Length(ClassName));
end;

end.
