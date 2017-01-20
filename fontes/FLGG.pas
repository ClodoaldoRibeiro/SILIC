unit FLGG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DbChart;

type
  TFLGG_ = class(TForm)
    DBChart1: TDBChart;
    Series1: TPieSeries;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLGG_: TFLGG_;

implementation

uses DMSILIC;

{$R *.dfm}

procedure TFLGG_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Free;
end;

end.
