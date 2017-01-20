object FIE_: TFIE_
  Left = 157
  Top = 11
  Width = 691
  Height = 662
  BorderStyle = bsSizeToolWin
  Caption = 'ITENS DO EDITAL'
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
    Width = 683
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSIE: TDBNavigator
      Left = 0
      Top = 0
      Width = 683
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSITENS_EDITAL
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
    Width = 683
    Height = 590
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 683
      Height = 590
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBETAPROC: TLabel
        Left = 8
        Top = 16
        Width = 26
        Height = 13
        Caption = 'Edital'
      end
      object LBIENCODG: TLabel
        Left = 8
        Top = 56
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBIENCODG
      end
      object LBIECDESC: TLabel
        Left = 8
        Top = 96
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDIECDESC
      end
      object LBLKTECDESC: TLabel
        Left = 8
        Top = 144
        Width = 21
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBLKTECDESC
      end
      object LBLKCECDESC: TLabel
        Left = 8
        Top = 184
        Width = 62
        Height = 13
        Caption = 'Classifica'#231#227'o'
        FocusControl = DBLKCECDESC
      end
      object LBLKNECDESC: TLabel
        Left = 8
        Top = 224
        Width = 72
        Height = 13
        Caption = 'Nome gen'#233'rico'
        FocusControl = DBLKNECDESC
      end
      object LBLKPECDESC: TLabel
        Left = 8
        Top = 264
        Width = 37
        Height = 13
        Caption = 'Produto'
        FocusControl = DBLKPECDESC
      end
      object LBIEYVLOR: TLabel
        Left = 8
        Top = 304
        Width = 62
        Height = 13
        Caption = 'Valor Original'
        FocusControl = DBEDIEYVLOR
      end
      object LBIENQTD: TLabel
        Left = 152
        Top = 304
        Width = 55
        Height = 13
        Caption = 'Quantidade'
        FocusControl = DBEIENQTD
      end
      object LBIEYVALR: TLabel
        Left = 296
        Top = 306
        Width = 73
        Height = 13
        Caption = 'Valor Vencedor'
        FocusControl = DBEDIEYVALR
      end
      object Label12: TLabel
        Left = 480
        Top = 152
        Width = 67
        Height = 13
        Caption = 'Especificacao'
        FocusControl = DBMemo1
      end
      object LBLKENCDESC: TLabel
        Left = 8
        Top = 344
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
        FocusControl = DBLKENCDESC
      end
      object DBGRDSIE: TDBGrid
        Left = 0
        Top = 403
        Width = 683
        Height = 187
        Align = alBottom
        DataSource = DMSILIC_.DSITENS_EDITAL
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
            FieldName = 'IENCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IECDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IENCGEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LKTECDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LKCECDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LKNECDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LKPECDESC'
            Visible = True
          end>
      end
      object DBIENCODG: TDBEdit
        Left = 8
        Top = 72
        Width = 134
        Height = 21
        DataField = 'IENCODG'
        DataSource = DMSILIC_.DSITENS_EDITAL
        TabOrder = 1
      end
      object DBEDIECDESC: TDBEdit
        Left = 8
        Top = 112
        Width = 655
        Height = 21
        DataField = 'IECDESC'
        DataSource = DMSILIC_.DSITENS_EDITAL
        TabOrder = 2
      end
      object DBLKTECDESC: TDBLookupComboBox
        Left = 8
        Top = 160
        Width = 404
        Height = 21
        DataField = 'LKTECDESC'
        DataSource = DMSILIC_.DSITENS_EDITAL
        TabOrder = 3
      end
      object DBLKCECDESC: TDBLookupComboBox
        Left = 8
        Top = 200
        Width = 404
        Height = 21
        DataField = 'LKCECDESC'
        DataSource = DMSILIC_.DSITENS_EDITAL
        TabOrder = 4
      end
      object DBLKNECDESC: TDBLookupComboBox
        Left = 8
        Top = 240
        Width = 404
        Height = 21
        DataField = 'LKNECDESC'
        DataSource = DMSILIC_.DSITENS_EDITAL
        TabOrder = 5
      end
      object DBLKPECDESC: TDBLookupComboBox
        Left = 8
        Top = 280
        Width = 404
        Height = 21
        DataField = 'LKPECDESC'
        DataSource = DMSILIC_.DSITENS_EDITAL
        TabOrder = 6
      end
      object DBEDIEYVLOR: TDBEdit
        Left = 8
        Top = 320
        Width = 134
        Height = 21
        DataField = 'IEYVLOR'
        DataSource = DMSILIC_.DSITENS_EDITAL
        TabOrder = 7
      end
      object DBEIENQTD: TDBEdit
        Left = 152
        Top = 320
        Width = 134
        Height = 21
        DataField = 'IENQTD'
        DataSource = DMSILIC_.DSITENS_EDITAL
        TabOrder = 8
      end
      object DBEDIEYVALR: TDBEdit
        Left = 296
        Top = 320
        Width = 134
        Height = 21
        DataField = 'IEYVALR'
        DataSource = DMSILIC_.DSITENS_EDITAL
        TabOrder = 9
      end
      object DBMemo1: TDBMemo
        Left = 480
        Top = 168
        Width = 185
        Height = 89
        DataField = 'IEMESPC'
        DataSource = DMSILIC_.DSITENS_EDITAL
        TabOrder = 10
      end
      object DBETAPROC: TDBLookupComboBox
        Left = 8
        Top = 32
        Width = 225
        Height = 21
        KeyField = 'ETNCODG'
        ListField = 'ETAPROC'
        ListSource = DMSILIC_.DSEDITAL
        TabOrder = 11
      end
      object btLances: TButton
        Left = 590
        Top = 13
        Width = 75
        Height = 25
        Caption = 'Lances'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = btLancesClick
      end
      object DBLKENCDESC: TDBLookupComboBox
        Left = 8
        Top = 360
        Width = 404
        Height = 21
        DataField = 'LKENCDESC'
        DataSource = DMSILIC_.DSITENS_EDITAL
        TabOrder = 13
      end
    end
  end
end
