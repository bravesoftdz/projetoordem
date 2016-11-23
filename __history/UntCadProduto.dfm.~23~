object FrmCadProduto: TFrmCadProduto
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o no Cadastro de Produtos'
  ClientHeight = 481
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
      Left = 38
      Top = 12
      Width = 309
      Height = 16
      Caption = 'Manuten'#231#227'o no Cadastro de Produtos/Servi'#231'os'
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
    Top = 462
    Width = 383
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 498
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 90
    Width = 383
    Height = 372
    ActivePage = Produtos
    Align = alClient
    TabOrder = 2
    ExplicitHeight = 408
    object Produtos: TTabSheet
      Caption = 'Produtos'
      ExplicitHeight = 380
      object pnlFicha: TPanel
        Left = 0
        Top = 0
        Width = 375
        Height = 344
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 380
        object Label2: TLabel
          Left = 144
          Top = 73
          Width = 27
          Height = 13
          Caption = 'Pre'#231'o'
        end
        object Label3: TLabel
          Left = 144
          Top = 14
          Width = 29
          Height = 13
          Caption = 'Marca'
        end
        object Label4: TLabel
          Left = 8
          Top = 123
          Width = 69
          Height = 13
          Caption = 'Especifica'#231#245'es'
        end
        object Quantidade: TLabel
          Left = 8
          Top = 72
          Width = 56
          Height = 13
          Caption = 'Quantidade'
        end
        object DBText1: TDBText
          Left = 8
          Top = 37
          Width = 65
          Height = 17
          DataField = 'id'
          DataSource = DM.DSSolucao
        end
        object Label9: TLabel
          Left = 8
          Top = 18
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object DBEdit1: TDBEdit
          Left = 144
          Top = 91
          Width = 96
          Height = 21
          DataField = 'preco'
          DataSource = DM.DSSolucao
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 144
          Top = 34
          Width = 96
          Height = 21
          DataField = 'marca'
          DataSource = DM.DSSolucao
          TabOrder = 0
        end
        object DBMemo1: TDBMemo
          Left = 8
          Top = 142
          Width = 232
          Height = 179
          DataField = 'especificacoes'
          DataSource = DM.DSSolucao
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 8
          Top = 91
          Width = 96
          Height = 21
          DataField = 'quantidade'
          DataSource = DM.DSSolucao
          TabOrder = 1
        end
      end
    end
    object Serviços: TTabSheet
      Caption = 'Servi'#231'os'
      ImageIndex = 1
      ExplicitHeight = 380
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 375
        Height = 344
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 380
        object Label5: TLabel
          Left = 15
          Top = 112
          Width = 50
          Height = 13
          Caption = 'Pre'#231'o - R$'
        end
        object Label6: TLabel
          Left = 48
          Top = 30
          Width = 3
          Height = 13
        end
        object Label7: TLabel
          Left = 15
          Top = 56
          Width = 69
          Height = 13
          Caption = 'Especifica'#231#245'es'
        end
        object Label8: TLabel
          Left = 239
          Top = 56
          Width = 56
          Height = 13
          Caption = 'Quantidade'
        end
        object DBText2: TDBText
          Left = 15
          Top = 30
          Width = 65
          Height = 17
          DataField = 'id'
          DataSource = DM.DSSolucao
        end
        object Label10: TLabel
          Left = 15
          Top = 11
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object DBEdit4: TDBEdit
          Left = 15
          Top = 131
          Width = 96
          Height = 21
          DataField = 'preco'
          DataSource = DM.DSSolucao
          TabOrder = 2
        end
        object DBMemo2: TDBMemo
          Left = 15
          Top = 75
          Width = 202
          Height = 21
          DataField = 'especificacoes'
          DataSource = DM.DSSolucao
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 239
          Top = 75
          Width = 96
          Height = 21
          DataField = 'quantidade'
          DataSource = DM.DSSolucao
          TabOrder = 1
        end
      end
    end
  end
end
