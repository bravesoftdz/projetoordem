unit UntManCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrmManCliente = class(TForm)
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
    ToolButton8: TToolButton;
    bnt_Sair: TToolButton;
    Label2: TLabel;
    Edit1: TEdit;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure Edit1Change(Sender: TObject);
    procedure btn_InserirClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure bnt_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManCliente: TFrmManCliente;

implementation

{$R *.dfm}

uses UntDM, UntMenuPrincipal, UntCadCliente;

procedure TFrmManCliente.Edit1Change(Sender: TObject);
begin
  DM.ADODSCliente.Locate('nome_razao',Edit1.Text,[loCaseInsensitive,loPartialKey]);
end;

procedure TFrmManCliente.FormActivate(Sender: TObject);
begin
DM.ADODSCliente.Close;
DM.ADODSCliente.CommandText := '';
DM.ADODSCliente.CommandText := 'select * from CLIENTES order by nome_razao';
DM.ADODSCliente.Open;
end;

procedure TFrmManCliente.bnt_SairClick(Sender: TObject);
begin
Close;
end;

procedure TFrmManCliente.btn_AlterarClick(Sender: TObject);
begin
DM.ADODSCliente.Edit;
FrmCadCliente.btn_Salvar.Enabled := True;
FrmCadCliente.btn_Cancelar.Enabled:= True;
FrmCadCliente.btn_Sair.Enabled := False;
FrmCadCliente.pnlFicha.Enabled := True;
FrmCadCliente.ShowModal;
end;

procedure TFrmManCliente.btn_ExcluirClick(Sender: TObject);
var
  confExcl: Integer;
begin
  confExcl:= Application.MessageBox('Confirma a exclusão deste registro?', 'Atenção', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);

  if confExcl = IDYES then
    begin
      DM.ADODSCliente.Delete;
      Application.MessageBox('O registro foi excluido com sucesso.', 'Informação', MB_OK+MB_ICONINFORMATION)
    end
  else
    Application.MessageBox('A exclusão do registro foi abortada.', 'Informação', MB_OK+MB_ICONERROR);
end;

procedure TFrmManCliente.btn_InserirClick(Sender: TObject);
begin
DM.ADODSCliente.Insert;
FrmCadCliente.btn_Salvar.Enabled := True;
FrmCadCliente.Btn_Cancelar.Enabled:= True;
FrmCadCliente.Btn_Sair.Enabled:= False;
FrmCadCliente.PnlFicha.Enabled:= True;
FrmCadCliente.ShowModal;
end;

end.
