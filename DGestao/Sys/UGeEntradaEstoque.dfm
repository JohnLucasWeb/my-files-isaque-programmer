inherited frmGeEntradaEstoque: TfrmGeEntradaEstoque
  Left = 540
  Top = 234
  Width = 1074
  Height = 716
  ActiveControl = dbEmpresa
  Caption = 'Controle de Entradas no Estoque'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 674
    Width = 1058
  end
  inherited Bevel3: TBevel
    Top = 635
    Width = 1058
  end
  inherited tlbBotoes: TToolBar
    Top = 639
    Width = 1058
    object btbtnFinalizar: TBitBtn
      Left = 726
      Top = 2
      Width = 120
      Height = 31
      Caption = '&Finalizar Entrada'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = btbtnFinalizarClick
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000000000000000000000000000000000000000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FFCDA187E5BC9E0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF9D9D9DB7B7B700
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FFAA7457904820B47657F0CEB30000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF707070434343727272C9
        C9C90000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FFA55839D07850D07040B06030CB91730000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF5656567474746B6B6B5959598D
        8D8D0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        A05030D07850F09060E19C75D08860B96F42D3A4860000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF4E4E4E7474748B8B8B97979783838368
        68689F9F9F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFA56039
        E08050F09060F3AF8E0000FFF2AA86D08860B46739EBC9AF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF5B5B5B7B7B7B8B8B8BABABAB0000FFA6A6A683
        8383606060C4C4C40000FF0000FF0000FF0000FF0000FF0000FF0000FFF1B698
        F0A890F2AC820000FF0000FF0000FFE6AA86D08860AA6841F2C7B40000FF0000
        FF0000FF0000FF0000FF0000FFB2B2B2A8A8A8A6A6A60000FF0000FF0000FFA5
        A5A5838383626262C5C5C50000FF0000FF0000FF0000FF0000FF0000FFFDE0CD
        F7CEB60000FF0000FF0000FF0000FF0000FFE19C75D07850B47D56F2CCB30000
        FF0000FF0000FF0000FF0000FFDDDDDDCACACA0000FF0000FF0000FF0000FF00
        00FF979797747474767676C8C8C80000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FFE19C74C07040C38C74F1CA
        B00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF9696966969698A8A8AC6C6C60000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFE29F79C07040D29B
        82EBC3A80000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF9A9A9A696969999999BEBEBE0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFF1AF91C070
        50E4B99B0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FFACACAC6E6E6EB4B4B40000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFF1C1
        A7D291720000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FFBEBEBE8E8E8E0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF}
      NumGlyphs = 2
    end
    object Bevel12: TBevel
      Left = 846
      Top = 2
      Width = 4
      Height = 31
      Shape = bsSpacer
    end
  end
  inherited pgcGuias: TPageControl
    Width = 1058
    Height = 635
    OnChange = pgcGuiasChange
    inherited tbsTabela: TTabSheet
      inherited Bevel4: TBevel
        Top = 540
        Width = 1050
      end
      inherited dbgDados: TDBGrid
        Width = 1050
        Height = 540
        Columns = <
          item
            Expanded = False
            FieldName = 'CODCONTROL'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTENT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NF'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFSERIE'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEMISS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEFORN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTALPROD'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTALNF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Width = 110
            Visible = True
          end>
      end
      inherited pnlFiltros: TPanel
        Top = 544
        Width = 1050
        inherited grpBxFiltro: TGroupBox
          Left = 613
          Width = 433
          inherited lbltFiltrar: TLabel
            Left = 166
            Width = 47
            Caption = 'Entrada:'
          end
          inherited btnFiltrar: TSpeedButton
            Left = 388
          end
          object lblData: TLabel [2]
            Left = 14
            Top = 25
            Width = 30
            Height = 13
            Caption = 'Data:'
            FocusControl = edData
          end
          inherited edtFiltrar: TEdit
            Left = 216
            Width = 168
            TabOrder = 1
          end
          object edData: TDateTimePicker
            Left = 56
            Top = 21
            Width = 105
            Height = 21
            Date = 40913.000000000000000000
            Time = 40913.000000000000000000
            TabOrder = 0
          end
        end
      end
    end
    inherited tbsCadastro: TTabSheet
      inherited Bevel8: TBevel
        Top = 113
        Width = 1050
      end
      object Bevel5: TBevel [1]
        Left = 0
        Top = 313
        Width = 1050
        Height = 4
        Align = alTop
        Shape = bsSpacer
      end
      object Bevel9: TBevel [2]
        Left = 0
        Top = 456
        Width = 1050
        Height = 4
        Align = alBottom
        Shape = bsSpacer
      end
      object Bevel11: TBevel [3]
        Left = 0
        Top = 193
        Width = 1050
        Height = 4
        Align = alTop
        Shape = bsSpacer
      end
      inherited GrpBxDadosNominais: TGroupBox
        Width = 1050
        Height = 113
        Caption = 'Dados nominais da NF'
        inherited lblCodigo: TLabel
          Width = 67
          Caption = 'No. Entrada:'
        end
        object lblDataHora: TLabel [1]
          Left = 112
          Top = 24
          Width = 63
          Height = 13
          Caption = 'Data/Hora:'
          FocusControl = dbDataHora
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblEmpresa: TLabel [2]
          Left = 240
          Top = 24
          Width = 45
          Height = 13
          Caption = 'Empresa:'
          FocusControl = dbEmpresa
        end
        object lblFornecedor: TLabel [3]
          Left = 672
          Top = 24
          Width = 59
          Height = 13
          Caption = 'Fornecedor:'
          FocusControl = dbFornecedor
        end
        object lblDataEmissao: TLabel [4]
          Left = 16
          Top = 64
          Width = 68
          Height = 13
          Caption = 'Data Emiss'#227'o:'
          FocusControl = dbDataEmissao
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblNotaFiscal: TLabel [5]
          Left = 112
          Top = 64
          Width = 56
          Height = 13
          Caption = 'Nota Fiscal:'
          FocusControl = dbNotaFiscal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblSerie: TLabel [6]
          Left = 240
          Top = 64
          Width = 28
          Height = 13
          Caption = 'S'#233'rie:'
          FocusControl = dbSerie
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblDataEntrada: TLabel [7]
          Left = 288
          Top = 64
          Width = 68
          Height = 13
          Caption = 'Data Entrada:'
          FocusControl = dbDataEntrada
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblCFOPNF: TLabel [8]
          Left = 384
          Top = 64
          Width = 31
          Height = 13
          Caption = 'CFOP:'
          FocusControl = dbCFOPNF
        end
        object lblSituacao: TLabel [9]
          Left = 848
          Top = 64
          Width = 52
          Height = 13
          Caption = 'Situa'#231#227'o:'
          FocusControl = dbSituacao
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited dbCodigo: TDBEdit
          Width = 89
          TabStop = False
          Color = clMoneyGreen
          DataField = 'CODCONTROL'
        end
        object dbDataHora: TDBEdit
          Left = 112
          Top = 40
          Width = 121
          Height = 21
          TabStop = False
          Color = clMoneyGreen
          DataField = 'DTLANCAMENTO'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object dbEmpresa: TDBLookupComboBox
          Left = 240
          Top = 40
          Width = 425
          Height = 21
          DataField = 'CODEMP'
          DataSource = DtSrcTabela
          DropDownRows = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'CNPJ'
          ListField = 'RZSOC'
          ListSource = dtsEmpresa
          ParentFont = False
          TabOrder = 2
        end
        object dbFornecedor: TRxDBComboEdit
          Left = 672
          Top = 40
          Width = 361
          Height = 21
          ButtonHint = 'Pesquisar Cliente (Ctrl+P)'
          CharCase = ecUpperCase
          ClickKey = 16464
          Color = clMoneyGreen
          DataField = 'NOMEFORN'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000000000000000000000000000000000001DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5B1AD
            AC203040ACA5A21DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7F7F7F7FACA5A2C3C3C31DE6B5B0A090
            6048306048306048306048306048306048306048306048306048305048403050
            604078C0304860B1ACA6C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3B1ACA61DE6B5B0A090
            FFFFFFB0A090B0A090B0A090B0A090B0A090B0A090B0A0909088803050703080
            D04098E050B0F0506870C3C3C37F7F7FFFFFFFC3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C39088807F7F7FC3C3C3C3C3C3C3C3C37F7F7F1DE6B5B0A090
            FFFFFFFFFFFFFFF8FFF0F0F0D0D8D090989070686060686050586040709040A0
            E060C8FF7090A0C5BEB5C3C3C37F7F7FFFFFFFFFFFFFFFF8FFF0F0F0D0D8D07F
            7F7F7F7F7F7F7F7F505860C3C3C3C3C3C3C3C3C37090A0C5BEB51DE6B5B0A090
            FFFFFFFFFFFFFFFFFFE0E0E0909090B0A8A0D0C0B0D0B0A08078705058506090
            B07098B0AEAEAA1DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFE0E0E07F7F7F7F
            7F7FD0C0B0D0B0A0807870505850C3C3C37098B0AEAEAAC3C3C31DE6B5B0A090
            FFFFFFFFFFFFFFFFFFB0B0B0C0B8B0FFF0E0FFE8E0F0D8C0F0D0B08078709D8F
            8CAEAFAA1DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F0E0FFE8E0F0D8C0F0D0B08078709D8F8CAEAFAAC3C3C3C3C3C31DE6B5C0A890
            FFFFFFFFFFFFFFFFFFA09890F0E8E0FFF8F0FFF0F0FFE8E0F0D8D0D0B0A06367
            5E1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F8F0FFF0F0FFE8E0F0D8D0D0B0A063675EC3C3C3C3C3C3C3C3C31DE6B5C0A8A0
            FFFFFFFFFFFFFFFFFFA0A090F0E8E0FFFFFFFFF8F0FFF0F0FFE8E0E0C0B0716E
            6C1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFF8F0FFF0F0FFE8E0E0C0B0716E6CC3C3C3C3C3C3C3C3C31DE6B5C0B0A0
            FFFFFFFFFFFFFFFFFFC0C8C0C0C0C0FFFFFFFFFFFFFFF8F0FFF0E0B0A090A69C
            951DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFFFFFFFF8F0FFF0E0B0A090A69C95C3C3C3C3C3C3C3C3C31DE6B5D0B0A0
            FFFFFFFFFFFFFFFFFFF0F8FFC0B8B0C0C0C0F0E8E0F0E8E0B0B0A07070601DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFF0F8FF7F7F7F7F
            7F7FF0E8E0F0E8E0B0B0A0707060C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8A0
            FFFFFFFFFFFFFFFFFFFFFFFFF0F8FFC0C8C0A0A0909090809090906050401DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF0F8FF7F
            7F7FA0A0907F7F7F909090605040C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A0906048306048306048301DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F604830604830604830C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C06048301DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7FC3C3C3604830C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A0604830E0C6B71DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0D0B0A0E0C7B91DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 3
          OnButtonClick = dbFornecedorButtonClick
        end
        object dbDataEmissao: TDBEdit
          Left = 16
          Top = 80
          Width = 89
          Height = 21
          Color = clWhite
          DataField = 'DTEMISS'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object dbNotaFiscal: TDBEdit
          Left = 112
          Top = 80
          Width = 121
          Height = 21
          Color = clWhite
          DataField = 'NF'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object dbSerie: TDBEdit
          Left = 240
          Top = 80
          Width = 41
          Height = 21
          Color = clWhite
          DataField = 'NFSERIE'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object dbDataEntrada: TDBEdit
          Left = 288
          Top = 80
          Width = 89
          Height = 21
          Color = clWhite
          DataField = 'DTENT'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object dbCFOPNF: TRxDBComboEdit
          Left = 384
          Top = 80
          Width = 89
          Height = 21
          ButtonHint = 'Pesquisar Produto (Ctrl+P)'
          CharCase = ecUpperCase
          ClickKey = 16464
          Color = clWhite
          DataField = 'NFCFOP'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000000000000000000000000000000000001DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5B1AD
            AC203040ACA5A21DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7F7F7F7FACA5A2C3C3C31DE6B5B0A090
            6048306048306048306048306048306048306048306048306048305048403050
            604078C0304860B1ACA6C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3B1ACA61DE6B5B0A090
            FFFFFFB0A090B0A090B0A090B0A090B0A090B0A090B0A0909088803050703080
            D04098E050B0F0506870C3C3C37F7F7FFFFFFFC3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C39088807F7F7FC3C3C3C3C3C3C3C3C37F7F7F1DE6B5B0A090
            FFFFFFFFFFFFFFF8FFF0F0F0D0D8D090989070686060686050586040709040A0
            E060C8FF7090A0C5BEB5C3C3C37F7F7FFFFFFFFFFFFFFFF8FFF0F0F0D0D8D07F
            7F7F7F7F7F7F7F7F505860C3C3C3C3C3C3C3C3C37090A0C5BEB51DE6B5B0A090
            FFFFFFFFFFFFFFFFFFE0E0E0909090B0A8A0D0C0B0D0B0A08078705058506090
            B07098B0AEAEAA1DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFE0E0E07F7F7F7F
            7F7FD0C0B0D0B0A0807870505850C3C3C37098B0AEAEAAC3C3C31DE6B5B0A090
            FFFFFFFFFFFFFFFFFFB0B0B0C0B8B0FFF0E0FFE8E0F0D8C0F0D0B08078709D8F
            8CAEAFAA1DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F0E0FFE8E0F0D8C0F0D0B08078709D8F8CAEAFAAC3C3C3C3C3C31DE6B5C0A890
            FFFFFFFFFFFFFFFFFFA09890F0E8E0FFF8F0FFF0F0FFE8E0F0D8D0D0B0A06367
            5E1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F8F0FFF0F0FFE8E0F0D8D0D0B0A063675EC3C3C3C3C3C3C3C3C31DE6B5C0A8A0
            FFFFFFFFFFFFFFFFFFA0A090F0E8E0FFFFFFFFF8F0FFF0F0FFE8E0E0C0B0716E
            6C1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFF8F0FFF0F0FFE8E0E0C0B0716E6CC3C3C3C3C3C3C3C3C31DE6B5C0B0A0
            FFFFFFFFFFFFFFFFFFC0C8C0C0C0C0FFFFFFFFFFFFFFF8F0FFF0E0B0A090A69C
            951DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFFFFFFFF8F0FFF0E0B0A090A69C95C3C3C3C3C3C3C3C3C31DE6B5D0B0A0
            FFFFFFFFFFFFFFFFFFF0F8FFC0B8B0C0C0C0F0E8E0F0E8E0B0B0A07070601DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFF0F8FF7F7F7F7F
            7F7FF0E8E0F0E8E0B0B0A0707060C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8A0
            FFFFFFFFFFFFFFFFFFFFFFFFF0F8FFC0C8C0A0A0909090809090906050401DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF0F8FF7F
            7F7FA0A0907F7F7F909090605040C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A0906048306048306048301DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F604830604830604830C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C06048301DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7FC3C3C3604830C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A0604830E0C6B71DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0D0B0A0E0C7B91DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object dbCFOPNFDescricao: TDBEdit
          Left = 480
          Top = 80
          Width = 361
          Height = 21
          TabStop = False
          Color = clMoneyGreen
          DataField = 'CFOP_DESCRICAO'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object dbSituacao: TDBEdit
          Left = 848
          Top = 80
          Width = 185
          Height = 21
          TabStop = False
          Color = clMoneyGreen
          DataField = 'STATUS'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
      end
      object GrpBxDadosValores: TGroupBox
        Left = 0
        Top = 117
        Width = 1050
        Height = 76
        Align = alTop
        Caption = 'Valores (R$)'
        TabOrder = 1
        object lblValorFrete: TLabel
          Left = 552
          Top = 24
          Width = 30
          Height = 13
          Caption = 'Frete:'
          FocusControl = dbValorFrete
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblBaseICMS: TLabel
          Left = 16
          Top = 24
          Width = 55
          Height = 13
          Caption = 'Base ICMS:'
          FocusControl = dbBaseICMS
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblBaseICMSSubs: TLabel
          Left = 208
          Top = 24
          Width = 95
          Height = 13
          Caption = 'Base ICMS Substit.:'
          FocusControl = dbBaseICMSSubs
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblTotalProduto: TLabel
          Left = 448
          Top = 24
          Width = 69
          Height = 13
          Caption = 'Total Produto:'
          FocusControl = dbTotalProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblValorOutros: TLabel
          Left = 744
          Top = 24
          Width = 37
          Height = 13
          Caption = 'Outros:'
          FocusControl = dbValorOutros
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblTotalNotaFiscal: TLabel
          Left = 936
          Top = 24
          Width = 83
          Height = 13
          Caption = 'Total Nota Fiscal:'
          FocusControl = dbTotalNotaFiscal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblValorDesconto: TLabel
          Left = 648
          Top = 24
          Width = 49
          Height = 13
          Caption = 'Desconto:'
          FocusControl = dbValorDesconto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblValorIPI: TLabel
          Left = 840
          Top = 24
          Width = 18
          Height = 13
          Caption = 'IPI:'
          FocusControl = dbValorIPI
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblValorICMSSubs: TLabel
          Left = 328
          Top = 24
          Width = 96
          Height = 13
          Caption = 'Valor ICMS Substit.:'
          FocusControl = dbValorICMSSubs
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblValorICMS: TLabel
          Left = 112
          Top = 24
          Width = 56
          Height = 13
          Caption = 'Valor ICMS:'
          FocusControl = dbValorICMS
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbValorFrete: TDBEdit
          Left = 552
          Top = 40
          Width = 89
          Height = 21
          Color = clWhite
          DataField = 'FRETE'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object dbBaseICMS: TDBEdit
          Left = 16
          Top = 40
          Width = 89
          Height = 21
          DataField = 'ICMSBASE'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object dbBaseICMSSubs: TDBEdit
          Left = 208
          Top = 40
          Width = 113
          Height = 21
          DataField = 'ICMSSUBSTBASE'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object dbTotalProduto: TDBEdit
          Left = 448
          Top = 40
          Width = 97
          Height = 21
          DataField = 'TOTALPROD'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object dbValorOutros: TDBEdit
          Left = 744
          Top = 40
          Width = 89
          Height = 21
          DataField = 'OUTROSCUSTOS'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object dbTotalNotaFiscal: TDBEdit
          Left = 936
          Top = 40
          Width = 97
          Height = 21
          DataField = 'TOTALNF'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object dbValorDesconto: TDBEdit
          Left = 648
          Top = 40
          Width = 89
          Height = 21
          DataField = 'DESCONTO'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object dbValorIPI: TDBEdit
          Left = 840
          Top = 40
          Width = 89
          Height = 21
          DataField = 'IPI'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object dbValorICMSSubs: TDBEdit
          Left = 328
          Top = 40
          Width = 113
          Height = 21
          DataField = 'ICMSSUBSTVALOR'
          DataSource = DtSrcTabela
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object dbValorICMS: TDBEdit
          Left = 112
          Top = 40
          Width = 89
          Height = 21
          DataField = 'ICMSVALOR'
          DataSource = DtSrcTabela
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object pgcMaisDados: TPageControl
        Left = 0
        Top = 460
        Width = 1050
        Height = 146
        ActivePage = tbsPagamento
        Align = alBottom
        Style = tsFlatButtons
        TabOrder = 4
        object tbsPagamento: TTabSheet
          Caption = 'Pagamento'
          DesignSize = (
            1042
            115)
          object lblObservacao: TLabel
            Left = 0
            Top = 0
            Width = 1042
            Height = 13
            Align = alTop
            Caption = '&Observa'#231#245'es:'
            FocusControl = dbObservacao
          end
          object lblFormaPagto: TLabel
            Left = 0
            Top = 72
            Width = 106
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = '&Forma de Pagamento:'
            FocusControl = dbFormaPagto
          end
          object lblCondicaoPagto: TLabel
            Left = 160
            Top = 72
            Width = 120
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'Condi'#231#227'o de Pagamento:'
            FocusControl = dbCondicaoPagto
          end
          object lblPrazo01: TLabel
            Left = 472
            Top = 72
            Width = 24
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'P01:'
            FocusControl = dbPrazo01
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPrazo02: TLabel
            Left = 520
            Top = 72
            Width = 24
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'P02:'
            FocusControl = dbPrazo02
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPrazo03: TLabel
            Left = 568
            Top = 72
            Width = 24
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'P03:'
            FocusControl = dbPrazo03
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPrazo04: TLabel
            Left = 616
            Top = 72
            Width = 24
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'P04:'
            FocusControl = dbPrazo04
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPrazo05: TLabel
            Left = 664
            Top = 72
            Width = 24
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'P05:'
            FocusControl = dbPrazo05
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPrazo06: TLabel
            Left = 712
            Top = 72
            Width = 24
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'P06:'
            FocusControl = dbPrazo06
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPrazo07: TLabel
            Left = 760
            Top = 72
            Width = 24
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'P07:'
            FocusControl = dbPrazo07
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPrazo08: TLabel
            Left = 808
            Top = 72
            Width = 24
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'P08:'
            FocusControl = dbPrazo08
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPrazo09: TLabel
            Left = 856
            Top = 72
            Width = 24
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'P09:'
            FocusControl = dbPrazo09
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPrazo10: TLabel
            Left = 904
            Top = 72
            Width = 24
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'P10:'
            FocusControl = dbPrazo10
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPrazo11: TLabel
            Left = 952
            Top = 72
            Width = 24
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'P11:'
            FocusControl = dbPrazo11
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblPrazo12: TLabel
            Left = 1000
            Top = 72
            Width = 24
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'P12:'
            FocusControl = dbPrazo12
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbObservacao: TDBMemo
            Left = 0
            Top = 13
            Width = 1042
            Height = 55
            Align = alTop
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataField = 'OBS'
            DataSource = DtSrcTabela
            TabOrder = 0
          end
          object dbFormaPagto: TDBLookupComboBox
            Left = 0
            Top = 88
            Width = 153
            Height = 21
            Anchors = [akLeft, akBottom]
            DataField = 'FORMAPAGTO_COD'
            DataSource = DtSrcTabela
            DropDownRows = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'COD'
            ListField = 'DESCRI'
            ListSource = dtsFormaPagto
            ParentFont = False
            TabOrder = 1
          end
          object dbCondicaoPagto: TDBLookupComboBox
            Left = 160
            Top = 88
            Width = 305
            Height = 21
            Anchors = [akLeft, akBottom]
            DataField = 'CONDICAOPAGTO_COD'
            DataSource = DtSrcTabela
            DropDownRows = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'COND_COD'
            ListField = 'COND_DESCRICAO'
            ListSource = dtsCondicaoPagto
            ParentFont = False
            TabOrder = 2
            OnClick = dbCondicaoPagtoClick
          end
          object dbPrazo01: TDBEdit
            Left = 472
            Top = 88
            Width = 41
            Height = 21
            TabStop = False
            Anchors = [akLeft, akBottom]
            Color = clMoneyGreen
            DataField = 'PRAZO_01'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object dbPrazo02: TDBEdit
            Left = 520
            Top = 88
            Width = 41
            Height = 21
            TabStop = False
            Anchors = [akLeft, akBottom]
            Color = clMoneyGreen
            DataField = 'PRAZO_02'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object dbPrazo03: TDBEdit
            Left = 568
            Top = 88
            Width = 41
            Height = 21
            TabStop = False
            Anchors = [akLeft, akBottom]
            Color = clMoneyGreen
            DataField = 'PRAZO_03'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object dbPrazo04: TDBEdit
            Left = 616
            Top = 88
            Width = 41
            Height = 21
            TabStop = False
            Anchors = [akLeft, akBottom]
            Color = clMoneyGreen
            DataField = 'PRAZO_04'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object dbPrazo05: TDBEdit
            Left = 664
            Top = 88
            Width = 41
            Height = 21
            TabStop = False
            Anchors = [akLeft, akBottom]
            Color = clMoneyGreen
            DataField = 'PRAZO_05'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object dbPrazo06: TDBEdit
            Left = 712
            Top = 88
            Width = 41
            Height = 21
            TabStop = False
            Anchors = [akLeft, akBottom]
            Color = clMoneyGreen
            DataField = 'PRAZO_06'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
          object dbPrazo07: TDBEdit
            Left = 760
            Top = 88
            Width = 41
            Height = 21
            TabStop = False
            Anchors = [akLeft, akBottom]
            Color = clMoneyGreen
            DataField = 'PRAZO_07'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object dbPrazo08: TDBEdit
            Left = 808
            Top = 88
            Width = 41
            Height = 21
            TabStop = False
            Anchors = [akLeft, akBottom]
            Color = clMoneyGreen
            DataField = 'PRAZO_08'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object dbPrazo09: TDBEdit
            Left = 856
            Top = 88
            Width = 41
            Height = 21
            TabStop = False
            Anchors = [akLeft, akBottom]
            Color = clMoneyGreen
            DataField = 'PRAZO_09'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
          object dbPrazo10: TDBEdit
            Left = 904
            Top = 88
            Width = 41
            Height = 21
            TabStop = False
            Anchors = [akLeft, akBottom]
            Color = clMoneyGreen
            DataField = 'PRAZO_10'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 12
          end
          object dbPrazo11: TDBEdit
            Left = 952
            Top = 88
            Width = 41
            Height = 21
            TabStop = False
            Anchors = [akLeft, akBottom]
            Color = clMoneyGreen
            DataField = 'PRAZO_11'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
          end
          object dbPrazo12: TDBEdit
            Left = 1000
            Top = 88
            Width = 41
            Height = 21
            TabStop = False
            Anchors = [akLeft, akBottom]
            Color = clMoneyGreen
            DataField = 'PRAZO_12'
            DataSource = DtSrcTabela
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
          end
        end
        object tbsDuplicatas: TTabSheet
          Caption = 'Duplicata(s) Gerada(s)'
          ImageIndex = 1
          object Bevel6: TBevel
            Left = 89
            Top = 0
            Width = 4
            Height = 115
            Align = alLeft
            Shape = bsSpacer
            Visible = False
          end
          object Bevel7: TBevel
            Left = 0
            Top = 0
            Width = 4
            Height = 115
            Align = alLeft
            Shape = bsSpacer
            Visible = False
          end
          object pnlBotoesTitulo: TPanel
            Left = 4
            Top = 0
            Width = 85
            Height = 115
            Align = alLeft
            AutoSize = True
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Visible = False
            object btnRegerarDuplicata: TBitBtn
              Left = 0
              Top = 1
              Width = 85
              Height = 25
              Hint = 'Regerar Duplicata(s)'
              Caption = 'Duplicata(s)'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = btnRegerarDuplicataClick
              NumGlyphs = 2
            end
            object btnTituloEditar: TBitBtn
              Left = 0
              Top = 25
              Width = 85
              Height = 25
              Hint = 'Editar T'#237'tulo'
              Caption = 'Editar'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              TabStop = False
              NumGlyphs = 2
            end
            object btnTituloExcluir: TBitBtn
              Left = 0
              Top = 49
              Width = 85
              Height = 25
              Hint = 'Excluir T'#237'tulo'
              Caption = 'Excluir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              Visible = False
              NumGlyphs = 2
            end
          end
          object dbgTitulos: TDBGrid
            Left = 93
            Top = 0
            Width = 949
            Height = 115
            TabStop = False
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = dbgDadosDrawColumnCell
          end
        end
      end
      object GrpBxDadosProduto: TGroupBox
        Left = 0
        Top = 197
        Width = 1050
        Height = 116
        Align = alTop
        Caption = 'Dados do produto'
        TabOrder = 2
        object lblProduto: TLabel
          Left = 88
          Top = 24
          Width = 42
          Height = 13
          Caption = 'Produto:'
          FocusControl = dbProduto
        end
        object lblQuantidade: TLabel
          Left = 88
          Top = 64
          Width = 60
          Height = 13
          Caption = 'Quantidade:'
          FocusControl = dbQuantidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblValorUnit: TLabel
          Left = 184
          Top = 64
          Width = 92
          Height = 13
          Caption = 'Valor Unit'#225'rio (R$):'
          FocusControl = dbValorUnit
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblUnidade: TLabel
          Left = 592
          Top = 24
          Width = 27
          Height = 13
          Caption = 'Und.:'
          FocusControl = dbUnidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblCFOP: TLabel
          Left = 640
          Top = 24
          Width = 31
          Height = 13
          Caption = 'CFOP:'
          Visible = False
        end
        object lblParticipacao: TLabel
          Left = 528
          Top = 64
          Width = 49
          Height = 13
          Caption = '% Partic.:'
          FocusControl = dbParticipacao
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblTotalBruto: TLabel
          Left = 408
          Top = 64
          Width = 81
          Height = 13
          Caption = 'Total Bruto (R$):'
          FocusControl = dbTotalBruto
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblValorIPIProduto: TLabel
          Left = 304
          Top = 64
          Width = 69
          Height = 13
          Caption = 'Valor IPI (R$):'
          FocusControl = dbValorIPIProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Bevel10: TBevel
          Left = 2
          Top = 15
          Width = 4
          Height = 99
          Align = alLeft
          Shape = bsSpacer
        end
        object lblFrete: TLabel
          Left = 592
          Top = 64
          Width = 54
          Height = 13
          Caption = 'Frete (R$):'
          FocusControl = dbFrete
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblDesconto: TLabel
          Left = 696
          Top = 64
          Width = 73
          Height = 13
          Caption = 'Desconto (R$):'
          FocusControl = dbDesconto
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblOutros: TLabel
          Left = 800
          Top = 64
          Width = 61
          Height = 13
          Caption = 'Outros (R$):'
          FocusControl = dbOutros
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblCustoMedio: TLabel
          Left = 904
          Top = 64
          Width = 87
          Height = 13
          Caption = 'Custo M'#233'dio (R$):'
          FocusControl = dbCustoMedio
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbProduto: TRxDBComboEdit
          Left = 88
          Top = 40
          Width = 89
          Height = 21
          ButtonHint = 'Pesquisar Produto (Ctrl+P)'
          CharCase = ecUpperCase
          ClickKey = 16464
          Color = clWhite
          DataSource = DtSrcTabelaItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000000000000000000000000000000000001DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5B1AD
            AC203040ACA5A21DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7F7F7F7FACA5A2C3C3C31DE6B5B0A090
            6048306048306048306048306048306048306048306048306048305048403050
            604078C0304860B1ACA6C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3B1ACA61DE6B5B0A090
            FFFFFFB0A090B0A090B0A090B0A090B0A090B0A090B0A0909088803050703080
            D04098E050B0F0506870C3C3C37F7F7FFFFFFFC3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C39088807F7F7FC3C3C3C3C3C3C3C3C37F7F7F1DE6B5B0A090
            FFFFFFFFFFFFFFF8FFF0F0F0D0D8D090989070686060686050586040709040A0
            E060C8FF7090A0C5BEB5C3C3C37F7F7FFFFFFFFFFFFFFFF8FFF0F0F0D0D8D07F
            7F7F7F7F7F7F7F7F505860C3C3C3C3C3C3C3C3C37090A0C5BEB51DE6B5B0A090
            FFFFFFFFFFFFFFFFFFE0E0E0909090B0A8A0D0C0B0D0B0A08078705058506090
            B07098B0AEAEAA1DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFE0E0E07F7F7F7F
            7F7FD0C0B0D0B0A0807870505850C3C3C37098B0AEAEAAC3C3C31DE6B5B0A090
            FFFFFFFFFFFFFFFFFFB0B0B0C0B8B0FFF0E0FFE8E0F0D8C0F0D0B08078709D8F
            8CAEAFAA1DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F0E0FFE8E0F0D8C0F0D0B08078709D8F8CAEAFAAC3C3C3C3C3C31DE6B5C0A890
            FFFFFFFFFFFFFFFFFFA09890F0E8E0FFF8F0FFF0F0FFE8E0F0D8D0D0B0A06367
            5E1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F8F0FFF0F0FFE8E0F0D8D0D0B0A063675EC3C3C3C3C3C3C3C3C31DE6B5C0A8A0
            FFFFFFFFFFFFFFFFFFA0A090F0E8E0FFFFFFFFF8F0FFF0F0FFE8E0E0C0B0716E
            6C1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFF8F0FFF0F0FFE8E0E0C0B0716E6CC3C3C3C3C3C3C3C3C31DE6B5C0B0A0
            FFFFFFFFFFFFFFFFFFC0C8C0C0C0C0FFFFFFFFFFFFFFF8F0FFF0E0B0A090A69C
            951DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFFFFFFFF8F0FFF0E0B0A090A69C95C3C3C3C3C3C3C3C3C31DE6B5D0B0A0
            FFFFFFFFFFFFFFFFFFF0F8FFC0B8B0C0C0C0F0E8E0F0E8E0B0B0A07070601DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFF0F8FF7F7F7F7F
            7F7FF0E8E0F0E8E0B0B0A0707060C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8A0
            FFFFFFFFFFFFFFFFFFFFFFFFF0F8FFC0C8C0A0A0909090809090906050401DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF0F8FF7F
            7F7FA0A0907F7F7F909090605040C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A0906048306048306048301DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F604830604830604830C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C06048301DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7FC3C3C3604830C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A0604830E0C6B71DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0D0B0A0E0C7B91DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnButtonClick = dbProdutoButtonClick
          OnExit = ControlEditExit
        end
        object dbProdutoNome: TDBEdit
          Left = 184
          Top = 40
          Width = 401
          Height = 21
          TabStop = False
          Color = clMoneyGreen
          DataSource = DtSrcTabelaItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object dbQuantidade: TDBEdit
          Left = 88
          Top = 80
          Width = 89
          Height = 21
          Color = clWhite
          DataSource = DtSrcTabelaItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnExit = ControlEditExit
        end
        object dbValorUnit: TDBEdit
          Left = 184
          Top = 80
          Width = 113
          Height = 21
          Color = clWhite
          DataSource = DtSrcTabelaItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnExit = ControlEditExit
        end
        object dbUnidade: TDBEdit
          Left = 592
          Top = 40
          Width = 41
          Height = 21
          TabStop = False
          Color = clMoneyGreen
          DataSource = DtSrcTabelaItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object dbParticipacao: TDBEdit
          Left = 528
          Top = 80
          Width = 57
          Height = 21
          TabStop = False
          Color = clMoneyGreen
          DataSource = DtSrcTabelaItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object dbTotalBruto: TDBEdit
          Left = 408
          Top = 80
          Width = 113
          Height = 21
          Color = clMoneyGreen
          DataSource = DtSrcTabelaItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          OnExit = ControlEditExit
        end
        object dbValorIPIProduto: TDBEdit
          Left = 304
          Top = 80
          Width = 97
          Height = 21
          Color = clWhite
          DataSource = DtSrcTabelaItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object pnlBotoesProduto: TPanel
          Left = 6
          Top = 15
          Width = 70
          Height = 99
          Align = alLeft
          AutoSize = True
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object btnProdutoInserir: TBitBtn
            Left = 0
            Top = 1
            Width = 70
            Height = 25
            Hint = 'Inserir Produto'
            Caption = 'Inserir'
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = btnProdutoInserirClick
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000000000000000000000000000000000000000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              B0A0906048306048306048306048306048306048306048306048306048306048
              300000FF0000FF0000FF0000FF0000FF9C9C9C43434343434343434343434343
              43434343434343434343434343434343430000FF0000FF0000FF0000FF0000FF
              B0A090FFFFFFB0A090B0A090B0A090B0A090B0A090B0A090B0A090B0A0906048
              300000FF0000FF0000FF0000FF0000FF9C9C9CFFFFFF9C9C9C9C9C9C9C9C9C9C
              9C9C9C9C9C9C9C9C9C9C9C9C9C9C4343430000FF0000FF0000FF0000FF0000FF
              B0A090FFFFFFFFFFFFFFF8FFF0F0F0F0E8E0F0E0D0E0D0D0E0C8C0B0A0906048
              300000FF0000FF0000FF0000FF0000FF9C9C9CFFFFFFFFFFFFFAFAFAF0F0F0E6
              E6E6DCDCDCD1D1D1C8C8C89C9C9C4343430000FF0000FF0000FF0000FF0000FF
              B0A090FFFFFFFFFFFFFFFFFFFFF8F0F0F0F0F0E0E0F0D8D0E0D0C0B0A0906048
              300000FF0000FF0000FF0000FF0000FF9C9C9CFFFFFFFFFFFFFFFFFFF6F6F6F0
              F0F0E1E1E1D8D8D8CCCCCC9C9C9C4343430000FF0000FF0000FF0000FF0000FF
              B0A090FFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E8E0F0E0E0E0D8D0B0A0906048
              300000FF0000FF0000FF0000FF0000FF9C9C9CFFFFFFFFFFFFFFFFFFFFFFFFF1
              F1F1E6E6E6E1E1E1D6D6D69C9C9C4343430000FF0000FF0000FF0000FF0000FF
              C0A890FFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0F0E8E0F0D8D0B0A0906048
              300000FF0000FF0000FF0000FF0000FFA3A3A3FFFFFFFFFFFFFFFFFFFFFFFFF6
              F6F6F0F0F0E6E6E6D8D8D89C9C9C4343430000FF0000FF0000FF0000FF0000FF
              C0A8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0E8E0F0E0E0B0A0906048
              300000FF0000FF0000FF0000FF0000FFA8A8A8FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFF6F6F6E6E6E6E1E1E19C9C9C4343430000FF0000FF0000FF0000FF0000FF
              C0B0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFF0F0F0F0E8E0B0A0906048
              300000FF0000FF0000FF0000FF0000FFACACACFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFAFAFAF0F0F0E6E6E69C9C9C4343430000FF0000FF0000FF0000FF0000FF
              D0B0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0B0A0906048
              300000FF0000FF0000FF0000FF0000FFAEAEAEFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF6F6F6F0F0F09C9C9C4343430000FF0000FF0000FF0000FF0000FF
              D0B8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A090B0A0906048
              300000FF0000FF0000FF0000FF0000FFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF9C9C9C9C9C9C4343430000FF0000FF0000FF0000FF0000FF
              D0B8B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A0906048306048306048
              300000FF0000FF0000FF0000FF0000FFB8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF9C9C9C4343434343434343430000FF0000FF0000FF0000FF0000FF
              D0C0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C0604830DACA
              C10000FF0000FF0000FF0000FF0000FFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFA3A3A3C6C6C6434343C8C8C80000FF0000FF0000FF0000FF0000FF
              E0C0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A0604830DBCAC20000
              FF0000FF0000FF0000FF0000FF0000FFBEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFA8A8A8434343C9C9C90000FF0000FF0000FF0000FF0000FF0000FF
              E0C0B0E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0D0B0A0DCCAC20000FF0000
              FF0000FF0000FF0000FF0000FF0000FFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBC
              BCBCB8B8B8AEAEAEC9C9C90000FF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF}
            NumGlyphs = 2
          end
          object btnProdutoEditar: TBitBtn
            Left = 0
            Top = 25
            Width = 70
            Height = 25
            Hint = 'Editar Produto'
            Caption = 'Editar'
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = btnProdutoEditarClick
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              180000000000000600000000000000000000000000000000000000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00B0A090604830
              60483060483060483060483060483060483060483060483060483070504000FF
              0000FF0000FF0000FF009C9C9C43434343434343434343434343434343434343
              43434343434343434343434E4E4E00FF0000FF0000FF0000FF00C0A8A0FFFFFF
              E0E8E0E0E0E0E0E0D0E0D8D0E0D0C0E0C8C0E0C8B0E0C0B0C0A8A070504000FF
              0000FF0000FF0000FF00A8A8A8FFFFFFE4E4E4E0E0E0DBDBDBD6D6D6CCCCCCC8
              C8C8C3C3C3BEBEBEA8A8A84E4E4E00FF0000FF0000FF0000FF00C0B0A0FFFFFF
              E0C8C0D0C0B0D0C0B0FFF0E0D0B0A0D0B0A0D0B0A0F0D8D0C0A8A070504000FF
              0000FF0000FF0000FF00ACACACFFFFFFC8C8C8BCBCBCBCBCBCECECECAEAEAEAE
              AEAEAEAEAED8D8D8A8A8A84E4E4E00FF0000FF0000FF0000FF00D0B8A0FFFFFF
              FFFFFFFFFFFFFFF8F0FFF8F0707070505850000000D0C0B0D0B0A070504000FF
              0000FF0000FF0000FF00B3B3B3FFFFFFFFFFFFFFFFFFF6F6F6F6F6F670707054
              5454000000BCBCBCAEAEAE4E4E4E00FF0000FF0000FF0000FF00D0B8A0FFFFFF
              E0C8C0E0C8C0E0C8C0FFF8F0A0A0A0FFFFFF5090B0101010C0B0B080605000FF
              0000FF0000FF0000FF00B3B3B3FFFFFFC8C8C8C8C8C8C8C8C8F6F6F6A0A0A0FF
              FFFF939393101010B1B1B15E5E5E00FF0000FF0000FF0000FF00D0B8A0FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFA0A0A090B8C070D0E05098B010101080706000FF
              0000FF0000FF0000FF00B3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0B6
              B6B6CBCBCB9898981010106C6C6C00FF0000FF0000FF0000FF00D0B8A0FFFFFF
              E0C8C0E0C8C0E0C8C0FFFFFFC0B8B050A0B090E0F060C0D05098B0101010C8C0
              B400FF0000FF0000FF00B3B3B3FFFFFFC8C8C8C8C8C8C8C8C8FFFFFFB6B6B69C
              9C9CDCDCDCBBBBBB989898101010BDBDBD00FF0000FF0000FF00D0B8A0FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF8F0D0D0D050A0B090E0F060C0D05098B01010
              10C8C1B400FF0000FF00B3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D0
              D0D09C9C9CDCDCDCBBBBBB989898101010BDBDBD00FF0000FF00F0B090F0A890
              F0A890F0A080F09870E09060E08860E09060D0A89060A8B090E0F060C0D05098
              B0101010D5C8B900FF00ACACACA8A8A8A8A8A89E9E9E94949489898984848489
              8989A4A4A4A3A3A3DCDCDCBBBBBB989898101010C4C4C400FF00F0B090FFC0A0
              FFC0A0FFB8A0FFB890FFB090FFA880FFA880F0A880D0B0A070B0C090E0F070C8
              E0808880303890BCAEB6ACACACBCBCBCBCBCBCB7B7B7B3B3B3AEAEAEA4A4A4A4
              A4A4A3A3A3AEAEAEAEAEAEDCDCDCC6C6C6848484515151B1B1B1F0B090F0A890
              F0A890F0A890F0A080F0A070E09870E09060E08850E09060D0988080B0C0D0B8
              B07088D06070B0303890ACACACA8A8A8A8A8A8A8A8A89E9E9E99999993939389
              8989808080898989969696B0B0B0B8B8B89B9B9B81818151515100FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00DDD4CA6070
              B07090E06078D06070B000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF00D1D1D1818181A4A4A490909081818100FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00D0C6
              CE6070B06070B0DFD2D100FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF00C9C9C9818181818181D3D3D3}
            NumGlyphs = 2
          end
          object btnProdutoExcluir: TBitBtn
            Left = 0
            Top = 49
            Width = 70
            Height = 25
            Hint = 'Excluir Produto'
            Caption = 'Excluir'
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = btnProdutoExcluirClick
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              1800000000000006000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCFC1C52030902030902030802028
              70C6A797FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFC3C3C34B4B4B4B4B4B4646463C3C3CA5A5A5FF00FFFF00FFFF00FFFF00FF
              B0A0906048306048306048307058406050601038C02050D01038C01030B01030
              A0102070C5A392FF00FFFF00FFFF00FF9C9C9C43434343434343434353535356
              56565C5C5C7171715C5C5C5353534E4E4E363636A1A1A1FF00FFFF00FFFF00FF
              B0A090FFFFFFD0C8C0D0C8C0D0C8C01040E04068E03058E00038E00038D01030
              C01030A0202870FF00FFFF00FFFF00FF9C9C9CFFFFFFC6C6C6C6C6C6C6C6C66B
              6B6B8888887C7C7C6464646060605858584E4E4E3C3C3CFF00FFFF00FFFF00FF
              B0A090FFFFFFFFFFFFFFF8FFFFF0F03068F0F0F8FFFFF8FFFFF8FFFFF8FFFFF8
              FFFFF8FF203090FF00FFFF00FFFF00FF9C9C9CFFFFFFFFFFFFFAFAFAF1F1F18B
              8B8BF9F9F9FAFAFAFAFAFAFAFAFAFAFAFAFAFAFA4B4B4BFF00FFFF00FFFF00FF
              B0A090FFFFFFFFFFFFFFFFFFFFF8F03068F0FFF8FFFFF8FFFFF8FFFFF8FFFFF8
              FFFFF8FF203090FF00FFFF00FFFF00FF9C9C9CFFFFFFFFFFFFFFFFFFF6F6F68B
              8B8BFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA4B4B4BFF00FFFF00FFFF00FF
              B0A090FFFFFFFFFFFFFFFFFFFFFFFF3060FF80A0F06080F04060E02058E00038
              D01038C02038A0FF00FFFF00FFFF00FF9C9C9CFFFFFFFFFFFFFFFFFFFFFFFF8A
              8A8AB4B4B49E9E9E8383837B7B7B6060605C5C5C545454FF00FFFF00FFFF00FF
              C0A890FFFFFFFFFFFFFFFFFFFFFFFFD0D8F03068F090A8F06080F05078E02048
              D02038B0C8ACAAFF00FFFF00FFFF00FFA3A3A3FFFFFFFFFFFFFFFFFFFFFFFFDE
              DEDE8B8B8BBBBBBB9E9E9E9393936C6C6C595959AEAEAEFF00FFFF00FFFF00FF
              C0A8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D8F03060F03060F03060E02048
              C0C9B0AFFF00FFFF00FFFF00FFFF00FFA8A8A8FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFDEDEDE868686868686818181686868B2B2B2FF00FFFF00FFFF00FFFF00FF
              C0B0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFF0F0F0F0F0F0D0C8C08068
              50FF00FFFF00FFFF00FFFF00FFFF00FFACACACFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFAFAFAF0F0F0F0F0F0C6C6C6636363FF00FFFF00FFFF00FFFF00FFFF00FF
              D0B0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0D0C8C06048
              30FF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF6F6F6F0F0F0C6C6C6434343FF00FFFF00FFFF00FFFF00FFFF00FF
              D0B8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A0C0A8A06048
              30FF00FFFF00FFFF00FFFF00FFFF00FFB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFA8A8A8A8A8A8434343FF00FFFF00FFFF00FFFF00FFFF00FF
              D0B8B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A0906048306048306048
              30FF00FFFF00FFFF00FFFF00FFFF00FFB8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF9C9C9C434343434343434343FF00FFFF00FFFF00FFFF00FFFF00FF
              D0C0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C0604830DFBD
              A7FF00FFFF00FFFF00FFFF00FFFF00FFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFA3A3A3C6C6C6434343B9B9B9FF00FFFF00FFFF00FFFF00FFFF00FF
              E0C0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A0604830E0BEAAFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFBEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFA8A8A8434343BBBBBBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              E0C0B0E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0D0B0A0E0C0ADFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBC
              BCBCB8B8B8AEAEAEBDBDBDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            NumGlyphs = 2
          end
          object btnProdutoSalvar: TBitBtn
            Left = 0
            Top = 73
            Width = 70
            Height = 25
            Hint = 'Salvar Produto'
            Caption = 'Salvar'
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = btnProdutoSalvarClick
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000000000000000000000000000000000000000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              C06860B05850A05050A05050A050509048509048409048408040408038408038
              407038407038300000FF0000FF0000FF6E6E6E5E5E5E58585858585858585851
              51514C4C4C4C4C4C4646464141414141414040403B3B3B0000FF0000FFD06870
              F09090E08080B04820403020C0B8B0C0B8B0D0C0C0D0C8C0505050A04030A040
              30A038307038400000FF0000FF7474749999998989894646462C2C2CB6B6B6B6
              B6B6C1C1C1C6C6C65050504444444444444040404040400000FF0000FFD07070
              FF98A0F08880E08080705850404030907870F0E0E0F0E8E0908070A04030A040
              40A040308038400000FF0000FF797979A4A4A49090908989895858583B3B3B78
              7878E1E1E1E6E6E67C7C7C4444444949494444444141410000FF0000FFD07870
              FFA0A0F09090F08880705850000000404030F0D8D0F0E0D0807860B04840B048
              40A040408040400000FF0000FF7E7E7EA9A9A99999999090905858580000003B
              3B3BD8D8D8DCDCDC7171715050505050504949494646460000FF0000FFD07880
              FFA8B0FFA0A0F09090705850705850705850705850706050806860C05850B050
              50B048408040400000FF0000FF838383B3B3B3A9A9A999999958585858585858
              58585858585C5C5C6868686060605959595050504646460000FF0000FFE08080
              FFB0B0FFB0B0FFA0A0F09090F08880E08080E07880D07070D06870C06060C058
              50B050509048400000FF0000FF898989B7B7B7B7B7B7A9A9A999999990909089
              89898484847979797474746969696060605959594C4C4C0000FF0000FFE08890
              FFB8C0FFB8B0D06060C06050C05850C05040B05030B04830A04020A03810C060
              60C058509048400000FF0000FF939393C1C1C1BCBCBC6B6B6B64646460606056
              56565050504B4B4B4040403636366969696060604C4C4C0000FF0000FFE09090
              FFC0C0D06860FFFFFFFFFFFFFFF8F0F0F0F0F0E8E0F0D8D0E0D0C0E0C8C0A038
              10C060609048500000FF0000FF989898C6C6C6707070FFFFFFFFFFFFF6F6F6F0
              F0F0E6E6E6D8D8D8CCCCCCC8C8C83636366969695151510000FF0000FFE098A0
              FFC0C0D07070FFFFFFFFFFFFFFFFFFFFF8F0F0F0F0F0E8E0F0D8D0E0D0C0A040
              20D06860A050500000FF0000FFA1A1A1C6C6C6797979FFFFFFFFFFFFFFFFFFF6
              F6F6F0F0F0E6E6E6D8D8D8CCCCCC4040407070705858580000FF0000FFF0A0A0
              FFC0C0E07870FFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0F0E8E0F0D8D0B048
              30D07070A050500000FF0000FFA8A8A8C6C6C6808080FFFFFFFFFFFFFFFFFFFF
              FFFFF6F6F6F0F0F0E6E6E6D8D8D84B4B4B7979795858580000FF0000FFF0A8A0
              FFC0C0E08080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0F0E8E0B050
              30E07880A050500000FF0000FFACACACC6C6C6898989FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF6F6F6F0F0F0E6E6E65050508484845858580000FF0000FFF0B0B0
              FFC0C0F08890FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0C050
              40603030B058500000FF0000FFB6B6B6C6C6C6949494FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF6F6F6F0F0F05656563434345E5E5E0000FF0000FFF0B0B0
              FFC0C0FF9090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0C058
              50B05860B058600000FF0000FFB6B6B6C6C6C69B9B9BFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFF6F6F66060606363636363630000FF0000FFF0B8B0
              F0B8B0F0B0B0F0B0B0F0A8B0F0A0A0E098A0E09090E09090E08890E08080D078
              80D07870D070700000FF0000FFBBBBBBBBBBBBB6B6B6B6B6B6B1B1B1A8A8A8A1
              A1A19898989898989393938989898383837E7E7E7979790000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF}
            NumGlyphs = 2
          end
        end
        object dbFrete: TDBEdit
          Left = 592
          Top = 80
          Width = 97
          Height = 21
          TabStop = False
          Color = clMoneyGreen
          DataSource = DtSrcTabelaItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object dbDesconto: TDBEdit
          Left = 696
          Top = 80
          Width = 97
          Height = 21
          TabStop = False
          Color = clMoneyGreen
          DataSource = DtSrcTabelaItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object dbOutros: TDBEdit
          Left = 800
          Top = 80
          Width = 97
          Height = 21
          TabStop = False
          Color = clMoneyGreen
          DataSource = DtSrcTabelaItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object dbCustoMedio: TDBEdit
          Left = 904
          Top = 80
          Width = 105
          Height = 21
          TabStop = False
          Color = clMoneyGreen
          DataSource = DtSrcTabelaItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object dbCFOP: TRxDBComboEdit
          Left = 640
          Top = 40
          Width = 89
          Height = 21
          ButtonHint = 'Pesquisar Produto (Ctrl+P)'
          CharCase = ecUpperCase
          ClickKey = 16464
          Color = clWhite
          DataSource = DtSrcTabelaItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000000000000000000000000000000000001DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5B1AD
            AC203040ACA5A21DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7F7F7F7FACA5A2C3C3C31DE6B5B0A090
            6048306048306048306048306048306048306048306048306048305048403050
            604078C0304860B1ACA6C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3B1ACA61DE6B5B0A090
            FFFFFFB0A090B0A090B0A090B0A090B0A090B0A090B0A0909088803050703080
            D04098E050B0F0506870C3C3C37F7F7FFFFFFFC3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C39088807F7F7FC3C3C3C3C3C3C3C3C37F7F7F1DE6B5B0A090
            FFFFFFFFFFFFFFF8FFF0F0F0D0D8D090989070686060686050586040709040A0
            E060C8FF7090A0C5BEB5C3C3C37F7F7FFFFFFFFFFFFFFFF8FFF0F0F0D0D8D07F
            7F7F7F7F7F7F7F7F505860C3C3C3C3C3C3C3C3C37090A0C5BEB51DE6B5B0A090
            FFFFFFFFFFFFFFFFFFE0E0E0909090B0A8A0D0C0B0D0B0A08078705058506090
            B07098B0AEAEAA1DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFE0E0E07F7F7F7F
            7F7FD0C0B0D0B0A0807870505850C3C3C37098B0AEAEAAC3C3C31DE6B5B0A090
            FFFFFFFFFFFFFFFFFFB0B0B0C0B8B0FFF0E0FFE8E0F0D8C0F0D0B08078709D8F
            8CAEAFAA1DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F0E0FFE8E0F0D8C0F0D0B08078709D8F8CAEAFAAC3C3C3C3C3C31DE6B5C0A890
            FFFFFFFFFFFFFFFFFFA09890F0E8E0FFF8F0FFF0F0FFE8E0F0D8D0D0B0A06367
            5E1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            F8F0FFF0F0FFE8E0F0D8D0D0B0A063675EC3C3C3C3C3C3C3C3C31DE6B5C0A8A0
            FFFFFFFFFFFFFFFFFFA0A090F0E8E0FFFFFFFFF8F0FFF0F0FFE8E0E0C0B0716E
            6C1DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFF8F0FFF0F0FFE8E0E0C0B0716E6CC3C3C3C3C3C3C3C3C31DE6B5C0B0A0
            FFFFFFFFFFFFFFFFFFC0C8C0C0C0C0FFFFFFFFFFFFFFF8F0FFF0E0B0A090A69C
            951DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFF
            FFFFFFFFFFFFF8F0FFF0E0B0A090A69C95C3C3C3C3C3C3C3C3C31DE6B5D0B0A0
            FFFFFFFFFFFFFFFFFFF0F8FFC0B8B0C0C0C0F0E8E0F0E8E0B0B0A07070601DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFF0F8FF7F7F7F7F
            7F7FF0E8E0F0E8E0B0B0A0707060C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8A0
            FFFFFFFFFFFFFFFFFFFFFFFFF0F8FFC0C8C0A0A0909090809090906050401DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFF0F8FF7F
            7F7FA0A0907F7F7F909090605040C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0B8B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0A0906048306048306048301DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F604830604830604830C3C3C3C3C3C3C3C3C3C3C3C31DE6B5D0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C06048301DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7FC3C3C3604830C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0A8A0604830E0C6B71DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7F7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B5E0C0B0
            E0C0B0E0C0B0E0C0B0E0C0B0D0C0B0D0B8B0D0B0A0E0C7B91DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C37F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31DE6B51DE6B5
            1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
            B51DE6B51DE6B51DE6B5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
            C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Visible = False
          OnButtonClick = dbCFOPButtonClick
        end
        object dbCFOPDescricao: TDBEdit
          Left = 736
          Top = 40
          Width = 273
          Height = 21
          TabStop = False
          Color = clMoneyGreen
          DataSource = DtSrcTabelaItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Visible = False
        end
      end
      object dbgProdutos: TDBGrid
        Left = 0
        Top = 317
        Width = 1050
        Height = 139
        TabStop = False
        Align = alClient
        DataSource = DtSrcTabelaItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = dbgDadosDrawColumnCell
      end
    end
  end
  inherited IbDtstTabela: TIBDataSet
    BeforeCancel = IbDtstTabelaBeforeCancel
    OnNewRecord = IbDtstTabelaNewRecord
    SelectSQL.Strings = (
      'Select'
      '    c.ANO'
      '  , c.CODCONTROL'
      '  , c.CODEMP'
      '  , c.CODFORN'
      '  , c.NF'
      '  , c.NFSERIE'
      '  , c.DTLANCAMENTO'
      '  , c.DTEMISS'
      '  , c.DTENT'
      '  , c.DTFINALIZACAO_COMPRA'
      '  , c.NFCFOP'
      '  , c.NATUREZA'
      '  , c.STATUS'
      '  , c.IPI'
      '  , c.ICMSBASE'
      '  , c.ICMSVALOR'
      '  , c.ICMSSUBSTBASE'
      '  , c.ICMSSUBSTVALOR'
      '  , c.FRETE'
      '  , c.OUTROSCUSTOS'
      '  , c.DESCONTO'
      '  , c.TOTALNF'
      '  , c.TOTALPROD'
      '  , c.OBS'
      '  , c.USUARIO'
      '  , c.FORMAPAGTO_COD'
      '  , c.CONDICAOPAGTO_COD'
      '  , c.COMPRA_PRAZO'
      '  , c.PRAZO_01'
      '  , c.PRAZO_02'
      '  , c.PRAZO_03'
      '  , c.PRAZO_04'
      '  , c.PRAZO_05'
      '  , c.PRAZO_06'
      '  , c.PRAZO_07'
      '  , c.PRAZO_08'
      '  , c.PRAZO_09'
      '  , c.PRAZO_10'
      '  , c.PRAZO_11'
      '  , c.PRAZO_12'
      '  , f.Nomeforn'
      '  , f.Cnpj'
      '  , n.Cfop_descricao'
      'from TBCOMPRAS c'
      '  inner join TBFORNECEDOR f on (f.Codforn = c.Codforn)'
      '  left join TBCFOP n on (n.Cfop_cod = c.Nfcfop)')
    GeneratorField.Field = 'CODCONTROL'
    GeneratorField.Generator = 'GEN_COMPRAS_CONTROLE_2011'
    GeneratorField.ApplyEvent = gamOnNewRecord
    Left = 928
    Top = 8
    object IbDtstTabelaANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = 'TBCOMPRAS.ANO'
      Required = True
    end
    object IbDtstTabelaCODCONTROL: TIntegerField
      DisplayLabel = 'No. Compra'
      FieldName = 'CODCONTROL'
      Origin = 'TBCOMPRAS.CODCONTROL'
      Required = True
    end
    object IbDtstTabelaCODEMP: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'CODEMP'
      Origin = 'TBCOMPRAS.CODEMP'
      Required = True
      Size = 18
    end
    object IbDtstTabelaCODFORN: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'CODFORN'
      Origin = 'TBCOMPRAS.CODFORN'
    end
    object IbDtstTabelaNF: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'NF'
      Origin = 'TBCOMPRAS.NF'
      Required = True
    end
    object IbDtstTabelaNFSERIE: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'S'#233'rie'
      FieldName = 'NFSERIE'
      Origin = 'TBCOMPRAS.NFSERIE'
      FixedChar = True
      Size = 1
    end
    object IbDtstTabelaDTLANCAMENTO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Lan'#231'amento'
      FieldName = 'DTLANCAMENTO'
      Origin = 'TBCOMPRAS.DTLANCAMENTO'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object IbDtstTabelaDTEMISS: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DTEMISS'
      Origin = 'TBCOMPRAS.DTEMISS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IbDtstTabelaDTENT: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Entrada'
      FieldName = 'DTENT'
      Origin = 'TBCOMPRAS.DTENT'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IbDtstTabelaDTFINALIZACAO_COMPRA: TDateTimeField
      FieldName = 'DTFINALIZACAO_COMPRA'
      Origin = 'TBCOMPRAS.DTFINALIZACAO_COMPRA'
    end
    object IbDtstTabelaNFCFOP: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'CFOP'
      FieldName = 'NFCFOP'
      Origin = 'TBCOMPRAS.NFCFOP'
    end
    object IbDtstTabelaNATUREZA: TIBStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = 'TBCOMPRAS.NATUREZA'
      Size = 4
    end
    object IbDtstTabelaSTATUS: TSmallintField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'TBCOMPRAS.STATUS'
      Required = True
      OnGetText = IbDtstTabelaSTATUSGetText
    end
    object IbDtstTabelaIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = 'TBCOMPRAS.IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IbDtstTabelaICMSBASE: TIBBCDField
      DisplayLabel = 'Base ICMS'
      FieldName = 'ICMSBASE'
      Origin = 'TBCOMPRAS.ICMSBASE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IbDtstTabelaICMSVALOR: TIBBCDField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'ICMSVALOR'
      Origin = 'TBCOMPRAS.ICMSVALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IbDtstTabelaICMSSUBSTBASE: TIBBCDField
      DisplayLabel = 'Base ICMS Substit.'
      FieldName = 'ICMSSUBSTBASE'
      Origin = 'TBCOMPRAS.ICMSSUBSTBASE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IbDtstTabelaICMSSUBSTVALOR: TIBBCDField
      DisplayLabel = 'Valor ICMS Substit.'
      FieldName = 'ICMSSUBSTVALOR'
      Origin = 'TBCOMPRAS.ICMSSUBSTVALOR'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IbDtstTabelaFRETE: TIBBCDField
      DisplayLabel = 'Frete'
      FieldName = 'FRETE'
      Origin = 'TBCOMPRAS.FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IbDtstTabelaOUTROSCUSTOS: TIBBCDField
      DisplayLabel = 'Outros'
      FieldName = 'OUTROSCUSTOS'
      Origin = 'TBCOMPRAS.OUTROSCUSTOS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IbDtstTabelaDESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = 'TBCOMPRAS.DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IbDtstTabelaTOTALNF: TIBBCDField
      DisplayLabel = 'Total Nota Fiscal'
      FieldName = 'TOTALNF'
      Origin = 'TBCOMPRAS.TOTALNF'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IbDtstTabelaTOTALPROD: TIBBCDField
      DisplayLabel = 'Total Produto'
      FieldName = 'TOTALPROD'
      Origin = 'TBCOMPRAS.TOTALPROD'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object IbDtstTabelaOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'TBCOMPRAS.OBS'
      BlobType = ftMemo
      Size = 8
    end
    object IbDtstTabelaUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = 'TBCOMPRAS.USUARIO'
      Size = 50
    end
    object IbDtstTabelaFORMAPAGTO_COD: TSmallintField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'FORMAPAGTO_COD'
      Origin = 'TBCOMPRAS.FORMAPAGTO_COD'
    end
    object IbDtstTabelaCONDICAOPAGTO_COD: TSmallintField
      DisplayLabel = 'Condi'#231#227'o de Pagamento'
      FieldName = 'CONDICAOPAGTO_COD'
      Origin = 'TBCOMPRAS.CONDICAOPAGTO_COD'
    end
    object IbDtstTabelaCOMPRA_PRAZO: TSmallintField
      FieldName = 'COMPRA_PRAZO'
      Origin = 'TBCOMPRAS.COMPRA_PRAZO'
      Required = True
    end
    object IbDtstTabelaPRAZO_01: TSmallintField
      FieldName = 'PRAZO_01'
      Origin = 'TBCOMPRAS.PRAZO_01'
    end
    object IbDtstTabelaPRAZO_02: TSmallintField
      FieldName = 'PRAZO_02'
      Origin = 'TBCOMPRAS.PRAZO_02'
    end
    object IbDtstTabelaPRAZO_03: TSmallintField
      FieldName = 'PRAZO_03'
      Origin = 'TBCOMPRAS.PRAZO_03'
    end
    object IbDtstTabelaPRAZO_04: TSmallintField
      FieldName = 'PRAZO_04'
      Origin = 'TBCOMPRAS.PRAZO_04'
    end
    object IbDtstTabelaPRAZO_05: TSmallintField
      FieldName = 'PRAZO_05'
      Origin = 'TBCOMPRAS.PRAZO_05'
    end
    object IbDtstTabelaPRAZO_06: TSmallintField
      FieldName = 'PRAZO_06'
      Origin = 'TBCOMPRAS.PRAZO_06'
    end
    object IbDtstTabelaPRAZO_07: TSmallintField
      FieldName = 'PRAZO_07'
      Origin = 'TBCOMPRAS.PRAZO_07'
    end
    object IbDtstTabelaPRAZO_08: TSmallintField
      FieldName = 'PRAZO_08'
      Origin = 'TBCOMPRAS.PRAZO_08'
    end
    object IbDtstTabelaPRAZO_09: TSmallintField
      FieldName = 'PRAZO_09'
      Origin = 'TBCOMPRAS.PRAZO_09'
    end
    object IbDtstTabelaPRAZO_10: TSmallintField
      FieldName = 'PRAZO_10'
      Origin = 'TBCOMPRAS.PRAZO_10'
    end
    object IbDtstTabelaPRAZO_11: TSmallintField
      FieldName = 'PRAZO_11'
      Origin = 'TBCOMPRAS.PRAZO_11'
    end
    object IbDtstTabelaPRAZO_12: TSmallintField
      FieldName = 'PRAZO_12'
      Origin = 'TBCOMPRAS.PRAZO_12'
    end
    object IbDtstTabelaNOMEFORN: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOMEFORN'
      Origin = 'TBFORNECEDOR.NOMEFORN'
      Size = 60
    end
    object IbDtstTabelaCNPJ: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CNPJ'
      Origin = 'TBFORNECEDOR.CNPJ'
      Size = 18
    end
    object IbDtstTabelaCFOP_DESCRICAO: TIBStringField
      FieldName = 'CFOP_DESCRICAO'
      Origin = 'TBCFOP.CFOP_DESCRICAO'
      Size = 250
    end
  end
  inherited DtSrcTabela: TDataSource
    Left = 992
    Top = 8
  end
  inherited IbUpdTabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ANO,'
      '  CODCONTROL,'
      '  CODEMP,'
      '  CODFORN,'
      '  NF,'
      '  NFSERIE,'
      '  DTLANCAMENTO,'
      '  DTEMISS,'
      '  DTENT,'
      '  NFCFOP,'
      '  NATUREZA,'
      '  STATUS,'
      '  IPI,'
      '  ICMSBASE,'
      '  ICMSVALOR,'
      '  ICMSSUBSTBASE,'
      '  ICMSSUBSTVALOR,'
      '  FRETE,'
      '  OUTROSCUSTOS,'
      '  DESCONTO,'
      '  TOTALNF,'
      '  TOTALPROD,'
      '  OBS,'
      '  USUARIO,'
      '  FORMAPAGTO_COD,'
      '  CONDICAOPAGTO_COD,'
      '  COMPRA_PRAZO,'
      '  PRAZO_01,'
      '  PRAZO_02,'
      '  PRAZO_03,'
      '  PRAZO_04,'
      '  PRAZO_05,'
      '  PRAZO_06,'
      '  PRAZO_07,'
      '  PRAZO_08,'
      '  PRAZO_09,'
      '  PRAZO_10,'
      '  PRAZO_11,'
      '  PRAZO_12,'
      '  DTFINALIZACAO_COMPRA'
      'from TBCOMPRAS '
      'where'
      '  ANO = :ANO and'
      '  CODCONTROL = :CODCONTROL')
    ModifySQL.Strings = (
      'update TBCOMPRAS'
      'set'
      '  ANO = :ANO,'
      '  CODCONTROL = :CODCONTROL,'
      '  CODEMP = :CODEMP,'
      '  CODFORN = :CODFORN,'
      '  NF = :NF,'
      '  NFSERIE = :NFSERIE,'
      '  DTLANCAMENTO = :DTLANCAMENTO,'
      '  DTEMISS = :DTEMISS,'
      '  DTENT = :DTENT,'
      '  DTFINALIZACAO_COMPRA = :DTFINALIZACAO_COMPRA,'
      '  NFCFOP = :NFCFOP,'
      '  NATUREZA = :NATUREZA,'
      '  STATUS = :STATUS,'
      '  IPI = :IPI,'
      '  ICMSBASE = :ICMSBASE,'
      '  ICMSVALOR = :ICMSVALOR,'
      '  ICMSSUBSTBASE = :ICMSSUBSTBASE,'
      '  ICMSSUBSTVALOR = :ICMSSUBSTVALOR,'
      '  FRETE = :FRETE,'
      '  OUTROSCUSTOS = :OUTROSCUSTOS,'
      '  DESCONTO = :DESCONTO,'
      '  TOTALNF = :TOTALNF,'
      '  TOTALPROD = :TOTALPROD,'
      '  OBS = :OBS,'
      '  USUARIO = :USUARIO,'
      '  FORMAPAGTO_COD = :FORMAPAGTO_COD,'
      '  CONDICAOPAGTO_COD = :CONDICAOPAGTO_COD,'
      '  COMPRA_PRAZO = :COMPRA_PRAZO,'
      '  PRAZO_01 = :PRAZO_01,'
      '  PRAZO_02 = :PRAZO_02,'
      '  PRAZO_03 = :PRAZO_03,'
      '  PRAZO_04 = :PRAZO_04,'
      '  PRAZO_05 = :PRAZO_05,'
      '  PRAZO_06 = :PRAZO_06,'
      '  PRAZO_07 = :PRAZO_07,'
      '  PRAZO_08 = :PRAZO_08,'
      '  PRAZO_09 = :PRAZO_09,'
      '  PRAZO_10 = :PRAZO_10,'
      '  PRAZO_11 = :PRAZO_11,'
      '  PRAZO_12 = :PRAZO_12'
      'where'
      '  ANO = :OLD_ANO and'
      '  CODCONTROL = :OLD_CODCONTROL')
    InsertSQL.Strings = (
      'insert into TBCOMPRAS'
      
        '  (ANO, CODCONTROL, CODEMP, CODFORN, NF, NFSERIE, DTLANCAMENTO, ' +
        'DTEMISS, '
      
        '   DTENT, DTFINALIZACAO_COMPRA, NFCFOP, NATUREZA, STATUS, IPI, I' +
        'CMSBASE, '
      
        '   ICMSVALOR, ICMSSUBSTBASE, ICMSSUBSTVALOR, FRETE, OUTROSCUSTOS' +
        ', DESCONTO, '
      
        '   TOTALNF, TOTALPROD, OBS, USUARIO, FORMAPAGTO_COD, CONDICAOPAG' +
        'TO_COD, '
      
        '   COMPRA_PRAZO, PRAZO_01, PRAZO_02, PRAZO_03, PRAZO_04, PRAZO_0' +
        '5, PRAZO_06, '
      '   PRAZO_07, PRAZO_08, PRAZO_09, PRAZO_10, PRAZO_11, PRAZO_12)'
      'values'
      
        '  (:ANO, :CODCONTROL, :CODEMP, :CODFORN, :NF, :NFSERIE, :DTLANCA' +
        'MENTO, '
      
        '   :DTEMISS, :DTENT, :DTFINALIZACAO_COMPRA, :NFCFOP, :NATUREZA, ' +
        ':STATUS, '
      
        '   :IPI, :ICMSBASE, :ICMSVALOR, :ICMSSUBSTBASE, :ICMSSUBSTVALOR,' +
        ' :FRETE, '
      
        '   :OUTROSCUSTOS, :DESCONTO, :TOTALNF, :TOTALPROD, :OBS, :USUARI' +
        'O, :FORMAPAGTO_COD, '
      
        '   :CONDICAOPAGTO_COD, :COMPRA_PRAZO, :PRAZO_01, :PRAZO_02, :PRA' +
        'ZO_03, '
      
        '   :PRAZO_04, :PRAZO_05, :PRAZO_06, :PRAZO_07, :PRAZO_08, :PRAZO' +
        '_09, :PRAZO_10, '
      '   :PRAZO_11, :PRAZO_12)')
    DeleteSQL.Strings = (
      'delete from TBCOMPRAS'
      'where'
      '  ANO = :OLD_ANO and'
      '  CODCONTROL = :OLD_CODCONTROL')
    Left = 960
    Top = 8
  end
  inherited ImgList: TImageList
    Left = 832
    Top = 8
  end
  object tblEmpresa: TIBTable
    Database = DMBusiness.ibdtbsBusiness
    Transaction = DMBusiness.ibtrnsctnBusiness
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TBEMPRESA'
    Left = 864
    Top = 8
  end
  object dtsEmpresa: TDataSource
    DataSet = tblEmpresa
    OnStateChange = dtsEmpresaStateChange
    Left = 896
    Top = 8
  end
  object qryProduto: TIBDataSet
    Database = DMBusiness.ibdtbsBusiness
    Transaction = DMBusiness.ibtrnsctnBusiness
    BufferChunks = 1000
    CachedUpdates = False
    RefreshSQL.Strings = (
      '')
    SelectSQL.Strings = (
      'Select'
      '    p.Codigo'
      '  , p.Cod'
      '  , p.Descri'
      '  , p.Modelo'
      '  , p.Preco'
      '  , p.Referencia'
      '  , p.Secao'
      '  , p.Qtde'
      '  , p.Unidade'
      '  , p.Estoqmin'
      '  , p.Codgrupo'
      '  , p.Customedio'
      '  , p.Codemp'
      '  , p.Codsecao'
      '  , p.Codorigem'
      '  , p.Codtributacao'
      '  , p.Cst'
      '  , p.Codcfop'
      '  , p.Codbarra_ean'
      '  , p.Codunidade'
      '  , p.Aliquota_tipo'
      '  , p.Aliquota'
      '  , p.Valor_ipi'
      '  , p.Reserva'
      '  , case when coalesce(p.Reserva, 0) > 0'
      '      then coalesce(p.Qtde, 0) - coalesce(p.Reserva, 0)'
      '      else coalesce(p.Qtde, 0)'
      '    end as Disponivel'
      '  , g.Descri as Descricao_Grupo'
      '  , coalesce(s.Scp_descricao, p.Secao) as Descricao_Secao'
      '  , coalesce(u.Unp_descricao, p.Unidade) as Descricao_Unidade'
      '  , u.Unp_sigla'
      '  , c.Cfop_descricao'
      '  , c.Cfop_especificacao'
      'from TBPRODUTO p'
      '  left join TBGRUPOPROD g on (g.Cod = p.Codgrupo)'
      '  left join TBSECAOPROD s on (s.Scp_cod = p.Codsecao)'
      '  left join TBUNIDADEPROD u on (u.Unp_cod = p.Codunidade)'
      '  left join TBCFOP c on (c.Cfop_cod = p.Codcfop)'
      'where p.Cod = :CodigoAlfa')
    ModifySQL.Strings = (
      '')
    Left = 864
    Top = 104
  end
  object qryCFOP: TIBDataSet
    Database = DMBusiness.ibdtbsBusiness
    Transaction = DMBusiness.ibtrnsctnBusiness
    BufferChunks = 1000
    CachedUpdates = False
    RefreshSQL.Strings = (
      '')
    SelectSQL.Strings = (
      'Select'
      '    c.Cfop_cod'
      '  , c.Cfop_descricao'
      'from TBCFOP c'
      'where c.Cfop_cod = :Cfop_cod')
    ModifySQL.Strings = (
      '')
    Left = 896
    Top = 104
  end
  object tblFormaPagto: TIBTable
    Database = DMBusiness.ibdtbsBusiness
    Transaction = DMBusiness.ibtrnsctnBusiness
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TBFORMPAGTO'
    Left = 864
    Top = 40
  end
  object dtsFormaPagto: TDataSource
    DataSet = tblFormaPagto
    Left = 896
    Top = 40
  end
  object tblCondicaoPagto: TIBTable
    Database = DMBusiness.ibdtbsBusiness
    Transaction = DMBusiness.ibtrnsctnBusiness
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'VW_CONDICAOPAGTO'
    TableTypes = [ttView]
    Left = 864
    Top = 72
  end
  object dtsCondicaoPagto: TDataSource
    DataSet = tblCondicaoPagto
    Left = 896
    Top = 72
  end
  object cdsTabelaItens: TIBDataSet
    Database = DMBusiness.ibdtbsBusiness
    Transaction = DMBusiness.ibtrnsctnBusiness
    OnNewRecord = cdsTabelaItensNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    RefreshSQL.Strings = (
      '')
    SelectSQL.Strings = (
      'Select'
      '    i.Ano'
      '  , i.Codcontrol'
      '  , i.Codemp'
      '  , i.Seq'
      '  , i.Codprod'
      '  , i.Codforn'
      '  , i.Dtent'
      '  , i.Qtde'
      '  , i.Qtdeantes'
      '  , i.Qtdefinal'
      '  , i.Precounit'
      '  , i.Customedio'
      '  , i.Nf'
      '  , i.Perc_participacao'
      '  , i.Valor_frete'
      '  , i.Valor_desconto'
      '  , i.Valor_outros'
      '  , i.Valor_IPI'
      '  , i.Unid_cod'
      ''
      '  , p.Descri'
      '  , p.Qtde as Estoque'
      '  , u.Unp_sigla'
      '  , i.Qtde * i.Precounit  as total_bruto'
      '  , i.Qtde * i.Customedio as total_liquido'
      'from TBCOMPRASITENS i'
      '  inner join TBPRODUTO p on (p.Cod = i.Codprod)'
      '  left join TBUNIDADEPROD u on (u.Unp_cod = p.Codunidade)')
    ModifySQL.Strings = (
      '')
    UpdateObject = IbUpdTabelaItens
    Left = 928
    Top = 40
    object cdsTabelaItensANO: TSmallintField
      FieldName = 'ANO'
      Origin = 'TBCOMPRASITENS.ANO'
      Required = True
    end
    object cdsTabelaItensCODCONTROL: TIntegerField
      FieldName = 'CODCONTROL'
      Origin = 'TBCOMPRASITENS.CODCONTROL'
      Required = True
    end
    object cdsTabelaItensCODEMP: TIBStringField
      FieldName = 'CODEMP'
      Origin = 'TBCOMPRASITENS.CODEMP'
      Required = True
      Size = 18
    end
    object cdsTabelaItensSEQ: TSmallintField
      Alignment = taCenter
      DisplayLabel = '#'
      FieldName = 'SEQ'
      Origin = 'TBCOMPRASITENS.SEQ'
      Required = True
      DisplayFormat = '00'
    end
    object cdsTabelaItensCODPROD: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'CODPROD'
      Origin = 'TBCOMPRASITENS.CODPROD'
      Size = 10
    end
    object cdsTabelaItensCODFORN: TIntegerField
      FieldName = 'CODFORN'
      Origin = 'TBCOMPRASITENS.CODFORN'
    end
    object cdsTabelaItensDTENT: TDateField
      FieldName = 'DTENT'
      Origin = 'TBCOMPRASITENS.DTENT'
    end
    object cdsTabelaItensQTDE: TSmallintField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      Origin = 'TBCOMPRASITENS.QTDE'
    end
    object cdsTabelaItensQTDEANTES: TIntegerField
      FieldName = 'QTDEANTES'
      Origin = 'TBCOMPRASITENS.QTDEANTES'
    end
    object cdsTabelaItensQTDEFINAL: TIntegerField
      FieldName = 'QTDEFINAL'
      Origin = 'TBCOMPRASITENS.QTDEFINAL'
    end
    object cdsTabelaItensPRECOUNIT: TIBBCDField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'PRECOUNIT'
      Origin = 'TBCOMPRASITENS.PRECOUNIT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object cdsTabelaItensCUSTOMEDIO: TIBBCDField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'CUSTOMEDIO'
      Origin = 'TBCOMPRASITENS.CUSTOMEDIO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object cdsTabelaItensNF: TIntegerField
      FieldName = 'NF'
      Origin = 'TBCOMPRASITENS.NF'
    end
    object cdsTabelaItensPERC_PARTICIPACAO: TIBBCDField
      FieldName = 'PERC_PARTICIPACAO'
      Origin = 'TBCOMPRASITENS.PERC_PARTICIPACAO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object cdsTabelaItensVALOR_FRETE: TIBBCDField
      DisplayLabel = 'Frete'
      FieldName = 'VALOR_FRETE'
      Origin = 'TBCOMPRASITENS.VALOR_FRETE'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object cdsTabelaItensVALOR_DESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VALOR_DESCONTO'
      Origin = 'TBCOMPRASITENS.VALOR_DESCONTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object cdsTabelaItensVALOR_OUTROS: TIBBCDField
      DisplayLabel = 'Outros'
      FieldName = 'VALOR_OUTROS'
      Origin = 'TBCOMPRASITENS.VALOR_OUTROS'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object cdsTabelaItensVALOR_IPI: TIBBCDField
      DisplayLabel = 'Valor IPI'
      FieldName = 'VALOR_IPI'
      Origin = 'TBCOMPRASITENS.VALOR_IPI'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object cdsTabelaItensUNID_COD: TSmallintField
      DisplayLabel = 'Und.'
      FieldName = 'UNID_COD'
      Origin = 'TBCOMPRASITENS.UNID_COD'
    end
    object cdsTabelaItensDESCRI: TIBStringField
      DisplayLabel = 'Descri'#231#227'o do produto'
      FieldName = 'DESCRI'
      Origin = 'TBPRODUTO.DESCRI'
      Size = 50
    end
    object cdsTabelaItensESTOQUE: TIntegerField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = 'TBPRODUTO.QTDE'
    end
    object cdsTabelaItensUNP_SIGLA: TIBStringField
      DisplayLabel = 'Und.'
      FieldName = 'UNP_SIGLA'
      Origin = 'TBUNIDADEPROD.UNP_SIGLA'
      Size = 5
    end
    object cdsTabelaItensTOTAL_BRUTO: TIBBCDField
      DisplayLabel = 'Total Bruto (R$)'
      FieldName = 'TOTAL_BRUTO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object cdsTabelaItensTOTAL_LIQUIDO: TIBBCDField
      DisplayLabel = 'Total L'#237'quido'
      FieldName = 'TOTAL_LIQUIDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
  object IbUpdTabelaItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ANO,'
      '  CODCONTROL,'
      '  CODEMP,'
      '  SEQ,'
      '  CODFORN,'
      '  CODPROD,'
      '  QTDE,'
      '  PRECOUNIT,'
      '  CUSTOMEDIO,'
      '  DTENT,'
      '  NF,'
      '  QTDEANTES,'
      '  QTDEFINAL,'
      '  PERC_PARTICIPACAO,'
      '  VALOR_FRETE,'
      '  VALOR_DESCONTO,'
      '  VALOR_OUTROS,'
      '  VALOR_IPI,'
      '  UNID_COD'
      'from TBCOMPRASITENS '
      'where'
      '  ANO = :ANO and'
      '  CODCONTROL = :CODCONTROL and'
      '  CODEMP = :CODEMP and'
      '  SEQ = :SEQ')
    ModifySQL.Strings = (
      'update TBCOMPRASITENS'
      'set'
      '  ANO = :ANO,'
      '  CODCONTROL = :CODCONTROL,'
      '  CODEMP = :CODEMP,'
      '  SEQ = :SEQ,'
      '  CODFORN = :CODFORN,'
      '  CODPROD = :CODPROD,'
      '  QTDE = :QTDE,'
      '  PRECOUNIT = :PRECOUNIT,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  DTENT = :DTENT,'
      '  NF = :NF,'
      '  QTDEANTES = :QTDEANTES,'
      '  QTDEFINAL = :QTDEFINAL,'
      '  PERC_PARTICIPACAO = :PERC_PARTICIPACAO,'
      '  VALOR_FRETE = :VALOR_FRETE,'
      '  VALOR_DESCONTO = :VALOR_DESCONTO,'
      '  VALOR_OUTROS = :VALOR_OUTROS,'
      '  VALOR_IPI = :VALOR_IPI,'
      '  UNID_COD = :UNID_COD'
      'where'
      '  ANO = :OLD_ANO and'
      '  CODCONTROL = :OLD_CODCONTROL and'
      '  CODEMP = :OLD_CODEMP and'
      '  SEQ = :OLD_SEQ')
    InsertSQL.Strings = (
      'insert into TBCOMPRASITENS'
      
        '  (ANO, CODCONTROL, CODEMP, SEQ, CODFORN, CODPROD, QTDE, PRECOUN' +
        'IT, CUSTOMEDIO, '
      
        '   DTENT, NF, QTDEANTES, QTDEFINAL, PERC_PARTICIPACAO, VALOR_FRE' +
        'TE, VALOR_DESCONTO, '
      '   VALOR_OUTROS, VALOR_IPI, UNID_COD)'
      'values'
      
        '  (:ANO, :CODCONTROL, :CODEMP, :SEQ, :CODFORN, :CODPROD, :QTDE, ' +
        ':PRECOUNIT, '
      
        '   :CUSTOMEDIO, :DTENT, :NF, :QTDEANTES, :QTDEFINAL, :PERC_PARTI' +
        'CIPACAO, '
      
        '   :VALOR_FRETE, :VALOR_DESCONTO, :VALOR_OUTROS, :VALOR_IPI, :UN' +
        'ID_COD)')
    DeleteSQL.Strings = (
      'delete from TBCOMPRASITENS'
      'where'
      '  ANO = :OLD_ANO and'
      '  CODCONTROL = :OLD_CODCONTROL and'
      '  CODEMP = :OLD_CODEMP and'
      '  SEQ = :OLD_SEQ')
    Left = 960
    Top = 40
  end
  object DtSrcTabelaItens: TDataSource
    AutoEdit = False
    DataSet = cdsTabelaItens
    OnStateChange = DtSrcTabelaItensStateChange
    Left = 992
    Top = 40
  end
  object qryDuplicatas: TIBDataSet
    Database = DMBusiness.ibdtbsBusiness
    Transaction = DMBusiness.ibtrnsctnBusiness
    OnCalcFields = qryDuplicatasCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    RefreshSQL.Strings = (
      '')
    SelectSQL.Strings = (
      'Select'
      '    r.Anolanc'
      '  , r.numlanc'
      '  , r.parcela'
      '  , r.codbanco'
      '  , r.nossonumero'
      '  , r.cnpj'
      '  , r.tippag'
      '  , r.dtemiss'
      '  , r.dtvenc'
      '  , r.valorrec'
      '  , r.percentjuros'
      '  , r.percentmulta'
      '  , r.percentdesconto'
      '  , r.valorrectot'
      '  , r.valorsaldo'
      '  , r.dataprocessoboleto'
      '  , r.Baixado'
      '  , Case when r.Baixado = 1 then '#39'X'#39' else '#39'.'#39' end as Baixado_'
      '  , r.Dtrec'
      'from TBCONTREC r')
    ModifySQL.Strings = (
      '')
    Left = 928
    Top = 72
    object qryDuplicatasANOLANC: TSmallintField
      FieldName = 'ANOLANC'
      Origin = 'TBCONTREC.ANOLANC'
      Required = True
    end
    object qryDuplicatasNUMLANC: TIntegerField
      FieldName = 'NUMLANC'
      Origin = 'TBCONTREC.NUMLANC'
      Required = True
    end
    object qryDuplicatasPARCELA: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'Parc.'
      FieldName = 'PARCELA'
      Origin = 'TBCONTREC.PARCELA'
      DisplayFormat = '00'
    end
    object qryDuplicatasCODBANCO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Banco'
      FieldName = 'CODBANCO'
      Origin = 'TBCONTREC.CODBANCO'
      DisplayFormat = '0000'
    end
    object qryDuplicatasNOSSONUMERO: TIBStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSONUMERO'
      Origin = 'TBCONTREC.NOSSONUMERO'
    end
    object qryDuplicatasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'TBCONTREC.CNPJ'
      Size = 18
    end
    object qryDuplicatasTIPPAG: TIBStringField
      FieldName = 'TIPPAG'
      Origin = 'TBCONTREC.TIPPAG'
      Size = 35
    end
    object qryDuplicatasDTEMISS: TDateField
      Alignment = taCenter
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DTEMISS'
      Origin = 'TBCONTREC.DTEMISS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryDuplicatasDTVENC: TDateField
      Alignment = taCenter
      DisplayLabel = 'Vencimento'
      FieldName = 'DTVENC'
      Origin = 'TBCONTREC.DTVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryDuplicatasVALORREC: TIBBCDField
      DisplayLabel = 'Valor Doc. (R$)'
      FieldName = 'VALORREC'
      Origin = 'TBCONTREC.VALORREC'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryDuplicatasPERCENTJUROS: TIBBCDField
      DisplayLabel = '% Juros'
      FieldName = 'PERCENTJUROS'
      Origin = 'TBCONTREC.PERCENTJUROS'
      DisplayFormat = ',0.00'
      Precision = 9
      Size = 2
    end
    object qryDuplicatasPERCENTMULTA: TIBBCDField
      DisplayLabel = '% Multa'
      FieldName = 'PERCENTMULTA'
      Origin = 'TBCONTREC.PERCENTMULTA'
      DisplayFormat = ',0.00'
      Precision = 9
      Size = 2
    end
    object qryDuplicatasPERCENTDESCONTO: TIBBCDField
      DisplayLabel = '% Desc.'
      FieldName = 'PERCENTDESCONTO'
      Origin = 'TBCONTREC.PERCENTDESCONTO'
      DisplayFormat = ',0.00'
      Precision = 9
      Size = 2
    end
    object qryDuplicatasVALORRECTOT: TIBBCDField
      FieldName = 'VALORRECTOT'
      Origin = 'TBCONTREC.VALORRECTOT'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryDuplicatasVALORSALDO: TIBBCDField
      FieldName = 'VALORSALDO'
      Origin = 'TBCONTREC.VALORSALDO'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qryDuplicatasDATAPROCESSOBOLETO: TDateField
      FieldName = 'DATAPROCESSOBOLETO'
      Origin = 'TBCONTREC.DATAPROCESSOBOLETO'
    end
    object qryDuplicatasBAIXADO: TSmallintField
      FieldName = 'BAIXADO'
      Origin = 'TBCONTREC.BAIXADO'
      Required = True
    end
    object qryDuplicatasBAIXADO_: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Baixado'
      FieldName = 'BAIXADO_'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryDuplicatasDTREC: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Baixa'
      FieldName = 'DTREC'
      Origin = 'TBCONTREC.DTREC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryDuplicatasLancamento: TStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'Lancamento'
      Size = 10
      Calculated = True
    end
  end
  object dtsTitulos: TDataSource
    AutoEdit = False
    DataSet = qryDuplicatas
    Left = 992
    Top = 72
  end
  object IbStrPrcGerarDuplicatas: TIBStoredProc
    Database = DMBusiness.ibdtbsBusiness
    Transaction = DMBusiness.ibtrnsctnBusiness
    StoredProcName = 'SET_GERAR_TITULOS'
    Left = 928
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'PARCELAS'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_TOTAL'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'PARCELA'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'EMISSAO'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'VENCIMENTO'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_DOCUMENTO'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'FORMA_PAGTO'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'ANO_LANC'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'NUM_LANC'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'ANOVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMVENDA'
        ParamType = ptInput
      end>
  end
end
