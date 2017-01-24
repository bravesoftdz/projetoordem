unit UntManServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Data.Win.ADODB, Vcl.Buttons, Vcl.AppEvnts;

type
  TFrmManServico = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    btn_Inserir: TToolButton;
    btn_Alterar: TToolButton;
    btn_Excluir: TToolButton;
    ToolButton4: TToolButton;
    btn_Sair: TToolButton;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    ApplicationEvents1: TApplicationEvents;
    DS: TDataSource;
    ADODataSet1: TADODataSet;
    ADODataSet1preco: TFloatField;
    ADODataSet1id: TAutoIncField;
    ADODataSet1especificacoes: TStringField;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure btn_InserirClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManServico: TFrmManServico;

implementation

{$R *.dfm}

uses UntDM, UntCadProduto, UntCadServico, UntRelServico;

procedure TFrmManServico.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  ShowMessage('N�o � possivel excluir este produto, pois est� vinculado � uma Ordem de Servi�o.');
end;

procedure TFrmManServico.btn_AlterarClick(Sender: TObject);
begin
DM.ADODSSolucao.Edit;
FrmCadProduto.btn_Salvar.Enabled:= true;
FrmCadServico.btn_Cancelar.Enabled:= true;
FrmCadServico.btn_Sair.Enabled:= false;
FrmCadServico.pnlFicha.Enabled:= true;
FrmCadServico.ShowModal;
end;

procedure TFrmManServico.btn_ExcluirClick(Sender: TObject);
var
  confExcl: integer;
begin
  confExcl := Application.MessageBox('Confirma a exclus�o deste registro?', 'Aten��o', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);
  if confExcl = IDYES then
  begin
    DM.ADODSSolucao.Delete;
    Application.MessageBox('O registro foi exclu�do com sucesso.','Informa��o', MB_OK+MB_ICONINFORMATION);
  end
  else
    Application.MessageBox('A exclus�o do registro foi abortada.','Informa��o', MB_OK+MB_ICONERROR);

end;

procedure TFrmManServico.btn_InserirClick(Sender: TObject);
begin
DM.ADODSSolucao.Insert;
FrmCadServico.btn_Salvar.Enabled:= true;
FrmCadServico.btn_Cancelar.Enabled:= true;
FrmCadServico.btn_Sair.Enabled:= false;
FrmCadServico.pnlFicha.Enabled:= true;
FrmCadServico.ShowModal;
end;

procedure TFrmManServico.btn_SairClick(Sender: TObject);
begin
close;
end;

procedure TFrmManServico.Edit1Change(Sender: TObject);
begin
  DM.ADODSSolucao.Locate('id', Edit1.Text,[loCaseInSensitive,loPartialKey]);
end;

procedure TFrmManServico.FormActivate(Sender: TObject);
begin
DM.ADODSSolucao.Close;
DM.ADODSSolucao.CommandText:= '';
DM.ADODSSolucao.CommandText:= 'SELECT * FROM solucao WHERE tipo=:produto';
DM.ADODSSolucao.Open;
end;



procedure TFrmManServico.ToolButton2Click(Sender: TObject);
begin
frmRelServico.ShowModal;
end;

end.
