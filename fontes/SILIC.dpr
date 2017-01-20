program SILIC;

uses
  Forms,
  FMAIN in 'FMAIN.pas' {FMAIN_},
  DMSILIC in 'DMSILIC.pas' {DMSILIC_: TDataModule},
  FTL in 'FTL.pas' {FTL_},
  FES in 'FES.pas' {FES_},
  FRE in 'FRE.pas' {FRE_},
  FTE in 'FTE.pas' {FTE_},
  FMC in 'FMC.pas' {FMC_},
  FEC in 'FEC.pas' {FEC_},
  FUN in 'FUN.pas' {FUN_},
  FCD in 'FCD.pas' {FCD_},
  FBR in 'FBR.pas' {FBR_},
  FLG in 'FLG.pas' {FLG_},
  FMD in 'FMD.pas' {FMD_},
  FEN in 'FEN.pas' {FEN_},
  FCE in 'FCE.pas' {FCE_},
  FNE in 'FNE.pas' {FNE_},
  FPE in 'FPE.pas' {FPE_},
  FET in 'FET.pas' {FET_},
  FPD in 'FPD.pas' {FPD_},
  FED in 'FED.pas' {FED_},
  FEM in 'FEM.pas' {FEM_},
  FCT in 'FCT.pas' {FCT_},
  FSB in 'FSB.pas' {FSB_},
  FIP in 'FIP.pas' {FIP_},
  FPL in 'FPL.pas' {FPL_},
  FEE in 'FEE.pas' {FEE_},
  FLE in 'FLE.pas' {FLE_},
  QRTL in 'QRTL.pas' {QRTL_},
  FLGG in 'FLGG.pas' {FLGG_},
  FIE in 'FIE.pas' {FIE_};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sistema de Controle de Licitações';
  Application.CreateForm(TDMSILIC_, DMSILIC_);
  Application.CreateForm(TFMAIN_, FMAIN_);
  Application.Run;
 end.
