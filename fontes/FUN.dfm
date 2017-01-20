object FUN_: TFUN_
  Left = 386
  Top = 163
  Width = 467
  Height = 381
  BorderStyle = bsSizeToolWin
  Caption = 'UNIDADE'
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
    Width = 459
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSUN: TDBNavigator
      Left = 0
      Top = 0
      Width = 459
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSUNIDADE
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
      BeforeAction = DBNVDSUNBeforeAction
      OnClick = DBNVDSUNClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 459
    Height = 309
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 459
      Height = 309
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBUNNCODG: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDUNNCODG
      end
      object LBUNCDESC: TLabel
        Left = 8
        Top = 48
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDUNCDESC
      end
      object DBGRDSUN: TDBGrid
        Left = 0
        Top = 121
        Width = 459
        Height = 188
        Align = alBottom
        DataSource = DMSILIC_.DSUNIDADE
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'UNNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNCDESC'
            Visible = True
          end>
      end
      object DBEDUNNCODG: TDBEdit
        Left = 8
        Top = 24
        Width = 160
        Height = 21
        DataField = 'UNNCODG'
        DataSource = DMSILIC_.DSUNIDADE
        Enabled = False
        TabOrder = 1
      end
      object DBEDUNCDESC: TDBEdit
        Left = 8
        Top = 64
        Width = 433
        Height = 21
        DataField = 'UNCDESC'
        DataSource = DMSILIC_.DSUNIDADE
        TabOrder = 2
      end
    end
  end
end
