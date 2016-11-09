object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 512
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 491
    Height = 65
    Align = alTop
    Caption = 'Relat'#243'rio de Clientes'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 346
  end
  object EdtCodigoDe: TLabeledEdit
    Left = 87
    Top = 87
    Width = 121
    Height = 21
    EditLabel.Width = 52
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'digo de:'
    LabelPosition = lpLeft
    TabOrder = 1
  end
  object EdtCodigoAte: TLabeledEdit
    Left = 335
    Top = 88
    Width = 121
    Height = 21
    EditLabel.Width = 56
    EditLabel.Height = 13
    EditLabel.Caption = 'Codigo at'#233':'
    LabelPosition = lpLeft
    TabOrder = 2
  end
  object edtNomeDe: TLabeledEdit
    Left = 85
    Top = 119
    Width = 371
    Height = 21
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome de:'
    LabelPosition = lpLeft
    TabOrder = 3
  end
  object EdtNomeAte: TLabeledEdit
    Left = 85
    Top = 148
    Width = 371
    Height = 21
    EditLabel.Width = 50
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome at'#233':'
    LabelPosition = lpLeft
    TabOrder = 4
  end
  object EdtCidade: TLabeledEdit
    Left = 87
    Top = 183
    Width = 369
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'Cidade:'
    LabelPosition = lpLeft
    TabOrder = 5
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 210
    Width = 465
    Height = 119
    Caption = 'Ordena'#231#227'o:'
    Columns = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'C'#243'digo'
      'Nome'
      'Cidade'
      'Estado')
    ParentFont = False
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 176
    Top = 335
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 7
  end
  object BitBtn2: TBitBtn
    Left = 272
    Top = 335
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 8
  end
  object ADOQryCliente: TADOQuery
    Connection = DM.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from clientes')
    Left = 224
    Top = 432
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ADOQryCliente
    BCDToCurrency = False
    Left = 288
    Top = 432
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42682.919057824070000000
    ReportOptions.LastChange = 42682.919057824070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 352
    Top = 432
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
