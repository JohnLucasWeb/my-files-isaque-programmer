unit uRelFornec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelFornec = class(TForm)
    qckrp: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRDBText9: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    qrlblCliMot: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRSysData3: TQRSysData;
    PageFooterBand2: TQRBand;
    QRSysData2: TQRSysData;
    IBQuery1: TIBQuery;
    ibqryEmpresa: TIBQuery;
    IBQuery1NOMEFORN: TIBStringField;
    IBQuery1CNPJ: TIBStringField;
    IBQuery1CONTATO: TIBStringField;
    IBQuery1ENDER: TIBStringField;
    IBQuery1CIDADE: TIBStringField;
    IBQuery1UF: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFornec: TfrmRelFornec;

implementation

uses UDMBusiness;

{$R *.dfm}

end.
