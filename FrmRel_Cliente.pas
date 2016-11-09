unit FrmRel_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    EdtCodigoDe: TLabeledEdit;
    EdtCodigoAte: TLabeledEdit;
    edtNomeDe: TLabeledEdit;
    EdtNomeAte: TLabeledEdit;
    EdtCidade: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQryCliente: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UntDM;

end.
