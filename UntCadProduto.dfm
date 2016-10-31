object FrmCadProduto: TFrmCadProduto
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o no Cadastro de Produtos'
  ClientHeight = 317
  ClientWidth = 448
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
    Width = 448
    Height = 41
    Align = alTop
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 106
      Top = 12
      Width = 276
      Height = 18
      Caption = 'Manuten'#231#227'o no Cadastro de Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 41
    Width = 448
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
    Top = 298
    Width = 448
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object pnlFicha: TPanel
    Left = 0
    Top = 90
    Width = 448
    Height = 208
    Align = alClient
    TabOrder = 3
    object Label2: TLabel
      Left = 49
      Top = 49
      Width = 27
      Height = 13
      Caption = 'Pre'#231'o'
    end
    object Label3: TLabel
      Left = 48
      Top = 22
      Width = 29
      Height = 13
      Caption = 'Marca'
    end
    object Label4: TLabel
      Left = 51
      Top = 150
      Width = 69
      Height = 13
      Caption = 'Especifica'#231#245'es'
    end
    object Quantidade: TLabel
      Left = 21
      Top = 74
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object DBEdit1: TDBEdit
      Left = 81
      Top = 45
      Width = 96
      Height = 21
      DataField = 'preco'
      DataSource = DM.DSProduto
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 81
      Top = 17
      Width = 96
      Height = 21
      DataField = 'marca'
      DataSource = DM.DSProduto
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 126
      Top = 99
      Width = 315
      Height = 94
      DataField = 'especificacoes'
      DataSource = DM.DSProduto
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 81
      Top = 72
      Width = 96
      Height = 21
      DataField = 'quantidade'
      DataSource = DM.DSProduto
      TabOrder = 2
    end
  end
end
