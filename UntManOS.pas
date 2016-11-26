unit UntManOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ToolWin, Vcl.ComCtrls, DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask, Data.Win.ADODB, frxClass,
  frxDBSet;

type
  TFrmManOS = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    Panel1: TPanel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    btn_Filtrar: TToolButton;
    btn_Primeiro: TToolButton;
    btn_Anterior: TToolButton;
    ToolButton4: TToolButton;
    pnlFicha: TPanel;
    StatusBar1: TStatusBar;
    btn_Proximo: TToolButton;
    btn_Ultimo: TToolButton;
    ToolButton3: TToolButton;
    btn_Inserir: TToolButton;
    btn_Alterar: TToolButton;
    btn_Excluir: TToolButton;
    ToolButton8: TToolButton;
    btn_Salvar: TToolButton;
    btn_Cancelar: TToolButton;
    ToolButton11: TToolButton;
    btn_Imprimir: TToolButton;
    ToolButton13: TToolButton;
    btn_Sair: TToolButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText2: TDBText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ADOQueryCliente: TADOQuery;
    DSCliente: TDataSource;
    ADOQueryFuncionario: TADOQuery;
    DataSource2: TDataSource;
    GroupBox1: TGroupBox;
    pnlItems: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton3: TSpeedButton;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    ADOQueryProduto: TADOQuery;
    DSProduto: TDataSource;
    Bbt_Inserir: TBitBtn;
    Bbt_Excluir: TBitBtn;
    Bbt_Confirmar: TBitBtn;
    Bbt_Cancelar: TBitBtn;
    DBGrid1: TDBGrid;
    ADOQueryFuncionarioid: TAutoIncField;
    ADOQueryFuncionarionome_func: TStringField;
    ADOQueryClienteid: TAutoIncField;
    ADOQueryClienteNome_razao: TStringField;
    ADOQueryProdutoid: TAutoIncField;
    ADOQueryProdutoespecificacoes: TStringField;
    ADOQueryProdutopreco: TFloatField;
    DBText1: TDBText;
    Label2: TLabel;
    ImageList4: TImageList;
    DBComboBox1: TDBComboBox;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    Panel3: TPanel;
    DBText3: TDBText;
    Label17: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    ADOQryOrdem: TADOQuery;
    DSControla: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    ADOQryOrdemnumero: TAutoIncField;
    ADOQryOrdemid_cliente: TIntegerField;
    ADOQryOrdemid_funcionario: TIntegerField;
    ADOQryOrdemdescri_equipamento: TStringField;
    ADOQryOrdemdata_inicio: TStringField;
    ADOQryOrdemdata_termino: TStringField;
    ADOQryOrdemobservacoes: TStringField;
    ADOQryOrdemserie_equipamento: TStringField;
    ADOQryOrdemstatus_ordem: TStringField;
    ADOQryOrdemvalor_produtos: TFloatField;
    ADOQryOrdemvalor_total: TFloatField;
    ADOQryOrdemnome_razao: TStringField;
    ADOQryOrdemendereco: TStringField;
    ADOQryOrdemcidade: TStringField;
    ADOQryOrdembairro: TStringField;
    ADOQryOrdemestado: TStringField;
    ADOQryOrdemcep: TStringField;
    ADOQryOrdemfunc_nome: TStringField;
    ADOQrySolucaoXOrdem: TADOQuery;
    ADOQrySolucaoXOrdemid_solucao: TIntegerField;
    ADOQrySolucaoXOrdemnum_os: TIntegerField;
    ADOQrySolucaoXOrdemvalor_unit: TFloatField;
    ADOQrySolucaoXOrdemvalor_total: TFloatField;
    ADOQrySolucaoXOrdemquant: TIntegerField;
    ADOQrySolucaoXOrdemdescricao: TStringField;
    ADOQrySolucaoXOrdemespecificacoes: TStringField;
    frxDBDataset2: TfrxDBDataset;
    ADOQryOrdemcargo: TStringField;
    procedure btn_PrimeiroClick(Sender: TObject);
    procedure btn_AnteriorClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_ProximoClick(Sender: TObject);
    procedure btn_UltimoClick(Sender: TObject);
    procedure btn_InserirClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bbt_ExcluirClick(Sender: TObject);
    procedure Bbt_InserirClick(Sender: TObject);
    procedure Bbt_ConfirmarClick(Sender: TObject);
    procedure Bbt_CancelarClick(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btn_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure Botoes(Ativa: Boolean);
  public
    { Public declarations }
  end;

var
  FrmManOS: TFrmManOS;
  //Opera��o de Navega��o
  operacao: integer;

implementation

{$R *.dfm}

uses UntDM, UntManCliente, UntManFuncionario, UntManProduto, UntRelOrdem;

procedure TFrmManOS.Bbt_CancelarClick(Sender: TObject);
begin
Bbt_Inserir.Enabled := true;
Bbt_Cancelar.Enabled := false;
Bbt_Confirmar.Enabled := false;
Bbt_Excluir.Enabled := true;
pnlItems.Enabled := false;
DM.ADODSSolucaoXOrdem.Cancel;
end;

procedure TFrmManOS.Bbt_ConfirmarClick(Sender: TObject);
begin
if DBLookupComboBox3.Text = '' then
  begin
    ShowMessage('O campo[Produto] n�o pode ficar em branco.');
    DBLookupComboBox3.SetFocus;
    Abort;
  end;
if DBEdit5.Text = '' then
  begin
    ShowMessage('O campo[Quantidade] n�o pode ficar em branco.');
    DBEdit5.SetFocus;
    Abort;
  end;
DBEdit5.SetFocus;
Bbt_Inserir.Enabled := true;
Bbt_Cancelar.Enabled := false;
Bbt_Confirmar.Enabled := false;
Bbt_Excluir.Enabled := true;
pnlItems.Enabled := false;
DM.ADODSSolucaoXOrdem.Post;

end;

procedure TFrmManOS.Bbt_ExcluirClick(Sender: TObject);
begin
Bbt_Inserir.Enabled := true;
Bbt_Cancelar.Enabled := false;
Bbt_Confirmar.Enabled := false;
Bbt_Excluir.Enabled := true;

pnlItems.Enabled := false;
DM.ADODSSolucaoXOrdem.Delete;

end;

procedure TFrmManOS.Bbt_InserirClick(Sender: TObject);
begin

Bbt_Inserir.Enabled := false;
Bbt_Cancelar.Enabled := true;
Bbt_Confirmar.Enabled := true;
Bbt_Excluir.Enabled := false;

pnlItems.Enabled := true;
DM.ADODSSolucaoXOrdem.Insert;
end;

procedure TFrmManOS.Botoes(Ativa: Boolean);
begin
  if operacao = 1 then
  begin
    //Verifica se esta no final da tabela
    if DM.ADODSOrdemServico.Eof = True then
      begin
        btn_Proximo.Enabled:= False;
        btn_Ultimo.Enabled:= False;
      end
      else
      begin
        btn_proximo.Enabled:= True;
        btn_Ultimo.Enabled:= True;
      end;
      //Verifica se esta no inicio da tabela
      if DM.ADODSOrdemServico.Eof = True then
      begin
        btn_Proximo.Enabled:= False;
        btn_Anterior.Enabled:= False;
      end
      else
      begin
        btn_Primeiro.Enabled:= True;
        btn_Anterior.Enabled:= True;
      end;
  end
  else
  begin
    btn_Primeiro.Enabled:= false;
    btn_Anterior.Enabled:= false;
    btn_Proximo.Enabled:= false;
    btn_Ultimo.Enabled:= false;
  end;
  btn_Inserir.Enabled:= Ativa;
  btn_Sair.Enabled:= Ativa;
  if (DM.ADODSOrdemServico.RecordCount > 0) then
  begin
    btn_Filtrar.Enabled:= Ativa;
    btn_Imprimir.Enabled:= Ativa;
    btn_Alterar.Enabled:= Ativa;
    btn_Excluir.Enabled:= Ativa;
  end;
  btn_Salvar.Enabled:= not Ativa;
  btn_Cancelar.Enabled:= not Ativa;
  PnlFicha.Enabled:= not Ativa;
end;

procedure TFrmManOS.btn_PrimeiroClick(Sender: TObject);
begin
//Primeiro bot�o
DM.ADODSOrdemServico.First;
Botoes(true);
end;

procedure TFrmManOS.btn_ProximoClick(Sender: TObject);
begin
//Bot�o pr�ximo
     DM.ADODSOrdemServico.Next;
     Botoes(true);
end;

procedure TFrmManOS.btn_AlterarClick(Sender: TObject);
begin
DM.ADODSOrdemServico.Edit;
DM.ADODSOrdemServicodata_inicio.AsDateTime:= date;
DM.ADODSOrdemServico.FieldByName('data_termino').EditMask:= '99/99/9999;1;_';
operacao:= 0;
Botoes(false);
end;

procedure TFrmManOS.btn_AnteriorClick(Sender: TObject);
begin
    //bot�o anterior
     DM.ADODSOrdemServico.Prior;
     Botoes(true);
end;

procedure TFrmManOS.btn_CancelarClick(Sender: TObject);
begin
  DM.ADODSOrdemServico.Cancel;
  Application.MessageBox('O registro foi cancelado com sucesso.','Informa��o',MB_OK+MB_DEFBUTTON1+MB_ICONERROR);

  operacao:= 1;
  Botoes(TRUE);
end;

procedure TFrmManOS.btn_ExcluirClick(Sender: TObject);
  var
  confExclusao: integer;
begin
  confExclusao:= Application.MessageBox('Tem certeza que deseja excluir?','Aten��o', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);
  if confExclusao = IDYES then
  begin
    ShowMessage('Registro n� '+DM.ADODSOrdemServiconumero.AsString+ ' com sucesso.');
    DM.ADODSOrdemServico.Delete;
  end;
end;

procedure TFrmManOS.btn_ImprimirClick(Sender: TObject);
begin
 ImpRelOrdem.Edit1.Text := dm.ADODSOrdemServiconumero.AsString;
 ImpRelOrdem.ShowModal();
end;

procedure TFrmManOS.btn_InserirClick(Sender: TObject);
begin
  DM.ADODSOrdemServico.Insert;
  DM.ADODSOrdemServicodata_inicio.AsDateTime:= date;
  DM.ADODSOrdemServicostatus_ordem.AsString := 'Aberto';
  DM.ADODSOrdemServico.Post;
  DM.ADODSOrdemServico.Edit;

  DM.ADODSOrdemServico.FieldByName('data_termino').EditMask:= '99/99/9999;1;_';

  Botoes(false);
  operacao:= 0;

  Bbt_Inserir.Enabled := true;
  Bbt_Excluir.Enabled := false;
  Bbt_Confirmar.Enabled := false;
  Bbt_Cancelar.Enabled := false;
  pnlItems.Enabled := false;
end;

procedure TFrmManOS.btn_SairClick(Sender: TObject);
begin
Close;
end;


procedure TFrmManOS.btn_SalvarClick(Sender: TObject);
begin
DM.ADODSOrdemServico.Post;
Application.MessageBox('O registro foi salvo com sucesso.','Informa��o',MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

operacao:= 1;
Botoes(TRUE);
end;

procedure TFrmManOS.btn_UltimoClick(Sender: TObject);
begin
     DM.ADODSOrdemServico.Last;
     Botoes(true);
end;

procedure TFrmManOS.DBEdit5Exit(Sender: TObject);
begin
if DM.ADODSSolucaoXOrdemquant.AsInteger < 1 then
  begin
    ShowMessage('A quantidade deve ser maior que 1.');
    DBEdit5.SetFocus;
    Abort;
  end
else
  DM.ADODSSolucaoXOrdemvalor_total.AsFloat := DM.ADODSSolucaoXOrdemvalor_unit.AsFloat * DM.ADODSSolucaoXOrdemquant.AsInteger;


end;

procedure TFrmManOS.FormActivate(Sender: TObject);
begin
operacao := 1;

DM.ADODSOrdemServico.Close;
DM.ADODSOrdemServico.CommandText := '';
DM.ADODSOrdemServico.CommandText := 'select * from ORDEM_SERVICOS order by numero';
DM.ADODSOrdemServico.Open;

DM.ADODSSolucaoXOrdem.Close;
DM.ADODSSolucaoXOrdem.Open;

DM.ADODSCliente.Close;
DM.ADODSCliente.Open;

DM.ADODSFuncionario.Close;
DM.ADODSFuncionario.Open;

DM.ADODSSolucao.Close;
DM.ADODSSolucao.Open;

Botoes(true);

pnlItems.Enabled := false;
Bbt_Inserir.Enabled := true;
Bbt_Excluir.Enabled := false;
Bbt_Confirmar.Enabled := false;
Bbt_Cancelar.Enabled := false;

ADOQueryCliente.Close;
ADOQueryCliente.Open;

ADOQueryFuncionario.Close;
ADOQueryFuncionario.Open;

ADOQueryProduto.Close;
ADOQueryProduto.Open;
end;

procedure TFrmManOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.ADODSOrdemServico.Close;
DM.ADODSSolucaoXOrdem.Close;

ADOQueryCliente.Close;
ADOQueryFuncionario.Close;
end;

procedure TFrmManOS.SpeedButton1Click(Sender: TObject);
begin
  FrmManCliente.ShowModal;
end;

procedure TFrmManOS.SpeedButton2Click(Sender: TObject);
begin
  FrmManFuncionario.ShowModal;
end;

procedure TFrmManOS.SpeedButton3Click(Sender: TObject);
begin
  FrmManProduto.ShowModal;
end;

end.
