object FrmCadServico: TFrmCadServico
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o no Cadastro de Servi'#231'os'
  ClientHeight = 170
  ClientWidth = 457
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 41
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 96
      Top = 10
      Width = 274
      Height = 18
      Caption = 'Manuten'#231#227'o no Cadastro de Servi'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 41
    Width = 457
    Height = 49
    BorderWidth = 1
    ButtonHeight = 40
    ButtonWidth = 43
    Caption = 'ToolBar1'
    DisabledImages = FrmManServico.ImageList2
    EdgeBorders = [ebTop, ebBottom]
    HotImages = FrmManServico.ImageList3
    Images = FrmManServico.ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object btn_salvar: TToolButton
      Left = 0
      Top = 0
      Caption = 'btn_salvar'
      ImageIndex = 3
      OnClick = btn_salvarClick
    end
    object btn_cancelar: TToolButton
      Left = 43
      Top = 0
      Caption = 'btn_cancelar'
      ImageIndex = 4
      OnClick = btn_cancelarClick
    end
    object ToolButton3: TToolButton
      Left = 86
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object btn_sair: TToolButton
      Left = 94
      Top = 0
      Caption = 'btn_sair'
      ImageIndex = 5
      OnClick = btn_sairClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 151
    Width = 457
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 180
  end
  object pnlFicha: TPanel
    Left = 0
    Top = 90
    Width = 457
    Height = 61
    Align = alClient
    TabOrder = 3
    ExplicitHeight = 90
    object Label2: TLabel
      Left = 14
      Top = 16
      Width = 73
      Height = 13
      Caption = 'Tipo do Servi'#231'o'
    end
    object Preço: TLabel
      Left = 284
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Pre'#231'o'
    end
    object DBEdit1: TDBEdit
      Left = 93
      Top = 13
      Width = 175
      Height = 21
      DataField = 'tipo_servico'
      DataSource = DM.DSServicos
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 321
      Top = 13
      Width = 121
      Height = 21
      DataField = 'preco'
      DataSource = DM.DSServicos
      TabOrder = 1
    end
  end
end
