object FEC_: TFEC_
  Left = 386
  Top = 160
  Width = 556
  Height = 419
  BorderStyle = bsSizeToolWin
  Caption = 'ESTADO CIVIL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 548
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSEC: TDBNavigator
      Left = 0
      Top = 0
      Width = 548
      Height = 25
      Cursor = crHelp
      DataSource = DMSILIC_.DSESTADOCIVIL
      Align = alTop
      Flat = True
      Hints.Strings = (
        'Primeiro registro'
        'Registro pr'#233'vio'
        'Pr'#243'ximo registro'
        #218'ltimo registro'
        'Inserir registro'
        'Excluir registro'
        'Editar registro'
        'Publicar edi'#231#227'o'
        'Cancelar edi'#231#227'o'
        'Atualizar dados')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      BeforeAction = DBNVDSECBeforeAction
      OnClick = DBNVDSECClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 548
    Height = 347
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 548
      Height = 347
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBECNCODG: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDECNCODG
      end
      object LBECCDESC: TLabel
        Left = 8
        Top = 48
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDECCDESC
      end
      object DBGRDSEC: TDBGrid
        Left = 0
        Top = 127
        Width = 548
        Height = 220
        Align = alBottom
        DataSource = DMSILIC_.DSESTADOCIVIL
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBEDECNCODG: TDBEdit
        Left = 8
        Top = 24
        Width = 134
        Height = 21
        DataField = 'ECNCODG'
        DataSource = DMSILIC_.DSESTADOCIVIL
        Enabled = False
        TabOrder = 1
      end
      object DBEDECCDESC: TDBEdit
        Left = 8
        Top = 64
        Width = 522
        Height = 21
        DataField = 'ECCDESC'
        DataSource = DMSILIC_.DSESTADOCIVIL
        TabOrder = 2
      end
    end
  end
end
