unit UntDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Vcl.Dialogs;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADODSCliente: TADODataSet;
    DSCliente: TDataSource;
    ADODSFuncionario: TADODataSet;
    ADODSOrdemServico: TADODataSet;
    ADODSProduto: TADODataSet;
    DSFuncionario: TDataSource;
    DSOrdemServico: TDataSource;
    DSProduto: TDataSource;
    ADODSServicos: TADODataSet;
    DSServicos: TDataSource;
    ADODSProdutosXOrdem: TADODataSet;
    ADODSServicosXOrdem: TADODataSet;
    DSProdutosXOrdem: TDataSource;
    DSServicosXOrdem: TDataSource;
    ADODSServicostipo_servico: TStringField;
    ADODSServicospreco: TFloatField;
    ADODSProdutopreco: TFloatField;
    ADODSProdutoespecificacoes: TStringField;
    ADODSProdutomarca: TStringField;
    ADODSProdutoquantidade: TIntegerField;
    ADODSServicosXOrdemid_servico: TIntegerField;
    ADODSServicosXOrdemnum_os: TIntegerField;
    ADODSFuncionariocargo: TStringField;
    ADODSFuncionarionome_func: TStringField;
    ADODSFuncionariocpf: TStringField;
    ADODSFuncionariorg: TStringField;
    ADODSFuncionariodata_nasc: TStringField;
    ADODSFuncionarioendereco: TStringField;
    ADODSFuncionariocep: TStringField;
    ADODSFuncionariocidade: TStringField;
    ADODSFuncionarioestado: TStringField;
    ADODSFuncionariotelefone: TStringField;
    ADODSFuncionariocelular: TStringField;
    ADODSFuncionarioemail: TStringField;
    ADODSClientenome_razao: TStringField;
    ADODSClientecpf_cnpj: TStringField;
    ADODSClienterg_ie: TStringField;
    ADODSClientedata_nasc: TStringField;
    ADODSClienteendereco: TStringField;
    ADODSClientecep: TStringField;
    ADODSClientecidade: TStringField;
    ADODSClienteestado: TStringField;
    ADODSClientetelefone: TStringField;
    ADODSClientecelular: TStringField;
    ADODSClienteemail: TStringField;
    ADODSClientetipo: TStringField;
    ADODSClientebairro: TStringField;
    ADODSFuncionariobairro: TStringField;
    ADODSProdutosXOrdemid_produto: TIntegerField;
    ADODSProdutosXOrdemvalor_unit: TFloatField;
    ADODSProdutosXOrdemquant: TIntegerField;
    ADODSProdutosXOrdemvalor_total: TFloatField;
    ADODSClienteid: TAutoIncField;
    ADODSFuncionarioid: TAutoIncField;
    ADODSProdutoid: TAutoIncField;
    ADODSServicosid: TAutoIncField;
    ADODSProdutosXOrdemNomeProduto2: TStringField;
    ADODSProdutosXOrdemnum_os: TIntegerField;
    ADODSOrdemServiconumero: TAutoIncField;
    ADODSOrdemServicoid_cliente: TIntegerField;
    ADODSOrdemServicoid_funcionario: TIntegerField;
    ADODSOrdemServicodescri_equipamento: TStringField;
    ADODSOrdemServicodata_inicio: TStringField;
    ADODSOrdemServicodata_termino: TStringField;
    ADODSOrdemServicoobservacoes: TStringField;
    ADODSOrdemServicoserie_equipamento: TStringField;
    ADODSOrdemServicostatus_ordem: TStringField;
    ADODSOrdemServicovalor_produtos: TFloatField;
    ADODSOrdemServicovalor_total: TFloatField;
    procedure ADODSProdutosXOrdemid_produtoValidate(Sender: TField);
    procedure ADODSProdutosXOrdemAfterPost(DataSet: TDataSet);
    procedure ADODSProdutosXOrdemAfterDelete(DataSet: TDataSet);
    procedure ADODSProdutosXOrdemNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UntManOS;

{$R *.dfm}

procedure TDM.ADODSProdutosXOrdemAfterDelete(DataSet: TDataSet);
var
  bmk: TBookmark;
  valTot: double;
begin
with ADODSProdutosXOrdem do
  begin
    bmk := GetBookmark;
    DisableControls;
    try
      valTot:= 0.0;
      First;
      while not EOF do
      begin
        valTot:= valTot + ADODSProdutosXOrdemvalor_total.AsFloat;
        Next;
      end;
    finally
    EnableControls;
    if bmk <> nil then
    begin
      GotoBookmark(bmk);
      FreeBookmark(bmk);
    end;
    end;
    if not (ADODSOrdemServico.State in [dsInsert, dsEdit]) then
    ADODSOrdemServico.Edit;

    ADODSOrdemServicovalor_produtos.AsFloat:= valTot;
    ADODSOrdemServicovalor_total.AsFloat := valTot;

  end;
end;

procedure TDM.ADODSProdutosXOrdemAfterPost(DataSet: TDataSet);
var
  bmk: TBookmark;
  valTot: double;
begin
with ADODSProdutosXOrdem do
  begin
    bmk := GetBookmark;
    DisableControls;
    try
      valTot:= 0.0;
      First;
      while not EOF do
      begin
        valTot:= valTot + ADODSProdutosXOrdemvalor_total.AsFloat;
        Next;
      end;
    finally
    EnableControls;
    if bmk <> nil then
    begin
      GotoBookmark(bmk);
      FreeBookmark(bmk);
    end;
    end;
    if not (ADODSOrdemServico.State in [dsInsert, dsEdit]) then
    ADODSOrdemServico.Edit;

    ADODSOrdemServicovalor_produtos.AsFloat:= valTot;
    ADODSOrdemServicovalor_total.AsFloat := valTot;

  end;
end;

procedure TDM.ADODSProdutosXOrdemid_produtoValidate(Sender: TField);
begin
  if not FrmManOS.ADOQueryProduto.Locate('id', ADODSProdutosXOrdemid_produto.AsString, []) then
    begin
      MessageDlg('Produto não encontrado.',mtError,[mbOK], 0);
      Abort;
    end
    else
    begin
      ADODSProdutosXOrdemvalor_unit.AsFloat := FrmManOS.ADOQueryProdutopreco.AsFloat;
      ADODSProdutosXOrdemquant.AsInteger := 1;
      ADODSProdutosXOrdemvalor_total.AsFloat := FrmManOS.ADOQueryProdutopreco.AsFloat;
      FrmManOS.DBEdit5.SetFocus;
    end;

end;

procedure TDM.ADODSProdutosXOrdemNewRecord(DataSet: TDataSet);
begin
  ADODSProdutosXOrdemnum_os.AsInteger := ADODSOrdemServiconumero.AsInteger;
end;

end.
