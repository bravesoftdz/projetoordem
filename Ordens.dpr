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
  UntManServico in 'UntManServico.pas' {FrmManServico},
  UntCadServico in 'UntCadServico.pas' {FrmCadServico},
  UntManOS in 'UntManOS.pas' {FrmManOS};

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
  Application.CreateForm(TFrmManServico, FrmManServico);
  Application.CreateForm(TFrmCadServico, FrmCadServico);
  Application.CreateForm(TFrmManOS, FrmManOS);
  Application.Run;
end.
