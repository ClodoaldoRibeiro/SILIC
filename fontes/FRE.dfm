object FRE_: TFRE_
  Left = 616
  Top = 163
  Width = 503
  Height = 416
  BorderStyle = bsSizeToolWin
  Caption = 'RELA'#199#195'O'
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
    Width = 495
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSRE: TDBNavigator
      Left = 0
      Top = 0
      Width = 495
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSRELACAO
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
      BeforeAction = DBNVDSREBeforeAction
      OnClick = DBNVDSREClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 495
    Height = 344
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 495
      Height = 344
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBRENCODG: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDRENCODG
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LBRECDESC: TLabel
        Left = 8
        Top = 48
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDRECDESC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBGRDSRE: TDBGrid
        Left = 0
        Top = 118
        Width = 495
        Height = 226
        Align = alBottom
        DataSource = DMSILIC_.DSRELACAO
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBEDRENCODG: TDBEdit
        Left = 8
        Top = 24
        Width = 134
        Height = 21
        DataField = 'RENCODG'
        DataSource = DMSILIC_.DSRELACAO
        Enabled = False
        TabOrder = 1
      end
      object DBEDRECDESC: TDBEdit
        Left = 8
        Top = 64
        Width = 394
        Height = 21
        DataField = 'RECDESC'
        DataSource = DMSILIC_.DSRELACAO
        TabOrder = 2
      end
    end
  end
end
