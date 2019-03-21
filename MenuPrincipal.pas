unit MenuPrincipal;

interface

uses
  CadEntidades,
  CadCalculadora,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFMenuPrincipal = class(TForm)
    btCalculadora: TButton;
    Button1: TButton;
    procedure btCalculadoraClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenuPrincipal: TFMenuPrincipal;

implementation

{$R *.dfm}

procedure TFMenuPrincipal.btCalculadoraClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFCadCalculadora, FCadCalculadora);
    FCadCalculadora.ShowModal;
  finally
    FreeAndNil(FCadCalculadora)
  end;
end;

procedure TFMenuPrincipal.Button1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFCadEntidades, FCadEntidades);
    FCadEntidades.ShowModal;
  finally
    FreeAndNil(FCadEntidades);
  end;
end;

procedure TFMenuPrincipal.FormShow(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
