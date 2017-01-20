unit FPD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFPD_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSPD: TDBNavigator;
    DBGRDSPD: TDBGrid;
    Label2: TLabel;
    DBEDPDNCODG: TDBEdit;
    LBPDNDDATA: TLabel;
    DBEDPDNDDATA: TDBEdit;
    LBPDCDOCM: TLabel;
    DBEDPDCDOCM: TDBEdit;
    LBPDCPROG: TLabel;
    DBEDPDCPROG: TDBEdit;
    Label6: TLabel;
    DBEDPDCNATZ: TDBEdit;
    LBPDCDEMD: TLabel;
    DBEDPDCDEMD: TDBEdit;
    Label8: TLabel;
    DBEDPDCENTR: TDBEdit;
    LBPDCJULG: TLabel;
    DBEDPDCJULG: TDBEdit;
    LBPDDDATA: TLabel;
    DBEDPDDDATA: TDBEdit;
    LBPDDCADT: TLabel;
    DBEPDDCADT: TDBEdit;
    LBPDTCADT: TLabel;
    DBEDPDTCADT: TDBEdit;
    BtItens: TButton;
    LBLKPDNCGEN: TLabel;
    BDLKPDNCGEN: TDBLookupComboBox;
    LBLKPDNC2EN: TLabel;
    BDLKPDNC2EN: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtItensClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPD_: TFPD_;

implementation

uses DMSILIC, FIP;

{$R *.dfm}

procedure TFPD_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFPD_.BtItensClick(Sender: TObject);
begin
  FIP_:= TFIP_.CREATE(FPD_);
      FIP_.Show;
end;

end.
