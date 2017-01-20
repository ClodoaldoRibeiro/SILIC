unit FCT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFCT_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSCT: TDBNavigator;
    DBGRDSCT: TDBGrid;
    LBCTNCODG: TLabel;
    DBEDCTNCODG: TDBEdit;
    LBCTCDESC: TLabel;
    DBEDCTCDESC: TDBEdit;
    LBCTCNUMR: TLabel;
    DBEDCTCNUMR: TDBEdit;
    lbCTCTIPO: TLabel;
    DCBCTCTIPO: TDBComboBox;
    LBENCDESC: TLabel;
    LBLKCEDCDESC: TLabel;
    DBCBLKENCDESC: TDBLookupComboBox;
    DBCBLKEDCDESC: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCT_: TFCT_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFCT_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
