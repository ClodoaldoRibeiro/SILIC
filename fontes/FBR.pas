unit FBR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFBR_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSBR: TDBNavigator;
    DBGRDSBA: TDBGrid;
    LBLKESCDESC: TLabel;
    LBLKCDCDESC: TLabel;
    LBBRNCODG: TLabel;
    BDEDBRNCODG: TDBEdit;
    LBBRCDESC: TLabel;
    DBEDBRCDESC: TDBEdit;
    DBCBLKESCDESC: TDBLookupComboBox;
    DBCBLKCDCDESC: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBR_: TFBR_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFBR_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
