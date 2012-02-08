unit UGeEntradaEstoqueCancelar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGrPadrao, DB, IBCustomDataSet, IBUpdateSQL, ExtCtrls, StdCtrls,
  Mask, DBCtrls, Buttons;

type
  TfrmGeEntradaEstoqueCancelar = class(TfrmGrPadrao)
    cdsEntrada: TIBDataSet;
    updEntrada: TIBUpdateSQL;
    dtsEntrada: TDataSource;
    GrpBxControle: TGroupBox;
    lblCodigo: TLabel;
    lblFornecedor: TLabel;
    lblSerie: TLabel;
    lblNFe: TLabel;
    lblDataEntrada: TLabel;
    dbCodigo: TDBEdit;
    dbFornecedor: TDBEdit;
    dbSerie: TDBEdit;
    dbNFe: TDBEdit;
    dbDataEntrada: TDBEdit;
    Bevel1: TBevel;
    GrpBxImposto: TGroupBox;
    Bevel2: TBevel;
    btnCancelar: TBitBtn;
    btFechar: TBitBtn;
    lblCancelUsuario: TLabel;
    lblCancelDataHora: TLabel;
    lblMotivo: TLabel;
    dbMotivo: TMemo;
    dbCancelUsuario: TEdit;
    dbCancelDataHora: TEdit;
    cdsEntradaANO: TSmallintField;
    cdsEntradaCODCONTROL: TIntegerField;
    cdsEntradaCODEMP: TIBStringField;
    cdsEntradaCODFORN: TIntegerField;
    cdsEntradaNF: TIntegerField;
    cdsEntradaNFSERIE: TIBStringField;
    cdsEntradaDTLANCAMENTO: TDateTimeField;
    cdsEntradaDTEMISS: TDateField;
    cdsEntradaDTENT: TDateField;
    cdsEntradaDTFINALIZACAO_COMPRA: TDateTimeField;
    cdsEntradaNFCFOP: TIntegerField;
    cdsEntradaNATUREZA: TIBStringField;
    cdsEntradaSTATUS: TSmallintField;
    cdsEntradaIPI: TIBBCDField;
    cdsEntradaICMSBASE: TIBBCDField;
    cdsEntradaICMSVALOR: TIBBCDField;
    cdsEntradaICMSSUBSTBASE: TIBBCDField;
    cdsEntradaICMSSUBSTVALOR: TIBBCDField;
    cdsEntradaFRETE: TIBBCDField;
    cdsEntradaOUTROSCUSTOS: TIBBCDField;
    cdsEntradaDESCONTO: TIBBCDField;
    cdsEntradaTOTALNF: TIBBCDField;
    cdsEntradaTOTALPROD: TIBBCDField;
    cdsEntradaOBS: TMemoField;
    cdsEntradaUSUARIO: TIBStringField;
    cdsEntradaFORMAPAGTO_COD: TSmallintField;
    cdsEntradaCONDICAOPAGTO_COD: TSmallintField;
    cdsEntradaCOMPRA_PRAZO: TSmallintField;
    cdsEntradaPRAZO_01: TSmallintField;
    cdsEntradaPRAZO_02: TSmallintField;
    cdsEntradaPRAZO_03: TSmallintField;
    cdsEntradaPRAZO_04: TSmallintField;
    cdsEntradaPRAZO_05: TSmallintField;
    cdsEntradaPRAZO_06: TSmallintField;
    cdsEntradaPRAZO_07: TSmallintField;
    cdsEntradaPRAZO_08: TSmallintField;
    cdsEntradaPRAZO_09: TSmallintField;
    cdsEntradaPRAZO_10: TSmallintField;
    cdsEntradaPRAZO_11: TSmallintField;
    cdsEntradaPRAZO_12: TSmallintField;
    cdsEntradaCANCEL_USUARIO: TIBStringField;
    cdsEntradaCANCEL_DATAHORA: TDateTimeField;
    cdsEntradaCANCEL_MOTIVO: TMemoField;
    cdsEntradaNOMEFORN: TIBStringField;
    cdsEntradaCNPJ: TIBStringField;
    lblTotalNota: TLabel;
    dbTotalNota: TDBEdit;
    procedure btFecharClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeEntradaEstoqueCancelar: TfrmGeEntradaEstoqueCancelar;

  function CancelarENT(const AOwer : TComponent; Ano : Smallint; Numero : Integer) : Boolean;

implementation

uses UDMBusiness;

{$R *.dfm}

function CancelarENT(const AOwer : TComponent; Ano : Smallint; Numero : Integer) : Boolean;
var
  frm : TfrmGeEntradaEstoqueCancelar;
begin
  frm := TfrmGeEntradaEstoqueCancelar.Create(AOwer);
  try
    with frm do
    begin
      cdsEntrada.Close;
      cdsEntrada.ParamByName('anocompra').AsShort   := Ano;
      cdsEntrada.ParamByName('numcompra').AsInteger := Numero;
      cdsEntrada.Open;

      dbCancelUsuario.Text  := GetUserApp;
      dbCancelDataHora.Text := FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);

      Result := (ShowModal = mrOk);
    end;
  finally
    frm.Free;
  end;
end;

procedure TfrmGeEntradaEstoqueCancelar.btFecharClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmGeEntradaEstoqueCancelar.btnCancelarClick(Sender: TObject);
var
  sMsg : String;
  Cont : Boolean;
begin
  if ( cdsEntrada.IsEmpty ) then
    Exit;

  if ( Trim(dbMotivo.Lines.Text) = EmptyStr ) then
  begin
    ShowWarning('Favor informar o motivo de cancelamento da entrada');
    dbMotivo.SetFocus;
  end
  else
  begin
    sMsg := 'Confirma o cancelamento da entrada?';

    Cont := ShowConfirm(sMsg);

    if ( Cont ) then
      with cdsEntrada do
      begin
        Edit;

        cdsEntradaSTATUS.Value          := STATUS_CMP_CAN;
        cdsEntradaCANCEL_DATAHORA.Value := StrToDateTime( Trim(dbCancelDataHora.Text) );
        cdsEntradaCANCEL_USUARIO.Value  := UpperCase( Trim(dbCancelUsuario.Text) );
        cdsEntradaCANCEL_MOTIVO.Value   := UpperCase( Trim(dbMotivo.Lines.Text) );

        Post;
        ApplyUpdates;
        CommitTransaction;

        ModalResult := mrOk;
      end;
  end;
end;

end.