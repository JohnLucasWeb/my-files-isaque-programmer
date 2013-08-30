unit UGeConsultarLoteNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGrPadrao, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons,
  ExtCtrls, Mask, DBCtrls, IBUpdateSQL;

type
  TTipoMovimento = (tmNFeEntrada, tmNFeSaida, tmNull);
  TfrmGeConsultarLoteNFe = class(TfrmGrPadrao)
    dtsEmpresa: TDataSource;
    qryEmpresa: TIBQuery;
    qryEmpresaCNPJ: TIBStringField;
    qryEmpresaRZSOC: TIBStringField;
    qryEmpresaSERIE_NFE: TSmallintField;
    qryEmpresaNUMERO_NFE: TIntegerField;
    qryEmpresaLOTE_ANO_NFE: TSmallintField;
    qryEmpresaLOTE_NUM_NFE: TIntegerField;
    qryEmpresaMODELO_NFE: TIntegerField;
    cdsLOG: TIBDataSet;
    cdsLOGUSUARIO: TIBStringField;
    cdsLOGDATA_HORA: TDateTimeField;
    cdsLOGTIPO: TSmallintField;
    cdsLOGDESCRICAO: TIBStringField;
    cdsLOGESPECIFICACAO: TMemoField;
    updLOG: TIBUpdateSQL;
    qryLotesPendentesNFe: TIBQuery;
    GrpBxControle: TGroupBox;
    lblCNPJ: TLabel;
    lblRazaoSocial: TLabel;
    lblSerie: TLabel;
    lblNFe: TLabel;
    lblHoraEmissao: TLabel;
    lblModelo: TLabel;
    dbCNPJ: TDBEdit;
    dbRazaoSocial: TDBEdit;
    dbSerie: TDBEdit;
    dbNFe: TDBEdit;
    dbHoraEmissao: TDBEdit;
    dbModelo: TDBEdit;
    Bevel1: TBevel;
    GrpBxDadosLote: TGroupBox;
    lblUsuario: TLabel;
    lblDataHora: TLabel;
    lblJustificativa: TLabel;
    lblAno: TLabel;
    lblNumeroLote: TLabel;
    lblNumeroRecibo: TLabel;
    dbJustificativa: TMemo;
    dbUsuario: TEdit;
    dbDataHora: TEdit;
    edAno: TEdit;
    edNumeroLote: TEdit;
    edNumeroRecibo: TEdit;
    Bevel2: TBevel;
    lblInforme: TLabel;
    btnConfirmar: TBitBtn;
    btFechar: TBitBtn;
    qryLotesPendentesNFeANO: TSmallintField;
    qryLotesPendentesNFeNUMERO: TIntegerField;
    qryLotesPendentesNFeTIPONFE: TIntegerField;
    qryLotesPendentesNFeTIPO: TIBStringField;
    qryLotesPendentesNFeLOTE: TIntegerField;
    qryLotesPendentesNFeRECIBO: TIBStringField;
    procedure ApenasNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure qryEmpresaCNPJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    FTipoMovimento : TTipoMovimento;
    procedure Auditar;
    function PesquisarLote(const iAno, iNumero : Integer; const sRecibo : String; var Ano, Controle : Integer) : Boolean;
  public
    { Public declarations }
  end;

var
  frmGeConsultarLoteNFe: TfrmGeConsultarLoteNFe;

implementation

uses UDMBusiness, UDMNFe, UConstantesDGE;

{$R *.dfm}

{ TfrmGeConsultarLoteNFe }

procedure TfrmGeConsultarLoteNFe.Auditar;
begin
  dbUsuario.Text  := Trim(GetUserApp);
  dbDataHora.Text := FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
end;

procedure TfrmGeConsultarLoteNFe.FormCreate(Sender: TObject);
begin
  inherited;

  with qryEmpresa do
  begin
    Close;
    ParamByName('cnpj').AsString := GetEmpresaIDDefault;
    Open;
  end;

  qryLotesPendentesNFe.Open;

  Auditar;
  edAno.Text     := FormatDateTime('yyyy', Date);
  FTipoMovimento := tmNull;
end;

procedure TfrmGeConsultarLoteNFe.btFecharClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmGeConsultarLoteNFe.qryEmpresaCNPJGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if ( Sender.IsNull ) then
    Exit;

  if StrIsCNPJ(Sender.AsString) then
    Text := StrFormatarCnpj(Sender.AsString)
  else
  if StrIsCPF(Sender.AsString) then
    Text := StrFormatarCpf(Sender.AsString);
end;

procedure TfrmGeConsultarLoteNFe.ApenasNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', #8, #13]) then
  begin
    Key := #0;
    Abort;
  end;
end;

procedure TfrmGeConsultarLoteNFe.FormShow(Sender: TObject);
begin
  inherited;
  if not qryLotesPendentesNFe.IsEmpty then
  begin
    edAno.Text          := qryLotesPendentesNFeANO.AsString;
    edNumeroLote.Text   := qryLotesPendentesNFeLOTE.AsString;
    edNumeroRecibo.Text := qryLotesPendentesNFeRECIBO.AsString;
    FTipoMovimento      := TTipoMovimento(qryLotesPendentesNFeTIPONFE.AsInteger);
  end;
end;

function TfrmGeConsultarLoteNFe.PesquisarLote(const iAno, iNumero: Integer;
  const sRecibo: String; var Ano, Controle : Integer): Boolean;
begin
  try
    with DMBusiness, qryBusca do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select');
      SQL.Add('    v.ano        as Ano');
      SQL.Add('  , v.codcontrol as Numero');
      SQL.Add('  , 1            as TipoNFE');
      SQL.Add('  , ''Sa�da/Venda''   as Tipo');
      SQL.Add('  , v.lote_nfe_numero as Lote');
      SQL.Add('  , v.lote_nfe_recibo as Recibo');
      SQL.Add('from TBVENDAS v');
      SQL.Add('where v.codemp = ' + QuotedStr(GetEmpresaIDDefault));

      if (StrToIntDef(Trim(edAno.Text), 0) > 0) and (StrToIntDef(Trim(edNumeroLote.Text), 0) > 0) then
        SQL.Add('  and v.lote_nfe_ano = ' + Trim(edAno.Text) + ' and v.lote_nfe_numero = ' + Trim(edNumeroLote.Text));

      if (Trim(edNumeroRecibo.Text) <> EmptyStr) then
        SQL.Add('  and v.lote_nfe_recibo = ' + QuotedStr(Trim(edNumeroRecibo.Text)));

      SQL.Add('');
      SQL.Add('union');
      SQL.Add('');
      SQL.Add('Select');
      SQL.Add('    c.ano        as Ano');
      SQL.Add('  , c.codcontrol as Numero');
      SQL.Add('  , 0            as TipoNFE');
      SQL.Add('  , ''Entrada/Compra'' as Tipo');
      SQL.Add('  , c.lote_nfe_numero  as Lote');
      SQL.Add('  , c.lote_nfe_recibo  as Recibo');
      SQL.Add('from TBCOMPRAS c');
      SQL.Add('where c.codemp = ' + QuotedStr(GetEmpresaIDDefault));

      if (StrToIntDef(Trim(edAno.Text), 0) > 0) and (StrToIntDef(Trim(edNumeroLote.Text), 0) > 0) then
        SQL.Add('  and c.lote_nfe_ano = ' + Trim(edAno.Text) + ' and c.lote_nfe_numero = ' + Trim(edNumeroLote.Text));

      if (Trim(edNumeroRecibo.Text) <> EmptyStr) then
        SQL.Add('  and c.lote_nfe_recibo = ' + QuotedStr(Trim(edNumeroRecibo.Text)));

      Open;

      Result := not IsEmpty;

      if Result then
      begin
        FTipoMovimento := TTipoMovimento(FieldByName('TipoNFE').AsInteger);
        Ano      := FieldByName('Ano').AsInteger;
        Controle := FieldByName('Numero').AsInteger;

        edAno.Text          := FieldByName('Ano').AsString;
        edNumeroLote.Text   := FieldByName('Lote').AsString;
        edNumeroRecibo.Text := FieldByName('Recibo').AsString;
      end;
    end;
  except
    On E : Exception do
      ShowError('Erro ao tentar consultar lote.' + #13#13 + E.Message);
  end;
end;

procedure TfrmGeConsultarLoteNFe.btnConfirmarClick(Sender: TObject);
var
  bTudo   ,
  bLote   ,
  bRecibo : Boolean;
  iAnoMov ,
  iCodMov : Integer;
  sRetorno : String;
begin
  bTudo   := (Trim(edAno.Text) = EmptyStr) and (Trim(edNumeroLote.Text) = EmptyStr) and (Trim(edNumeroRecibo.Text) = EmptyStr);
  bLote   := ((Trim(edAno.Text) <> EmptyStr) and (Trim(edNumeroLote.Text) = EmptyStr))
    or ((Trim(edAno.Text) = EmptyStr) and (Trim(edNumeroLote.Text) <> EmptyStr));
  bRecibo := (Trim(edNumeroRecibo.Text) = EmptyStr);

  if bTudo then
    ShowInformation('Favor informar o N�mero do Lote e/ou Recibo!')
  else
  if bLote then
    ShowInformation('Favor informar o Ano/N�mero do Lote!')
  else
  if bRecibo then
    ShowInformation('Favor informar o N�mero do Recibo!')
  else
  if PesquisarLote(StrToIntDef(Trim(edAno.Text), 0), StrToIntDef(Trim(edNumeroLote.Text), 0), Trim(edNumeroRecibo.Text), iAnoMov, iCodMov) then
    if ShowConfirm('Confirma a consulta do lote/recibo de NF-e informado?') then
    begin

      if not DMNFe.GetValidadeCertificado then
        Exit;

      sRetorno := EmptyStr;
      if DMNFe.ConsultarNumeroLoteNFeACBr(GetEmpresaIDDefault, Trim(edNumeroRecibo.Text), sRetorno ) then
      begin

        with cdsLOG do
        begin
          Auditar;

          Open;
          Append;

          cdsLOGUSUARIO.AsString       := dbUsuario.Text;
          cdsLOGDATA_HORA.AsDateTime   := Now;
          cdsLOGTIPO.AsInteger         := TIPO_LOG_TRANS_SEFA;
          cdsLOGDESCRICAO.AsString     := DESC_LOG_CONSULTAR_NRO_LOTE_NFE;
          cdsLOGESPECIFICACAO.AsString := sRetorno;

          Post;
          ApplyUpdates;
          CommitTransaction;

          ModalResult := mrOk;
        end;

      end;

    end;
end;

initialization
  FormFunction.RegisterForm('frmGeConsultarLoteNFe', TfrmGeConsultarLoteNFe);

end.
