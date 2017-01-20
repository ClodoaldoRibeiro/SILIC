unit QRTL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TQRTL_ = class(TForm)
    QREP: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRBand4: TQRBand;
    QRSysData3: TQRSysData;
    QRBand5: TQRBand;
    QRBand6: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData5: TQRSysData;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTL_: TQRTL_;

implementation

uses DMSILIC;

{$R *.dfm}

end.
