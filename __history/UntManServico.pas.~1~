unit UntManServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmManServico = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    Panel1: TPanel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    btn_Inserir: TToolButton;
    btn_Alterar: TToolButton;
    btn_Excluir: TToolButton;
    ToolButton4: TToolButton;
    btn_Sair: TToolButton;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    procedure Edit1Change(Sender: TObject);
    procedure btn_InserirClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManServico: TFrmManServico;

implementation

{$R *.dfm}

uses UntDM, UntCadServico;

procedure TFrmManServico.btn_AlterarClick(Sender: TObject);
begin
  DM.ADODSServicos.Edit;
  FrmCadServico.btn_salvar.enabled := true;
  FrmCadServico.btn_cancelar.Enabled := true;
  FrmcadServico.btn_sair.Enabled := false;
  FrmCadServico.Pnlficha.Enabled := true;
  FrmcadServico.showmodal;
end;

procedure TFrmManServico.btn_ExcluirClick(Sender: TObject);
  var confExcl : integer;
begin
  confExcl := Application.MessageBox('Confirma a exclusão deste registro?'
  ,'Atenção', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);

  if confExcl = IDYES then
  begin
    DM.ADODSServicos.Delete;
    Application.MessageBox('O Registro foi excluido com exito.', 'Informação',
    MB_OK+MB_ICONQUESTION);
  end
    else
    Application.MessageBox('A exclusão do registro foi abortada.',
    'Informação', MB_OK+MB_ICONINFORMATION);
end;

procedure TFrmManServico.btn_InserirClick(Sender: TObject);
begin
    DM.ADODSServicos.Insert;

    FrmCadServico.btn_salvar.enabled := true;
    frmCadServico.btn_cancelar.Enabled := true;
    frmCadServico.btn_sair.Enabled := false;
    frmCadServico.pnlFicha.Enabled := true;

    FrmCadServico.ShowModal;
end;

procedure TFrmManServico.btn_SairClick(Sender: TObject);
begin
Close;
end;

procedure TFrmManServico.Edit1Change(Sender: TObject);
begin
DM.ADODSServicos.Locate('tipo_servico',Edit1.Text, [loCaseInsensitive,loPartialKey]);
end;

procedure TFrmManServico.FormActivate(Sender: TObject);
begin
  DM.ADODSServicos.Close;
  DM.ADODSServicos.CommandText := '';
  DM.ADODSServicos.CommandText := 'select * from Servicos order by id_servico';
  DM.ADODSServicos.Open;
end;

end.
