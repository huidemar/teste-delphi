object FMenuPrincipal: TFMenuPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'MenuPrincipal'
  ClientHeight = 355
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object btCalculadora: TButton
    Left = 190
    Top = 144
    Width = 161
    Height = 66
    Caption = 'Calculadora'
    TabOrder = 0
    OnClick = btCalculadoraClick
  end
  object Button1: TButton
    Left = 395
    Top = 144
    Width = 176
    Height = 66
    Caption = 'Entidades de C'#225'lculo'
    TabOrder = 1
    OnClick = Button1Click
  end
end
