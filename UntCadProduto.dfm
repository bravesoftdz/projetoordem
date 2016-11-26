object FrmCadProduto: TFrmCadProduto
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o no Cadastro de Produtos'
  ClientHeight = 460
  ClientWidth = 340
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
    Width = 340
    Height = 41
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 45
      Top = 12
      Width = 246
      Height = 16
      Caption = 'Manuten'#231#227'o no Cadastro de Produtos'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 41
    Width = 340
    Height = 49
    BorderWidth = 1
    ButtonHeight = 40
    ButtonWidth = 43
    Caption = 'ToolBar1'
    DisabledImages = FrmManProduto.ImageList2
    EdgeBorders = [ebTop, ebBottom]
    HotImages = FrmManProduto.ImageList3
    Images = FrmManProduto.ImageList1
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
    Top = 441
    Width = 340
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object pnlFicha: TPanel
    Left = 0
    Top = 90
    Width = 340
    Height = 351
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label2: TLabel
      Left = 190
      Top = 73
      Width = 27
      Height = 13
      Caption = 'Pre'#231'o'
    end
    object Label3: TLabel
      Left = 54
      Top = 14
      Width = 29
      Height = 13
      Caption = 'Marca'
    end
    object Label4: TLabel
      Left = 54
      Top = 123
      Width = 69
      Height = 13
      Caption = 'Especifica'#231#245'es'
    end
    object Quantidade: TLabel
      Left = 54
      Top = 72
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object DBEdit1: TDBEdit
      Left = 190
      Top = 91
      Width = 96
      Height = 21
      DataField = 'preco'
      DataSource = DM.DSSolucao
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 54
      Top = 34
      Width = 96
      Height = 21
      DataField = 'marca'
      DataSource = DM.DSSolucao
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 54
      Top = 142
      Width = 232
      Height = 179
      DataField = 'especificacoes'
      DataSource = DM.DSSolucao
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 54
      Top = 91
      Width = 96
      Height = 21
      DataField = 'quantidade'
      DataSource = DM.DSSolucao
      TabOrder = 1
    end
  end
end
