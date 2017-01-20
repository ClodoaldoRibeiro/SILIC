unit FET;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFET_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSET: TDBNavigator;
    DBGRDSET: TDBGrid;
    LBETNCODG: TLabel;
    DBEDETNCODG: TDBEdit;
    LBETAPROC: TLabel;
    DBEDETAPROC: TDBEdit;
    Label3: TLabel;
    DBEDETAFORM: TDBEdit;
    LBETDDATA: TLabel;
    DBEDETDDATA: TDBEdit;
    LBETHHORA: TLabel;
    DBEDETHHORA: TDBEdit;
    LBETDCADT: TLabel;
    DBEDETDCADT: TDBEdit;
    LBETHCADT: TLabel;
    DBEDETHCADT: TDBEdit;
    PNLBTNS: TPanel;
    btEntidade: TButton;
    btPedidos: TButton;
    btItens: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEntidadeClick(Sender: TObject);
    procedure btPedidosClick(Sender: TObject);
    procedure btItensClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FET_: TFET_;

implementation

uses DMSILIC, FEE, FPL, FIE;

{$R *.dfm}

procedure TFET_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFET_.btEntidadeClick(Sender: TObject);
begin
    FEE_:= TFEE_.CREATE(FET_);
      FEE_.Show;
end;

procedure TFET_.btPedidosClick(Sender: TObject);
begin
  FPL_:= TFPL_.CREATE(FET_);
      FPL_.Show;
end;

procedure TFET_.btItensClick(Sender: TObject);
begin
 FIE_:= TFIE_.CREATE(FET_);
      FIE_.Show;
end;

end.

