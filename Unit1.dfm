object FrmCalculadora: TFrmCalculadora
  Left = 0
  Top = 0
  Caption = 'CALCULADORA'
  ClientHeight = 314
  ClientWidth = 342
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edResultado: TEdit
    Left = 8
    Top = 8
    Width = 320
    Height = 21
    Alignment = taRightJustify
    TabOrder = 0
  end
  object bt7: TButton
    Left = 21
    Top = 89
    Width = 75
    Height = 25
    Caption = '7'
    TabOrder = 1
    OnClick = NumeroClick
  end
  object bt8: TButton
    Left = 102
    Top = 89
    Width = 75
    Height = 25
    Caption = '8'
    TabOrder = 2
    OnClick = NumeroClick
  end
  object bt9: TButton
    Left = 183
    Top = 89
    Width = 75
    Height = 25
    Caption = '9'
    TabOrder = 3
    OnClick = NumeroClick
  end
  object btSoma: TButton
    Left = 272
    Top = 89
    Width = 46
    Height = 25
    Caption = '+'
    TabOrder = 4
    OnClick = btSomaClick
  end
  object bt5: TButton
    Left = 102
    Top = 138
    Width = 75
    Height = 25
    Caption = '5'
    TabOrder = 5
    OnClick = NumeroClick
  end
  object bt4: TButton
    Left = 21
    Top = 138
    Width = 75
    Height = 25
    Caption = '4'
    TabOrder = 6
    OnClick = NumeroClick
  end
  object bt6: TButton
    Left = 183
    Top = 138
    Width = 75
    Height = 25
    Caption = '6'
    TabOrder = 7
    OnClick = NumeroClick
  end
  object btSubtrair: TButton
    Left = 272
    Top = 138
    Width = 46
    Height = 25
    Caption = '-'
    TabOrder = 8
    OnClick = btSubtrairClick
  end
  object bt2: TButton
    Left = 102
    Top = 193
    Width = 75
    Height = 25
    Caption = '2'
    TabOrder = 9
    OnClick = NumeroClick
  end
  object bt1: TButton
    Left = 21
    Top = 193
    Width = 75
    Height = 25
    Caption = '1'
    TabOrder = 10
    OnClick = NumeroClick
  end
  object bt3: TButton
    Left = 183
    Top = 193
    Width = 75
    Height = 25
    Caption = '3'
    TabOrder = 11
    OnClick = NumeroClick
  end
  object btMultiplicar: TButton
    Left = 272
    Top = 193
    Width = 46
    Height = 25
    Caption = 'x'
    TabOrder = 12
    OnClick = btMultiplicarClick
  end
  object bt0: TButton
    Left = 102
    Top = 248
    Width = 75
    Height = 25
    Caption = '0'
    TabOrder = 13
    OnClick = NumeroClick
  end
  object btLimpar: TButton
    Left = 21
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 14
    OnClick = btLimparClick
  end
  object btIgual: TButton
    Left = 183
    Top = 248
    Width = 75
    Height = 25
    Caption = '='
    TabOrder = 15
    OnClick = btIgualClick
  end
  object btDividir: TButton
    Left = 272
    Top = 248
    Width = 46
    Height = 25
    Caption = '/'
    TabOrder = 16
    OnClick = btDividirClick
  end
end
