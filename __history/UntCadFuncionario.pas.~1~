unit UntCadFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFrmCadFuncionario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    pnlFicha: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    btn_salvar: TToolButton;
    btn_cancelar: TToolButton;
    ToolButton3: TToolButton;
    btn_sair: TToolButton;
    DBComboBox1: TDBComboBox;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    Function tbStrIsDate(const S: string): boolean;
    Function testacpf(cpf:string):boolean;
    procedure DBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFuncionario: TFrmCadFuncionario;

implementation

{$R *.dfm}

uses UntManFuncionario, UntDM;

procedure TFrmCadFuncionario.btn_cancelarClick(Sender: TObject);
begin
DM.ADODSFuncionario.Cancel;

Application.MessageBox('A inclusão o alteração deste registro foi abortada.', 'Atenção', MB_OK+MB_ICONERROR);

btn_salvar.Enabled := false;
btn_cancelar.Enabled := false;
btn_sair.Enabled := true;
pnlFicha.Enabled := false;
end;

procedure TFrmCadFuncionario.btn_sairClick(Sender: TObject);
begin
close;
end;

procedure TFrmCadFuncionario.btn_salvarClick(Sender: TObject);
begin
DM.ADODSFuncionario.Post;

Application.MessageBox('O registro foi incluído ou alterado com sucesso.', 'Informação', MB_OK+MB_ICONINFORMATION);

btn_salvar.Enabled := false;
btn_cancelar.Enabled := false;
btn_sair.Enabled := true;
pnlFicha.Enabled := false;
end;

procedure TFrmCadFuncionario.DBEdit3Exit(Sender: TObject);
begin
 if (testacpf(DBEdit3.Text)= false) then
  begin
    Application.MessageBox('CPF inválido', 'ERROR', + MB_ICONERROR);
    DBEdit3.SetFocus;
  end;
end;


procedure TFrmCadFuncionario.DBEdit5Exit(Sender: TObject);
begin
if (tbStrIsDate(DBEdit5.Text) = false) then
  begin
    Application.MessageBox('Digite uma data válida.', 'Error', MB_OK+MB_ICONERROR);
    DBEdit11.SetFocus;
  end;
end;

procedure TFrmCadFuncionario.FormActivate(Sender: TObject);
begin
  DM.ADODSFuncionario.FieldByName('cpf').EditMask:= '999.999.999-99;1;_';
  DM.ADODSFuncionario.FieldByName('rg').EditMask:= '99.999.999-99;1;_';
  DM.ADODSFuncionario.FieldByName('cep').EditMask:= '99999-999;1;_';
  DM.ADODSFuncionario.FieldByName('data_nasc').EditMask:= '99/99/9999;1;_';
  DM.ADODSFuncionario.FieldByName('telefone').EditMask:= '+99 (99)9999-9999;1;_';
  DM.ADODSFuncionario.FieldByName('celular').EditMask:= '+99 (99)99999-9999;1;_';
end;

function TFrmCadFuncionario.tbStrIsDate(const S: string): boolean;
begin
  try
  StrToDate(S);
  Result := true;
  except
  Result := false;
  end;
end;

function TFrmCadFuncionario.testacpf(cpf: string): boolean;
var i:integer;
    Want:char;
    Wvalid:boolean;
    Wdigit1,Wdigit2:integer;
begin
    Wdigit1:=0;
    Wdigit2:=0;
    Want:=cpf[1];//variavel para testar se o cpf é repetido como 111.111.111-11
    Delete(cpf,ansipos('.',cpf),1);  //retira as mascaras se houver
    Delete(cpf,ansipos('.',cpf),1);
    Delete(cpf,ansipos('-',cpf),1);

   //testar se o cpf é repetido como 111.111.111-11
   for i:=1 to length(cpf) do
     begin
       if cpf[i] <> Want then
         begin
            Wvalid:=true;  // se o cpf possui um digito diferente ele passou no primeiro teste
            break
         end;
     end;
       // se o cpf é composto por numeros repetido retorna falso
     if not Wvalid then
       begin
          result:=false;
          exit;
       end;

     //executa o calculo para o primeiro verificador
     for i:=1 to 9 do
       begin
          wdigit1:=Wdigit1+(strtoint(cpf[10-i])*(I+1));
       end;
        Wdigit1:= ((11 - (Wdigit1 mod 11))mod 11) mod 10;
        {formula do primeiro verificador
            soma=1°*2+2°*3+3°*4.. até 9°*10
            digito1 = 11 - soma mod 11
            se digito > 10 digito1 =0
          }

         //verifica se o 1° digito confere
        if IntToStr(Wdigit1) <> cpf[10] then
          begin
             result:=false;
             exit;
          end;


         for i:=1 to 10 do
       begin
          wdigit2:=Wdigit2+(strtoint(cpf[11-i])*(I+1));
       end;
       Wdigit2:= ((11 - (Wdigit2 mod 11))mod 11) mod 10;
         {formula do segundo verificador
            soma=1°*2+2°*3+3°*4.. até 10°*11
            digito1 = 11 - soma mod 11
            se digito > 10 digito1 =0
          }

       // confere o 2° digito verificador
       if IntToStr(Wdigit2) <> cpf[11] then
          begin
             result:=false;
             exit;
          end;

   //se chegar até aqui o cpf é valido
   result:=true;
end;

end.
