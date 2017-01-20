object FNE_: TFNE_
  Left = 472
  Top = 160
  BorderStyle = bsToolWindow
  Caption = 'NOME GEN'#201'RICO DO ESTOQUE'
  ClientHeight = 434
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSNE: TDBNavigator
      Left = 0
      Top = 0
      Width = 519
      Height = 25
      DataSource = DMSILIC_.DSNOMEGENERICOESTOQUE
      Align = alTop
      Flat = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 519
    Height = 393
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object LBTECDESC: TLabel
      Left = 8
      Top = 16
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object LBCECDESC: TLabel
      Left = 8
      Top = 60
      Width = 62
      Height = 13
      Caption = 'Classifica'#231#227'o'
    end
    object LBNENCODG: TLabel
      Left = 8
      Top = 104
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEDNENCODG
    end
    object LBNECDESC: TLabel
      Left = 8
      Top = 144
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEDNECDESC
    end
    object DBGRDSNE: TDBGrid
      Left = 0
      Top = 199
      Width = 519
      Height = 194
      Align = alBottom
      DataSource = DMSILIC_.DSNOMEGENERICOESTOQUE
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NENCODG'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NECDESC'
          Width = 373
          Visible = True
        end>
    end
    object DBEDNENCODG: TDBEdit
      Left = 8
      Top = 118
      Width = 134
      Height = 21
      DataField = 'NENCODG'
      DataSource = DMSILIC_.DSNOMEGENERICOESTOQUE
      TabOrder = 1
    end
    object DBEDNECDESC: TDBEdit
      Left = 8
      Top = 158
      Width = 489
      Height = 21
      DataField = 'NECDESC'
      DataSource = DMSILIC_.DSNOMEGENERICOESTOQUE
      TabOrder = 2
    end
    object DBCBLKTECDESC: TDBLookupComboBox
      Left = 8
      Top = 32
      Width = 489
      Height = 21
      KeyField = 'TENCODG'
      ListField = 'TECDESC'
      ListSource = DMSILIC_.DSTIPOESTOQUE
      TabOrder = 3
    end
    object DBCBLKCECDESC: TDBLookupComboBox
      Left = 8
      Top = 75
      Width = 489
      Height = 21
      KeyField = 'CENCODG'
      ListField = 'CECDESC'
      ListSource = DMSILIC_.DSCLASSIFICACAOESTOQUE
      TabOrder = 4
    end
  end
end
