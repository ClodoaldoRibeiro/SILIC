unit FEC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFEC_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSEC: TDBNavigator;
    DBGRDSEC: TDBGrid;
    LBECNCODG: TLabel;
    DBEDECNCODG: TDBEdit;
    LBECCDESC: TLabel;
    DBEDECCDESC: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNVDSECClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBNVDSECBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEC_: TFEC_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFEC_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFEC_.DBNVDSECClick(Sender: TObject; Button: TNavigateBtn);
begin
  if (button in [nbinsert]) then
    DBEDECNCODG.Text := IntToStr(DMSILIC_.getUltSeq('ESTADOCIVIL','ECNCODG') );
end;

procedure TFEC_.DBNVDSECBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
    if (button in [nbinsert]) then
      DBEDECCDESC.SetFocus;
end;

end.
