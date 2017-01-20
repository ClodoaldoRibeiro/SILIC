object FMC_: TFMC_
  Left = 513
  Top = 112
  Width = 511
  Height = 430
  BorderStyle = bsSizeToolWin
  Caption = 'MARCA'
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
    Width = 503
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSMC: TDBNavigator
      Left = 0
      Top = 0
      Width = 503
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSMARCA
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
      BeforeAction = DBNVDSMCBeforeAction
      OnClick = DBNVDSMCClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 503
    Height = 358
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 503
      Height = 358
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBMCNCODG: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDMCNCODG
      end
      object LBMCCDESC: TLabel
        Left = 8
        Top = 56
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDMCCDESC
      end
      object DBGRDSMC: TDBGrid
        Left = 0
        Top = 137
        Width = 503
        Height = 221
        Align = alBottom
        DataSource = DMSILIC_.DSMARCA
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBEDMCNCODG: TDBEdit
        Left = 8
        Top = 32
        Width = 134
        Height = 21
        DataField = 'MCNCODG'
        DataSource = DMSILIC_.DSMARCA
        Enabled = False
        TabOrder = 1
      end
      object DBEDMCCDESC: TDBEdit
        Left = 8
        Top = 72
        Width = 473
        Height = 21
        DataField = 'MCCDESC'
        DataSource = DMSILIC_.DSMARCA
        TabOrder = 2
      end
      object EDDESCRICAO: TEdit
        Left = 336
        Top = 37
        Width = 121
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        TabOrder = 3
        Text = 'Digite a descri'#231#227'o'
        OnChange = EDDESCRICAOChange
        OnEnter = EDDESCRICAOEnter
      end
      object EDCODIGO: TEdit
        Left = 336
        Top = 8
        Width = 121
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        TabOrder = 4
        Text = 'Digite o c'#243'digo'
        OnChange = EDCODIGOChange
        OnEnter = EDCODIGOEnter
      end
    end
  end
end
