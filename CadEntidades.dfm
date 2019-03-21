inherited FCadEntidades: TFCadEntidades
  Caption = 'FCadEntidades'
  ClientHeight = 474
  ClientWidth = 969
  OnClose = FormClose
  OnShow = FormShow
  ExplicitTop = -4
  ExplicitWidth = 985
  ExplicitHeight = 512
  PixelsPerInch = 96
  TextHeight = 18
  inherited pnTitulo: TPanel
    Width = 969
    Caption = 'Cadastro de Entidades'
  end
  inherited pnMeio: TPanel
    Width = 969
    Height = 433
    ExplicitWidth = 879
    ExplicitHeight = 185
    object ToolBar1: TToolBar
      Left = 1
      Top = 381
      Width = 967
      Height = 51
      CustomHint = BalloonHint1
      Align = alBottom
      ButtonHeight = 48
      Caption = 'ToolBar1'
      TabOrder = 3
      ExplicitTop = 286
      object btnSalvar: TButton
        Left = 0
        Top = 0
        Width = 75
        Height = 48
        CustomHint = BalloonHint1
        Caption = 'Salvar'
        TabOrder = 0
        OnClick = btnSalvarClick
      end
      object btnCalcularImposto: TButton
        Left = 75
        Top = 0
        Width = 151
        Height = 48
        CustomHint = BalloonHint1
        Caption = 'Calcular Imposto'
        TabOrder = 1
        OnClick = btnCalcularImpostoClick
      end
      object btnLimparTudo: TButton
        Left = 226
        Top = 0
        Width = 125
        Height = 48
        CustomHint = BalloonHint1
        Caption = 'Limpar Tudo'
        TabOrder = 2
        OnClick = btnLimparTudoClick
      end
    end
    object gbDependentes: TGroupBox
      Left = 1
      Top = 130
      Width = 967
      Height = 150
      CustomHint = BalloonHint1
      Align = alTop
      Caption = '[ Dependentes ]'
      TabOrder = 1
      ExplicitWidth = 961
      object edtDependenteNome: TLabeledEdit
        Left = 210
        Top = 30
        Width = 500
        Height = 26
        Hint = 'Nome do Dependente'
        CustomHint = BalloonHint1
        EditLabel.Width = 154
        EditLabel.Height = 18
        EditLabel.CustomHint = BalloonHint1
        EditLabel.Caption = 'Nome do Dependente'
        LabelPosition = lpLeft
        MaxLength = 60
        TabOrder = 0
        TextHint = 'Digite o nome'
      end
      object chkCalcularIR: TCheckBox
        Left = 129
        Top = 67
        Width = 97
        Height = 17
        Hint = 'Calcular IR'
        CustomHint = BalloonHint1
        BiDiMode = bdRightToLeft
        Caption = 'Calcular IR'
        ParentBiDiMode = False
        TabOrder = 1
      end
      object chkCalcularINSS: TCheckBox
        Left = 110
        Top = 90
        Width = 116
        Height = 17
        Hint = 'Calcular INSS'
        CustomHint = BalloonHint1
        BiDiMode = bdRightToLeft
        Caption = 'Calcular INSS'
        ParentBiDiMode = False
        TabOrder = 2
      end
      object btnNovoDependente: TButton
        Left = 210
        Top = 119
        Width = 51
        Height = 25
        Hint = 'Novo Dependente'
        CustomHint = BalloonHint1
        Caption = '+'
        TabOrder = 3
        OnClick = btnNovoDependenteClick
      end
    end
    object gbFuncionario: TGroupBox
      Left = 1
      Top = 1
      Width = 967
      Height = 129
      CustomHint = BalloonHint1
      Align = alTop
      Caption = '[ Funcion'#225'rio ]'
      TabOrder = 0
      ExplicitWidth = 961
      object edtFuncionarioNome: TLabeledEdit
        Left = 210
        Top = 55
        Width = 500
        Height = 26
        Hint = 'Nome do Funcion'#225'rio'
        CustomHint = BalloonHint1
        EditLabel.Width = 150
        EditLabel.Height = 18
        EditLabel.CustomHint = BalloonHint1
        EditLabel.Caption = 'Nome do Funcion'#225'rio'
        LabelPosition = lpLeft
        MaxLength = 60
        TabOrder = 1
        TextHint = 'Digite o nome'
      end
      object edtFuncionarioCPF: TLabeledEdit
        Left = 210
        Top = 23
        Width = 181
        Height = 26
        Hint = 'Digite o CPF (Apenas N'#250'meros)'
        CustomHint = BalloonHint1
        EditLabel.Width = 33
        EditLabel.Height = 18
        EditLabel.CustomHint = BalloonHint1
        EditLabel.Caption = 'CPF'
        LabelPosition = lpLeft
        MaxLength = 11
        NumbersOnly = True
        TabOrder = 0
        TextHint = 'Digite apenas n'#250'meros'
      end
      object edtFuncionarioSalario: TLabeledEdit
        Left = 210
        Top = 87
        Width = 181
        Height = 26
        CustomHint = BalloonHint1
        EditLabel.Width = 50
        EditLabel.Height = 18
        EditLabel.CustomHint = BalloonHint1
        EditLabel.Caption = 'Sal'#225'rio'
        LabelPosition = lpLeft
        TabOrder = 2
      end
    end
    object gbImposto: TGroupBox
      Left = 1
      Top = 280
      Width = 967
      Height = 86
      CustomHint = BalloonHint1
      Align = alTop
      Caption = '[ Imposto ]'
      TabOrder = 2
      TabStop = True
      ExplicitLeft = 0
      ExplicitTop = 289
      object edtTotalIR: TLabeledEdit
        Left = 210
        Top = 20
        Width = 121
        Height = 27
        CustomHint = BalloonHint1
        TabStop = False
        EditLabel.Width = 50
        EditLabel.Height = 18
        EditLabel.CustomHint = BalloonHint1
        EditLabel.Caption = 'Total IR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        LabelPosition = lpLeft
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtTotalINSS: TLabeledEdit
        Left = 210
        Top = 53
        Width = 121
        Height = 27
        CustomHint = BalloonHint1
        TabStop = False
        EditLabel.Width = 72
        EditLabel.Height = 18
        EditLabel.CustomHint = BalloonHint1
        EditLabel.Caption = 'Total INSS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        LabelPosition = lpLeft
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
end
