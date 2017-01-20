object FPE_: TFPE_
  Left = 566
  Top = 144
  Width = 557
  Height = 534
  BorderStyle = bsSizeToolWin
  Caption = 'PRODUTO DO ESTOQUE'
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
    Width = 549
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSPE: TDBNavigator
      Left = 0
      Top = 0
      Width = 549
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSPRODUTOESTOQUE
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
    Width = 549
    Height = 462
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 549
      Height = 462
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBLKPENCGCE: TLabel
        Left = 8
        Top = 48
        Width = 118
        Height = 13
        Caption = 'Classifica'#231#227'o do estoque'
      end
      object LBLKPENCGNE: TLabel
        Left = 8
        Top = 88
        Width = 125
        Height = 13
        Caption = 'Nome ger'#233'rico do estoque'
      end
      object LBPENCODG: TLabel
        Left = 8
        Top = 128
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEBPENCODG
      end
      object LBPECDESC: TLabel
        Left = 8
        Top = 168
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDPECDESC
      end
      object LBLKPENCGUN: TLabel
        Left = 8
        Top = 208
        Width = 40
        Height = 13
        Caption = 'Unidade'
        FocusControl = DBCBLKPENCGUN
      end
      object LBLKPENCGTE: TLabel
        Left = 8
        Top = 8
        Width = 77
        Height = 13
        Caption = 'Tipo de estoque'
      end
      object DBGRDSPE: TDBGrid
        Left = 0
        Top = 274
        Width = 549
        Height = 188
        Align = alBottom
        DataSource = DMSILIC_.DSPRODUTOESTOQUE
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
            FieldName = 'PENCODG'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PECDESC'
            Width = 398
            Visible = True
          end>
      end
      object DBEBPENCODG: TDBEdit
        Left = 8
        Top = 144
        Width = 134
        Height = 21
        DataField = 'PENCODG'
        DataSource = DMSILIC_.DSPRODUTOESTOQUE
        TabOrder = 1
      end
      object DBEDPECDESC: TDBEdit
        Left = 8
        Top = 184
        Width = 513
        Height = 21
        DataField = 'PECDESC'
        DataSource = DMSILIC_.DSPRODUTOESTOQUE
        TabOrder = 2
      end
      object DBCBLKPENCGUN: TDBLookupComboBox
        Left = 8
        Top = 224
        Width = 513
        Height = 21
        DataField = 'LKPENCGUN'
        DataSource = DMSILIC_.DSPRODUTOESTOQUE
        TabOrder = 3
      end
      object DBLKTECDESC: TDBLookupComboBox
        Left = 8
        Top = 24
        Width = 513
        Height = 21
        KeyField = 'TENCODG'
        ListField = 'TECDESC'
        ListSource = DMSILIC_.DSTIPOESTOQUE
        TabOrder = 4
      end
      object DBLKCECDESC: TDBLookupComboBox
        Left = 8
        Top = 64
        Width = 513
        Height = 21
        KeyField = 'CENCODG'
        ListField = 'CECDESC'
        ListSource = DMSILIC_.DSCLASSIFICACAOESTOQUE
        TabOrder = 5
      end
      object DBNECDESC: TDBLookupComboBox
        Left = 8
        Top = 104
        Width = 513
        Height = 21
        KeyField = 'NENCODG'
        ListField = 'NECDESC'
        ListSource = DMSILIC_.DSNOMEGENERICOESTOQUE
        TabOrder = 6
      end
    end
  end
end
