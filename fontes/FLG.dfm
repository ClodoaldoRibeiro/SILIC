object FLG_: TFLG_
  Left = 291
  Top = 121
  Width = 561
  Height = 525
  BorderStyle = bsSizeToolWin
  Caption = 'LOGRADOURO'
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
    Width = 553
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSLG: TDBNavigator
      Left = 0
      Top = 0
      Width = 553
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSLOGRADOURO
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
    Width = 553
    Height = 453
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 553
      Height = 453
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBLGCCEP: TLabel
        Left = 8
        Top = 16
        Width = 21
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEDLGCCEP
      end
      object LBLGCDESC: TLabel
        Left = 8
        Top = 56
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDLGCDESC
      end
      object LBLKLGCUF: TLabel
        Left = 8
        Top = 96
        Width = 33
        Height = 13
        Caption = 'Estado'
        FocusControl = DBLKLGCUF
      end
      object LBLKLGNCGCD: TLabel
        Left = 8
        Top = 136
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBLKLGNCGCD
      end
      object LBLKLGNCGBR: TLabel
        Left = 8
        Top = 176
        Width = 27
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBLKLGNCGBR
      end
      object LBLKLGNCGTL: TLabel
        Left = 8
        Top = 216
        Width = 89
        Height = 13
        Caption = 'Tipo de logradouro'
        FocusControl = DBLKLGNCGTL
      end
      object DBGRDSLG: TDBGrid
        Left = 0
        Top = 265
        Width = 553
        Height = 188
        Align = alBottom
        DataSource = DMSILIC_.DSLOGRADOURO
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
            FieldName = 'LGCCEP'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LGCDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LGCUF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LGNCGCD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LGNCGBR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LGNCGTL'
            Visible = True
          end>
      end
      object DBEDLGCCEP: TDBEdit
        Left = 8
        Top = 32
        Width = 81
        Height = 21
        DataField = 'LGCCEP'
        DataSource = DMSILIC_.DSLOGRADOURO
        MaxLength = 9
        TabOrder = 1
      end
      object DBEDLGCDESC: TDBEdit
        Left = 8
        Top = 72
        Width = 537
        Height = 21
        DataField = 'LGCDESC'
        DataSource = DMSILIC_.DSLOGRADOURO
        TabOrder = 2
      end
      object DBLKLGCUF: TDBLookupComboBox
        Left = 8
        Top = 112
        Width = 537
        Height = 21
        DataField = 'LKLGCUF'
        DataSource = DMSILIC_.DSLOGRADOURO
        TabOrder = 3
      end
      object DBLKLGNCGCD: TDBLookupComboBox
        Left = 8
        Top = 152
        Width = 537
        Height = 21
        DataField = 'LKLGNCGCD'
        DataSource = DMSILIC_.DSLOGRADOURO
        TabOrder = 4
      end
      object DBLKLGNCGBR: TDBLookupComboBox
        Left = 8
        Top = 192
        Width = 537
        Height = 21
        DataField = 'LKLGNCGBR'
        DataSource = DMSILIC_.DSLOGRADOURO
        TabOrder = 5
      end
      object DBLKLGNCGTL: TDBLookupComboBox
        Left = 8
        Top = 232
        Width = 537
        Height = 21
        DataField = 'LKLGNCGTL'
        DataSource = DMSILIC_.DSLOGRADOURO
        TabOrder = 6
      end
    end
  end
end
