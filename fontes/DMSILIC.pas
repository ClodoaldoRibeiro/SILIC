unit DMSILIC;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDMSILIC_ = class(TDataModule)
    DBSILIC: TDatabase;
    TBESTADO: TTable;
    DSESTADO: TDataSource;
    TBTIPOLOGRADOURO: TTable;
    DSTIPOLOGRADOURO: TDataSource;
    TBCIDADE: TTable;
    DSCIDADE: TDataSource;
    TBLOGRADOURO: TTable;
    DSLOGRADOURO: TDataSource;
    TBENTIDADE: TTable;
    DSENTIDADE: TDataSource;
    TBESTADOCIVIL: TTable;
    DSESTADOCIVIL: TDataSource;
    TBRELACAO: TTable;
    DSRELACAO: TDataSource;
    TBBAIRRO: TTable;
    DSBAIRRO: TDataSource;
    DSENTIDADERELACAO: TDataSource;
    TBTIPOESTOQUE: TTable;
    DSTIPOESTOQUE: TDataSource;
    TBMARCA: TTable;
    DSMARCA: TDataSource;
    TBENDERECO: TTable;
    DSENDERECO: TDataSource;
    TBCLASSIFICACAOESTOQUE: TTable;
    DSCLASSIFICACAOESTOQUE: TDataSource;
    TBMODELO: TTable;
    DSMODELO: TDataSource;
    TBPEDIDO: TTable;
    DSPEDIDO: TDataSource;
    TBEMAIL: TTable;
    DSEMAIL: TDataSource;
    TBCONTATO: TTable;
    DSCONTATO: TDataSource;
    TBUNIDADE: TTable;
    DSUNIDADE: TDataSource;
    TBNOMEGENERICOESTOQUE: TTable;
    DSNOMEGENERICOESTOQUE: TDataSource;
    TBPRODUTOESTOQUE: TTable;
    DSPRODUTOESTOQUE: TDataSource;
    TBITENS_PEDIDO: TTable;
    DSITENS_PEDIDO: TDataSource;
    TBEDITAL: TTable;
    DSEDITAL: TDataSource;
    TBENTIDADE_EDITAL: TTable;
    DSENTIDADE_EDITAL: TDataSource;
    TBLANCE_EDITAL: TTable;
    DSLANCE_EDITAL: TDataSource;
    TBITENS_EDITAL: TTable;
    DSITENS_EDITAL: TDataSource;
    TBPEDIDOSEDITAL: TTable;
    DSPEDIDOSEDITAL: TDataSource;
    TBESTADOESCUF: TStringField;
    TBESTADOESCDESC: TStringField;
    TBTIPOLOGRADOUROTLNCODG: TFloatField;
    TBTIPOLOGRADOUROTLCDESC: TStringField;
    TBRELACAORENCODG: TFloatField;
    TBRELACAORECDESC: TStringField;
    TBTIPOESTOQUETENCODG: TFloatField;
    TBTIPOESTOQUETECDESC: TStringField;
    TBMARCAMCNCODG: TFloatField;
    TBMARCAMCCDESC: TStringField;
    TBESTADOCIVILECNCODG: TFloatField;
    TBESTADOCIVILECCDESC: TStringField;
    TBUNIDADEUNCDESC: TStringField;
    TBUNIDADEUNNCODG: TFloatField;
    TBBAIRROBRCUF: TStringField;
    TBBAIRROBRNCGCD: TFloatField;
    TBBAIRROBRNCODG: TFloatField;
    TBBAIRROBRCDESC: TStringField;
    TBLOGRADOUROLGCCEP: TStringField;
    TBLOGRADOUROLGCDESC: TStringField;
    TBLOGRADOUROLGCUF: TStringField;
    TBLOGRADOUROLGNCGCD: TFloatField;
    TBLOGRADOUROLGNCGBR: TFloatField;
    TBLOGRADOUROLGNCGTL: TFloatField;
    TBLOGRADOUROLKLGCUF: TStringField;
    TBLOGRADOUROLKLGNCGCD: TStringField;
    TBLOGRADOUROLKLGNCGBR: TStringField;
    TBLOGRADOUROLKLGNCGTL: TStringField;
    TBMODELOMDNCGMC: TFloatField;
    TBMODELOMDNCODG: TFloatField;
    TBMODELOMDCDESC: TStringField;
    TBENTIDADEENNCODG: TFloatField;
    TBENTIDADEENCDESC: TStringField;
    TBENTIDADEENCTIPO: TStringField;
    TBENTIDADEENCAPEL: TStringField;
    TBENTIDADEENCSEXO: TStringField;
    TBENTIDADEENOFOTO: TBlobField;
    TBENTIDADEENCCPF: TStringField;
    TBENTIDADEENCCNPJ: TStringField;
    TBENTIDADEENCRZSC: TStringField;
    TBENTIDADEENCIE: TStringField;
    TBENTIDADEENCIM: TStringField;
    TBENTIDADEENNCGEC: TFloatField;
    TBENTIDADEENNCGEN: TFloatField;
    TBENTIDADEENNCADT: TFloatField;
    TBENTIDADEENDDNAS: TDateField;
    TBCLASSIFICACAOESTOQUECENCGTE: TFloatField;
    TBCLASSIFICACAOESTOQUECENCODG: TFloatField;
    TBCLASSIFICACAOESTOQUECECDESC: TStringField;
    TBNOMEGENERICOESTOQUENENCGTE: TFloatField;
    TBNOMEGENERICOESTOQUENENCGCE: TFloatField;
    TBNOMEGENERICOESTOQUENENCODG: TFloatField;
    TBNOMEGENERICOESTOQUENECDESC: TStringField;
    TBPRODUTOESTOQUEPENCGTE: TFloatField;
    TBPRODUTOESTOQUEPENCGCE: TFloatField;
    TBPRODUTOESTOQUEPENCGNE: TFloatField;
    TBPRODUTOESTOQUEPENCODG: TFloatField;
    TBPRODUTOESTOQUEPECDESC: TStringField;
    TBPRODUTOESTOQUEPENCGUN: TFloatField;
    TBPRODUTOESTOQUELKPENCGUN: TStringField;
    TBENTIDADELKENNCGEC: TStringField;
    TBPEDIDOPDNCODG: TFloatField;
    TBPEDIDOPDNDDATA: TDateField;
    TBPEDIDOPDNCGEN: TFloatField;
    TBPEDIDOPDNC2EN: TFloatField;
    TBPEDIDOPDCDOCM: TStringField;
    TBPEDIDOPDCPROG: TStringField;
    TBPEDIDOPDCNATZ: TStringField;
    TBPEDIDOPDCDEMD: TStringField;
    TBPEDIDOPDCENTR: TStringField;
    TBPEDIDOPDCJULG: TStringField;
    TBPEDIDOPDDDATA: TDateField;
    TBPEDIDOPDDCADT: TDateField;
    Query1: TQuery;
    Query1enncodg: TFloatField;
    TBEDITALETNCODG: TFloatField;
    TBEDITALETAPROC: TStringField;
    TBEDITALETAFORM: TStringField;
    TBEDITALETDDATA: TDateField;
    TBEDITALETHHORA: TTimeField;
    TBEDITALETDCADT: TDateField;
    TBEDITALETHCADT: TTimeField;
    TBENDERECOEDNCGEN: TFloatField;
    TBENDERECOEDNCODG: TFloatField;
    TBENDERECOEDCDESC: TStringField;
    TBENDERECOEDCCEP: TStringField;
    TBENDERECOEDCNUMR: TStringField;
    TBENDERECOEDCOBS: TStringField;
    TBENDERECOEDMOBS: TStringField;
    TBENDERECOLKEDCCEP: TStringField;
    TBEMAILEMNCGEN: TFloatField;
    TBEMAILEMNCODG: TFloatField;
    TBEMAILEMCDESC: TStringField;
    TBCONTATOCTNCGEN: TFloatField;
    TBCONTATOCTNCGED: TFloatField;
    TBCONTATOCTNCODG: TFloatField;
    TBCONTATOCTCDESC: TStringField;
    TBCONTATOCTCNUMR: TStringField;
    TBCONTATOCTCTIPO: TStringField;
    TBPEDIDOPDTCADT: TTimeField;
    TBITENS_PEDIDOIPNCGPE: TFloatField;
    TBITENS_PEDIDOIPNCODG: TFloatField;
    TBITENS_PEDIDOIPNCGTE: TFloatField;
    TBITENS_PEDIDOIPNCGCE: TFloatField;
    TBITENS_PEDIDOIPNCGNE: TFloatField;
    TBITENS_PEDIDOIPNQTD: TFloatField;
    TBITENS_PEDIDOLKCECDESC: TStringField;
    TBITENS_PEDIDOLKTECDESC: TStringField;
    TBITENS_PEDIDOCLIPYVALR: TCurrencyField;
    TBITENS_PEDIDOIPYVALR: TCurrencyField;
    TBPEDIDOSEDITALPLNCGET: TFloatField;
    TBPEDIDOSEDITALPLNCGPE: TFloatField;
    TBPEDIDOSEDITALLKPDCDOCM: TStringField;
    TBENTIDADE_EDITALEENCGET: TFloatField;
    TBENTIDADE_EDITALEENCODG: TFloatField;
    TBENTIDADE_EDITALEENCGEN: TFloatField;
    TBLANCE_EDITALLENCGET: TFloatField;
    TBLANCE_EDITALLENCGIE: TFloatField;
    TBLANCE_EDITALLENCODG: TFloatField;
    TBLANCE_EDITALLENCGEN: TFloatField;
    TBLANCE_EDITALLEYVALR: TCurrencyField;
    QRTIPOLOGRADOURO: TQuery;
    QRLOGRADOUROPORTIPO: TQuery;
    TBCIDADECDCUF: TStringField;
    TBCIDADECDNCODG: TFloatField;
    TBCIDADECDCDESC: TStringField;
    TBITENS_PEDIDOLKPECDESC: TStringField;
    QRSEQ: TQuery;
    QRFORNECEDOR: TQuery;
    QRFORNECEDORenncodg: TFloatField;
    QRFORNECEDORencdesc: TStringField;
    TBENTIDADEENCDCEN: TStringField;
    TBENTIDADEENDCADT: TDateField;
    TBENTIDADEENHCADT: TTimeField;
    TBENTIDADERELACAO: TTable;
    TBENTIDADERELACAOERNCGRE: TFloatField;
    TBENTIDADERELACAOERNCGEN: TFloatField;
    TBENTIDADERELACAOERDCADT: TDateField;
    TBENTIDADERELACAOERHCADT: TTimeField;
    TBENTIDADERELACAOERDCANC: TDateField;
    QRFUNCIONARIO: TQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    QRSETOR: TQuery;
    FloatField2: TFloatField;
    StringField2: TStringField;
    QRUSUARIOFloatField3: TFloatField;
    QRUSUARIOStringField3: TStringField;
    QRUSUARIO: TQuery;
    TBPEDIDOLKPDNCGEN: TStringField;
    TBPEDIDOLKPDNC2EN: TStringField;
    TBITENS_PEDIDOIPNCGPD: TFloatField;
    TBITENS_PEDIDOLKNECDESC: TStringField;
    TBENTIDADE_EDITALENCDESC: TStringField;
    TBITENS_EDITALIENCGET: TFloatField;
    TBITENS_EDITALIENCODG: TFloatField;
    TBITENS_EDITALIECDESC: TStringField;
    TBITENS_EDITALIENCGTE: TFloatField;
    TBITENS_EDITALIENCGCE: TFloatField;
    TBITENS_EDITALIENCGNE: TFloatField;
    TBITENS_EDITALIENCGPE: TFloatField;
    TBITENS_EDITALIEYVLOR: TCurrencyField;
    TBITENS_EDITALIENQTD: TFloatField;
    TBITENS_EDITALIENCGEN: TFloatField;
    TBITENS_EDITALIEYVALR: TCurrencyField;
    TBITENS_EDITALIEMESPC: TMemoField;
    TBITENS_EDITALLKTECDESC: TStringField;
    TBITENS_EDITALLKCECDESC: TStringField;
    TBITENS_EDITALLKNECDESC: TStringField;
    TBITENS_EDITALLKPECDESC: TStringField;
    TBITENS_EDITALLKENCDESC: TStringField;
    DSFORNECEDOR: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure TBENTIDADEAfterPost(DataSet: TDataSet);
    procedure TBITENS_PEDIDOCalcFields(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
    function getUltSeq(Tabela: String; CampoCodigo: String ): Integer;
    function getCampoCadastro(Tabela: String; Campo: String;
              Registro: String ): Boolean;
    function getUltSeqChaveCompos(PrimTabela: String; CodPrimTabela: String;
          SegTabela: String; CodSegTabela: String; CampPesq: String): Integer;
  end;

var
  DMSILIC_: TDMSILIC_;
  inserindo:boolean;
  codigo:Integer;
  dataDadastro, horaDastro : String;

implementation

uses DateUtils, Dialogs;

{$R *.dfm}

procedure TDMSILIC_.DataModuleCreate(Sender: TObject);
begin
    Try
      DMSILIC_.TBESTADO.Open;
      DMSILIC_.TBTIPOLOGRADOURO.Open;
      DMSILIC_.TBCIDADE.Open;
      DMSILIC_.TBLOGRADOURO.Open;
      DMSILIC_.TBENTIDADE.Open;
      DMSILIC_.TBESTADOCIVIL.Open;
      DMSILIC_.TBRELACAO.Open;
      DMSILIC_.TBBAIRRO.Open;
      DMSILIC_.TBENTIDADERELACAO.Open;
      DMSILIC_.TBTIPOESTOQUE.Open;
      DMSILIC_.TBMARCA.Open;
      DMSILIC_.TBENDERECO.Open;
      DMSILIC_.TBMODELO.Open;
      DMSILIC_.TBPEDIDO.Open;
      DMSILIC_.TBEMAIL.Open;
      DMSILIC_.TBCONTATO.Open;
      DMSILIC_.TBUNIDADE.Open;
      DMSILIC_.TBCLASSIFICACAOESTOQUE.Open;
      DMSILIC_.TBPRODUTOESTOQUE.Open;
      DMSILIC_.TBITENS_PEDIDO.Open;
      DMSILIC_.TBEDITAL.Open;
      DMSILIC_.TBENTIDADE_EDITAL.Open;
      DMSILIC_.TBLANCE_EDITAL.Open;
      DMSILIC_.TBITENS_EDITAL.Open;
      DMSILIC_.TBNOMEGENERICOESTOQUE.Open;
      DMSILIC_.TBPEDIDOSEDITAL.Open;
      DMSILIC_.QRSETOR.Open;
      DMSILIC_.QRUSUARIO.Open;
      DMSILIC_.QRTIPOLOGRADOURO.Open;
      DMSILIC_.QRFUNCIONARIO.Open;
      DMSILIC_.QRFORNECEDOR.Open;
    Except On E:Exception Do
        ShowMessage('Erro ao abrir tabelas...' + E.Message);
    End;
end;

procedure TDMSILIC_.DataModuleDestroy(Sender: TObject);
begin
  Try
      DMSILIC_.TBESTADO.Close;
      DMSILIC_.TBTIPOLOGRADOURO.Close;
      DMSILIC_.TBCIDADE.Close;
      DMSILIC_.TBLOGRADOURO.Close;
      DMSILIC_.TBENTIDADE.Close;
      DMSILIC_.TBESTADOCIVIL.Close;
      DMSILIC_.TBRELACAO.Close;
      DMSILIC_.TBBAIRRO.Close;
      DMSILIC_.TBENTIDADERELACAO.Close;
      DMSILIC_.TBTIPOESTOQUE.Close;
      DMSILIC_.TBMARCA.Close;
      DMSILIC_.TBENDERECO.Close;
      DMSILIC_.TBMODELO.Close;
      DMSILIC_.TBPEDIDO.Close;
      DMSILIC_.TBEMAIL.Close;
      DMSILIC_.TBCONTATO.Close;
      DMSILIC_.TBUNIDADE.Close;
      DMSILIC_.TBCLASSIFICACAOESTOQUE.Close;
      DMSILIC_.TBPRODUTOESTOQUE.Close;
      DMSILIC_.TBITENS_PEDIDO.Close;
      DMSILIC_.TBEDITAL.Close;
      DMSILIC_.TBENTIDADE_EDITAL.Close;
      DMSILIC_.TBLANCE_EDITAL.Close;
      DMSILIC_.TBITENS_EDITAL.Close;
      DMSILIC_.TBNOMEGENERICOESTOQUE.Close;
      DMSILIC_.TBPEDIDOSEDITAL.Close;
      DMSILIC_.QRSETOR.Close;
      DMSILIC_.QRUSUARIO.Close;
      DMSILIC_.QRTIPOLOGRADOURO.Close;
      DMSILIC_.QRFUNCIONARIO.Close;
      DMSILIC_.QRFORNECEDOR.Close;
  Except On E:Exception Do
        ShowMessage('Erro ao fechar tabelas...' + E.Message);
  End;
end;

procedure TDMSILIC_.TBENTIDADEAfterPost(DataSet: TDataSet);
begin
  IF (inserindo) THEN
  BEGIN
    SELF.TBENTIDADERELACAO.Insert;
    SELF.TBENTIDADERELACAOERNCGEN.VALUE := CODIGO;
    if not (dataDadastro = '/ /') then
      SELF.TBENTIDADERELACAOERDCADT.Value := StrToDate(dataDadastro);
    if not (horaDastro = '__:__:00') then
      SELF.TBENTIDADERELACAOERHCADT.Value := StrToTime(horaDastro);
    SELF.TBENTIDADERELACAO.POST;
    inserindo := false;
  end;
end;

procedure TDMSILIC_.TBITENS_PEDIDOCalcFields(DataSet: TDataSet);
begin
    DMSILIC_.TBITENS_PEDIDOCLIPYVALR.Value := DMSILIC_.TBITENS_PEDIDOIPNQTD.Value * DMSILIC_.TBITENS_PEDIDOIPYVALR.Value;
end;

// Recupera a ultima sequenncia inserida no banco de dados.
function TDMSILIC_.getUltSeq(Tabela: String; CampoCodigo: String ): Integer;
  var
    Codigo : Integer;
begin
try
    QRSEQ.Close;
    QRSEQ.SQL.Text:= 'select max(' + CampoCodigo + ') as maximo from ' + Tabela;
    QRSEQ.Open;
    Codigo := QRSEQ.FieldByName('maximo').AsInteger;
    QRSEQ.Close;
    Result := codigo + 1;
except
  On E:Exception do
    ShowMessage('Ocorreu um erro pesquisar ultimo código: ' + E.Message);
  end;
end;

//Recupera o ultimo registro cadastrado, sendo a tabela chave composta
function TDMSILIC_.getUltSeqChaveCompos(PrimTabela: String; CodPrimTabela: String;
          SegTabela: String; CodSegTabela: String; CampPesq: String): Integer;
  var
    Codigo: Integer;
begin
try
    QRSEQ.Close;
    QRSEQ.SQL.Text := 'SELECT MAX(' + CodPrimTabela + ') as seq FROM ' + PrimTabela +
                      '   LEFT OUTER JOIN ' + SegTabela + ' ON ' + CodSegTabela + ' = ' + CodPrimTabela +
                      ' WHERE upper(' + CodSegTabela + ') = upper( ' + CampPesq + ')';
    QRSEQ.Open;
    QRSEQ.Last;
    Codigo := QRSEQ.FieldByName('seq').AsInteger + 1;
    QRSEQ.Close;
    Result := Codigo;
except
  On E:Exception do
    ShowMessage('Ocorreu um erro pesquisar ultimo código: ' + E.Message);
  end;
end;

//Verifica se já tem um campo de um registro cadastrado.
function TDMSILIC_.getCampoCadastro(Tabela: String; Campo: String;
          Registro: String ): Boolean;
  var
    Cadastrado: Boolean;
begin
try
    QRSEQ.Close;
    QRSEQ.SQL.Text:= 'select * from ' + Tabela + ' Where upper(' + Campo + ') = upper(:registro)';
    QRSEQ.ParamByName('registro').AsString := Registro;
    QRSEQ.Open;
    Cadastrado := QRSEQ.RecordCount > 0;
    QRSEQ.Close;
    Result := Cadastrado;
except
  On E:Exception do
    ShowMessage('Ocorreu um erro pesquisar ultimo código: ' + E.Message);
  end;
end;

end.
