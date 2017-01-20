unit FRE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFRE_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSRE: TDBNavigator;
    DBGRDSRE: TDBGrid;
    LBRENCODG: TLabel;
    DBEDRENCODG: TDBEdit;
    LBRECDESC: TLabel;
    DBEDRECDESC: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNVDSREClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBNVDSREBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRE_: TFRE_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFRE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFRE_.DBNVDSREClick(Sender: TObject; Button: TNavigateBtn);
begin
    if (button in [nbinsert]) then
    DBEDRENCODG.Text := IntToStr(DMSILIC_.getUltSeq('RELACAO','RENCODG') );
end;

procedure TFRE_.DBNVDSREBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (button in [nbinsert]) then
    DBEDRECDESC.SetFocus;
end;

end.
