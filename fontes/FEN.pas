unit FEN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask, ExtDlgs;

type
  NewTypeNav = class( TDbNavigator );

type
  TFEN_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBGRDSEN: TDBGrid;
    LBENNCODG: TLabel;
    DBEDENNCODG: TDBEdit;
    LBENCDESC: TLabel;
    DBEDENCDESC: TDBEdit;
    LBENCAPEL: TLabel;
    DBEDENCAPEL: TDBEdit;
    DBRGENCTIPO: TDBRadioGroup;
    DBRGENCSEXO: TDBRadioGroup;
    Label3: TLabel;
    DBIMENOFOTO: TDBImage;
    LBENDDNAS: TLabel;
    DBEDENDDNAS: TDBEdit;
    LBENCCPF: TLabel;
    DBEDENCCPF: TDBEdit;
    LBLKENNCGEC: TLabel;
    DBCBLKENNCGEC: TDBLookupComboBox;
    PNLCPF: TPanel;
    PNLCNPJ: TPanel;
    Label7: TLabel;
    DBEDENCCNPJ: TDBEdit;
    LBENCRZSC: TLabel;
    DBEDENCRZSC: TDBEdit;
    LBENCIE: TLabel;
    DBEDENCIE: TDBEdit;
    LBENCIM: TLabel;
    DBEDENCIM: TDBEdit;
    DBNVDSER: TDBNavigator;
    DBNavigator2: TDBNavigator;
    BTFOTO: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Label12: TLabel;
    DBEDENDCADT: TDBEdit;
    Label13: TLabel;
    DBEDENHCADT: TDBEdit;
    Label16: TLabel;
    DBLkCBENCDCEN: TDBLookupComboBox;
    BTEMAIL: TButton;
    BTCONTATO: TButton;
    BTENDEREC: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBRGENCTIPOChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure BTFOTOClick(Sender: TObject);
    procedure BTEMAILClick(Sender: TObject);
    procedure BTCONTATOClick(Sender: TObject);
    procedure BTENDERECClick(Sender: TObject);
    procedure recuperarDataHora;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEN_: TFEN_;

implementation

uses DMSILIC, FEM, FCT, FED;

{$R *.dfm}

procedure TFEN_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

procedure TFEN_.DBRGENCTIPOChange(Sender: TObject);
begin
  if DBRGENCTIPO.ItemIndex = 0 then
  begin
    Self.PNLCPF.Enabled := True;
    Self.PNLCNPJ.Enabled := False;
  end
  else
    begin
      Self.PNLCPF.Enabled := False;
      Self.PNLCNPJ.Enabled := True;
    end

end;

procedure TFEN_.FormCreate(Sender: TObject);
begin
  inserindo := false;
end;

procedure TFEN_.recuperarDataHora;
begin
  DBEDENDCADT.Text := DateToStr(Now);
  DBEDENHCADT.Text := TimeToStr(Time);
  dataDadastro := DateToStr(Now);
  horaDastro := TimeToStr(Time);
end;

procedure TFEN_.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
  IF (button in [nbinsert]) then
  begin
        inserindo := true;
        DBEDENNCODG.Text := IntToStr(DMSILIC_.getUltSeq('ENTIDADE','ENNCODG') );
        recuperarDataHora;
  end;
end;

procedure TFEN_.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin

  IF (button in [nbfirst, nbprior, nbnext, nblast,
      nbcancel, nbrefresh, nbEdit]) then
  begin
        inserindo := false;
  end;

  if (button in [nbpost]) and inserindo then
  begin
    DMSILIC_.Query1.close;
    DMSILIC_.Query1.open;
    DMSILIC_.Query1.last; // vai para o último

    codigo := DMSILIC_.Query1enncodg.asinteger + 1;
    DMSILIC_.TBENTIDADEENNCODG.value := codigo;
  end;
  if (button in [nbinsert]) then
  begin
    DBEDENCDESC.SetFocus;
  end;
end;

procedure TFEN_.BTFOTOClick(Sender: TObject);
begin
  IF (self.OpenPictureDialog1.Execute) THEN
  BEGIN
       SELF.DBIMENOFOTO.Picture.LoadFromFile(Self.OpenPictureDialog1.FileName);
  end;
end;

procedure TFEN_.BTEMAILClick(Sender: TObject);
begin
  FEM_:= TFEM_.CREATE(FEN_);
    FEM_.Show;
end;

procedure TFEN_.BTCONTATOClick(Sender: TObject);
begin
  FCT_:= TFCT_.CREATE(FEN_);
      FCT_.Show;
end;

procedure TFEN_.BTENDERECClick(Sender: TObject);
begin
  FED_:= TFED_.CREATE(FEN_);
      FED_.Show;
end;

end.
