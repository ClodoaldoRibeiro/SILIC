object FTE_: TFTE_
  Left = 386
  Top = 163
  Width = 558
  Height = 420
  BorderStyle = bsSizeToolWin
  Caption = 'TIPO DE ESTOQUE'
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
    Width = 550
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object BDNVDSTL: TDBNavigator
      Left = 0
      Top = 0
      Width = 550
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSTIPOESTOQUE
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
      BeforeAction = BDNVDSTLBeforeAction
      OnClick = BDNVDSTLClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 550
    Height = 348
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 550
      Height = 348
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDTENCODG
      end
      object Label2: TLabel
        Left = 8
        Top = 56
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDTECDESC
      end
      object BDGRDSTE: TDBGrid
        Left = 0
        Top = 120
        Width = 550
        Height = 228
        Align = alBottom
        DataSource = DMSILIC_.DSTIPOESTOQUE
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBEDTENCODG: TDBEdit
        Left = 8
        Top = 32
        Width = 134
        Height = 21
        DataField = 'TENCODG'
        DataSource = DMSILIC_.DSTIPOESTOQUE
        Enabled = False
        TabOrder = 1
      end
      object DBEDTECDESC: TDBEdit
        Left = 8
        Top = 72
        Width = 521
        Height = 21
        DataField = 'TECDESC'
        DataSource = DMSILIC_.DSTIPOESTOQUE
        TabOrder = 2
      end
    end
  end
end
