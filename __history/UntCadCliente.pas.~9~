unit UntCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TFrmCadCliente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    btn_salvar: TToolButton;
    btn_Cancelar: TToolButton;
    ToolButton3: TToolButton;
    btn_sair: TToolButton;
    StatusBar1: TStatusBar;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    PnlFicha: TPanel;
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    Function tbStrIsDate(const S: string): boolean;
    Function testacpf(cpf:string):boolean;
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCliente: TFrmCadCliente;

implementation

{$R *.dfm}

uses UntManCliente, UntDM;

procedure TFrmCadCliente.btn_CancelarClick(Sender: TObject);
begin
DM.ADODSCliente.Cancel;

Application.MessageBox('A inclusão ou alteração deste registro foi abortada.', 'Atenção', MB_OK+MB_ICONERROR);

btn_salvar.Enabled:= false;
btn_Cancelar.Enabled:= false;
btn_sair.Enabled:= true;
PnlFicha.Enabled:= false;
end;

procedure TFrmCadCliente.btn_sairClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCadCliente.btn_salvarClick(Sender: TObject);
begin
DM.ADODSCliente.Post;

Application.MessageBox('O registro foi incluido ou alterado com sucesso.', 'Informação', MB_OK+MB_ICONINFORMATION);

btn_salvar.Enabled:= False;
btn_Cancelar.Enabled:= False;
btn_Sair.Enabled:= True;
PnlFicha.Enabled:= false;
end;

procedure TFrmCadCliente.DBComboBox1Exit(Sender: TObject);
begin
if DBComboBox1.Text = 'Física' then
  begin
  Label3.Caption:= 'CPF';
  Label4.Caption:= 'RG';
  Label5.Caption:= 'Nome';
  DM.ADODSCliente.FieldByName('cpf_cnpj').EditMask:= '999.999.999-99;1;_';
  DM.ADODSCliente.FieldByName('rg_ie').EditMask:= '99.999.999-99;1;_';
  DM.ADODSCliente.FieldByName('cep').EditMask:= '99999-999;1;_';
  DM.ADODSCliente.FieldByName('data_nasc').EditMask:= '99/99/9999;1;_';
  DM.ADODSCliente.FieldByName('telefone').EditMask:= '+99 (99)9999-9999;1;_';
  DM.ADODSCliente.FieldByName('celular').EditMask:= '+99 (99)99999-9999;1;_'
  end
  else
  begin
  Label3.Caption:= 'CNPJ';
  Label4.Caption:= 'IE';
  Label5.Caption:= 'R. Social';
  DM.ADODSCliente.FieldByName('data_nasc').EditMask:= '99/99/9999;1;_';
  DM.ADODSCliente.FieldByName('cpf_cnpj').EditMask:= '99.999.999/9999-99;1;_';
  DM.ADODSCliente.FieldByName('cep').EditMask:= '99999-999;1;_';
  DM.ADODSCliente.FieldByName('telefone').EditMask:= '+99 (99)9999-9999;1;_';
  DM.ADODSCliente.FieldByName('celular').EditMask:= '+99 (99)99999-9999;1;_'
  end;
end;

procedure TFrmCadCliente.DBEdit11Exit(Sender: TObject);
begin
if (tbStrIsDate(DBEdit11.Text) = false) then
  begin
    Application.MessageBox('Digite uma data válida.', 'Error', MB_OK+MB_ICONERROR);
    DBEdit5.SetFocus;
  end;
end;

procedure TFrmCadCliente.DBEdit1Exit(Sender: TObject);
begin
  {if DBEdit1.Text = '' then
    begin
    Application.MessageBox('O campo CPF não pode ser vázio.', 'Atenção', MB_OK+MB_ICONINFORMATION);
    DBEdit1.SetFocus;
    end
  else}
  if DBComboBox1.Text = 'Física' then
  begin
    if (testacpf(DBEdit1.Text)= false) then
    begin
      Application.MessageBox('CPF inválido', 'ERROR', + MB_ICONERROR);
      DBEdit1.SetFocus;
    end;
  end;
end;

function TFrmCadCliente.tbStrIsDate(const S: string): boolean;
begin
  try
  StrToDate(S);
  Result := true;
  except
  Result := false;
  end;
end;

function TFrmCadCliente.testacpf(cpf: string): boolean;
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
