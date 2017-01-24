unit UntFiltro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons;

type
  TFrmFiltro = class(TForm)
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    StatusBar1: TStatusBar;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltro: TFrmFiltro;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmFiltro.BitBtn1Click(Sender: TObject);
var
  consulta: String;
begin
if (LabeledEdit1.Text = '') and (LabeledEdit2.Text = '') then
  begin
    MessageDlg('Voc� deve preencher pelo menos o valor inicial !', mtInformation, [mbOk],0);
    LabeledEdit1.SetFocus;
    Exit;
  end;

Consulta:= 'select OS.*, C.nome from ORDEM_SERVICOS OS JOIN Clientes C ON OS.id_cliente = C.id ';

DM.ADODSOrdemServico.Close;
DM.ADODSOrdemServico.CommandText := '';


if (LabeledEdit1.Text <> '') and (LabeledEdit2.Text = '') then
  LabeledEdit2.Text := LabeledEdit1.Text;

  if RadioGroup1.ItemIndex = 0 then
    begin
    DM.ADODSOrdemServico.CommandText := consulta+'WHERE numero like '+QuotedStr(LabeledEdit1.Text+'%');
    end;

  if RadioGroup1.ItemIndex = 1 then
    begin
    DM.ADODSOrdemServico.CommandText := consulta+'WHERE data_inicial like '+QuotedStr(LabeledEdit1.Text+'%');
    end;

  if RadioGroup1.ItemIndex = 2 then
    begin
    DM.ADODSOrdemServico.CommandText := consulta+'WHERE nome_razao like '+QuotedStr(LabeledEdit1.Text+'%');
    end;

DM.ADODSOrdemServico.Open;


end;

procedure TFrmFiltro.BitBtn2Click(Sender: TObject);
begin
Close;
end;

end.
