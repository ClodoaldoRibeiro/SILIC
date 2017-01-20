unit FEM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFEM_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSEM: TDBNavigator;
    DBGGDSEM: TDBGrid;
    LBEMNCGENQ: TLabel;
    DBCBLKEMNCGENQ: TDBLookupComboBox;
    LBEMNCODG: TLabel;
    DBEDEMNCODG: TDBEdit;
    Label3: TLabel;
    DBEDEMCDESC: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEM_: TFEM_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFEM_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
