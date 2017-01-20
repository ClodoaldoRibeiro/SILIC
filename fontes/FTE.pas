unit FTE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFTE_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    BDNVDSTL: TDBNavigator;
    BDGRDSTE: TDBGrid;
    Label1: TLabel;
    DBEDTENCODG: TDBEdit;
    Label2: TLabel;
    DBEDTECDESC: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BDNVDSTLClick(Sender: TObject; Button: TNavigateBtn);
    procedure BDNVDSTLBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTE_: TFTE_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFTE_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFTE_.BDNVDSTLClick(Sender: TObject; Button: TNavigateBtn);
begin
  if (button in [nbinsert]) then
    DBEDTENCODG.Text := IntToStr(DMSILIC_.getUltSeq('TIPOESTOQUE','TENCODG') );
end;

procedure TFTE_.BDNVDSTLBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (button in [nbinsert]) then
       DBEDTECDESC.SetFocus;
end;

end.
