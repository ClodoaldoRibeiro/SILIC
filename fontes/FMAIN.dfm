object FMAIN_: TFMAIN_
  Left = 310
  Top = 137
  Width = 741
  Height = 470
  Caption = 'Sistema de Controle de Licita'#231#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MMPRINCIAPAL
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MMPRINCIAPAL: TMainMenu
    Left = 24
    Top = 40
    object MICadastro: TMenuItem
      Caption = '&Arquivos'
      ShortCut = 49227
      object Geral: TMenuItem
        Caption = 'Geral'
        object Marca2: TMenuItem
          Caption = 'Modelo'
          ShortCut = 16449
          OnClick = Marca2Click
        end
        object Marca1: TMenuItem
          Caption = 'Marca'
          ShortCut = 16450
          OnClick = Marca1Click
        end
        object MIEstadoCivil: TMenuItem
          Caption = 'Estado civil'
          ShortCut = 16452
          OnClick = MIEstadoCivilClick
        end
        object MIRelacao: TMenuItem
          Caption = 'Rela'#231#227'o'
          ShortCut = 16453
          OnClick = MIRelacaoClick
        end
        object MIUsuario: TMenuItem
          Caption = 'Usu'#225'rio'
          ShortCut = 16454
          OnClick = MIUsuarioClick
        end
        object MIFuncionario: TMenuItem
          Caption = 'Funcion'#225'rio'
          ShortCut = 16455
          OnClick = MIFuncionarioClick
        end
        object MISetor: TMenuItem
          Caption = 'Setor'
          ShortCut = 16456
          OnClick = MISetorClick
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Logradouros: TMenuItem
        Caption = 'Logradouro'
        object MITipoLogradouro: TMenuItem
          Caption = 'Tipo'
          ShortCut = 16457
          OnClick = MITipoLogradouroClick
        end
        object MILogradouro: TMenuItem
          Caption = 'Logradouro'
          ShortCut = 16458
          OnClick = MILogradouroClick
        end
      end
      object logodiv: TMenuItem
        Caption = '-'
      end
      object Localizacao: TMenuItem
        Caption = 'Localiza'#231#227'o'
        object MICidade: TMenuItem
          Caption = 'Estado'
          ShortCut = 16459
          OnClick = MICidadeClick
        end
        object Cidade1: TMenuItem
          Caption = 'Cidade'
          ShortCut = 16460
          OnClick = Cidade1Click
        end
        object MiBairro: TMenuItem
          Caption = 'Bairro'
          ShortCut = 16461
          OnClick = MiBairroClick
        end
      end
      object Estoquediv: TMenuItem
        Caption = '-'
      end
      object Estoque: TMenuItem
        Caption = 'Estoque'
        object Unidade1: TMenuItem
          Caption = 'Unidade'
          ShortCut = 16462
          OnClick = Unidade1Click
        end
        object MITipoEstoque: TMenuItem
          Caption = 'Tipo'
          ShortCut = 16463
          OnClick = MITipoEstoqueClick
        end
        object MIClassificacaoEstoque: TMenuItem
          Caption = 'Classifica'#231#227'o'
          ShortCut = 16464
          OnClick = MIClassificacaoEstoqueClick
        end
        object MINomeGenricodoestoque: TMenuItem
          Caption = 'Nome gen'#233'rico'
          ShortCut = 16465
          OnClick = MINomeGenricodoestoqueClick
        end
        object MIProdutodoestoque: TMenuItem
          Caption = 'Produto'
          ShortCut = 16466
          OnClick = MIProdutodoestoqueClick
        end
        object MIFornecedor: TMenuItem
          Caption = 'Fornecedor'
          ShortCut = 16467
          OnClick = MIFornecedorClick
        end
      end
      object geraldiv: TMenuItem
        Caption = '-'
      end
      object Sair: TMenuItem
        Caption = '&Sair'
        OnClick = SairClick
      end
    end
    object Movimentos: TMenuItem
      Caption = '&Movimentos'
      object Entidades: TMenuItem
        Caption = 'Entidade'
        object Endereco: TMenuItem
          Caption = 'Endere'#231'o'
          ShortCut = 16469
          OnClick = EnderecoClick
        end
        object MIEmail: TMenuItem
          Caption = 'Email'
          ShortCut = 16471
          OnClick = MIEmailClick
        end
        object MIContatos: TMenuItem
          Caption = 'Contato'
          ShortCut = 49217
          OnClick = MIContatosClick
        end
      end
      object EmtidadesDiv: TMenuItem
        Caption = '-'
      end
      object Pedidos: TMenuItem
        Caption = 'Pedido'
        object MIPedido: TMenuItem
          Caption = 'Pedido'
          ShortCut = 49218
          OnClick = MIPedidoClick
        end
        object MIItensdopedido: TMenuItem
          Caption = 'Itens do pedido'
          ShortCut = 49219
          OnClick = MIItensdopedidoClick
        end
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Editais: TMenuItem
        Caption = 'Edital'
        object EDITAL1: TMenuItem
          Caption = 'Edital'
          ShortCut = 49220
          OnClick = EDITAL1Click
        end
        object MIPedidoEdital: TMenuItem
          Caption = 'Pedidos do Edital'
          ShortCut = 49221
          OnClick = MIPedidoEditalClick
        end
        object MIEntidadeEdital: TMenuItem
          Caption = 'Entidades do Edital'
          ShortCut = 49222
          OnClick = MIEntidadeEditalClick
        end
        object MILanceEdital: TMenuItem
          Caption = 'Lance do Edital'
          ShortCut = 49223
          OnClick = MILanceEditalClick
        end
        object MIItensEdital: TMenuItem
          Caption = 'Itens do Edital'
          ShortCut = 49224
          OnClick = MIItensEditalClick
        end
      end
      object N3: TMenuItem
        Caption = '-'
      end
    end
    object Graficos: TMenuItem
      Caption = '&Graficos'
      object MILogradouroPorTipo: TMenuItem
        Caption = 'Logradouro por Tipo'
        ShortCut = 49225
        OnClick = MILogradouroPorTipoClick
      end
    end
    object Relatrios: TMenuItem
      Caption = '&Relat'#243'rios'
      object MIQRTipoLogradouro: TMenuItem
        Caption = 'Tipo de logradouro'
        ShortCut = 8304
        OnClick = MIQRTipoLogradouroClick
      end
    end
    object MIAjuda: TMenuItem
      Caption = '&Ajuda'
      object MiSobre: TMenuItem
        Caption = 'Sobre'
        ShortCut = 113
        OnClick = MiSobreClick
      end
    end
  end
end
