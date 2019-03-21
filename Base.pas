unit Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFBase = class(TForm)
    pnTitulo: TPanel;
    pnMeio: TPanel;
    BalloonHint1: TBalloonHint;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBase: TFBase;

implementation

{$R *.dfm}

end.
