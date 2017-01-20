object FCE_: TFCE_
  Left = 351
  Top = 131
  Width = 488
  Height = 432
  BorderStyle = bsSizeToolWin
  Caption = 'CLASSIFICACAO DO ESTOQUE'
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
    Width = 480
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSCE: TDBNavigator
      Left = 0
      Top = 0
      Width = 480
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSCLASSIFICACAOESTOQUE
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
    Width = 480
    Height = 360
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 480
      Height = 360
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBLKTECDESC: TLabel
        Left = 8
        Top = 16
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object LBCENCODG: TLabel
        Left = 8
        Top = 56
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDCENCODG
      end
      object LBEDDESC: TLabel
        Left = 8
        Top = 96
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDDESC
      end
      object DBGRDSCE: TDBGrid
        Left = 0
        Top = 152
        Width = 480
        Height = 208
        Align = alBottom
        DataSource = DMSILIC_.DSCLASSIFICACAOESTOQUE
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
            FieldName = 'CENCODG'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CECDESC'
            Width = 368
            Visible = True
          end>
      end
      object DBEDCENCODG: TDBEdit
        Left = 8
        Top = 72
        Width = 134
        Height = 21
        DataField = 'CENCODG'
        DataSource = DMSILIC_.DSCLASSIFICACAOESTOQUE
        TabOrder = 1
      end
      object DBEDDESC: TDBEdit
        Left = 8
        Top = 112
        Width = 449
        Height = 21
        DataField = 'CECDESC'
        DataSource = DMSILIC_.DSCLASSIFICACAOESTOQUE
        TabOrder = 2
      end
      object DBCBLKTECDESC: TDBLookupComboBox
        Left = 8
        Top = 32
        Width = 449
        Height = 21
        KeyField = 'TENCODG'
        ListField = 'TECDESC'
        ListSource = DMSILIC_.DSTIPOESTOQUE
        TabOrder = 3
      end
    end
  end
end
