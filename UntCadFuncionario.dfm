object FrmCadFuncionario: TFrmCadFuncionario
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o no Cadastro de Funcion'#225'rios'
  ClientHeight = 630
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 41
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 47
      Top = 8
      Width = 394
      Height = 23
      Caption = 'Manuten'#231#227'o no Cadastro de Funcion'#225'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlFicha: TPanel
    Left = 0
    Top = 90
    Width = 476
    Height = 521
    Align = alClient
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 2
      Top = 6
      Width = 464
      Height = 187
      Caption = 'Dados Pessoais:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 118
        Top = 84
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object Label4: TLabel
        Left = 123
        Top = 111
        Width = 14
        Height = 13
        Caption = 'RG'
      end
      object Label6: TLabel
        Left = 108
        Top = 57
        Width = 29
        Height = 13
        Caption = 'Cargo'
      end
      object Label7: TLabel
        Left = 38
        Top = 138
        Width = 99
        Height = 13
        Caption = ' Data de Nascimento'
      end
      object Label13: TLabel
        Left = 113
        Top = 164
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object Label2: TLabel
        Left = 110
        Top = 30
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object DBEdit1: TDBEdit
        Left = 143
        Top = 54
        Width = 171
        Height = 21
        DataField = 'cargo'
        DataSource = DM.DSFuncionario
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 143
        Top = 27
        Width = 258
        Height = 21
        DataField = 'nome_func'
        DataSource = DM.DSFuncionario
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 143
        Top = 81
        Width = 171
        Height = 21
        DataField = 'cpf'
        DataSource = DM.DSFuncionario
        TabOrder = 2
        OnExit = DBEdit3Exit
      end
      object DBEdit4: TDBEdit
        Left = 143
        Top = 108
        Width = 171
        Height = 21
        DataField = 'rg'
        DataSource = DM.DSFuncionario
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 143
        Top = 135
        Width = 107
        Height = 21
        DataField = 'data_nasc'
        DataSource = DM.DSFuncionario
        TabOrder = 4
        OnExit = DBEdit5Exit
      end
      object DBEdit12: TDBEdit
        Left = 143
        Top = 162
        Width = 264
        Height = 21
        DataField = 'email'
        DataSource = DM.DSFuncionario
        TabOrder = 5
      end
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 190
      Width = 464
      Height = 184
      Caption = 'Endere'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label10: TLabel
        Left = 99
        Top = 118
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label11: TLabel
        Left = 101
        Top = 144
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object Label14: TLabel
        Left = 103
        Top = 89
        Width = 28
        Height = 13
        Caption = 'Bairro'
      end
      object Label8: TLabel
        Left = 85
        Top = 62
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label9: TLabel
        Left = 117
        Top = 37
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object DBComboBox1: TDBComboBox
        Left = 143
        Top = 140
        Width = 56
        Height = 21
        DataField = 'estado'
        DataSource = DM.DSFuncionario
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 143
        Top = 59
        Width = 258
        Height = 21
        DataField = 'endereco'
        DataSource = DM.DSFuncionario
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 143
        Top = 32
        Width = 127
        Height = 21
        DataField = 'cep'
        DataSource = DM.DSFuncionario
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 143
        Top = 113
        Width = 258
        Height = 21
        DataField = 'cidade'
        DataSource = DM.DSFuncionario
        TabOrder = 3
      end
      object DBEdit9: TDBEdit
        Left = 143
        Top = 86
        Width = 121
        Height = 21
        DataField = 'bairro'
        DataSource = DM.DSFuncionario
        TabOrder = 2
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 366
      Width = 466
      Height = 147
      Caption = 'Contato:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label12: TLabel
        Left = 90
        Top = 49
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label5: TLabel
        Left = 100
        Top = 76
        Width = 33
        Height = 13
        Caption = 'Celular'
      end
      object DBEdit10: TDBEdit
        Left = 145
        Top = 46
        Width = 133
        Height = 21
        DataField = 'telefone'
        DataSource = DM.DSFuncionario
        TabOrder = 0
      end
      object DBEdit11: TDBEdit
        Left = 145
        Top = 73
        Width = 133
        Height = 21
        DataField = 'celular'
        DataSource = DM.DSFuncionario
        TabOrder = 1
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 611
    Width = 476
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 41
    Width = 476
    Height = 49
    BorderWidth = 1
    ButtonHeight = 40
    ButtonWidth = 43
    Caption = 'ToolBar1'
    DisabledImages = FrmManFuncionario.ImageList2
    EdgeBorders = [ebTop, ebBottom]
    HotImages = FrmManFuncionario.ImageList3
    Images = FrmManFuncionario.ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object btn_salvar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Salvar Registro'
      Caption = 'btn_salvar'
      ImageIndex = 3
      OnClick = btn_salvarClick
    end
    object btn_cancelar: TToolButton
      Left = 43
      Top = 0
      Hint = 'Cancelar Registro'
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
      Hint = 'Sair'
      Caption = 'btn_sair'
      ImageIndex = 6
      OnClick = btn_sairClick
    end
  end
end
