unit FIE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFIE_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSIE: TDBNavigator;
    DBGRDSIE: TDBGrid;
    LBETAPROC: TLabel;
    LBIENCODG: TLabel;
    DBIENCODG: TDBEdit;
    LBIECDESC: TLabel;
    DBEDIECDESC: TDBEdit;
    LBLKTECDESC: TLabel;
    DBLKTECDESC: TDBLookupComboBox;
    LBLKCECDESC: TLabel;
    DBLKCECDESC: TDBLookupComboBox;
    LBLKNECDESC: TLabel;
    DBLKNECDESC: TDBLookupComboBox;
    LBLKPECDESC: TLabel;
    DBLKPECDESC: TDBLookupComboBox;
    LBIEYVLOR: TLabel;
    DBEDIEYVLOR: TDBEdit;
    LBIENQTD: TLabel;
    DBEIENQTD: TDBEdit;
    LBIEYVALR: TLabel;
    DBEDIEYVALR: TDBEdit;
    Label12: TLabel;
    DBMemo1: TDBMemo;
    DBETAPROC: TDBLookupComboBox;
    btLances: TButton;
    LBLKENCDESC: TLabel;
    DBLKENCDESC: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btLancesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIE_: TFIE_;

implementation

uses DMSILIC, FLE;

{$R *.dfm}

procedure TFIE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFIE_.btLancesClick(Sender: TObject);
begin
   FLE_:= TFLE_.CREATE(FIE_);
      FLE_.Show;
end;

end.
