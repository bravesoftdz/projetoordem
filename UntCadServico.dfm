object FrmCadServico: TFrmCadServico
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o no Cadastro de Servi'#231'os'
  ClientHeight = 301
  ClientWidth = 383
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
    Width = 383
    Height = 41
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 70
      Top = 12
      Width = 242
      Height = 16
      Caption = 'Manuten'#231#227'o no Cadastro de Servi'#231'os'
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
    Width = 383
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
    Top = 282
    Width = 383
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object pnlFicha: TPanel
    Left = 0
    Top = 90
    Width = 383
    Height = 192
    Align = alClient
    TabOrder = 3
    object Label5: TLabel
      Left = 12
      Top = 67
      Width = 50
      Height = 13
      Caption = 'Pre'#231'o - R$'
    end
    object Label6: TLabel
      Left = 41
      Top = 46
      Width = 3
      Height = 13
    end
    object Label7: TLabel
      Left = 12
      Top = 15
      Width = 69
      Height = 13
      Caption = 'Especifica'#231#245'es'
    end
    object Label8: TLabel
      Left = 246
      Top = 15
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object DBEdit4: TDBEdit
      Left = 12
      Top = 86
      Width = 96
      Height = 21
      DataField = 'preco'
      DataSource = DM.DSSolucao
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 246
      Top = 34
      Width = 96
      Height = 21
      DataField = 'quantidade'
      DataSource = DM.DSSolucao
      TabOrder = 1
    end
    object DBMemo2: TDBMemo
      Left = 12
      Top = 34
      Width = 202
      Height = 21
      DataField = 'especificacoes'
      DataSource = DM.DSSolucao
      TabOrder = 0
    end
  end
end
