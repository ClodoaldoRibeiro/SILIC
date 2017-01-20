unit FIP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFIP_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSIP: TDBNavigator;
    DBGRDSIP: TDBGrid;
    BLTECDESC: TLabel;
    LBCLIPYVALR: TLabel;
    DBEDCLIPYVALR: TDBEdit;
    LBIPNCODG: TLabel;
    DBEDIPNCODG: TDBEdit;
    LBIPNQTD: TLabel;
    DBEDIPNQTD: TDBEdit;
    LBIPYVALR: TLabel;
    DBEDIPYVALR: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    LBLKTECDESC: TLabel;
    DBLKTECDESC: TDBLookupComboBox;
    LBLKCECDESC: TLabel;
    DBLKCECDESC: TDBLookupComboBox;
    LBLKPECDESC: TLabel;
    DBLKPECDESC: TDBLookupComboBox;
    LBLKNECDESC: TLabel;
    DBLKNECDESC: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIP_: TFIP_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFIP_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
