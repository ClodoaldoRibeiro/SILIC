unit FLE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFLE_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSLE: TDBNavigator;
    DBGRDSLE: TDBGrid;
    LBLKETAPROC: TLabel;
    LBLKIECDESC: TLabel;
    LBLKENCDESC: TLabel;
    LBLENCODG: TLabel;
    DBEDLENCODG: TDBEdit;
    LBLEYVALR: TLabel;
    DBEDLEYVALR: TDBEdit;
    DBLKETAPROC: TDBLookupComboBox;
    DBLKIECDESC: TDBLookupComboBox;
    DBLKENCDESC: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLE_: TFLE_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFLE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
