object FrmFiltro: TFrmFiltro
  Left = 0
  Top = 0
  Caption = 'Filtro Ordem de Servi'#231'o'
  ClientHeight = 317
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 72
    Width = 177
    Height = 145
    Caption = 'Ordena'#231#227'o por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'N'#250'mero OS'
      'Data Inicial'
      'Nome Cliente'
      'Cidade Cliente'
      'Nome Funcion'#225'rio')
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 403
    Height = 57
    Align = alTop
    Caption = 'Filtro Ordem de Servi'#231'os'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 447
  end
  object GroupBox1: TGroupBox
    Left = 208
    Top = 72
    Width = 185
    Height = 185
    Caption = 'Filtro:'
    TabOrder = 2
    object LabeledEdit1: TLabeledEdit
      Left = 16
      Top = 48
      Width = 153
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Inicial'
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 16
      Top = 112
      Width = 153
      Height = 21
      EditLabel.Width = 22
      EditLabel.Height = 13
      EditLabel.Caption = 'Final'
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 14
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 110
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 298
    Width = 403
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitLeft = 176
    ExplicitTop = 304
    ExplicitWidth = 0
  end
end
