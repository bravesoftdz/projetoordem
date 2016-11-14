object DM: TDM
  OldCreateOrder = False
  Height = 150
  Width = 844
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=DB_OS;Data Source=LUCAS-PC\SQLEXPRESS;U' +
      'se Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;' +
      'Workstation ID=LUCAS-PC;Use Encryption for Data=False;Tag with c' +
      'olumn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 24
  end
  object ADODSCliente: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Clientes'
    Parameters = <>
    Left = 136
    Top = 16
    object ADODSClientenome_razao: TStringField
      FieldName = 'nome_razao'
      Size = 50
    end
    object ADODSClientecpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Size = 18
    end
    object ADODSClienterg_ie: TStringField
      FieldName = 'rg_ie'
      Size = 15
    end
    object ADODSClientedata_nasc: TStringField
      FieldName = 'data_nasc'
      Size = 10
    end
    object ADODSClienteendereco: TStringField
      FieldName = 'endereco'
      Size = 50
    end
    object ADODSClientecep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object ADODSClientecidade: TStringField
      FieldName = 'cidade'
      Size = 50
    end
    object ADODSClienteestado: TStringField
      FieldName = 'estado'
      FixedChar = True
      Size = 2
    end
    object ADODSClientetelefone: TStringField
      FieldName = 'telefone'
      Size = 18
    end
    object ADODSClientecelular: TStringField
      FieldName = 'celular'
      Size = 19
    end
    object ADODSClienteemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object ADODSClientetipo: TStringField
      FieldName = 'tipo'
      Size = 50
    end
    object ADODSClientebairro: TStringField
      FieldName = 'bairro'
      Size = 50
    end
    object ADODSClienteid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object DSCliente: TDataSource
    DataSet = ADODSCliente
    Left = 144
    Top = 80
  end
  object ADODSFuncionario: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Funcionarios'
    Parameters = <>
    Left = 232
    Top = 16
    object ADODSFuncionariocargo: TStringField
      FieldName = 'cargo'
      Size = 50
    end
    object ADODSFuncionarionome_func: TStringField
      FieldName = 'nome_func'
      Size = 50
    end
    object ADODSFuncionariocpf: TStringField
      FieldName = 'cpf'
      Size = 14
    end
    object ADODSFuncionariorg: TStringField
      FieldName = 'rg'
      Size = 15
    end
    object ADODSFuncionariodata_nasc: TStringField
      FieldName = 'data_nasc'
      Size = 10
    end
    object ADODSFuncionarioendereco: TStringField
      FieldName = 'endereco'
      Size = 50
    end
    object ADODSFuncionariocep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object ADODSFuncionariocidade: TStringField
      FieldName = 'cidade'
      Size = 50
    end
    object ADODSFuncionarioestado: TStringField
      FieldName = 'estado'
      FixedChar = True
      Size = 2
    end
    object ADODSFuncionariotelefone: TStringField
      FieldName = 'telefone'
      Size = 18
    end
    object ADODSFuncionariocelular: TStringField
      FieldName = 'celular'
      Size = 19
    end
    object ADODSFuncionarioemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object ADODSFuncionariobairro: TStringField
      FieldName = 'bairro'
      Size = 50
    end
    object ADODSFuncionarioid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object ADODSOrdemServico: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Ordem_Servicos'
    Parameters = <>
    Left = 336
    Top = 16
    object ADODSOrdemServiconumero: TAutoIncField
      FieldName = 'numero'
      ReadOnly = True
    end
    object ADODSOrdemServicoid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object ADODSOrdemServicoid_funcionario: TIntegerField
      FieldName = 'id_funcionario'
    end
    object ADODSOrdemServicodescri_equipamento: TStringField
      FieldName = 'descri_equipamento'
      Size = 250
    end
    object ADODSOrdemServicodata_inicio: TStringField
      FieldName = 'data_inicio'
      Size = 9
    end
    object ADODSOrdemServicodata_termino: TStringField
      FieldName = 'data_termino'
      Size = 9
    end
    object ADODSOrdemServicoobservacoes: TStringField
      FieldName = 'observacoes'
      Size = 250
    end
    object ADODSOrdemServicoserie_equipamento: TStringField
      FieldName = 'serie_equipamento'
      Size = 50
    end
    object ADODSOrdemServicostatus_ordem: TStringField
      FieldName = 'status_ordem'
      Size = 50
    end
    object ADODSOrdemServicovalor_produtos: TFloatField
      FieldName = 'valor_produtos'
    end
    object ADODSOrdemServicovalor_total: TFloatField
      FieldName = 'valor_total'
    end
  end
  object ADODSSolucao: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Solucao'
    Parameters = <>
    Left = 432
    Top = 16
    object ADODSSolucaoid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSSolucaopreco: TFloatField
      FieldName = 'preco'
    end
    object ADODSSolucaoespecificacoes: TStringField
      FieldName = 'especificacoes'
      Size = 250
    end
    object ADODSSolucaomarca: TStringField
      FieldName = 'marca'
      Size = 50
    end
    object ADODSSolucaoquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object ADODSSolucaotipo: TStringField
      FieldName = 'tipo'
      Size = 50
    end
  end
  object DSFuncionario: TDataSource
    DataSet = ADODSFuncionario
    Left = 232
    Top = 80
  end
  object DSOrdemServico: TDataSource
    DataSet = ADODSOrdemServico
    Left = 336
    Top = 80
  end
  object DSSolucao: TDataSource
    DataSet = ADODSSolucao
    Left = 432
    Top = 80
  end
  object ADODSSolucaoXOrdem: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = ADODSSolucaoXOrdemAfterPost
    AfterDelete = ADODSSolucaoXOrdemAfterDelete
    OnNewRecord = ADODSSolucaoXOrdemNewRecord
    CommandText = 'select * from SolucaoXOrdem'#13#10'where num_os = :numero'
    DataSource = DSOrdemServico
    MasterFields = 'numero'
    Parameters = <
      item
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 624
    Top = 16
    object ADODSSolucaoXOrdemid_solucao: TIntegerField
      FieldName = 'id_solucao'
      OnValidate = ADODSSolucaoXOrdemid_produtoValidate
    end
    object ADODSSolucaoXOrdemnum_os: TIntegerField
      FieldName = 'num_os'
    end
    object ADODSSolucaoXOrdemvalor_unit: TFloatField
      FieldName = 'valor_unit'
    end
    object ADODSSolucaoXOrdemquant: TIntegerField
      FieldName = 'quant'
    end
    object ADODSSolucaoXOrdemvalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object ADODSSolucaoXOrdemNomeProduto2: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = FrmManOS.ADOQueryProduto
      LookupKeyFields = 'id'
      LookupResultField = 'especificacoes'
      KeyFields = 'id_solucao'
      Size = 50
      Lookup = True
    end
  end
  object DSSolucaoXOrdem: TDataSource
    DataSet = ADODSSolucaoXOrdem
    Left = 624
    Top = 80
  end
end
