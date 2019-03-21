unit Classes.Atributo;

interface
type
  TIDAtributo = class(TCustomAttribute)
  strict private
    FNomeAtributo: String;
  public
    property NomeAtributo : String read FNomeAtributo;
    constructor Create(pNomeAtributo:string);
    destructor  Destroy; override;
  end;
implementation

{ TIDAtributo }

constructor TIDAtributo.Create(pNomeAtributo: string);
begin
  FNomeAtributo := pNomeAtributo;
end;

destructor TIDAtributo.Destroy;
begin

  inherited;
end;

end.
