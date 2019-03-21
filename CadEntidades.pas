unit CadEntidades;

interface

uses
  Entidade.Funcionario,
  Entidade.Dependente,
  System.Generics.Collections,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ComCtrls, System.StrUtils;

type
  TFCadEntidades = class(TFBase)
    ToolBar1: TToolBar;
    gbDependentes: TGroupBox;
    edtDependenteNome: TLabeledEdit;
    chkCalcularIR: TCheckBox;
    chkCalcularINSS: TCheckBox;
    gbFuncionario: TGroupBox;
    edtFuncionarioNome: TLabeledEdit;
    edtFuncionarioCPF: TLabeledEdit;
    btnSalvar: TButton;
    btnNovoDependente: TButton;
    gbImposto: TGroupBox;
    edtTotalIR: TLabeledEdit;
    edtTotalINSS: TLabeledEdit;
    btnCalcularImposto: TButton;
    edtFuncionarioSalario: TLabeledEdit;
    btnLimparTudo: TButton;
    procedure btnNovoDependenteClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLimparTudoClick(Sender: TObject);
    procedure btnCalcularImpostoClick(Sender: TObject);
  private
    { Private declarations }
    Funcionario: TFuncionario;
    procedure CampoInvalido(Edit : TLabeledEdit);
    procedure PreencherFuncionario(D: TDependente = nil);
  public
    { Public declarations }

    procedure VerificarCampos;
    procedure Salvar;
  end;

var
  FCadEntidades: TFCadEntidades;

const MSG_INCORRETO = ' incorreto! Digite um valor v�lido';
implementation

{$R *.dfm}

procedure TFCadEntidades.btnCalcularImpostoClick(Sender: TObject);
begin
  edtTotalIR.Text   := formatfloat('####,##0.00', Funcionario.CalculaIR);
  edtTotalINSS.Text := formatfloat('####,##0.00', Funcionario.CalculaINSS);
end;

procedure TFCadEntidades.btnLimparTudoClick(Sender: TObject);
var
  I: Integer;
  d: TDependente;
begin
  for I := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[I] is TLabeledEdit then
        TLabeledEdit(Self.Components[I]).Text := '';
    end;
  for d in Funcionario.ListaDependente do
    begin
      d.Free;
    end;
  Funcionario.ListaDependente.Clear;
end;

procedure TFCadEntidades.btnNovoDependenteClick(Sender: TObject);
var
  calculaIR,
  calculaINSS: String;
begin
  VerificarCampos;

  calculaIR   := IfThen(chkCalcularIR.Checked, 'S', 'N');
  calculaINSS := IfThen(chkCalcularINSS.Checked, 'S', 'N');
  PreencherFuncionario(TDependente.Create(edtFuncionarioCPF.Text,edtDependenteNome.Text,calculaIR, calculaINSS));
  edtDependenteNome.Clear;
  edtDependenteNome.SetFocus;
end;

procedure TFCadEntidades.btnSalvarClick(Sender: TObject);
begin
  inherited;
  VerificarCampos;
  Salvar;
end;

procedure TFCadEntidades.CampoInvalido(Edit: TLabeledEdit);
begin
  ShowMessage(Edit.EditLabel.Caption + MSG_INCORRETO);
  Edit.SetFocus;
  abort;
end;

procedure TFCadEntidades.FormClose(Sender: TObject; var Action: TCloseAction);
var
  d: TDependente;
begin
  Funcionario.Free;
  inherited;

end;

procedure TFCadEntidades.FormShow(Sender: TObject);
begin
  inherited;
  Funcionario := TFuncionario.Create;
  edtFuncionarioCPF.SetFocus;
end;

procedure TFCadEntidades.PreencherFuncionario(D: TDependente);
begin
  Funcionario.CPF := (edtFuncionarioCPF.Text);
  Funcionario.Nome := edtFuncionarioNome.Text;
  Funcionario.Salario := StrToCurr(edtFuncionarioSalario.Text);
  if D <> nil then
    Funcionario.ListaDependente.Add(D);
end;

procedure TFCadEntidades.Salvar;
var
  d: TDependente;
begin
  PreencherFuncionario;
  if Funcionario.Salvar then
    begin
      for d in Funcionario.ListaDependente do
        begin
          d.Salvar;
        end;
    end;
end;

procedure TFCadEntidades.VerificarCampos;
begin
  if Trim(edtFuncionarioCPF.Text)='' then
    CampoInvalido(edtFuncionarioCPF)
  else if Trim(edtFuncionarioNome.Text)='' then
    CampoInvalido(edtFuncionarioNome)
  else if (StrToFloatDef(edtFuncionarioSalario.Text, 0)=0) then
    CampoInvalido(edtFuncionarioSalario)
  else if ((Trim(edtDependenteNome.Text)='') and (Funcionario.ListaDependente.Count=0)) then
    CampoInvalido(edtDependenteNome);

end;

end.
