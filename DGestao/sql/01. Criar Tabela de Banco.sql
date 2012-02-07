/******************************************************************************/
/***               Generated by IBExpert 22/12/2011 22:56:53                ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE TBBANCO_BOLETO (
    BCO_COD                SMALLINT NOT NULL,
    BCO_CARTEIRA           VARCHAR(10) NOT NULL,
    BCO_NOME               VARCHAR(50),
    BCO_CHAVE              VARCHAR(10),
    BCO_AGENCIA            VARCHAR(10),
    BCO_CC                 VARCHAR(10),
    BCO_NOSSO_NUM_INICIO   VARCHAR(10),
    BCO_NOSSO_NUM_FINAL    VARCHAR(10),
    BCO_NOSSO_NUM_PROXIMO  VARCHAR(10),
    BCO_CONFG_1            VARCHAR(20),
    BCO_CONFG_2            VARCHAR(20),
    BCO_SEQUENCIAL_REM     INTEGER DEFAULT 1 NOT NULL,
    BCO_DIRETORIO_REMESSA  VARCHAR(100),
    BCO_DIRETORIO_RETORNO  VARCHAR(100)
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE TBBANCO_BOLETO ADD CONSTRAINT PK_TBBANCO_BOLETO PRIMARY KEY (BCO_COD);


/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/


/* Privileges of users */
GRANT ALL ON TBBANCO_BOLETO TO PUBLIC;