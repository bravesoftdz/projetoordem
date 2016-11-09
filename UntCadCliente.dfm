object FrmCadCliente: TFrmCadCliente
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o no Cadastro de Cliente'
  ClientHeight = 612
  ClientWidth = 589
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
    Width = 589
    Height = 41
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -6
    object Label1: TLabel
      Left = 129
      Top = 9
      Width = 339
      Height = 23
      Caption = 'Manuten'#231#227'o no Cadastro de Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 41
    Width = 589
    Height = 49
    BorderWidth = 1
    ButtonHeight = 40
    ButtonWidth = 43
    Caption = 'ToolBar1'
    DisabledImages = FrmManCliente.ImageList2
    EdgeBorders = [ebTop, ebBottom]
    HotImages = FrmManCliente.ImageList3
    Images = FrmManCliente.ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 591
    object btn_salvar: TToolButton
      Left = 0
      Top = 0
      Caption = 'btn_salvar'
      ImageIndex = 3
      OnClick = btn_salvarClick
    end
    object btn_Cancelar: TToolButton
      Left = 43
      Top = 0
      Caption = 'btn_Cancelar'
      ImageIndex = 4
      OnClick = btn_CancelarClick
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
    Top = 593
    Width = 589
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 347
    ExplicitWidth = 591
  end
  object PnlFicha: TPanel
    Left = 0
    Top = 90
    Width = 589
    Height = 503
    Align = alClient
    TabOrder = 3
    ExplicitTop = 84
    ExplicitWidth = 600
    ExplicitHeight = 512
    object GroupBox1: TGroupBox
      Left = 2
      Top = 15
      Width = 575
      Height = 185
      Caption = 'Dados Pessoais:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label5: TLabel
        Left = 83
        Top = 57
        Width = 32
        Height = 13
        Caption = 'Nome'
      end
      object Label3: TLabel
        Left = 101
        Top = 85
        Width = 20
        Height = 13
        Caption = 'CPF'
      end
      object Label4: TLabel
        Left = 373
        Top = 85
        Width = 16
        Height = 13
        Caption = 'RG'
      end
      object Label14: TLabel
        Left = 8
        Top = 111
        Width = 113
        Height = 13
        Caption = 'Data de Nascimento'
      end
      object Label13: TLabel
        Left = 86
        Top = 138
        Width = 35
        Height = 13
        Caption = 'E-mail'
      end
      object Label2: TLabel
        Left = 69
        Top = 30
        Width = 52
        Height = 13
        Caption = 'Tipo[F/J]'
      end
      object DBEdit3: TDBEdit
        Left = 131
        Top = 54
        Width = 436
        Height = 21
        DataField = 'nome_razao'
        DataSource = DM.DSCliente
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 131
        Top = 82
        Width = 223
        Height = 21
        DataField = 'cpf_cnpj'
        DataSource = DM.DSCliente
        TabOrder = 2
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 394
        Top = 82
        Width = 173
        Height = 21
        DataField = 'rg_ie'
        DataSource = DM.DSCliente
        TabOrder = 3
      end
      object DBEdit10: TDBEdit
        Left = 131
        Top = 135
        Width = 436
        Height = 21
        DataField = 'email'
        DataSource = DM.DSCliente
        TabOrder = 5
      end
      object DBComboBox1: TDBComboBox
        Left = 131
        Top = 27
        Width = 84
        Height = 21
        Style = csDropDownList
        DataField = 'tipo'
        DataSource = DM.DSCliente
        Items.Strings = (
          'F'#237'sica'
          'Jur'#237'dica')
        TabOrder = 0
        OnExit = DBComboBox1Exit
      end
      object DBEdit11: TDBEdit
        Left = 131
        Top = 108
        Width = 223
        Height = 21
        DataField = 'data_nasc'
        DataSource = DM.DSCliente
        TabOrder = 4
        OnExit = DBEdit11Exit
      end
    end
    object gb_ed: TGroupBox
      Left = 0
      Top = 192
      Width = 577
      Height = 190
      Caption = 'Endere'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label10: TLabel
        Left = 103
        Top = 30
        Width = 20
        Height = 13
        Caption = 'CEP'
      end
      object Label6: TLabel
        Left = 71
        Top = 56
        Width = 52
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label7: TLabel
        Left = 85
        Top = 113
        Width = 38
        Height = 13
        Caption = 'Cidade'
      end
      object Label9: TLabel
        Left = 85
        Top = 144
        Width = 38
        Height = 13
        Caption = 'Estado'
      end
      object Label8: TLabel
        Left = 89
        Top = 84
        Width = 34
        Height = 13
        Caption = 'Bairro'
      end
      object DBComboBox2: TDBComboBox
        Left = 133
        Top = 141
        Width = 65
        Height = 21
        DataField = 'estado'
        DataSource = DM.DSCliente
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
      object DBEdit4: TDBEdit
        Left = 133
        Top = 53
        Width = 436
        Height = 21
        DataField = 'endereco'
        DataSource = DM.DSCliente
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 133
        Top = 110
        Width = 148
        Height = 21
        DataField = 'cidade'
        DataSource = DM.DSCliente
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 133
        Top = 80
        Width = 148
        Height = 21
        DataField = 'bairro'
        DataSource = DM.DSCliente
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 133
        Top = 26
        Width = 121
        Height = 21
        DataField = 'cep'
        DataSource = DM.DSCliente
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 376
      Width = 577
      Height = 105
      Caption = 'Contato:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label11: TLabel
        Left = 74
        Top = 26
        Width = 49
        Height = 13
        Caption = 'Telefone'
      end
      object Label12: TLabel
        Left = 84
        Top = 60
        Width = 39
        Height = 13
        Caption = 'Celular'
      end
      object DBEdit8: TDBEdit
        Left = 133
        Top = 23
        Width = 148
        Height = 21
        DataField = 'telefone'
        DataSource = DM.DSCliente
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 133
        Top = 55
        Width = 148
        Height = 21
        DataField = 'celular'
        DataSource = DM.DSCliente
        TabOrder = 1
      end
    end
  end
end
