unit UntManOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ToolWin, Vcl.ComCtrls, DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask, Data.Win.ADODB;

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
    Panel2: TPanel;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
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
    DBText1: TDBText;
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
    DataSource1: TDataSource;
    ADOQueryClienteid_cliente: TAutoIncField;
    ADOQueryClienteNome_razao: TStringField;
    ADOQueryFuncionario: TADOQuery;
    DataSource2: TDataSource;
    ADOQueryFuncionarioid_funcionario: TAutoIncField;
    ADOQueryFuncionarionome_func: TStringField;
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

uses UntDM;

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
  {PnlFicha.Enabled:= not Ativa; }
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
    ShowMessage('Registro n� '+DM.ADODSOrdemServiconum_os.AsString+ ' com sucesso.');
    DM.ADODSOrdemServico.Delete;
  end;
end;

procedure TFrmManOS.btn_InserirClick(Sender: TObject);
begin
  DM.ADODSOrdemServico.Insert;
  DM.ADODSOrdemServicodata_inicio.AsDateTime:= date;
  DM.ADODSOrdemServico.Post;
  DM.ADODSOrdemServico.Edit;

  Botoes(false);
  operacao:= 0
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

procedure TFrmManOS.FormActivate(Sender: TObject);
begin
DM.ADODSOrdemServico.Close;
DM.ADODSOrdemServico.CommandText := '';
DM.ADODSOrdemServico.CommandText := 'select * from ORDEM_SERVICOS order by data_inicio';
DM.ADODSOrdemServico.Open;

Botoes(true);

ADOQueryCliente.Close;
ADOQueryCliente.Open;

ADOQueryFuncionario.Close;
ADOQueryFuncionario.Open;

end;

procedure TFrmManOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.ADODSOrdemServico.Close;

ADOQueryCliente.Close;
ADOQueryFuncionario.Close;
end;

end.
