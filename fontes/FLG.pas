unit FLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Mask;

type
  NewTypeNav = class( TDbNavigator );

type
  TFLG_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNVDSLG: TDBNavigator;
    DBGRDSLG: TDBGrid;
    LBLGCCEP: TLabel;
    DBEDLGCCEP: TDBEdit;
    LBLGCDESC: TLabel;
    DBEDLGCDESC: TDBEdit;
    LBLKLGCUF: TLabel;
    DBLKLGCUF: TDBLookupComboBox;
    LBLKLGNCGCD: TLabel;
    DBLKLGNCGCD: TDBLookupComboBox;
    LBLKLGNCGBR: TLabel;
    DBLKLGNCGBR: TDBLookupComboBox;
    LBLKLGNCGTL: TLabel;
    DBLKLGNCGTL: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLG_: TFLG_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFLG_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
