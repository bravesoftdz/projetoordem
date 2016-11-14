program Ordens;

uses
  Vcl.Forms,
  UntMenuPrincipal in 'UntMenuPrincipal.pas' {FrmMenuPrincipal},
  UntManCliente in 'UntManCliente.pas' {FrmManCliente},
  UntCadCliente in 'UntCadCliente.pas' {FrmCadCliente},
  UntDM in 'UntDM.pas' {DM: TDataModule},
  UntManProduto in 'UntManProduto.pas' {FrmManProduto},
  UntCadProduto in 'UntCadProduto.pas' {FrmCadProduto},
  UntManFuncionario in 'UntManFuncionario.pas' {FrmManFuncionario},
  UntCadFuncionario in 'UntCadFuncionario.pas' {FrmCadFuncionario},
  UntManOS in 'UntManOS.pas' {FrmManOS},
  FrmRel_Cliente in 'FrmRel_Cliente.pas' {Form1},
  UntRelCliente in 'UntRelCliente.pas' {FrmRelCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenuPrincipal, FrmMenuPrincipal);
  Application.CreateForm(TFrmManCliente, FrmManCliente);
  Application.CreateForm(TFrmCadCliente, FrmCadCliente);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmManProduto, FrmManProduto);
  Application.CreateForm(TFrmCadProduto, FrmCadProduto);
  Application.CreateForm(TFrmManFuncionario, FrmManFuncionario);
  Application.CreateForm(TFrmManFuncionario, FrmManFuncionario);
  Application.CreateForm(TFrmCadFuncionario, FrmCadFuncionario);
  Application.CreateForm(TFrmManOS, FrmManOS);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrmRelCliente, FrmRelCliente);
  Application.Run;
end.
