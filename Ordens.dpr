program Ordens;



uses
  Vcl.Forms,
  UntMenuPrincipal in 'UntMenuPrincipal.pas' {FrmMenuPrincipal},
  UntDM in 'UntDM.pas' {DM: TDataModule},
  UntManCliente in 'UntManCliente.pas' {FrmManCliente},
  UntCadCliente in 'UntCadCliente.pas' {FrmCadCliente},
  UntManProduto in 'UntManProduto.pas' {FrmManProduto},
  UntCadProduto in 'UntCadProduto.pas' {FrmCadProduto},
  UntManFuncionario in 'UntManFuncionario.pas' {FrmManFuncionario},
  UntCadFuncionario in 'UntCadFuncionario.pas' {FrmCadFuncionario},
  UntManOS in 'UntManOS.pas' {FrmManOS},
  UntRelCliente in 'UntRelCliente.pas' {FrmRelCliente},
  UntRelFuncionario in 'UntRelFuncionario.pas' {FrmRelFuncionario},
  UntManServico in 'UntManServico.pas' {FrmManServico},
  UntCadServico in 'UntCadServico.pas' {FrmCadServico},
  UntRelOrdem in 'UntRelOrdem.pas' {ImpRelOrdem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenuPrincipal, FrmMenuPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmManCliente, FrmManCliente);
  Application.CreateForm(TFrmCadCliente, FrmCadCliente);
  Application.CreateForm(TFrmManProduto, FrmManProduto);
  Application.CreateForm(TFrmCadProduto, FrmCadProduto);
  Application.CreateForm(TFrmManFuncionario, FrmManFuncionario);
  Application.CreateForm(TFrmCadFuncionario, FrmCadFuncionario);
  Application.CreateForm(TFrmManOS, FrmManOS);
  Application.CreateForm(TFrmRelCliente, FrmRelCliente);
  Application.CreateForm(TFrmRelFuncionario, FrmRelFuncionario);
  Application.CreateForm(TFrmManServico, FrmManServico);
  Application.CreateForm(TFrmCadServico, FrmCadServico);
  Application.CreateForm(TImpRelOrdem, ImpRelOrdem);
  Application.Run;
end.
