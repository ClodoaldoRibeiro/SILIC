unit FEE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFEE_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSEE: TDBNavigator;
    DBGGDSEE: TDBGrid;
    LBLKETAPROC: TLabel;
    LBEENCODG: TLabel;
    DBEDEENCODG: TDBEdit;
    DBLKETAPROC: TDBLookupComboBox;
    LBLKENCDESC: TLabel;
    DBLKENCDESC: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEE_: TFEE_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFEE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
