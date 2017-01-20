object FTL_: TFTL_
  Left = 443
  Top = 149
  Width = 510
  Height = 412
  BorderStyle = bsSizeToolWin
  Caption = 'TIPO DE LOUGRADOURO'
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
    Width = 502
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSTL: TDBNavigator
      Left = 0
      Top = 0
      Width = 502
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSTIPOLOGRADOURO
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
      BeforeAction = DBNVDSTLBeforeAction
      OnClick = DBNVDSTLClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 502
    Height = 340
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 502
      Height = 340
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBTLCDESC: TLabel
        Left = 8
        Top = 56
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = EDEDTLCDESC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LBTLNCODG: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDTLNCODG
      end
      object DBGRDSTL: TDBGrid
        Left = 0
        Top = 120
        Width = 502
        Height = 220
        Align = alBottom
        DataSource = DMSILIC_.DSTIPOLOGRADOURO
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object EDEDTLCDESC: TDBEdit
        Left = 8
        Top = 72
        Width = 394
        Height = 21
        DataField = 'TLCDESC'
        DataSource = DMSILIC_.DSTIPOLOGRADOURO
        TabOrder = 1
      end
      object DBEDTLNCODG: TDBEdit
        Left = 8
        Top = 32
        Width = 160
        Height = 21
        DataField = 'TLNCODG'
        DataSource = DMSILIC_.DSTIPOLOGRADOURO
        Enabled = False
        TabOrder = 2
      end
    end
  end
end
