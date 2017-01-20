unit FCE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFCE_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSCE: TDBNavigator;
    DBGRDSCE: TDBGrid;
    LBLKTECDESC: TLabel;
    LBCENCODG: TLabel;
    DBEDCENCODG: TDBEdit;
    LBEDDESC: TLabel;
    DBEDDESC: TDBEdit;
    DBCBLKTECDESC: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCE_: TFCE_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFCE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
