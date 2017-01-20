object FCT_: TFCT_
  Left = 427
  Top = 135
  BorderStyle = bsNone
  Caption = 'CONTATO'
  ClientHeight = 505
  ClientWidth = 467
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
    Width = 467
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSCT: TDBNavigator
      Left = 0
      Top = 0
      Width = 467
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSCONTATO
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
    Width = 467
    Height = 464
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 467
      Height = 464
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBCTNCODG: TLabel
        Left = 8
        Top = 88
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDCTNCODG
      end
      object LBCTCDESC: TLabel
        Left = 8
        Top = 128
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDCTCDESC
      end
      object LBCTCNUMR: TLabel
        Left = 8
        Top = 168
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEDCTCNUMR
      end
      object lbCTCTIPO: TLabel
        Left = 8
        Top = 208
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object LBENCDESC: TLabel
        Left = 8
        Top = 8
        Width = 42
        Height = 13
        Caption = 'Entidade'
      end
      object LBLKCEDCDESC: TLabel
        Left = 8
        Top = 48
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object DBGRDSCT: TDBGrid
        Left = 0
        Top = 276
        Width = 467
        Height = 188
        Align = alBottom
        DataSource = DMSILIC_.DSCONTATO
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
            FieldName = 'CTNCODG'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTCDESC'
            Width = 247
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTCNUMR'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTCTIPO'
            Width = 36
            Visible = True
          end>
      end
      object DBEDCTNCODG: TDBEdit
        Left = 8
        Top = 104
        Width = 134
        Height = 21
        DataField = 'CTNCODG'
        DataSource = DMSILIC_.DSCONTATO
        TabOrder = 1
      end
      object DBEDCTCDESC: TDBEdit
        Left = 8
        Top = 144
        Width = 394
        Height = 21
        DataField = 'CTCDESC'
        DataSource = DMSILIC_.DSCONTATO
        TabOrder = 2
      end
      object DBEDCTCNUMR: TDBEdit
        Left = 8
        Top = 184
        Width = 160
        Height = 21
        DataField = 'CTCNUMR'
        DataSource = DMSILIC_.DSCONTATO
        TabOrder = 3
      end
      object DCBCTCTIPO: TDBComboBox
        Left = 8
        Top = 224
        Width = 177
        Height = 21
        Style = csDropDownList
        DataField = 'CTCTIPO'
        DataSource = DMSILIC_.DSCONTATO
        ItemHeight = 13
        Items.Strings = (
          'F'
          'C')
        TabOrder = 4
      end
      object DBCBLKENCDESC: TDBLookupComboBox
        Left = 8
        Top = 24
        Width = 401
        Height = 21
        KeyField = 'ENNCODG'
        ListField = 'ENCDESC'
        ListSource = DMSILIC_.DSENTIDADE
        TabOrder = 5
      end
      object DBCBLKEDCDESC: TDBLookupComboBox
        Left = 8
        Top = 64
        Width = 401
        Height = 21
        KeyField = 'EDNCODG'
        ListField = 'EDCDESC'
        ListSource = DMSILIC_.DSENDERECO
        TabOrder = 6
      end
    end
  end
end
