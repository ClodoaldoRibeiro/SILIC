unit FMC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFMC_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSMC: TDBNavigator;
    DBGRDSMC: TDBGrid;
    LBMCNCODG: TLabel;
    DBEDMCNCODG: TDBEdit;
    LBMCCDESC: TLabel;
    DBEDMCCDESC: TDBEdit;
    EDDESCRICAO: TEdit;
    EDCODIGO: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EDDESCRICAOEnter(Sender: TObject);
    procedure EDDESCRICAOChange(Sender: TObject);
    procedure DBNVDSMCClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBNVDSMCBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure EDCODIGOEnter(Sender: TObject);
    procedure EDCODIGOChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMC_: TFMC_;

implementation

uses DMSILIC, DB;


{$R *.dfm}

procedure TFMC_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFMC_.EDDESCRICAOEnter(Sender: TObject);
begin
  EDDESCRICAO.Text := ''
end;

procedure TFMC_.EDDESCRICAOChange(Sender: TObject);
begin
  IF NOT ((SENDER AS TEDIT).TEXT = '') then
   BEGIN
      DMSILIC_.TBMARCA.indexname := 'SIMCCDESC';
      TRY
        DMSILIC_.TBMARCA.FindNearest([(SENDER AS TEDIT).TEXT]);
      EXCEPT
        SHOWMESSAGE ('Descrição Inválida');
      END;
   END;
end;
procedure TFMC_.DBNVDSMCClick(Sender: TObject; Button: TNavigateBtn);
begin
  if (button in [nbinsert]) then
    DBEDMCNCODG.Text := IntToStr(DMSILIC_.getUltSeq('MARCA','MCNCODG') );
end;

procedure TFMC_.DBNVDSMCBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (button in [nbinsert]) then
    DBEDMCCDESC.SetFocus;
end;

procedure TFMC_.EDCODIGOEnter(Sender: TObject);
begin
  EDCODIGO.Text := '';
end;

procedure TFMC_.EDCODIGOChange(Sender: TObject);
begin
   IF NOT (EDCODIGO.TEXT = '') then
    BEGIN
      DMSILIC_.TBMARCA.indexname := '';
      TRY
        DMSILIC_.TBMARCA.FindKey( [EDCODIGO.TEXT]);
      EXCEPT
        SHOWMESSAGE ('Código Inválido');
      END;
    end;
end;

end.
