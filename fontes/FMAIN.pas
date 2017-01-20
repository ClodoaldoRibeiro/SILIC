unit FMAIN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, ImgList;

type
  TFMAIN_ = class(TForm)
    MMPRINCIAPAL: TMainMenu;
    MICadastro: TMenuItem;
    Movimentos: TMenuItem;
    Relatrios: TMenuItem;
    Sair: TMenuItem;
    MICidade: TMenuItem;
    MITipoLogradouro: TMenuItem;
    MIRelacao: TMenuItem;
    MITipoEstoque: TMenuItem;
    Marca1: TMenuItem;
    MIEstadoCivil: TMenuItem;
    Unidade1: TMenuItem;
    Cidade1: TMenuItem;
    MiBairro: TMenuItem;
    MILogradouro: TMenuItem;
    Marca2: TMenuItem;
    MIClassificacaoEstoque: TMenuItem;
    MINomeGenricodoestoque: TMenuItem;
    MIProdutodoestoque: TMenuItem;
    MIFornecedor: TMenuItem;
    EDITAL1: TMenuItem;
    Endereco: TMenuItem;
    MIEmail: TMenuItem;
    MIPedido: TMenuItem;
    N1: TMenuItem;
    MIItensdopedido: TMenuItem;
    MIAjuda: TMenuItem;
    MiSobre: TMenuItem;
    MIPedidoEdital: TMenuItem;
    MIEntidadeEdital: TMenuItem;
    MILanceEdital: TMenuItem;
    N2: TMenuItem;
    Editais: TMenuItem;
    N3: TMenuItem;
    Pedidos: TMenuItem;
    Entidades: TMenuItem;
    EmtidadesDiv: TMenuItem;
    MIContatos: TMenuItem;
    logodiv: TMenuItem;
    Logradouros: TMenuItem;
    Estoquediv: TMenuItem;
    Estoque: TMenuItem;
    geraldiv: TMenuItem;
    Geral: TMenuItem;
    Localizacao: TMenuItem;
    MIQRTipoLogradouro: TMenuItem;
    Graficos: TMenuItem;
    MILogradouroPorTipo: TMenuItem;
    MIItensEdital: TMenuItem;
    MIUsuario: TMenuItem;
    MIFuncionario: TMenuItem;
    MISetor: TMenuItem;
    procedure SairClick(Sender: TObject);
    procedure MICidadeClick(Sender: TObject);
    procedure MITipoLogradouroClick(Sender: TObject);
    procedure MIRelacaoClick(Sender: TObject);
    procedure MITipoEstoqueClick(Sender: TObject);
    procedure Marca1Click(Sender: TObject);
    procedure MIEstadoCivilClick(Sender: TObject);
    procedure Unidade1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure MiBairroClick(Sender: TObject);
    procedure MILogradouroClick(Sender: TObject);
    procedure Marca2Click(Sender: TObject);
    procedure MIClassificacaoEstoqueClick(Sender: TObject);
    procedure MINomeGenricodoestoqueClick(Sender: TObject);
    procedure MIProdutodoestoqueClick(Sender: TObject);
    procedure MIEntidadeClick(Sender: TObject);
    procedure MIFornecedorClick(Sender: TObject);
    procedure EDITAL1Click(Sender: TObject);
    procedure EnderecoClick(Sender: TObject);
    procedure MIEmailClick(Sender: TObject);
    procedure MIContatoClick(Sender: TObject);
    procedure MIPedidoClick(Sender: TObject);
    procedure MISobreClick(Sender: TObject);
    procedure MIItensdopedidoClick(Sender: TObject);
    procedure MIPedidoEditalClick(Sender: TObject);
    procedure MIEntidadeEditalClick(Sender: TObject);
    procedure MILanceEditalClick(Sender: TObject);
    procedure MIContatosClick(Sender: TObject);
    procedure MIQRTipoLogradouroClick(Sender: TObject);
    procedure MILogradouroPorTipoClick(Sender: TObject);
    procedure MIItensEditalClick(Sender: TObject);
    procedure MIUsuarioClick(Sender: TObject);
    procedure MIFuncionarioClick(Sender: TObject);
    procedure MISetorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMAIN_: TFMAIN_;

implementation

uses FES, FTL, FRE, FTE, FMC, FEC, FUN, FCD, FBR, FLG, FMD, FCE, FNE, FPE,
  FEN, DMSILIC, FET, FED, FEM, FPD, FCT, FSB, FIP, FPL, FEE, FLE, QRTL,
  FLGG, FIE;

{$R *.dfm}

procedure TFMAIN_.SairClick(Sender: TObject);
begin
  if(MessageDlg ('Você deseja realmente sair?' ,
      mtConfirmation,[mbYes, mbNo], 0) = mrYes) then
    Close;
end;

procedure TFMAIN_.MICidadeClick(Sender: TObject);
begin
  FES_ := TFES_.CREATE(APPLICATION);
  WITH FES_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MITipoLogradouroClick(Sender: TObject);
begin
  FTL_ := TFTL_.CREATE(APPLICATION);
  WITH FTL_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MIRelacaoClick(Sender: TObject);
begin
  FRE_ := TFRE_.CREATE(APPLICATION);
  WITH FRE_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MITipoEstoqueClick(Sender: TObject);
begin
  FTE_ := TFTE_.CREATE(APPLICATION);
  WITH FTE_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.Marca1Click(Sender: TObject);
begin
  FMC_ := TFMC_.CREATE(APPLICATION);
  WITH FMC_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MIEstadoCivilClick(Sender: TObject);
begin
  FEC_ := TFEC_.CREATE(APPLICATION);
  WITH FEC_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.Unidade1Click(Sender: TObject);
begin
  FUN_ := TFUN_.CREATE(APPLICATION);
  WITH FUN_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.Cidade1Click(Sender: TObject);
begin
  FCD_ := TFCD_.CREATE(APPLICATION);
  WITH FCD_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MiBairroClick(Sender: TObject);
begin
  FBR_ := TFBR_.CREATE(APPLICATION);
  WITH FBR_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MILogradouroClick(Sender: TObject);
begin
  FLG_ := TFLG_.CREATE(APPLICATION);
  WITH FLG_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.Marca2Click(Sender: TObject);
begin
  FMD_ := TFMD_.CREATE(APPLICATION);
  WITH FMD_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MIClassificacaoEstoqueClick(Sender: TObject);
begin
  FCE_ := TFCE_.CREATE(APPLICATION);
  WITH FCE_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MINomeGenricodoestoqueClick(Sender: TObject);
begin
  FNE_ := TFNE_.CREATE(APPLICATION);
  WITH FNE_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MIProdutodoestoqueClick(Sender: TObject);
begin
  FPE_ := TFPE_.CREATE(APPLICATION);
  WITH FPE_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MIEntidadeClick(Sender: TObject);
begin
  FEN_ := TFEN_.CREATE(APPLICATION);
  WITH FEN_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MIFornecedorClick(Sender: TObject);
begin
  DMSILIC_.TBRELACAO.FindKey([4]);
  FEN_ := TFEN_.CREATE(APPLICATION);
  WITH FEN_ DO
  BEGIN
    FEN_.Caption := 'FORNECEDOR';
    SHOW ;
  END;
end;

procedure TFMAIN_.EDITAL1Click(Sender: TObject);
begin
  FET_ := TFET_.CREATE(APPLICATION);
  WITH FET_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.EnderecoClick(Sender: TObject);
begin
  FED_ := TFED_.CREATE(APPLICATION);
  WITH FED_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MIEmailClick(Sender: TObject);
begin
  FEM_ := TFEM_.CREATE(APPLICATION);
  WITH FEM_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MIContatoClick(Sender: TObject);
begin
 FCT_ := TFCT_.CREATE(APPLICATION);
  WITH FCT_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MIPedidoClick(Sender: TObject);
begin
  FPD_ := TFPD_.CREATE(APPLICATION);
  WITH FPD_ DO
  BEGIN
    SHOW ;
  END;
end;

procedure TFMAIN_.MISobreClick(Sender: TObject);
begin
  FSB_ := TFSB_.CREATE(APPLICATION);
  WITH FSB_ DO
  BEGIN
    ShowModal ;
  END;
end;

procedure TFMAIN_.MIItensdopedidoClick(Sender: TObject);
begin
  FIP_ := TFIP_.CREATE(APPLICATION);
  WITH FIP_ DO
  BEGIN
    Show;
  END;
end;

procedure TFMAIN_.MIPedidoEditalClick(Sender: TObject);
begin
  FPL_ := TFPL_.CREATE(APPLICATION);
  WITH FPL_ DO
  BEGIN
    Show;
  END;
end;

procedure TFMAIN_.MIEntidadeEditalClick(Sender: TObject);
begin
  FEE_ := TFEE_.CREATE(APPLICATION);
  WITH FEE_ DO
  BEGIN
    Show;
  END;
end;

procedure TFMAIN_.MILanceEditalClick(Sender: TObject);
begin
  FLE_ := TFLE_.CREATE(APPLICATION);
  WITH FLE_ DO
  BEGIN
    Show;
  END;
end;

procedure TFMAIN_.MIContatosClick(Sender: TObject);
begin
  FCT_ := TFCT_.CREATE(APPLICATION);
  WITH FCT_ DO
  BEGIN
    Show;
  END;
end;

procedure TFMAIN_.MIQRTipoLogradouroClick(Sender: TObject);
begin
  DMSILIC_.QRTipoLogradouro.Close;
  DMSILIC_.QRTipoLogradouro.Open;
  QRTL_ := TQRTL_.CREATE(FUN_);
  WITH QRTL_ DO
  BEGIN
    QRLabel1.CAPTION := 'Empresa Teste S/A';
    QREP.ReportTitle := SELF.Caption;
    QREP.PREVIEW;
  END;
end;

procedure TFMAIN_.MILogradouroPorTipoClick(Sender: TObject);
begin
  DMSILIC_.QRLogradouroPorTipo.Close;
  DMSILIC_.QRLogradouroPorTipo.Open;
  FLGG_ := TFLGG_.CREATE(FUN_);
  WITH FLGG_ DO
  BEGIN
    Show
  END;
end;

procedure TFMAIN_.MIItensEditalClick(Sender: TObject);
begin
   FIE_ := TFIE_.CREATE(APPLICATION);
  WITH FIE_ DO
  BEGIN
    Show;
  END;
end;

procedure TFMAIN_.MIUsuarioClick(Sender: TObject);
begin
  DMSILIC_.TBRELACAO.FindKey([1]);
  FEN_ := TFEN_.CREATE(APPLICATION);
  WITH FEN_ DO
  BEGIN
    FEN_.Caption := 'USUÁRIO';
    SHOW ;
  END;
end;

procedure TFMAIN_.MIFuncionarioClick(Sender: TObject);
begin
  DMSILIC_.TBRELACAO.FindKey([2]);
  FEN_ := TFEN_.CREATE(APPLICATION);
  WITH FEN_ DO
  BEGIN
    FEN_.Caption := 'FUNCIONÁRIO';
    SHOW ;
  END;
end;

procedure TFMAIN_.MISetorClick(Sender: TObject);
begin
  DMSILIC_.TBRELACAO.FindKey([3]);
  FEN_ := TFEN_.CREATE(APPLICATION);
  WITH FEN_ DO
  BEGIN
    FEN_.Caption := 'SETOR';
    SHOW ;
  END;
end;

end.
