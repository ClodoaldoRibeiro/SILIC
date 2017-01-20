unit FUN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFUN_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSUN: TDBNavigator;
    DBGRDSUN: TDBGrid;
    LBUNNCODG: TLabel;
    DBEDUNNCODG: TDBEdit;
    LBUNCDESC: TLabel;
    DBEDUNCDESC: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNVDSUNClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBNVDSUNBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUN_: TFUN_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFUN_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFUN_.DBNVDSUNClick(Sender: TObject; Button: TNavigateBtn);
begin
  if (button in [nbinsert]) then
  begin
    DBEDUNNCODG.Text := IntToStr(DMSILIC_.getUltSeq('UNIDADE','UNNCODG') );
  end;
end;

procedure TFUN_.DBNVDSUNBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (button in [nbinsert]) then
    DBEDUNCDESC.SetFocus;
end;

end.
