unit FTL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFTL_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSTL: TDBNavigator;
    DBGRDSTL: TDBGrid;
    LBTLCDESC: TLabel;
    EDEDTLCDESC: TDBEdit;
    LBTLNCODG: TLabel;
    DBEDTLNCODG: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNVDSTLClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBNVDSTLBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTL_: TFTL_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFTL_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFTL_.DBNVDSTLClick(Sender: TObject; Button: TNavigateBtn);
begin
  if (button in [nbinsert]) then
    DBEDTLNCODG.Text := IntToStr(DMSILIC_.getUltSeq('TIPOLOGRADOURO','TLNCODG') );
end;

procedure TFTL_.DBNVDSTLBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (button in [nbinsert]) then
    EDEDTLCDESC.SetFocus;
end;

end.
