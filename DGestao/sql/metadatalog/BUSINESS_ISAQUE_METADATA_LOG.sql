
SET TERM ^ ;

CREATE OR ALTER procedure SET_CAIXA_CONSOLIDAR (
    ANO_CAIXA smallint,
    NUM_CAIXA integer)
as
declare variable FORMA_PAGTO smallint;
declare variable FORMA_PAGTO_DESC varchar(50);
declare variable TOTAL_CREDITO numeric(18,2);
declare variable TOTAL_DEBITO numeric(18,2);
declare variable SEQUENCIAL integer;
begin
  -- Limpar Tabela
  Delete from TBCAIXA_CONSOLIDACAO c
  where c.Ano    = :Ano_caixa
    and c.Numero = :Num_caixa
    and c.Forma_pagto is not null;

  for
    Select
        m.Forma_pagto
      , f.Descri
      , sum( case when upper(m.Tipo) = 'C' then coalesce(m.Valor, 0) else 0 end )
      , sum( case when upper(m.Tipo) = 'D' then coalesce(m.Valor, 0) else 0 end )
    from TBCAIXA_MOVIMENTO m
      inner join TBFORMPAGTO f on (f.Cod = m.Forma_pagto)
    where m.Caixa_ano = :Ano_caixa
      and m.Caixa_num = :Num_caixa
      and m.Situacao  = 1 -- Confirmado
    Group by
        m.Forma_pagto
      , f.Descri
    into
        Forma_pagto
      , Forma_pagto_desc
      , Total_credito
      , Total_debito
  do
  begin

    Select
      max(c.Seq)
    from TBCAIXA_CONSOLIDACAO c
    where c.Ano    = :Ano_caixa
      and c.Numero = :Num_caixa
    into
      Sequencial;

    Sequencial = coalesce(:Sequencial, 0) + 1;

    Insert Into TBCAIXA_CONSOLIDACAO (
        Ano
      , Numero
      , Seq
      , Forma_pagto
      , Descricao
      , Total_credito
      , Total_debito
    ) values (
        :Ano_caixa
      , :Num_caixa
      , :Sequencial
      , :Forma_pagto
      , :Forma_pagto_desc
      , coalesce(:Total_credito, 0)
      , coalesce(:Total_debito, 0)
    );

  end 
end
^

SET TERM ; ^



SET TERM ^ ;

CREATE OR ALTER Trigger Tg_caixa_consolidacao_seq For Tbcaixa_consolidacao
Active Before Insert Position 0
AS
  declare variable sequencial Smallint;
begin
  if ( coalesce(new.Seq, 0) = 0 ) then
  begin
    Select
      max(c.Seq)
    from TBCAIXA_CONSOLIDACAO c
    where c.Ano = new.Ano
      and c.Numero = new.Numero
    into
      sequencial;

    new.Seq = coalesce(Sequencial, 0) + 1;
  end
end
^

SET TERM ; ^



SET TERM ^ ;

create procedure GET_CAIXA_ABERTO_DETALHE (
    USUARIO_IN varchar(12),
    DATA date,
    FORMA_PAGTO smallint)
returns (
    ANO smallint,
    NUMERO integer,
    USUARIO varchar(12),
    DATA_ABERTURA date,
    CONTA_CORRENTE integer,
    VALOR_TOTAL_CREDITO numeric(15,2),
    VALOR_TOTAL_DEBITO numeric(15,2))
as
begin

  Select
      gc.Ano_caixa
    , gc.Num_caixa
    , gc.Conta_corrente
  from GET_CAIXA_ABERTO(:Usuario_in, :Data, :Forma_pagto) gc
  into
      Ano
    , Numero
    , Conta_corrente;

  Select
      c.Usuario
    , c.Data_abertura
    , sum( Case when upper(cm.Tipo) = 'C' then cm.Valor else 0 end ) as Valor_total_credito
    , sum( Case when upper(cm.Tipo) = 'D' then cm.Valor else 0 end ) as Valor_total_debito
  from TBCAIXA c
    inner join TBCAIXA_MOVIMENTO cm on (cm.Caixa_ano = c.Ano and cm.Caixa_num = c.Numero)
  where c.Ano    = :Ano
    and c.Numero = :Numero
  Group by
      c.Usuario
    , c.Data_abertura
  into
      Usuario
    , Data_abertura
    , Valor_total_credito
    , Valor_total_debito;

  Valor_total_credito = coalesce(:Valor_total_credito, 0);
  Valor_total_credito = coalesce(:Valor_total_credito, 0);

  suspend;
end
^

SET TERM ; ^

GRANT EXECUTE ON PROCEDURE GET_CAIXA_ABERTO_DETALHE TO "PUBLIC";


SET TERM ^ ;

CREATE OR ALTER procedure GET_CAIXA_ABERTO_DETALHE (
    USUARIO_IN varchar(12),
    DATA date,
    FORMA_PAGTO smallint)
returns (
    ANO smallint,
    NUMERO integer,
    USUARIO varchar(12),
    DATA_ABERTURA date,
    CONTA_CORRENTE integer,
    VALOR_TOTAL_CREDITO numeric(15,2),
    VALOR_TOTAL_DEBITO numeric(15,2))
as
begin

  Select
      gc.Ano_caixa
    , gc.Num_caixa
    , gc.Conta_corrente
  from GET_CAIXA_ABERTO(:Usuario_in, :Data, :Forma_pagto) gc
  into
      Ano
    , Numero
    , Conta_corrente;

  Select
      c.Usuario
    , c.Data_abertura
    , sum( Case when upper(cm.Tipo) = 'C' then cm.Valor else 0 end ) as Valor_total_credito
    , sum( Case when upper(cm.Tipo) = 'D' then cm.Valor else 0 end ) as Valor_total_debito
  from TBCAIXA c
    inner join TBCAIXA_MOVIMENTO cm on (cm.Caixa_ano = c.Ano and cm.Caixa_num = c.Numero)
  where c.Ano    = :Ano
    and c.Numero = :Numero
  Group by
      c.Usuario
    , c.Data_abertura
  into
      Usuario
    , Data_abertura
    , Valor_total_credito
    , Valor_total_debito;

  Valor_total_credito = coalesce(:Valor_total_credito, 0);
  Valor_total_debito  = coalesce(:Valor_total_debito,  0);

  suspend;
end
^

SET TERM ; ^



CREATE DOMAIN DMN_COMISSAO AS
DECIMAL(2,2)
DEFAULT 0
NOT NULL;
COMMENT ON DOMAIN DMN_COMISSAO IS 'Percentual de comissao.';


ALTER TABLE TBVENDEDOR
    ADD COMISSAO DMN_COMISSAO;
COMMENT ON COLUMN TBVENDEDOR.COMISSAO IS
'Percentual de comissao.';


UPDATE TBVENDEDOR
SET COMISSAO = 0 WHERE COMISSAO IS NULL;


ALTER TABLE TBCLIENTE
    ADD DTCAD DMN_DATE_NN;

COMMENT ON COLUMN TBVENDAS.VENDA_PRAZO IS
'Venda A Prazo?
0 - Nao
1 - Sim';


COMMENT ON COLUMN TBPRODUTO.ALIQUOTA_TIPO IS
'Tipo Aliquota:
0 - ICMS (Para Produtos)
1 - ISS  (Para Servicos)';


SET TERM ^ ;

CREATE OR ALTER procedure GET_LIMITE_DISPONIVEL_CLIENTE (
    CPF_CNPJ varchar(18))
returns (
    VALOR_LIMITE numeric(15,2),
    VALOR_COMPRAS_ABERTAS numeric(15,2),
    VALOR_LIMITE_DISPONIVEL numeric(15,2))
as
begin
  Select
      coalesce(c.Valor_limite_compra, 0)
    , sum( coalesce(r.Valorrec, 0) - coalesce(r.Valorrectot, 0) )
  from TBCLIENTE c
    left join TBCONTREC r on ( (r.Cnpj = c.Cnpj and r.Baixado = 0) and ((r.Status is null) or (r.Situacao = 1)) )
  where c.Cnpj = :Cpf_cnpj
  Group by 1
  into
      Valor_limite
    , Valor_compras_abertas;

  Valor_limite            = coalesce(:Valor_limite, 0);
  Valor_limite_disponivel = 0;

  if ( coalesce(:Valor_compras_abertas, 0) <= 0 ) then
    Valor_compras_abertas = 0;

  if ( :Valor_limite > 0 ) then
    Valor_limite_disponivel = :Valor_limite - :Valor_compras_abertas;

  suspend;
end
^

SET TERM ; ^



SET TERM ^ ;

CREATE OR ALTER procedure GET_LIMITE_DISPONIVEL_CLIENTE (
    CPF_CNPJ varchar(18))
returns (
    VALOR_LIMITE numeric(15,2),
    VALOR_COMPRAS_ABERTAS numeric(15,2),
    VALOR_LIMITE_DISPONIVEL numeric(15,2))
as
begin
  Select
      coalesce(c.Valor_limite_compra, 0)
    , sum( coalesce(r.Valorrec, 0) - coalesce(r.Valorrectot, 0) )
  from TBCLIENTE c
    left join TBCONTREC r on ( (r.Cnpj = c.Cnpj and r.Baixado = 0 and r.Parcela > 0) and ((r.Status is null) or (r.Situacao = 1)) )
  where c.Cnpj = :Cpf_cnpj
  Group by 1
  into
      Valor_limite
    , Valor_compras_abertas;

  Valor_limite            = coalesce(:Valor_limite, 0);
  Valor_limite_disponivel = 0;

  if ( coalesce(:Valor_compras_abertas, 0) <= 0 ) then
    Valor_compras_abertas = 0;

  if ( :Valor_limite > 0 ) then
    Valor_limite_disponivel = :Valor_limite - :Valor_compras_abertas;

  suspend;
end
^

SET TERM ; ^



SET TERM ^ ;

CREATE OR ALTER Trigger Tg_vendas_cancelar For Tbvendas
Active After Update Position 2
AS
  declare variable produto varchar(10);
  declare variable empresa varchar(18);
  declare variable estoque integer;
  declare variable quantidade integer;
  declare variable valor_produto numeric(15,2);
begin
  if ( (coalesce(old.Status, 0) <> coalesce(new.Status, 0)) and (new.Status = 5)) then
  begin

    -- Retornar produto do Estoque
    for
      Select
          i.Codprod
        , i.Codemp
        , i.Qtde
        , coalesce(p.Qtde, 0)
        , coalesce(p.Preco, 0)
      from TVENDASITENS i
        inner join TBPRODUTO p on (p.Cod = i.Codprod)
      where i.Ano = new.Ano
        and i.Codcontrol = new.Codcontrol
      into
          produto
        , empresa
        , quantidade
        , estoque
        , valor_produto
    do
    begin
      estoque = :Estoque + :Quantidade;

      -- Retornar estoque
      Update TBPRODUTO p Set
        p.Qtde = :Estoque
      where p.Cod    = :Produto
        and p.Codemp = :Empresa;

      -- Gerar hist�rico
      Insert Into TBPRODHIST (
          Codempresa
        , Codprod
        , Doc
        , Historico
        , Dthist
        , Qtdeatual
        , Qtdenova
        , Qtdefinal
        , Resp
        , Motivo
      ) values (
          :Empresa
        , :Produto
        , new.Ano || '/' || new.Codcontrol
        , 'ENTRADA - VENDA CANCELADA'
        , Current_time
        , :Estoque - :Quantidade
        , :Quantidade
        , :Estoque
        , new.Cancel_usuario
        , 'Venda no valor de R$ ' || :Valor_produto
      );

    end

    -- Cancelar Contas A Receber (Apenas parcelas nao pagas)
    Update TBCONTREC r Set
        r.status   = 'CANCELADA'
      , r.Situacao = 0 -- Cancelado
    where r.anovenda = new.ano
      and r.numvenda = new.codcontrol
      and coalesce(r.Valorrectot, 0) = 0;

    -- Cancelar Movimento Caixa
    Update TBCAIXA_MOVIMENTO m Set
      m.Situacao = 0 -- Cancelado
    where m.Empresa = new.Codemp
      and m.Cliente = new.Codcli
      and m.Venda_ano = new.Ano
      and m.Venda_num = new.Codcontrol;
     
  end 
end
^

SET TERM ; ^



CREATE TABLE TBFABRICANTE (
    COD DMN_INTEGER_NN NOT NULL,
    NOME DMN_VCHAR_50);
alter table TBFABRICANTE
add constraint PK_TBFABRICANTE
primary key (COD);
COMMENT ON COLUMN TBFABRICANTE.COD IS
'Codigo.';
COMMENT ON COLUMN TBFABRICANTE.NOME IS
'Nome.';
GRANT ALL ON TBFABRICANTE TO "PUBLIC";


ALTER TABLE TBPRODUTO
    ADD CODFABRICANTE INTEGER;
COMMENT ON COLUMN TBPRODUTO.CODFABRICANTE IS
'Fabricante.';
alter table TBPRODUTO
alter CODIGO position 1;
alter table TBPRODUTO
alter COD position 2;
alter table TBPRODUTO
alter DESCRI position 3;
alter table TBPRODUTO
alter MODELO position 4;
alter table TBPRODUTO
alter PRECO position 5;
alter table TBPRODUTO
alter PRECO_PROMOCAO position 6;
alter table TBPRODUTO
alter REFERENCIA position 7;
alter table TBPRODUTO
alter SECAO position 8;
alter table TBPRODUTO
alter QTDE position 9;
alter table TBPRODUTO
alter UNIDADE position 10;
alter table TBPRODUTO
alter ESTOQMIN position 11;
alter table TBPRODUTO
alter CODGRUPO position 12;
alter table TBPRODUTO
alter CODFABRICANTE position 13;
alter table TBPRODUTO
alter CUSTOMEDIO position 14;
alter table TBPRODUTO
alter CODEMP position 15;
alter table TBPRODUTO
alter CODSECAO position 16;
alter table TBPRODUTO
alter CODORIGEM position 17;
alter table TBPRODUTO
alter CODTRIBUTACAO position 18;
alter table TBPRODUTO
alter CST position 19;
alter table TBPRODUTO
alter CSOSN position 20;
alter table TBPRODUTO
alter NCM_SH position 21;
alter table TBPRODUTO
alter CODCFOP position 22;
alter table TBPRODUTO
alter CODBARRA_EAN position 23;
alter table TBPRODUTO
alter CODUNIDADE position 24;
alter table TBPRODUTO
alter ALIQUOTA_TIPO position 25;
alter table TBPRODUTO
alter ALIQUOTA position 26;
alter table TBPRODUTO
alter ALIQUOTA_CSOSN position 27;
alter table TBPRODUTO
alter VALOR_IPI position 28;
alter table TBPRODUTO
alter RESERVA position 29;


alter table TBPRODUTO
add constraint FK_TBPRODUTO_FABRICANTE
foreign key (CODFABRICANTE)
references TBFABRICANTE(COD);


COMMENT ON COLUMN TBPRODUTO.ALIQUOTA IS
'Percencial da Aliquota.';


CREATE DOMAIN DMN_QUANTIDADE_D3 AS
NUMERIC(18,3)
DEFAULT 0
NOT NULL;;
COMMENT ON DOMAIN DMN_QUANTIDADE_D3 IS 'Quantidade

(Aceita valores decimais)';


ALTER TABLE TBPRODUTO DROP CONSTRAINT FK_TBPRODUTO_FABRICANTE;


update RDB$RELATION_FIELDS set
RDB$FIELD_SOURCE = 'DMN_INTEGER_N'
where (RDB$FIELD_NAME = 'CODFABRICANTE') and
(RDB$RELATION_NAME = 'TBPRODUTO')
;


alter table TBPRODUTO
add constraint FK_TBPRODUTO_FABRICANTE
foreign key (CODFABRICANTE)
references TBFABRICANTE(COD);


CREATE SEQUENCE GEN_TBFABRICANTE_ID;
SET TERM ^ ;

CREATE TRIGGER TG_FABRICANTE_COD FOR TBFABRICANTE
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
  IF (NEW.COD IS NULL) THEN
    NEW.COD = GEN_ID(GEN_TBFABRICANTE_ID,1);
END
^

SET TERM ; ^



CREATE SEQUENCE GEN_FABRICANTE_ID;


SET TERM ^ ;

CREATE OR ALTER Trigger Tg_fabricante_cod For Tbfabricante
Active Before Insert Position 0
AS
BEGIN
  IF (NEW.COD IS NULL) THEN
    NEW.COD = GEN_ID(GEN_FABRICANTE_ID, 1);
END
^

SET TERM ; ^



SET TERM ^ ;

CREATE OR ALTER Trigger Tg_fabricante_cod For Tbfabricante
Active Before Insert Position 0
AS
BEGIN
  IF (NEW.COD IS NULL) THEN
    NEW.COD = GEN_ID(GEN_FABRICANTE_ID, 1);
END
^

SET TERM ; ^



DROP SEQUENCE GEN_TBFABRICANTE_ID;

/*!!! Error occured !!!
Invalid token.
Dynamic SQL Error.
SQL error code = -104.
Token unknown - line 35, column 42.
trim.

*/


ALTER TABLE TB_TESTE DROP CONSTRAINT PK_TB_TESTE;


ALTER TABLE TBCLIENTE
    ADD BLOQUEADO DMN_LOGICO DEFAULT 0,
    ADD BLOQUEADO_DATA DMN_DATE,
    ADD BLOQUEADO_MOTIVO DMN_TEXTO,
    ADD BLOQUEADO_USUARIO DMN_VCHAR_50;
COMMENT ON COLUMN TBCLIENTE.BLOQUEADO IS
'Bloqueado?
0 - Nao
1 - Sim';
COMMENT ON COLUMN TBCLIENTE.BLOQUEADO_DATA IS
'Data do bloqueio.';
COMMENT ON COLUMN TBCLIENTE.BLOQUEADO_MOTIVO IS
'Motivo do bloqueio.';
COMMENT ON COLUMN TBCLIENTE.BLOQUEADO_USUARIO IS
'Usuario do bloqueio.';


CREATE INDEX IDX_TBCLIENTE_BLOQUEADO
ON TBCLIENTE (BLOQUEADO);

/*!!! Error occured !!!
Invalid token.
Dynamic SQL Error.
SQL error code = -104.
Token unknown - line 6, column 3.
from.

*/


ALTER TABLE TBCLIENTE
    ADD DESBLOQUEADO_DATA DMN_DATE;
COMMENT ON COLUMN TBCLIENTE.DESBLOQUEADO_DATA IS
'Data de desbloqueio.';


ALTER TABLE TBFORMPAGTO
    ADD DEBITAR_LIMITE_CLIENTE DMN_LOGICO DEFAULT 1;
COMMENT ON COLUMN TBFORMPAGTO.DEBITAR_LIMITE_CLIENTE IS
'Forma de Pagamento DECREMENTA Limite de Credito do Cliente:
0 - Nao
1 - Sim';

/*------ SYSDBA 30/10/2012 18:07:05 --------*/

Update TBFORMPAGTO x Set x.Debitar_limite_cliente = 1;
COMMIT WORK;


SET TERM ^ ;

CREATE OR ALTER procedure GET_LIMITE_DISPONIVEL_CLIENTE (
    CPF_CNPJ varchar(18))
returns (
    VALOR_LIMITE numeric(15,2),
    VALOR_COMPRAS_ABERTAS numeric(15,2),
    VALOR_LIMITE_DISPONIVEL numeric(15,2))
as
begin
  Select
      coalesce(c.Valor_limite_compra, 0)
    , sum( coalesce(r.Valorrec, 0) - coalesce(r.Valorrectot, 0) )
  from TBCLIENTE c
    left join TBCONTREC r on ( (r.Cnpj = c.Cnpj and r.Baixado = 0 and r.Parcela > 0) and ((r.Status is null) or (r.Situacao = 1)) )
    left join TBFORMPAGTO f on (f.Cod = r.Forma_pagto and f.Debitar_limite_cliente = 1)
  where c.Cnpj = :Cpf_cnpj
  Group by 1
  into
      Valor_limite
    , Valor_compras_abertas;

  Valor_limite            = coalesce(:Valor_limite, 0);
  Valor_limite_disponivel = 0;

  if ( coalesce(:Valor_compras_abertas, 0) <= 0 ) then
    Valor_compras_abertas = 0;

  if ( :Valor_limite > 0 ) then
    Valor_limite_disponivel = :Valor_limite - :Valor_compras_abertas;

  suspend;
end
^

SET TERM ; ^



CREATE TABLE TBSEGMENTO (
    SEG_ID DMN_SMALLINT_NN NOT NULL,
    SEG_DESCRICAO DMN_NOME);

ALTER TABLE TBSEGMENTO
ADD CONSTRAINT PK_TBSEGMENTO
PRIMARY KEY (SEG_ID);

COMMENT ON COLUMN TBSEGMENTO.SEG_ID IS
'C�digo.';

COMMENT ON COLUMN TBSEGMENTO.SEG_DESCRICAO IS
'Descri��o.';



COMMENT ON TABLE TBSEGMENTO IS 'Tabela de Segmentos.
    
    Autor   :   Isaque Marinho Ribeiro
    Data    :   07/11/2012

Tabela respons�vel por armazenar os c�digos e descri��es dos segmentos que a empresa poder� assumir.';

GRANT ALL ON TBSEGMENTO TO "PUBLIC";


SET TERM ^ ;

create or alter procedure SET_SEGMENTO (
    SEG_ID smallint,
    SEG_DESCRICAO varchar(60))
as
begin
  if ( (:Seg_id is null) or (:Seg_descricao is null)  ) then
    Exit;

  if ( not exists(
    Select
      s.Seg_id
    from TBSEGMENTO s
    where s.Seg_id = :Seg_id
  ) ) then
    Update TBSEGMENTO u Set
      u.Seg_descricao = :Seg_descricao
    where u.Seg_id = :Seg_id;
  else
    Insert Into TBSEGMENTO (
        Seg_id
      , Seg_descricao
    ) values (
        :Seg_id
      , :Seg_descricao
    );
end^

SET TERM ; ^

GRANT EXECUTE ON PROCEDURE SET_SEGMENTO TO "PUBLIC";


ALTER TABLE TBEMPRESA
    ADD SEGMENTO DMN_SMALLINT_N;

COMMENT ON COLUMN TBEMPRESA.SEGMENTO IS
'Segmento.';

alter table TBEMPRESA
alter CODIGO position 1;

alter table TBEMPRESA
alter PESSOA_FISICA position 2;

alter table TBEMPRESA
alter CNPJ position 3;

alter table TBEMPRESA
alter RZSOC position 4;

alter table TBEMPRESA
alter NMFANT position 5;

alter table TBEMPRESA
alter IE position 6;

alter table TBEMPRESA
alter IM position 7;

alter table TBEMPRESA
alter CNAE position 8;

alter table TBEMPRESA
alter SEGMENTO position 9;

alter table TBEMPRESA
alter ENDER position 10;

alter table TBEMPRESA
alter COMPLEMENTO position 11;

alter table TBEMPRESA
alter BAIRRO position 12;

alter table TBEMPRESA
alter CEP position 13;

alter table TBEMPRESA
alter CIDADE position 14;

alter table TBEMPRESA
alter UF position 15;

alter table TBEMPRESA
alter FONE position 16;

alter table TBEMPRESA
alter LOGO position 17;

alter table TBEMPRESA
alter TLG_TIPO position 18;

alter table TBEMPRESA
alter LOG_COD position 19;

alter table TBEMPRESA
alter BAI_COD position 20;

alter table TBEMPRESA
alter CID_COD position 21;

alter table TBEMPRESA
alter EST_COD position 22;

alter table TBEMPRESA
alter NUMERO_END position 23;

alter table TBEMPRESA
alter EMAIL position 24;

alter table TBEMPRESA
alter HOME_PAGE position 25;

alter table TBEMPRESA
alter CHAVE_ACESSO_NFE position 26;

alter table TBEMPRESA
alter PAIS_ID position 27;

alter table TBEMPRESA
alter TIPO_REGIME_NFE position 28;

alter table TBEMPRESA
alter SERIE_NFE position 29;

alter table TBEMPRESA
alter NUMERO_NFE position 30;

alter table TBEMPRESA
alter LOTE_ANO_NFE position 31;

alter table TBEMPRESA
alter LOTE_NUM_NFE position 32;



ALTER TABLE TBEMPRESA
ADD CONSTRAINT FK_TBEMPRESA_SEGMENTO
FOREIGN KEY (SEGMENTO)
REFERENCES TBSEGMENTO(SEG_ID)
ON UPDATE CASCADE;



CREATE DOMAIN DMN_VCHAR_100 AS
VARCHAR(100);

ALTER TABLE TBPRODUTO
    ADD APRESENTACAO DMN_VCHAR_50,
    ADD DESCRI_APRESENTACAO DMN_VCHAR_100;

COMMENT ON COLUMN TBPRODUTO.DESCRI IS
'Descri��o.';

COMMENT ON COLUMN TBPRODUTO.APRESENTACAO IS
'Apresenta��o.';

COMMENT ON COLUMN TBPRODUTO.DESCRI_APRESENTACAO IS
'Campo Calculado = Descri��o + Apresenta��o.';

alter table TBPRODUTO
alter CODIGO position 1;

alter table TBPRODUTO
alter COD position 2;

alter table TBPRODUTO
alter DESCRI position 3;

alter table TBPRODUTO
alter APRESENTACAO position 4;

alter table TBPRODUTO
alter DESCRI_APRESENTACAO position 5;

alter table TBPRODUTO
alter MODELO position 6;

alter table TBPRODUTO
alter PRECO position 7;

alter table TBPRODUTO
alter PRECO_PROMOCAO position 8;

alter table TBPRODUTO
alter REFERENCIA position 9;

alter table TBPRODUTO
alter SECAO position 10;

alter table TBPRODUTO
alter QTDE position 11;

alter table TBPRODUTO
alter UNIDADE position 12;

alter table TBPRODUTO
alter ESTOQMIN position 13;

alter table TBPRODUTO
alter CODGRUPO position 14;

alter table TBPRODUTO
alter CODFABRICANTE position 15;

alter table TBPRODUTO
alter CUSTOMEDIO position 16;

alter table TBPRODUTO
alter CODEMP position 17;

alter table TBPRODUTO
alter CODSECAO position 18;

alter table TBPRODUTO
alter CODORIGEM position 19;

alter table TBPRODUTO
alter CODTRIBUTACAO position 20;

alter table TBPRODUTO
alter CST position 21;

alter table TBPRODUTO
alter CSOSN position 22;

alter table TBPRODUTO
alter NCM_SH position 23;

alter table TBPRODUTO
alter CODCFOP position 24;

alter table TBPRODUTO
alter CODBARRA_EAN position 25;

alter table TBPRODUTO
alter CODUNIDADE position 26;

alter table TBPRODUTO
alter ALIQUOTA_TIPO position 27;

alter table TBPRODUTO
alter ALIQUOTA position 28;

alter table TBPRODUTO
alter ALIQUOTA_CSOSN position 29;

alter table TBPRODUTO
alter VALOR_IPI position 30;

alter table TBPRODUTO
alter RESERVA position 31;



SET TERM ^ ;

CREATE OR ALTER procedure SET_SEGMENTO (
    SEG_ID smallint,
    SEG_DESCRICAO varchar(60))
as
begin
  if ( (:Seg_id is null) or (:Seg_descricao is null)  ) then
    Exit;

  if ( exists(
    Select
      s.Seg_id
    from TBSEGMENTO s
    where s.Seg_id = :Seg_id
  ) ) then
    Update TBSEGMENTO u Set
      u.Seg_descricao = :Seg_descricao
    where u.Seg_id = :Seg_id;
  else
    Insert Into TBSEGMENTO (
        Seg_id
      , Seg_descricao
    ) values (
        :Seg_id
      , :Seg_descricao
    );
end^

SET TERM ; ^



COMMENT ON COLUMN TBSEGMENTO.SEG_DESCRICAO IS
'Descricao.';



COMMENT ON COLUMN TBSEGMENTO.SEG_ID IS
'Codigo.';



COMMENT ON TABLE TBSEGMENTO IS 'Tabela de Segmentos.
    
    Autor   :   Isaque Marinho Ribeiro
    Data    :   07/11/2012

Tabela responsavel por armazenar os codigos e descricoes dos segmentos que a empresa podera assumir.';



COMMENT ON COLUMN TBPRODUTO.DESCRI IS
'Descricao.';



COMMENT ON COLUMN TBPRODUTO.APRESENTACAO IS
'Apresentacao.';



COMMENT ON COLUMN TBPRODUTO.DESCRI_APRESENTACAO IS
'Campo Calculado = Descricao + Apresentacao.';



CREATE INDEX IBE$$RC_TEMP_INDEX
ON RDB$RELATION_CONSTRAINTS (RDB$INDEX_NAME);



DROP INDEX IBE$$RC_TEMP_INDEX;



alter table TBEMPRESA
alter column CODIGO position 1;

alter table TBEMPRESA
alter column PESSOA_FISICA position 2;

alter table TBEMPRESA
alter column CNPJ position 3;

alter table TBEMPRESA
alter column RZSOC position 4;

alter table TBEMPRESA
alter column NMFANT position 5;

alter table TBEMPRESA
alter column IE position 6;

alter table TBEMPRESA
alter column IM position 7;

alter table TBEMPRESA
alter column SEGMENTO position 8;

alter table TBEMPRESA
alter column CNAE position 9;

alter table TBEMPRESA
alter column ENDER position 10;

alter table TBEMPRESA
alter column COMPLEMENTO position 11;

alter table TBEMPRESA
alter column BAIRRO position 12;

alter table TBEMPRESA
alter column CEP position 13;

alter table TBEMPRESA
alter column CIDADE position 14;

alter table TBEMPRESA
alter column UF position 15;

alter table TBEMPRESA
alter column FONE position 16;

alter table TBEMPRESA
alter column LOGO position 17;

alter table TBEMPRESA
alter column TLG_TIPO position 18;

alter table TBEMPRESA
alter column LOG_COD position 19;

alter table TBEMPRESA
alter column BAI_COD position 20;

alter table TBEMPRESA
alter column CID_COD position 21;

alter table TBEMPRESA
alter column EST_COD position 22;

alter table TBEMPRESA
alter column NUMERO_END position 23;

alter table TBEMPRESA
alter column EMAIL position 24;

alter table TBEMPRESA
alter column HOME_PAGE position 25;

alter table TBEMPRESA
alter column CHAVE_ACESSO_NFE position 26;

alter table TBEMPRESA
alter column PAIS_ID position 27;

alter table TBEMPRESA
alter column TIPO_REGIME_NFE position 28;

alter table TBEMPRESA
alter column SERIE_NFE position 29;

alter table TBEMPRESA
alter column NUMERO_NFE position 30;

alter table TBEMPRESA
alter column LOTE_ANO_NFE position 31;

alter table TBEMPRESA
alter column LOTE_NUM_NFE position 32;

alter table TBPRODUTO
alter column CODIGO position 1;

alter table TBPRODUTO
alter column COD position 2;

alter table TBPRODUTO
alter column DESCRI position 3;

alter table TBPRODUTO
alter column APRESENTACAO position 4;

alter table TBPRODUTO
alter column DESCRI_APRESENTACAO position 5;

alter table TBPRODUTO
alter column MODELO position 6;

alter table TBPRODUTO
alter column PRECO position 7;

alter table TBPRODUTO
alter column PRECO_PROMOCAO position 8;

alter table TBPRODUTO
alter column REFERENCIA position 9;

alter table TBPRODUTO
alter column SECAO position 10;

alter table TBPRODUTO
alter column QTDE position 11;

alter table TBPRODUTO
alter column UNIDADE position 12;

alter table TBPRODUTO
alter column ESTOQMIN position 13;

alter table TBPRODUTO
alter column CODGRUPO position 14;

alter table TBPRODUTO
alter column CODFABRICANTE position 15;

alter table TBPRODUTO
alter column CUSTOMEDIO position 16;

alter table TBPRODUTO
alter column CODEMP position 17;

alter table TBPRODUTO
alter column CODSECAO position 18;

alter table TBPRODUTO
alter column CODORIGEM position 19;

alter table TBPRODUTO
alter column CODTRIBUTACAO position 20;

alter table TBPRODUTO
alter column CST position 21;

alter table TBPRODUTO
alter column CSOSN position 22;

alter table TBPRODUTO
alter column NCM_SH position 23;

alter table TBPRODUTO
alter column CODCFOP position 24;

alter table TBPRODUTO
alter column CODBARRA_EAN position 25;

alter table TBPRODUTO
alter column CODUNIDADE position 26;

alter table TBPRODUTO
alter column ALIQUOTA_TIPO position 27;

alter table TBPRODUTO
alter column ALIQUOTA position 28;

alter table TBPRODUTO
alter column ALIQUOTA_CSOSN position 29;

alter table TBPRODUTO
alter column VALOR_IPI position 30;

alter table TBPRODUTO
alter column RESERVA position 31;

ALTER TABLE TBPRODUTO
    ADD PRODUTO_NOVO DMN_LOGICO DEFAULT 0;

COMMENT ON COLUMN TBPRODUTO.PRODUTO_NOVO IS
'Produto novo:
0 - Nao
1 - Sim';

