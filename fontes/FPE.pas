unit FPE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFPE_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSPE: TDBNavigator;
    DBGRDSPE: TDBGrid;
    LBLKPENCGCE: TLabel;
    LBLKPENCGNE: TLabel;
    LBPENCODG: TLabel;
    DBEBPENCODG: TDBEdit;
    LBPECDESC: TLabel;
    DBEDPECDESC: TDBEdit;
    LBLKPENCGUN: TLabel;
    DBCBLKPENCGUN: TDBLookupComboBox;
    LBLKPENCGTE: TLabel;
    DBLKTECDESC: TDBLookupComboBox;
    DBLKCECDESC: TDBLookupComboBox;
    DBNECDESC: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPE_: TFPE_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFPE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
