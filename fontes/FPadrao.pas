unit FPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls;

type
  NewTypeNav = class( TDbNavigator );

type
  TFPadrao_ = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPadrao_: TFPadrao_;

implementation

{$R *.dfm}

procedure TFPadrao_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
