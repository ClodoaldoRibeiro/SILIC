object FLE_: TFLE_
  Left = 157
  Top = 118
  Width = 420
  Height = 503
  BorderStyle = bsSizeToolWin
  Caption = 'LANCE DO EDITAL'
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
    Width = 412
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSLE: TDBNavigator
      Left = 0
      Top = 0
      Width = 412
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSLANCE_EDITAL
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
    Width = 412
    Height = 431
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 412
      Height = 431
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBLKETAPROC: TLabel
        Left = 8
        Top = 8
        Width = 88
        Height = 13
        Caption = 'Processo do Edital'
      end
      object LBLKIECDESC: TLabel
        Left = 8
        Top = 48
        Width = 63
        Height = 13
        Caption = 'Item do edital'
      end
      object LBLKENCDESC: TLabel
        Left = 8
        Top = 88
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
      end
      object LBLENCODG: TLabel
        Left = 8
        Top = 128
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDLENCODG
      end
      object LBLEYVALR: TLabel
        Left = 8
        Top = 168
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = DBEDLEYVALR
      end
      object DBGRDSLE: TDBGrid
        Left = 0
        Top = 243
        Width = 412
        Height = 188
        Align = alBottom
        DataSource = DMSILIC_.DSLANCE_EDITAL
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
            FieldName = 'LENCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LEYVALR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LENCGET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LENCGIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LENCGEN'
            Visible = True
          end>
      end
      object DBEDLENCODG: TDBEdit
        Left = 8
        Top = 144
        Width = 134
        Height = 21
        DataField = 'LENCODG'
        DataSource = DMSILIC_.DSLANCE_EDITAL
        TabOrder = 1
      end
      object DBEDLEYVALR: TDBEdit
        Left = 8
        Top = 184
        Width = 134
        Height = 21
        DataField = 'LEYVALR'
        DataSource = DMSILIC_.DSLANCE_EDITAL
        TabOrder = 2
      end
      object DBLKETAPROC: TDBLookupComboBox
        Left = 8
        Top = 24
        Width = 361
        Height = 21
        KeyField = 'ETNCODG'
        ListField = 'ETAPROC'
        ListSource = DMSILIC_.DSEDITAL
        TabOrder = 3
      end
      object DBLKIECDESC: TDBLookupComboBox
        Left = 8
        Top = 64
        Width = 361
        Height = 21
        KeyField = 'IENCODG'
        ListField = 'IECDESC'
        ListSource = DMSILIC_.DSITENS_EDITAL
        TabOrder = 4
      end
      object DBLKENCDESC: TDBLookupComboBox
        Left = 8
        Top = 104
        Width = 361
        Height = 21
        DataField = 'LENCGEN'
        DataSource = DMSILIC_.DSLANCE_EDITAL
        KeyField = 'enncodg'
        ListField = 'encdesc'
        ListSource = DMSILIC_.DSFORNECEDOR
        TabOrder = 5
      end
    end
  end
end
