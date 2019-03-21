unit uDm;

interface

uses
  Classes.Atributo,
  System.Rtti,
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  System.StrUtils;

type
  TCrud = class
    class function CRUD_Insert(Obj: TObject): string;
  end;

  TDm = class(TDataModule)
    TheosConnection: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TCrud }

class function TCrud.CRUD_Insert(Obj: TObject): string;
var
  Ctx: TRttiContext;
  Typ: TRttiType;
  Prop: TRttiProperty;
  Att: TCustomAttribute;
  nome,
  insert_into,
  insert_values: String;
begin
  try
    Result := '';
    Ctx := TRttiContext.Create;
    Typ := Ctx.GetType(Obj.ClassType);
    insert_into   := 'insert into '+Obj.ToString+' (';
    insert_values := ') values (';
    for Prop in Typ.GetProperties do
      begin
        if Prop.PropertyType.TypeKind <> tkClass then
          begin
            nome := '';
            for Att in Prop.GetAttributes do
              begin
                if Att is TIDAtributo then
                  nome := TIDAtributo(Att).NomeAtributo;
              end;
            insert_into := insert_into + ifThen(nome<>'', nome, Prop.Name)+',';
            if Prop.PropertyType.TypeKind = tkFloat then
              insert_values := insert_values + Prop.GetValue(Obj).ToString.Replace(',','.') +','
            else//if Prop.PropertyType.TypeKind in [tkUString, tkString] then
              insert_values := insert_values + QuotedStr(Prop.GetValue(Obj).ToString)+',';
          end;
      end;
    insert_values := insert_values+')';
  finally
    Result := insert_into+insert_values;
    Result := UpperCase(Result.Replace(',)',')',[rfReplaceAll]));
  end;
end;

end.
