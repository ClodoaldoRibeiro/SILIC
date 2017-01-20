unit FPL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls;

type
  NewTypeNav = class( TDbNavigator );

type
  TFPL_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSPL: TDBNavigator;
    DBGRDSPL: TDBGrid;
    LBLKETAPROC: TLabel;
    DBCBLKETAPROC: TDBLookupComboBox;
    Label1: TLabel;
    DBLKPDCDOCM: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPL_: TFPL_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFPL_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
