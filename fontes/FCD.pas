unit FCD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFCD_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSCD: TDBNavigator;
    DBGRDSCD: TDBGrid;
    LBCDNCODG: TLabel;
    DBEDCDNCODG: TDBEdit;
    LBCDCDESC: TLabel;
    DBEDCDCDESC: TDBEdit;
    LBLKESCDESC: TLabel;
    DBCBLKESCDESC: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNVDSCDClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBNVDSCDBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCD_: TFCD_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFCD_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFCD_.DBNVDSCDClick(Sender: TObject; Button: TNavigateBtn);
begin
 // if (button in [nbinsert]) then
 //   DBEDCDNCODG.Text := IntToStr(DMSILIC_.getUltSeqChaveCompos('CIDADE','CDCUF', 'ESTADO', 'ESCUF', DBCBLKESCDESC.Text)) ;
end;

procedure TFCD_.DBNVDSCDBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
 // if (button in [nbinsert]) then
 //   DBEDCDCDESC.SetFocus;
end;

end.
