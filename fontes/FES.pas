unit FES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask, Buttons, DB;

type
  NewTypeNav = class( TDbNavigator );

type
  TFES_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSES: TDBNavigator;
    LBESCUF: TLabel;
    DBEDESCUF: TDBEdit;
    LBESCDESC: TLabel;
    DBEDESCDESC: TDBEdit;
    DBGRDSES: TDBGrid;
    CBINDEXES:TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBINDEXESChange(Sender: TObject);
    procedure DBNVDSESBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure DBEDESCUFExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FES_: TFES_;
  inserindo : TNavigateBtn;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFES_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFES_.CBINDEXESChange(Sender: TObject);
begin
  DMSILIC_.TBESTADO.IndexName := DMSILIC_.TBESTADO.IndexDefs.Items[CBINDEXES.ITEMINDEX].NAME;
end;

//Verifica se o estado está cadastrado.
procedure TFES_.DBNVDSESBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inserindo:= Button;
  if (button in [nbInsert]) then
    DBEDESCUF.SetFocus;

  if button in [nbEdit] then
    begin
        DBEDESCUF.Enabled := False;
        DBEDESCDESC.SetFocus;
    end;
  if not (button in [nbEdit]) then
    begin
        DBEDESCUF.Enabled := True;
    end;
end;

procedure TFES_.DBEDESCUFExit(Sender: TObject);
begin
   if inserindo in [nbInsert] then
   begin
      if DMSILIC_.getCampoCadastro('ESTADO','ESCUF', DBEDESCUF.Text) then
      begin
          ShowMessage('Estado ' + DBEDESCUF.Text + ' já está cadastrado!');
          DBNVDSES.BtnClick(nbCancel);
          inserindo:= nbPost;
      end;
   end;
end;

end.
