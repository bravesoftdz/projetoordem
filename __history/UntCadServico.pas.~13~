unit UntCadServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB, Data.Win.ADODB;

type
  TFrmCadServico = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    btn_salvar: TToolButton;
    btn_cancelar: TToolButton;
    ToolButton3: TToolButton;
    btn_sair: TToolButton;
    StatusBar1: TStatusBar;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    DBMemo2: TDBMemo;
    DBEdit6: TDBEdit;
    DBText2: TDBText;
    Label10: TLabel;
    pnlFicha: TPanel;
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadServico: TFrmCadServico;

implementation

{$R *.dfm}

uses UntDM, UntManProduto;

procedure TFrmCadServico.btn_cancelarClick(Sender: TObject);
begin
DM.ADODSSolucao.Cancel;

Application.MessageBox('A inclusão o alteração deste registro foi abortada.', 'Atenção', MB_OK+MB_ICONERROR);

btn_salvar.Enabled := false;
btn_cancelar.Enabled := false;
btn_sair.Enabled := true;
pnlFicha.Enabled := false;
end;

procedure TFrmCadServico.btn_sairClick(Sender: TObject);
begin
close;
end;

procedure TFrmCadServico.btn_salvarClick(Sender: TObject);
begin
  DM.ADODSSolucao.Edit;
  DM.ADODSSolucaotipo.AsString := 'servico';
  Application.MessageBox('O registro foi incluído ou alterado com sucesso.', 'Informação', MB_OK+MB_ICONINFORMATION);

DM.ADODSSolucao.Post;
btn_salvar.Enabled := false;
btn_cancelar.Enabled := false;
btn_sair.Enabled := true;
pnlFicha.Enabled := false;
end;

end.
