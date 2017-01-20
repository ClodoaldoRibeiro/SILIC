unit FNE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TFNE_ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNVDSNE: TDBNavigator;
    DBGRDSNE: TDBGrid;
    LBTECDESC: TLabel;
    LBCECDESC: TLabel;
    LBNENCODG: TLabel;
    DBEDNENCODG: TDBEdit;
    LBNECDESC: TLabel;
    DBEDNECDESC: TDBEdit;
    DBCBLKTECDESC: TDBLookupComboBox;
    DBCBLKCECDESC: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNE_: TFNE_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFNE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Free;
end;

end.
