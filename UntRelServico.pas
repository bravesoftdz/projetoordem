unit UntRelServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, frxClass,
  frxDBSet, Data.DB, Data.Win.ADODB, Vcl.Buttons;

type
  TfrmRelServico = class(TForm)
    Panel1: TPanel;
    edtNumServico: TLabeledEdit;
    edtDesc: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQryServicoid: TAutoIncField;
    ADOQryServicopreco: TFloatField;
    ADOQryServicoespecificacoes: TStringField;
    ADOQryServicomarca: TStringField;
    ADOQryServicoquantidade: TIntegerField;
    ADOQryServicotipo: TStringField;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    edtvalor: TLabeledEdit;
    ADOQryServico: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelServico: TfrmRelServico;

implementation

{$R *.dfm}

uses UntDM;

procedure TfrmRelServico.BitBtn1Click(Sender: TObject);
var strliga: string;
begin
  strliga := ' and ';
  ADOQryServico.Close;
  with ADOQryServico.SQL do
  begin
    if edtNumServico.Text <> '' then
    try
      strtoint(edtNumServico.Text);
      Add(strliga+'ID >= ' + edtNumServico.Text);
      strliga := ' and ';
    except
      on EConvertError do;
    end;
    if edtDesc.Text <> '' then
    try
      strtoint(edtDesc.Text);
      Add(strliga+'ID <= '+edtDesc.Text);
      strliga:= ' and ';
    except
      on EConvertError do;
    end;
    if edtvalor.Text <> '' then
    begin
        Add(strliga+'VALOR = ''' + edtvalor.Text + '''');
        strliga:= ' and ';
    end;
    case RadioGroup1.ItemIndex of
    0: Add(' order by id');
    1: Add(' order by especificacoes');
    2: Add(' order by valor');
    end;
  end;
   ADOQryServico.Open;
   frxReport1.ShowReport();
end;

procedure TfrmRelServico.BitBtn2Click(Sender: TObject);
begin
  close;
end;

end.
