unit FED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFED_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSED: TDBNavigator;
    DBGRDSED: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBEDEDNCODG: TDBEdit;
    LBEDCDESC: TLabel;
    DBEDEDCDESC: TDBEdit;
    LBEDCNUMR: TLabel;
    DBEDEDCNUMR: TDBEdit;
    LBEDCOBS: TLabel;
    DBEDEDCOBS: TDBEdit;
    LBEDMOBS: TLabel;
    DBEDEDMOBS: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    LBEDNCODG: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FED_: TFED_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFED_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
