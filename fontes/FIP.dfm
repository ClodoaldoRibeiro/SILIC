object FIP_: TFIP_
  Left = 84
  Top = 80
  BorderStyle = bsNone
  Caption = 'ITENS DO PEDIDO'
  ClientHeight = 574
  ClientWidth = 490
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
    Width = 490
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSIP: TDBNavigator
      Left = 0
      Top = 0
      Width = 490
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSITENS_PEDIDO
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
    Width = 490
    Height = 533
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 490
      Height = 533
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object BLTECDESC: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Pedido'
      end
      object LBCLIPYVALR: TLabel
        Left = 306
        Top = 270
        Width = 63
        Height = 13
        Caption = 'Valor a pagar'
        FocusControl = DBEDCLIPYVALR
      end
      object LBIPNCODG: TLabel
        Left = 8
        Top = 64
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDIPNCODG
      end
      object LBIPNQTD: TLabel
        Left = 160
        Top = 272
        Width = 55
        Height = 13
        Caption = 'Quantidade'
        FocusControl = DBEDIPNQTD
      end
      object LBIPYVALR: TLabel
        Left = 9
        Top = 271
        Width = 61
        Height = 13
        Caption = 'Valor unit'#225'rio'
        FocusControl = DBEDIPYVALR
      end
      object LBLKTECDESC: TLabel
        Left = 6
        Top = 104
        Width = 78
        Height = 13
        Caption = 'Tipo de Estoque'
        FocusControl = DBLKTECDESC
      end
      object LBLKCECDESC: TLabel
        Left = 7
        Top = 144
        Width = 62
        Height = 13
        Caption = 'Classifica'#231#227'o'
        FocusControl = DBLKCECDESC
      end
      object LBLKPECDESC: TLabel
        Left = 8
        Top = 224
        Width = 37
        Height = 13
        Caption = 'Produto'
        FocusControl = DBLKPECDESC
      end
      object LBLKNECDESC: TLabel
        Left = 8
        Top = 184
        Width = 72
        Height = 13
        Caption = 'Nome gen'#233'rico'
        FocusControl = DBLKNECDESC
      end
      object DBGRDSIP: TDBGrid
        Left = 0
        Top = 345
        Width = 490
        Height = 188
        Align = alBottom
        DataSource = DMSILIC_.DSITENS_PEDIDO
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
            FieldName = 'IPNCODG'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPYVALR'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPNQTD'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIPYVALR'
            Width = 157
            Visible = True
          end>
      end
      object DBEDCLIPYVALR: TDBEdit
        Left = 305
        Top = 285
        Width = 134
        Height = 21
        DataField = 'CLIPYVALR'
        DataSource = DMSILIC_.DSITENS_PEDIDO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEDIPNCODG: TDBEdit
        Left = 8
        Top = 79
        Width = 134
        Height = 21
        DataField = 'IPNCODG'
        DataSource = DMSILIC_.DSITENS_PEDIDO
        TabOrder = 1
      end
      object DBEDIPNQTD: TDBEdit
        Left = 160
        Top = 286
        Width = 134
        Height = 21
        DataField = 'IPNQTD'
        DataSource = DMSILIC_.DSITENS_PEDIDO
        TabOrder = 3
      end
      object DBEDIPYVALR: TDBEdit
        Left = 8
        Top = 286
        Width = 134
        Height = 21
        DataField = 'IPYVALR'
        DataSource = DMSILIC_.DSITENS_PEDIDO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 8
        Top = 32
        Width = 257
        Height = 21
        KeyField = 'PDNCODG'
        ListField = 'PDCDOCM'
        ListSource = DMSILIC_.DSPEDIDO
        TabOrder = 5
      end
      object DBLKTECDESC: TDBLookupComboBox
        Left = 7
        Top = 120
        Width = 404
        Height = 21
        DataField = 'LKTECDESC'
        DataSource = DMSILIC_.DSITENS_PEDIDO
        TabOrder = 6
      end
      object DBLKCECDESC: TDBLookupComboBox
        Left = 7
        Top = 160
        Width = 404
        Height = 21
        DataField = 'LKCECDESC'
        DataSource = DMSILIC_.DSITENS_PEDIDO
        TabOrder = 7
      end
      object DBLKPECDESC: TDBLookupComboBox
        Left = 8
        Top = 240
        Width = 404
        Height = 21
        DataField = 'LKPECDESC'
        DataSource = DMSILIC_.DSITENS_PEDIDO
        TabOrder = 8
      end
      object DBLKNECDESC: TDBLookupComboBox
        Left = 8
        Top = 200
        Width = 404
        Height = 21
        DataField = 'LKNECDESC'
        DataSource = DMSILIC_.DSITENS_PEDIDO
        TabOrder = 9
      end
    end
  end
end
