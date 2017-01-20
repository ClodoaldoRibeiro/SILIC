object FBR_: TFBR_
  Left = 629
  Top = 130
  Width = 497
  Height = 447
  BorderStyle = bsSizeToolWin
  Caption = 'BAIRRO'
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
    Width = 489
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSBR: TDBNavigator
      Left = 0
      Top = 0
      Width = 489
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSBAIRRO
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
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 489
    Height = 375
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 489
      Height = 375
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBLKESCDESC: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object LBLKCDCDESC: TLabel
        Left = 8
        Top = 56
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object LBBRNCODG: TLabel
        Left = 8
        Top = 96
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = BDEDBRNCODG
      end
      object LBBRCDESC: TLabel
        Left = 8
        Top = 136
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDBRCDESC
      end
      object DBGRDSBA: TDBGrid
        Left = 0
        Top = 187
        Width = 489
        Height = 188
        Align = alBottom
        DataSource = DMSILIC_.DSBAIRRO
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
            FieldName = 'BRNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BRCDESC'
            Width = 385
            Visible = True
          end>
      end
      object BDEDBRNCODG: TDBEdit
        Left = 8
        Top = 112
        Width = 134
        Height = 21
        DataField = 'BRNCODG'
        DataSource = DMSILIC_.DSBAIRRO
        TabOrder = 1
      end
      object DBEDBRCDESC: TDBEdit
        Left = 8
        Top = 152
        Width = 457
        Height = 21
        DataField = 'BRCDESC'
        DataSource = DMSILIC_.DSBAIRRO
        TabOrder = 2
      end
      object DBCBLKESCDESC: TDBLookupComboBox
        Left = 8
        Top = 32
        Width = 457
        Height = 21
        KeyField = 'ESCUF'
        ListField = 'ESCDESC'
        ListSource = DMSILIC_.DSESTADO
        TabOrder = 3
      end
      object DBCBLKCDCDESC: TDBLookupComboBox
        Left = 8
        Top = 72
        Width = 457
        Height = 21
        KeyField = 'CDNCODG'
        ListField = 'CDCDESC'
        ListSource = DMSILIC_.DSCIDADE
        TabOrder = 4
      end
    end
  end
end
