unit FMD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFMD_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSMD: TDBNavigator;
    DBGRDSMD: TDBGrid;
    LBMDCCGMC: TLabel;
    LBMDNCODG: TLabel;
    DBEDMDNCODG: TDBEdit;
    LBMDCDESC: TLabel;
    DBEDMDCDESC: TDBEdit;
    DBCBLKMCCDESC: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMD_: TFMD_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFMD_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
