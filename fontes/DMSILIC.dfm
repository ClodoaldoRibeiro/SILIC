object DMSILIC_: TDMSILIC_
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 343
  Top = 31
  Height = 578
  Width = 870
  object DBSILIC: TDatabase
    AliasName = 'ALSILIC'
    Connected = True
    DatabaseName = 'BSSILIC'
    SessionName = 'Default'
    Left = 394
  end
  object TBESTADO: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'ESCUF'
    TableName = 'ESTADO.db'
    Left = 32
    Top = 95
    object TBESTADOESCUF: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 6
      FieldName = 'ESCUF'
      Size = 2
    end
    object TBESTADOESCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 86
      FieldName = 'ESCDESC'
      Size = 30
    end
  end
  object DSESTADO: TDataSource
    DataSet = TBESTADO
    Left = 33
    Top = 53
  end
  object TBTIPOLOGRADOURO: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'TLNCODG'
    TableName = 'TIPOLOGRADOURO.db'
    Left = 132
    Top = 95
    object TBTIPOLOGRADOUROTLNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'TLNCODG'
    end
    object TBTIPOLOGRADOUROTLCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 64
      FieldName = 'TLCDESC'
      Size = 30
    end
  end
  object DSTIPOLOGRADOURO: TDataSource
    DataSet = TBTIPOLOGRADOURO
    Left = 132
    Top = 53
  end
  object TBCIDADE: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'CDCUF'
    MasterFields = 'ESCUF'
    MasterSource = DSESTADO
    TableName = 'CIDADE.db'
    Left = 220
    Top = 96
    object TBCIDADECDCUF: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 6
      FieldName = 'CDCUF'
      EditMask = '>LL<;0;_'
      Size = 2
    end
    object TBCIDADECDNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'CDNCODG'
    end
    object TBCIDADECDCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 65
      FieldName = 'CDCDESC'
      Size = 50
    end
  end
  object DSCIDADE: TDataSource
    DataSet = TBCIDADE
    Left = 223
    Top = 54
  end
  object TBLOGRADOURO: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'LGCCEP'
    TableName = 'LOGRADOURO.db'
    Left = 303
    Top = 96
    object TBLOGRADOUROLGCCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'LGCCEP'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object TBLOGRADOUROLGCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LGCDESC'
      Size = 50
    end
    object TBLOGRADOUROLKLGCUF: TStringField
      DisplayLabel = 'Estado'
      FieldKind = fkLookup
      FieldName = 'LKLGCUF'
      LookupDataSet = TBESTADO
      LookupKeyFields = 'ESCUF'
      LookupResultField = 'ESCDESC'
      KeyFields = 'LGCUF'
      Size = 2
      Lookup = True
    end
    object TBLOGRADOUROLKLGNCGCD: TStringField
      DisplayLabel = 'Cidade'
      FieldKind = fkLookup
      FieldName = 'LKLGNCGCD'
      LookupDataSet = TBCIDADE
      LookupKeyFields = 'CDNCODG'
      LookupResultField = 'CDCDESC'
      KeyFields = 'LGNCGCD'
      Lookup = True
    end
    object TBLOGRADOUROLKLGNCGBR: TStringField
      DisplayLabel = 'Bairro'
      FieldKind = fkLookup
      FieldName = 'LKLGNCGBR'
      LookupDataSet = TBBAIRRO
      LookupKeyFields = 'BRNCODG'
      LookupResultField = 'BRCDESC'
      KeyFields = 'LGNCGBR'
      Lookup = True
    end
    object TBLOGRADOUROLKLGNCGTL: TStringField
      DisplayLabel = 'Tipo de logradouro'
      FieldKind = fkLookup
      FieldName = 'LKLGNCGTL'
      LookupDataSet = TBTIPOLOGRADOURO
      LookupKeyFields = 'TLNCODG'
      LookupResultField = 'TLCDESC'
      KeyFields = 'LGNCGTL'
      Lookup = True
    end
    object TBLOGRADOUROLGCUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'LGCUF'
      Size = 2
    end
    object TBLOGRADOUROLGNCGCD: TFloatField
      DisplayLabel = 'Cidade'
      FieldName = 'LGNCGCD'
    end
    object TBLOGRADOUROLGNCGBR: TFloatField
      DisplayLabel = 'Bairro'
      FieldName = 'LGNCGBR'
    end
    object TBLOGRADOUROLGNCGTL: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'LGNCGTL'
    end
  end
  object DSLOGRADOURO: TDataSource
    DataSet = TBLOGRADOURO
    Left = 303
    Top = 54
  end
  object TBENTIDADE: TTable
    AfterPost = TBENTIDADEAfterPost
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'ENNCODG'
    MasterFields = 'ERNCGEN'
    MasterSource = DSENTIDADERELACAO
    TableName = 'ENTIDADE.DB'
    Left = 391
    Top = 96
    object TBENTIDADEENNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ENNCODG'
    end
    object TBENTIDADEENCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ENCDESC'
      Size = 50
    end
    object TBENTIDADEENCTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ENCTIPO'
      Size = 1
    end
    object TBENTIDADEENCAPEL: TStringField
      DisplayLabel = 'Apelido'
      FieldName = 'ENCAPEL'
      Size = 30
    end
    object TBENTIDADEENCSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'ENCSEXO'
      Size = 1
    end
    object TBENTIDADEENOFOTO: TBlobField
      DisplayLabel = 'Foto'
      FieldName = 'ENOFOTO'
      BlobType = ftParadoxOle
    end
    object TBENTIDADEENDDNAS: TDateField
      FieldName = 'ENDDNAS'
      EditMask = '!00/00/9999;1;_'
    end
    object TBENTIDADEENCCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'ENCCPF'
      EditMask = '000\.000\.000\-00;0;_'
      Size = 11
    end
    object TBENTIDADEENCCNPJ: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'ENCCNPJ'
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Size = 14
    end
    object TBENTIDADEENCRZSC: TStringField
      DisplayLabel = 'Raz'#227'o social'
      FieldName = 'ENCRZSC'
      Size = 50
    end
    object TBENTIDADEENCIE: TStringField
      DisplayLabel = 'CIE'
      FieldName = 'ENCIE'
      Size = 15
    end
    object TBENTIDADEENCIM: TStringField
      DisplayLabel = 'Inscri'#231#227'o municipal'
      FieldName = 'ENCIM'
      EditMask = '00000000000000;0;_'
      Size = 15
    end
    object TBENTIDADEENNCGEC: TFloatField
      DisplayLabel = 'Estado civil'
      FieldName = 'ENNCGEC'
    end
    object TBENTIDADEENNCGEN: TFloatField
      DisplayLabel = 'Rela'#231#227'o'
      FieldName = 'ENNCGEN'
    end
    object TBENTIDADEENNCADT: TFloatField
      FieldName = 'ENNCADT'
    end
    object TBENTIDADELKENNCGEC: TStringField
      DisplayLabel = 'Estado civil'
      FieldKind = fkLookup
      FieldName = 'LKENNCGEC'
      LookupDataSet = TBESTADOCIVIL
      LookupKeyFields = 'ECNCODG'
      LookupResultField = 'ECCDESC'
      KeyFields = 'ENNCGEC'
      Size = 30
      Lookup = True
    end
    object TBENTIDADEENDCADT: TDateField
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'ENDCADT'
      EditMask = '!00/00/9999;1;_'
    end
    object TBENTIDADEENHCADT: TTimeField
      DisplayLabel = 'Hora do Cadastro'
      FieldName = 'ENHCADT'
      EditMask = '00:00:\0\0;1;_'
    end
    object TBENTIDADEENCDCEN: TStringField
      DisplayLabel = 'Chefe do Setor'
      FieldKind = fkLookup
      FieldName = 'ENCDCEN'
      LookupDataSet = QRFORNECEDOR
      LookupKeyFields = 'enncodg'
      LookupResultField = 'encdesc'
      KeyFields = 'ENNCGEN'
      Size = 0
      Lookup = True
    end
  end
  object DSENTIDADE: TDataSource
    DataSet = TBENTIDADE
    Left = 392
    Top = 54
  end
  object TBESTADOCIVIL: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'ECNCODG'
    TableName = 'ESTADOCIVIL.db'
    Left = 476
    Top = 96
    object TBESTADOCIVILECNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'ECNCODG'
    end
    object TBESTADOCIVILECCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 72
      FieldName = 'ECCDESC'
    end
  end
  object DSESTADOCIVIL: TDataSource
    DataSet = TBESTADOCIVIL
    Left = 476
    Top = 54
  end
  object TBRELACAO: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'RENCODG'
    TableName = 'RELACAO.db'
    Left = 558
    Top = 96
    object TBRELACAORENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'RENCODG'
    end
    object TBRELACAORECDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 63
      FieldName = 'RECDESC'
      Size = 30
    end
  end
  object DSRELACAO: TDataSource
    DataSet = TBRELACAO
    Left = 557
    Top = 54
  end
  object TBBAIRRO: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'BRCUF;BRNCGCD;BRNCODG'
    MasterFields = 'CDCUF;CDNCODG'
    MasterSource = DSCIDADE
    TableName = 'BAIRRO.db'
    Left = 632
    Top = 97
    object TBBAIRROBRCUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'BRCUF'
      Size = 2
    end
    object TBBAIRROBRNCGCD: TFloatField
      DisplayLabel = 'Cidade'
      FieldName = 'BRNCGCD'
    end
    object TBBAIRROBRNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BRNCODG'
    end
    object TBBAIRROBRCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'BRCDESC'
      Size = 50
    end
  end
  object DSBAIRRO: TDataSource
    DataSet = TBBAIRRO
    Left = 631
    Top = 55
  end
  object DSENTIDADERELACAO: TDataSource
    DataSet = TBENTIDADERELACAO
    Left = 741
    Top = 54
  end
  object TBTIPOESTOQUE: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'TENCODG'
    TableName = 'TIPOESTOQUE.db'
    Left = 43
    Top = 191
    object TBTIPOESTOQUETENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 15
      FieldName = 'TENCODG'
    end
    object TBTIPOESTOQUETECDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 69
      FieldName = 'TECDESC'
      Size = 30
    end
  end
  object DSTIPOESTOQUE: TDataSource
    DataSet = TBTIPOESTOQUE
    Left = 44
    Top = 149
  end
  object TBMARCA: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'MCNCODG'
    TableName = 'MARCA.db'
    Left = 128
    Top = 191
    object TBMARCAMCNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'MCNCODG'
    end
    object TBMARCAMCCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 64
      FieldName = 'MCCDESC'
      Size = 30
    end
  end
  object DSMARCA: TDataSource
    DataSet = TBMARCA
    Left = 130
    Top = 149
  end
  object TBENDERECO: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'EDNCGEN;EDNCODG'
    MasterFields = 'ENNCODG'
    MasterSource = DSENTIDADE
    TableName = 'ENDERECO.db'
    Left = 216
    Top = 191
    object TBENDERECOEDNCGEN: TFloatField
      DisplayLabel = 'Entidade'
      FieldName = 'EDNCGEN'
    end
    object TBENDERECOEDNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EDNCODG'
    end
    object TBENDERECOEDCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'EDCDESC'
      Size = 30
    end
    object TBENDERECOEDCNUMR: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'EDCNUMR'
      Size = 10
    end
    object TBENDERECOEDCOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'EDCOBS'
      Size = 30
    end
    object TBENDERECOEDMOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'EDMOBS'
      Size = 30
    end
    object TBENDERECOLKEDCCEP: TStringField
      DisplayLabel = 'CEP'
      FieldKind = fkLookup
      FieldName = 'LKEDCCEP'
      LookupDataSet = TBLOGRADOURO
      LookupKeyFields = 'LGCCEP'
      LookupResultField = 'LGCCEP'
      KeyFields = 'EDCCEP'
      Size = 30
      Lookup = True
    end
    object TBENDERECOEDCCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'EDCCEP'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
  end
  object DSENDERECO: TDataSource
    DataSet = TBENDERECO
    Left = 218
    Top = 149
  end
  object TBCLASSIFICACAOESTOQUE: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'CENCGTE;CENCODG'
    MasterFields = 'TENCODG'
    MasterSource = DSTIPOESTOQUE
    TableName = 'CLASSIFICACAOESTOQUE.db'
    Left = 743
    Top = 199
    object TBCLASSIFICACAOESTOQUECENCGTE: TFloatField
      DisplayLabel = 'Tipo de estoque'
      FieldName = 'CENCGTE'
    end
    object TBCLASSIFICACAOESTOQUECENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CENCODG'
    end
    object TBCLASSIFICACAOESTOQUECECDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CECDESC'
      Size = 30
    end
  end
  object DSCLASSIFICACAOESTOQUE: TDataSource
    DataSet = TBCLASSIFICACAOESTOQUE
    Left = 744
    Top = 149
  end
  object TBMODELO: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'MDNCGMC;MDNCODG'
    MasterFields = 'MCNCODG'
    MasterSource = DSMARCA
    TableName = 'MODELO.db'
    Left = 301
    Top = 199
    object TBMODELOMDNCGMC: TFloatField
      DisplayLabel = 'Marca'
      FieldName = 'MDNCGMC'
    end
    object TBMODELOMDNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MDNCODG'
    end
    object TBMODELOMDCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'MDCDESC'
      Size = 30
    end
  end
  object DSMODELO: TDataSource
    DataSet = TBMODELO
    Left = 302
    Top = 149
  end
  object TBPEDIDO: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'PDNCODG'
    TableName = 'PEDIDO.db'
    Left = 392
    Top = 199
    object TBPEDIDOPDNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDNCODG'
    end
    object TBPEDIDOPDNDDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'PDNDDATA'
      EditMask = '!00/00/9999;1;_'
    end
    object TBPEDIDOLKPDNCGEN: TStringField
      DisplayLabel = 'Setor'
      FieldKind = fkLookup
      FieldName = 'LKPDNCGEN'
      LookupDataSet = QRSETOR
      LookupKeyFields = 'enncodg'
      LookupResultField = 'encdesc'
      KeyFields = 'PDNCGEN'
      Size = 30
      Lookup = True
    end
    object TBPEDIDOLKPDNC2EN: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldKind = fkLookup
      FieldName = 'LKPDNC2EN'
      LookupDataSet = QRFUNCIONARIO
      LookupKeyFields = 'enncodg'
      LookupResultField = 'encdesc'
      KeyFields = 'PDNCODG'
      Size = 30
      Lookup = True
    end
    object TBPEDIDOPDNCGEN: TFloatField
      DisplayLabel = 'Entidade'
      FieldName = 'PDNCGEN'
    end
    object TBPEDIDOPDNC2EN: TFloatField
      FieldName = 'PDNC2EN'
    end
    object TBPEDIDOPDCDOCM: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'PDCDOCM'
      Size = 30
    end
    object TBPEDIDOPDCPROG: TStringField
      DisplayLabel = 'Programa de trababalho'
      FieldName = 'PDCPROG'
      Size = 30
    end
    object TBPEDIDOPDCNATZ: TStringField
      DisplayLabel = 'Natureza da despeza'
      FieldName = 'PDCNATZ'
      Size = 30
    end
    object TBPEDIDOPDCDEMD: TStringField
      DisplayLabel = 'Demeanada'
      FieldName = 'PDCDEMD'
      Size = 30
    end
    object TBPEDIDOPDCENTR: TStringField
      DisplayLabel = 'Prazo de entrega'
      FieldName = 'PDCENTR'
      Size = 30
    end
    object TBPEDIDOPDCJULG: TStringField
      DisplayLabel = 'Julgamento'
      FieldName = 'PDCJULG'
      Size = 30
    end
    object TBPEDIDOPDDDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'PDDDATA'
      EditMask = '!00/00/9999;1;_'
    end
    object TBPEDIDOPDDCADT: TDateField
      DisplayLabel = 'Data cadastro'
      FieldName = 'PDDCADT'
      EditMask = '!00/00/9999;1;_'
    end
    object TBPEDIDOPDTCADT: TTimeField
      DisplayLabel = 'Hora do cadastro'
      FieldName = 'PDTCADT'
      EditMask = '00:00:\0\0;1;_'
    end
  end
  object DSPEDIDO: TDataSource
    DataSet = TBPEDIDO
    Left = 393
    Top = 149
  end
  object TBEMAIL: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'EMNCGEN;EMNCODG'
    MasterFields = 'ENNCGEN'
    MasterSource = DSENTIDADE
    TableName = 'EMAIL.db'
    Left = 474
    Top = 193
    object TBEMAILEMNCGEN: TFloatField
      DisplayLabel = 'Entidade'
      FieldName = 'EMNCGEN'
    end
    object TBEMAILEMNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EMNCODG'
    end
    object TBEMAILEMCDESC: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMCDESC'
      Size = 30
    end
  end
  object DSEMAIL: TDataSource
    DataSet = TBEMAIL
    Left = 475
    Top = 151
  end
  object TBCONTATO: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'CTNCGEN;CTNCGED;CTNCODG'
    MasterFields = 'EDNCGEN;EDNCODG'
    MasterSource = DSENDERECO
    TableName = 'CONTATO.db'
    Left = 556
    Top = 192
    object TBCONTATOCTNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTNCODG'
    end
    object TBCONTATOCTCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CTCDESC'
      Size = 30
    end
    object TBCONTATOCTCNUMR: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CTCNUMR'
      EditMask = '\(\099\) 90000-0000;0;_'
      Size = 12
    end
    object TBCONTATOCTCTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'CTCTIPO'
      Size = 1
    end
    object TBCONTATOCTNCGED: TFloatField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CTNCGED'
    end
    object TBCONTATOCTNCGEN: TFloatField
      DisplayLabel = 'Entidade'
      FieldName = 'CTNCGEN'
    end
  end
  object DSCONTATO: TDataSource
    DataSet = TBCONTATO
    Left = 557
    Top = 150
  end
  object TBUNIDADE: TTable
    DatabaseName = 'BSSILIC'
    TableName = 'UNIDADE.db'
    Left = 632
    Top = 191
    object TBUNIDADEUNNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 14
      FieldName = 'UNNCODG'
    end
    object TBUNIDADEUNCDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 55
      FieldName = 'UNCDESC'
      Size = 30
    end
  end
  object DSUNIDADE: TDataSource
    DataSet = TBUNIDADE
    Left = 633
    Top = 149
  end
  object TBNOMEGENERICOESTOQUE: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'NENCGTE;NENCGCE;NENCODG'
    MasterFields = 'CENCGTE;CENCODG'
    MasterSource = DSCLASSIFICACAOESTOQUE
    TableName = 'NOMEGENERICOESTOQUE.db'
    Left = 744
    Top = 288
    object TBNOMEGENERICOESTOQUENENCGTE: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'NENCGTE'
    end
    object TBNOMEGENERICOESTOQUENENCGCE: TFloatField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'NENCGCE'
    end
    object TBNOMEGENERICOESTOQUENENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'NENCODG'
    end
    object TBNOMEGENERICOESTOQUENECDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NECDESC'
      Size = 30
    end
  end
  object DSNOMEGENERICOESTOQUE: TDataSource
    DataSet = TBNOMEGENERICOESTOQUE
    Left = 745
    Top = 246
  end
  object TBPRODUTOESTOQUE: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'PENCGTE;PENCGCE;PENCGNE'
    MasterFields = 'NENCGTE;NENCGCE;NENCODG'
    MasterSource = DSNOMEGENERICOESTOQUE
    TableName = 'PRODUTOESTOQUE.db'
    Left = 56
    Top = 295
    object TBPRODUTOESTOQUEPENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PENCODG'
    end
    object TBPRODUTOESTOQUEPECDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PECDESC'
      Size = 30
    end
    object TBPRODUTOESTOQUEPENCGUN: TFloatField
      DisplayLabel = 'Unidade'
      FieldName = 'PENCGUN'
    end
    object TBPRODUTOESTOQUEPENCGTE: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'PENCGTE'
    end
    object TBPRODUTOESTOQUEPENCGCE: TFloatField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'PENCGCE'
    end
    object TBPRODUTOESTOQUEPENCGNE: TFloatField
      DisplayLabel = 'Nome gen'#233'rico'
      FieldName = 'PENCGNE'
    end
    object TBPRODUTOESTOQUELKPENCGUN: TStringField
      DisplayLabel = 'Unidade'
      FieldKind = fkLookup
      FieldName = 'LKPENCGUN'
      LookupDataSet = TBUNIDADE
      LookupKeyFields = 'UNNCODG'
      LookupResultField = 'UNCDESC'
      KeyFields = 'PENCGUN'
      Size = 30
      Lookup = True
    end
  end
  object DSPRODUTOESTOQUE: TDataSource
    DataSet = TBPRODUTOESTOQUE
    Left = 57
    Top = 245
  end
  object TBITENS_PEDIDO: TTable
    OnCalcFields = TBITENS_PEDIDOCalcFields
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'IPNCGPD;IPNCODG'
    MasterFields = 'PDNCODG'
    MasterSource = DSPEDIDO
    TableName = 'ITENS_PEDIDO.db'
    Left = 181
    Top = 287
    object TBITENS_PEDIDOIPNCGPD: TFloatField
      FieldName = 'IPNCGPD'
    end
    object TBITENS_PEDIDOIPNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IPNCODG'
    end
    object TBITENS_PEDIDOIPNCGTE: TFloatField
      DisplayLabel = 'Tipo de estoque'
      FieldName = 'IPNCGTE'
    end
    object TBITENS_PEDIDOIPNCGCE: TFloatField
      DisplayLabel = 'Classifica'#231#227'o do estoque'
      FieldName = 'IPNCGCE'
    end
    object TBITENS_PEDIDOIPNCGNE: TFloatField
      DisplayLabel = 'Nome generico do estoque'
      FieldName = 'IPNCGNE'
    end
    object TBITENS_PEDIDOIPNCGPE: TFloatField
      DisplayLabel = 'Pedido'
      FieldName = 'IPNCGPE'
    end
    object TBITENS_PEDIDOIPYVALR: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'IPYVALR'
    end
    object TBITENS_PEDIDOIPNQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'IPNQTD'
    end
    object TBITENS_PEDIDOCLIPYVALR: TCurrencyField
      DisplayLabel = 'Valor a pagar'
      FieldKind = fkCalculated
      FieldName = 'CLIPYVALR'
      Calculated = True
    end
    object TBITENS_PEDIDOLKTECDESC: TStringField
      DisplayLabel = 'Tipo de Estoque'
      FieldKind = fkLookup
      FieldName = 'LKTECDESC'
      LookupDataSet = TBTIPOESTOQUE
      LookupKeyFields = 'TENCODG'
      LookupResultField = 'TECDESC'
      KeyFields = 'IPNCGTE'
      Size = 30
      Lookup = True
    end
    object TBITENS_PEDIDOLKCECDESC: TStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'LKCECDESC'
      LookupDataSet = TBCLASSIFICACAOESTOQUE
      LookupKeyFields = 'CENCODG'
      LookupResultField = 'CECDESC'
      KeyFields = 'IPNCODG'
      Size = 30
      Lookup = True
    end
    object TBITENS_PEDIDOLKNECDESC: TStringField
      DisplayLabel = 'Nome gen'#233'rico'
      FieldKind = fkLookup
      FieldName = 'LKNECDESC'
      LookupDataSet = TBNOMEGENERICOESTOQUE
      LookupKeyFields = 'NENCODG'
      LookupResultField = 'NECDESC'
      KeyFields = 'IPNCGNE'
      Size = 30
      Lookup = True
    end
    object TBITENS_PEDIDOLKPECDESC: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'LKPECDESC'
      LookupDataSet = TBPRODUTOESTOQUE
      LookupKeyFields = 'PENCODG'
      LookupResultField = 'PECDESC'
      KeyFields = 'IPNCGPE'
      Size = 30
      Lookup = True
    end
  end
  object DSITENS_PEDIDO: TDataSource
    DataSet = TBITENS_PEDIDO
    Left = 182
    Top = 245
  end
  object TBEDITAL: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'ETNCODG'
    TableName = 'EDITAL.db'
    Left = 267
    Top = 287
    object TBEDITALETNCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ETNCODG'
    end
    object TBEDITALETAPROC: TStringField
      DisplayLabel = 'Processo'
      FieldName = 'ETAPROC'
      Size = 50
    end
    object TBEDITALETAFORM: TStringField
      DisplayLabel = 'Forma'
      FieldName = 'ETAFORM'
      Size = 50
    end
    object TBEDITALETDDATA: TDateField
      DisplayLabel = 'Data abertura'
      FieldName = 'ETDDATA'
      EditMask = '!00/00/9999;1;_'
    end
    object TBEDITALETHHORA: TTimeField
      DisplayLabel = 'Hora abertura'
      FieldName = 'ETHHORA'
      EditMask = '00:00:\0\0;1;_'
    end
    object TBEDITALETDCADT: TDateField
      DisplayLabel = 'Data do cadastro'
      FieldName = 'ETDCADT'
      EditMask = '!00/00/9999;1;_'
    end
    object TBEDITALETHCADT: TTimeField
      DisplayLabel = 'hora do cadastro'
      FieldName = 'ETHCADT'
      EditMask = '00:00:\0\0;1;_'
    end
  end
  object DSEDITAL: TDataSource
    DataSet = TBEDITAL
    Left = 268
    Top = 245
  end
  object TBENTIDADE_EDITAL: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'EENCGET;EENCODG'
    MasterFields = 'ETNCODG'
    MasterSource = DSEDITAL
    TableName = 'ENTIDADE_EDITAL.DB'
    Left = 361
    Top = 287
    object TBENTIDADE_EDITALEENCGET: TFloatField
      DisplayLabel = 'Edital'
      FieldName = 'EENCGET'
    end
    object TBENTIDADE_EDITALEENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EENCODG'
    end
    object TBENTIDADE_EDITALEENCGEN: TFloatField
      DisplayLabel = 'Entidade'
      FieldName = 'EENCGEN'
    end
    object TBENTIDADE_EDITALENCDESC: TStringField
      DisplayLabel = 'Fornecedor'
      FieldKind = fkLookup
      FieldName = 'LKENCDESC'
      LookupDataSet = QRFORNECEDOR
      LookupKeyFields = 'enncodg'
      LookupResultField = 'encdesc'
      KeyFields = 'EENCGEN'
      Size = 30
      Lookup = True
    end
  end
  object DSENTIDADE_EDITAL: TDataSource
    DataSet = TBENTIDADE_EDITAL
    Left = 361
    Top = 246
  end
  object TBLANCE_EDITAL: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'LENCGET;LENCGIE;LENCODG;LENCGEN'
    MasterFields = 'IENCGTE;IENCODG'
    MasterSource = DSITENS_EDITAL
    TableName = 'LANCE_EDITAL.db'
    Left = 477
    Top = 288
    object TBLANCE_EDITALLENCGET: TFloatField
      DisplayLabel = 'Edital'
      FieldName = 'LENCGET'
    end
    object TBLANCE_EDITALLENCGIE: TFloatField
      DisplayLabel = 'Itens do edital'
      FieldName = 'LENCGIE'
    end
    object TBLANCE_EDITALLENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'LENCODG'
    end
    object TBLANCE_EDITALLENCGEN: TFloatField
      DisplayLabel = 'Entidade'
      FieldName = 'LENCGEN'
    end
    object TBLANCE_EDITALLEYVALR: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'LEYVALR'
    end
  end
  object DSLANCE_EDITAL: TDataSource
    DataSet = TBLANCE_EDITAL
    Left = 476
    Top = 246
  end
  object TBITENS_EDITAL: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'IENCGET;IENCODG'
    MasterFields = 'ETNCODG'
    MasterSource = DSEDITAL
    TableName = 'ITENS_EDITAL.DB'
    Left = 597
    Top = 288
    object TBITENS_EDITALIENCGET: TFloatField
      DisplayLabel = 'Edital'
      FieldName = 'IENCGET'
    end
    object TBITENS_EDITALIENCODG: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IENCODG'
    end
    object TBITENS_EDITALIECDESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'IECDESC'
      Size = 60
    end
    object TBITENS_EDITALIENCGTE: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'IENCGTE'
    end
    object TBITENS_EDITALIENCGCE: TFloatField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'IENCGCE'
    end
    object TBITENS_EDITALIENCGNE: TFloatField
      DisplayLabel = 'Nome gen'#233'rico'
      FieldName = 'IENCGNE'
    end
    object TBITENS_EDITALIENCGPE: TFloatField
      DisplayLabel = 'Produto'
      FieldName = 'IENCGPE'
    end
    object TBITENS_EDITALIEYVLOR: TCurrencyField
      DisplayLabel = 'Valor Original'
      FieldName = 'IEYVLOR'
    end
    object TBITENS_EDITALIENQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'IENQTD'
    end
    object TBITENS_EDITALIENCGEN: TFloatField
      DisplayLabel = 'Fornecedor'
      FieldName = 'IENCGEN'
    end
    object TBITENS_EDITALIEYVALR: TCurrencyField
      DisplayLabel = 'Valor Vencedor'
      FieldName = 'IEYVALR'
    end
    object TBITENS_EDITALIEMESPC: TMemoField
      DisplayLabel = 'Especificacao'
      FieldName = 'IEMESPC'
      BlobType = ftMemo
      Size = 30
    end
    object TBITENS_EDITALLKTECDESC: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkLookup
      FieldName = 'LKTECDESC'
      LookupDataSet = TBTIPOESTOQUE
      LookupKeyFields = 'TENCODG'
      LookupResultField = 'TECDESC'
      KeyFields = 'IENCGTE'
      Size = 30
      Lookup = True
    end
    object TBITENS_EDITALLKCECDESC: TStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'LKCECDESC'
      LookupDataSet = TBCLASSIFICACAOESTOQUE
      LookupKeyFields = 'CENCODG'
      LookupResultField = 'CECDESC'
      KeyFields = 'IENCGCE'
      Size = 30
      Lookup = True
    end
    object TBITENS_EDITALLKNECDESC: TStringField
      DisplayLabel = 'Nome gen'#233'rico'
      FieldKind = fkLookup
      FieldName = 'LKNECDESC'
      LookupDataSet = TBNOMEGENERICOESTOQUE
      LookupKeyFields = 'NENCODG'
      LookupResultField = 'NECDESC'
      KeyFields = 'IENCGNE'
      Size = 30
      Lookup = True
    end
    object TBITENS_EDITALLKPECDESC: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'LKPECDESC'
      LookupDataSet = TBPRODUTOESTOQUE
      LookupKeyFields = 'PENCODG'
      LookupResultField = 'PECDESC'
      KeyFields = 'IENCGPE'
      Size = 30
      Lookup = True
    end
    object TBITENS_EDITALLKENCDESC: TStringField
      DisplayLabel = 'Fornecedor'
      FieldKind = fkLookup
      FieldName = 'LKENCDESC'
      LookupDataSet = QRFORNECEDOR
      LookupKeyFields = 'enncodg'
      LookupResultField = 'encdesc'
      KeyFields = 'IENCGEN'
      Size = 30
      Lookup = True
    end
  end
  object DSITENS_EDITAL: TDataSource
    DataSet = TBITENS_EDITAL
    Left = 598
    Top = 245
  end
  object TBPEDIDOSEDITAL: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'PLNCGET;PLNCGPE'
    MasterFields = 'ETNCODG'
    MasterSource = DSEDITAL
    TableName = 'PEDIDOSEDITAL.db'
    Left = 48
    Top = 383
    object TBPEDIDOSEDITALPLNCGET: TFloatField
      DisplayLabel = 'Edital'
      FieldName = 'PLNCGET'
    end
    object TBPEDIDOSEDITALPLNCGPE: TFloatField
      DisplayLabel = 'Pdido'
      FieldName = 'PLNCGPE'
    end
    object TBPEDIDOSEDITALLKPDCDOCM: TStringField
      DisplayLabel = 'Documento do Pedido'
      FieldKind = fkLookup
      FieldName = 'LKPDCDOCM'
      LookupDataSet = TBPEDIDO
      LookupKeyFields = 'PDNCODG'
      LookupResultField = 'PDCDOCM'
      KeyFields = 'PLNCGPE'
      Size = 30
      Lookup = True
    end
  end
  object DSPEDIDOSEDITAL: TDataSource
    DataSet = TBPEDIDOSEDITAL
    Left = 49
    Top = 341
  end
  object Query1: TQuery
    DatabaseName = 'BSSILIC'
    SQL.Strings = (
      'select ENNCODG from ENTIDADE order by ENNCODG')
    Left = 88
    Top = 488
    object Query1enncodg: TFloatField
      FieldName = 'enncodg'
      Origin = 'BSORBITAL."entidade.DB".ENNCODG'
    end
  end
  object QRTIPOLOGRADOURO: TQuery
    DatabaseName = 'BSSILIC'
    SQL.Strings = (
      'SELECT * FROM TIPOLOGRADOURO')
    Left = 755
    Top = 344
  end
  object QRLOGRADOUROPORTIPO: TQuery
    DatabaseName = 'BSSILIC'
    SQL.Strings = (
      'SELECT count(LGCCEP), TLCDESC FROM LOGRADOURO'
      'LEFT OUTER JOIN TIPOLOGRADOURO ON LGNCGTL = TLNCODG'
      'GROUP BY TLCDESC')
    Left = 756
    Top = 392
  end
  object QRSEQ: TQuery
    DatabaseName = 'BSSILIC'
    SQL.Strings = (
      '')
    Left = 40
    Top = 488
  end
  object QRFORNECEDOR: TQuery
    DatabaseName = 'BSSILIC'
    SQL.Strings = (
      'SELECT enncodg, encdesc'
      'FROM entidade'
      'INNER JOIN entidaderelacao'
      'ON enncodg = erncgen  '
      'WHERE erncgre = 4')
    Left = 649
    Top = 488
    object QRFORNECEDORenncodg: TFloatField
      FieldName = 'enncodg'
    end
    object QRFORNECEDORencdesc: TStringField
      FieldName = 'encdesc'
      Size = 50
    end
  end
  object TBENTIDADERELACAO: TTable
    DatabaseName = 'BSSILIC'
    IndexFieldNames = 'ERNCGRE;ERNCGEN'
    MasterFields = 'RENCODG'
    MasterSource = DSRELACAO
    TableName = 'ENTIDADERELACAO.db'
    Left = 744
    Top = 104
    object TBENTIDADERELACAOERNCGRE: TFloatField
      FieldName = 'ERNCGRE'
    end
    object TBENTIDADERELACAOERNCGEN: TFloatField
      FieldName = 'ERNCGEN'
    end
    object TBENTIDADERELACAOERDCADT: TDateField
      FieldName = 'ERDCADT'
    end
    object TBENTIDADERELACAOERHCADT: TTimeField
      FieldName = 'ERHCADT'
    end
    object TBENTIDADERELACAOERDCANC: TDateField
      FieldName = 'ERDCANC'
    end
  end
  object QRFUNCIONARIO: TQuery
    Active = True
    DatabaseName = 'BSSILIC'
    SQL.Strings = (
      'SELECT * FROM ENTIDADE '
      '   INNER JOIN ENTIDADERELACAO ON ERNCGEN = ENNCODG'
      'WHERE ERNCGRE = 2')
    Left = 649
    Top = 440
    object FloatField1: TFloatField
      FieldName = 'enncodg'
    end
    object StringField1: TStringField
      FieldName = 'encdesc'
      Size = 50
    end
  end
  object QRSETOR: TQuery
    DatabaseName = 'BSSILIC'
    SQL.Strings = (
      'SELECT * FROM ENTIDADE '
      '   INNER JOIN ENTIDADERELACAO ON ERNCGEN = ENNCODG'
      'WHERE ERNCGRE = 3')
    Left = 648
    Top = 344
    object FloatField2: TFloatField
      FieldName = 'enncodg'
    end
    object StringField2: TStringField
      FieldName = 'encdesc'
      Size = 50
    end
  end
  object QRUSUARIO: TQuery
    DatabaseName = 'BSSILIC'
    SQL.Strings = (
      'SELECT * FROM ENTIDADE '
      '   INNER JOIN ENTIDADERELACAO ON ERNCGEN = ENNCODG'
      'WHERE ERNCGRE = 1')
    Left = 648
    Top = 392
    object QRUSUARIOFloatField3: TFloatField
      FieldName = 'enncodg'
    end
    object QRUSUARIOStringField3: TStringField
      FieldName = 'encdesc'
      Size = 50
    end
  end
  object DSFORNECEDOR: TDataSource
    DataSet = QRFORNECEDOR
    Left = 553
    Top = 488
  end
end
