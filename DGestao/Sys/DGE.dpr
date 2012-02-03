program DGESTAO;

uses
  Forms,
  IniFiles,
  SysUtils,
  HPL_Strings in 'lib\HPL_Strings.pas',
  UPrinc in 'UPrinc.pas' {frmPrinc},
  U_SenhaBaixa in 'U_SenhaBaixa.pas' {f_senhaBaixa},
  UBxCP in 'UBxCP.pas' {frmBxCP},
  UBxCR in 'UBxCR.pas' {frmBxCR},
  UCdBanco in 'UCdBanco.pas' {frmCadBanco},
  UCdCliente in 'UCdCliente.pas' {frmCdCliente},
  UCdContPagar in 'UCdContPagar.pas' {frmCdContPagar},
  UCdContReceber in 'UCdContReceber.pas' {frmCdContReceb},
  UCdDeposito in 'UCdDeposito.pas' {frmCdDeposito},
  UCdEmpresa in 'UCdEmpresa.pas' {frmCadEmpresa},
  UCdVendedor in 'UCdVendedor.pas' {frmCdVendedor},
  UDMBusiness in 'UDMBusiness.pas' {DMBusiness: TDataModule},
  UGrBanco in 'UGrBanco.pas' {frmGridBanco},
  UGrCliente in 'UGrCliente.pas' {frmGrCliente},
  UGrContPagar in 'UGrContPagar.pas' {frmGrContPagar},
  UGrContReceber in 'UGrContReceber.pas' {frmGrContReceb},
  UGrDepositos in 'UGrDepositos.pas' {frmGrDepositos},
  UGrEmpresa in 'UGrEmpresa.pas' {frmGridEmpresa},
  UGrProduto in 'UGrProduto.pas' {frmGrProdutos},
  USobre in 'USobre.pas' {frmSobre},
  UPesq in 'UPesq.pas' {frmPesq},
  UPesqProd in 'UPesqProd.pas' {frmPesqProd},
  UCdFornecedor in 'UCdFornecedor.pas' {frmCdFornecedor},
  UFormPagto in 'UFormPagto.pas' {frmFormPagto},
  UGrupoProd in 'UGrupoProd.pas' {frmGrupoProd},
  UEntradaEstoq in 'UEntradaEstoq.pas' {frmEntradaEstoq},
  UGrEntradaEstoq in 'UGrEntradaEstoq.pas' {frmGrEntradaEstoq},
  uAjustEstoq in 'uAjustEstoq.pas' {frmAjustEstoq},
  uKardex in 'uKardex.pas' {frmKardex},
  uGrVendas in 'uGrVendas.pas' {frmGrVendas},
  uVenda in 'uVenda.pas' {frmVenda},
  uRelCli in 'uRelCli.pas' {frmRelCli},
  uRelFornec in 'uRelFornec.pas' {frmRelFornec},
  uRelProdutos in 'uRelProdutos.pas' {frmRelProdutos},
  uGerRelCR in 'uGerRelCR.pas' {frmGerRelCR},
  uRelCR in 'uRelCR.pas' {frmRelCR},
  uGerRelCP in 'uGerRelCP.pas' {frmGerRelCP},
  uRelCP in 'uRelCP.pas' {frmRelCP},
  uRelVenda in 'uRelVenda.pas' {frmRelVenda},
  UfrmRelVendas in 'UfrmRelVendas.pas' {frmRelVendas},
  UGrPadraoCadastro in 'lib\UGrPadraoCadastro.pas' {frmGrPadraoCadastro},
  UGrPadrao in 'lib\UGrPadrao.pas' {frmGrPadrao},
  UGeBancos in 'UGeBancos.pas' {frmGeBancos},
  UGeTipoLogradouro in 'UGeTipoLogradouro.pas' {frmGeTipoLogradouro},
  UGeEstado in 'UGeEstado.pas' {frmGeEstado},
  UGeCidade in 'UGeCidade.pas' {frmGeCidade},
  UGeDistrito in 'UGeDistrito.pas' {frmGeDistrito},
  UGeBairro in 'UGeBairro.pas' {frmGeBairro},
  UGeLogradouro in 'UGeLogradouro.pas' {frmGeLogradouro},
  UGeEmpresa in 'UGeEmpresa.pas' {frmGeEmpresa},
  UGeCliente in 'UGeCliente.pas' {frmGeCliente},
  UGeFornecedor in 'UGeFornecedor.pas' {frmGeFornecedor},
  UGeGrupoProduto in 'UGeGrupoProduto.pas' {frmGeGrupoProduto},
  UGeSecaoProduto in 'UGeSecaoProduto.pas' {frmGeSecaoProduto},
  UGeUnidade in 'UGeUnidade.pas' {frmGeUnidade},
  UGeTabelaCFOP in 'UGeTabelaCFOP.pas' {frmGeTabelaCFOP},
  UGeFormaPagto in 'UGeFormaPagto.pas' {frmGeFormaPagto},
  UGeProduto in 'UGeProduto.pas' {frmGeProduto},
  UGeVendedor in 'UGeVendedor.pas' {frmGeVendedor},
  UGeVenda in 'UGeVenda.pas' {frmGeVenda},
  UGeCondicaoPagto in 'UGeCondicaoPagto.pas' {frmGeCondicaoPagto},
  UGeTeste in 'UGeTeste.pas' {frmGeTeste},
  UGeEntradaEstoque in 'UGeEntradaEstoque.pas' {frmGeEntradaEstoque},
  UGeContasAReceber in 'UGeContasAReceber.pas' {frmGeContasAReceber},
  UGrPadraoCadastroSimples in 'lib\UGrPadraoCadastroSimples.pas' {frmGrPadraoCadastroSimples},
  UGeEfetuarPagtoREC in 'UGeEfetuarPagtoREC.pas' {frmGeEfetuarPagtoREC},
  UGeContasAPagar in 'UGeContasAPagar.pas' {frmGeContasAPagar},
  UGeEfetuarPagtoPAG in 'UGeEfetuarPagtoPAG.pas' {frmGeEfetuarPagtoPAG},
  UDMNFe in 'UDMNFe.pas' {DMNFe: TDataModule},
  UGeVendaGerarNFe in 'UGeVendaGerarNFe.pas' {frmGeVendaGerarNFe},
  UGeConfigurarNFeACBr in 'UGeConfigurarNFeACBr.pas' {frmGeConfigurarNFeACBr},
  UGeEntradaEstoqueCancelar in 'UGeEntradaEstoqueCancelar.pas' {frmGeEntradaEstoqueCancelar},
  UEnviarLoteNFe in 'UEnviarLoteNFe.pas' {frmEnviarLoteNFe},
  UGeTipoDespesa in 'UGeTipoDespesa.pas' {frmGeTipoDespesa},
  UfrmAcessoSistema in 'UfrmAcessoSistema.pas' {frmAcessoSistema},
  UGeVendaCancelar in 'UGeVendaCancelar.pas' {frmGeVendaCancelar};


{$R *.res}

begin
  FileINI := TIniFile.Create( ExtractFilePath(ParamStr(0)) + 'Conexao.ini' );

  Application.Initialize;
  Application.Title := 'DGE - Sistema Integrado de Gest�o Empresarial';
  Application.CreateForm(TDMBusiness, DMBusiness);
  Application.CreateForm(TDMNFe, DMNFe);
  Application.CreateForm(TfrmPrinc, frmPrinc);
  Application.CreateForm(TfrmAcessoSistema, frmAcessoSistema);
  Application.CreateForm(TfrmGeVendaCancelar, frmGeVendaCancelar);
  Application.Run;
end.
