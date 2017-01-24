unit UntRelProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, frxClass, Data.DB,
  frxDBSet, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmRelProduto = class(TForm)
    Panel1: TPanel;
    edtprecoDe: TLabeledEdit;
    edtprecoAte: TLabeledEdit;
    edtmarca: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQryProduto: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    ADOQryProdutoid: TAutoIncField;
    ADOQryProdutopreco: TFloatField;
    ADOQryProdutoespecificacoes: TStringField;
    ADOQryProdutomarca: TStringField;
    ADOQryProdutoquantidade: TIntegerField;
    ADOQryProdutotipo: TStringField;
    frxReport1: TfrxReport;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProduto: TfrmRelProduto;

implementation

{$R *.dfm}

uses UntDM;

procedure TfrmRelProduto.BitBtn1Click(Sender: TObject);
 var strliga: string;
begin
  strliga := ' and ';
  ADOQryProduto.Close;
  with ADOQryProduto.SQL do
  begin
    if edtprecoDe.Text <> '' then
    try
      strtoint(edtprecoDe.Text);
      Add(strliga+'ID >= ' + edtprecoDe.Text);
      strliga := ' and ';
    except
      on EConvertError do;
    end;
    if edtprecoAte.Text <> '' then
    try
      strtoint(edtprecoAte.Text);
      Add(strliga+'ID <= '+edtprecoAte.Text);
      strliga:= ' and ';
    except
      on EConvertError do;
    end;
    if edtmarca.Text <> '' then
    begin
        Add(strliga+'MARCA = ''' + edtmarca.Text + '''');
        strliga:= ' and ';
    end;
    case RadioGroup1.ItemIndex of
    0: Add(' order by preco');
    1: Add(' order by marca');
    end;
  end;
   ADOQryProduto.Open;
   frxReport1.ShowReport();

end;

procedure TfrmRelProduto.BitBtn2Click(Sender: TObject);
begin
  close;
end;


end.
