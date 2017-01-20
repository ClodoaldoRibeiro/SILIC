unit QRCL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TQRCL_ = class(TForm)
    QREP: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QRBand3: TQRBand;
    QRSysData3: TQRSysData;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand5: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRCL_: TQRCL_;

implementation

uses DMUNIDAD;

{$R *.DFM}

end.
