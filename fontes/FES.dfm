object FES_: TFES_
  Left = 421
  Top = 151
  Width = 606
  Height = 389
  BorderStyle = bsSizeToolWin
  Caption = 'ESTADO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 598
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSES: TDBNavigator
      Left = 0
      Top = 0
      Width = 598
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSESTADO
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
      BeforeAction = DBNVDSESBeforeAction
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 598
    Height = 317
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object LBESCUF: TLabel
      Left = 12
      Top = 8
      Width = 14
      Height = 13
      Caption = 'UF'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object LBESCDESC: TLabel
      Left = 12
      Top = 48
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 120
      Width = 598
      Height = 197
      Align = alBottom
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object DBGRDSES: TDBGrid
        Left = 0
        Top = 0
        Width = 598
        Height = 197
        Align = alClient
        DataSource = DMSILIC_.DSESTADO
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object DBEDESCUF: TDBEdit
      Left = 12
      Top = 24
      Width = 30
      Height = 21
      DataField = 'ESCUF'
      DataSource = DMSILIC_.DSESTADO
      TabOrder = 1
      OnExit = DBEDESCUFExit
    end
    object DBEDESCDESC: TDBEdit
      Left = 11
      Top = 64
      Width = 566
      Height = 21
      DataField = 'ESCDESC'
      DataSource = DMSILIC_.DSESTADO
      TabOrder = 2
    end
    object CBINDEXES: TComboBox
      Left = 432
      Top = 23
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = 'Ordena por...'
      OnChange = CBINDEXESChange
      Items.Strings = (
        #8226' C'#243'digo'
        #8226' Descri'#231#227'o')
    end
  end
end
