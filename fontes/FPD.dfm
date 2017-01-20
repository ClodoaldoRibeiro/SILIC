object FPD_: TFPD_
  Left = 97
  Top = 15
  Width = 852
  Height = 669
  BorderStyle = bsSizeToolWin
  Caption = 'PEDIDO'
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
    Width = 844
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSPD: TDBNavigator
      Left = 0
      Top = 0
      Width = 844
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSPEDIDO
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
    Width = 844
    Height = 597
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 844
      Height = 597
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object Label2: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDPDNCODG
      end
      object LBPDNDDATA: TLabel
        Left = 8
        Top = 56
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = DBEDPDNDDATA
      end
      object LBPDCDOCM: TLabel
        Left = 8
        Top = 192
        Width = 55
        Height = 13
        Caption = 'Documento'
        FocusControl = DBEDPDCDOCM
      end
      object LBPDCPROG: TLabel
        Left = 8
        Top = 232
        Width = 113
        Height = 13
        Caption = 'Programa de trababalho'
        FocusControl = DBEDPDCPROG
      end
      object Label6: TLabel
        Left = 8
        Top = 272
        Width = 101
        Height = 13
        Caption = 'Natureza da despeza'
        FocusControl = DBEDPDCNATZ
      end
      object LBPDCDEMD: TLabel
        Left = 8
        Top = 312
        Width = 58
        Height = 13
        Caption = 'Demeanada'
        FocusControl = DBEDPDCDEMD
      end
      object Label8: TLabel
        Left = 425
        Top = 135
        Width = 81
        Height = 13
        Caption = 'Prazo de entrega'
        FocusControl = DBEDPDCENTR
      end
      object LBPDCJULG: TLabel
        Left = 424
        Top = 176
        Width = 54
        Height = 13
        Caption = 'Julgamento'
        FocusControl = DBEDPDCJULG
      end
      object LBPDDDATA: TLabel
        Left = 424
        Top = 216
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = DBEDPDDDATA
      end
      object LBPDDCADT: TLabel
        Left = 424
        Top = 256
        Width = 67
        Height = 13
        Caption = 'Data cadastro'
        FocusControl = DBEPDDCADT
      end
      object LBPDTCADT: TLabel
        Left = 424
        Top = 296
        Width = 82
        Height = 13
        Caption = 'Hora do cadastro'
        FocusControl = DBEDPDTCADT
      end
      object LBLKPDNCGEN: TLabel
        Left = 8
        Top = 104
        Width = 25
        Height = 13
        Caption = 'Setor'
        FocusControl = BDLKPDNCGEN
      end
      object LBLKPDNC2EN: TLabel
        Left = 8
        Top = 144
        Width = 55
        Height = 13
        Caption = 'Funcion'#225'rio'
        FocusControl = BDLKPDNC2EN
      end
      object DBGRDSPD: TDBGrid
        Left = 0
        Top = 409
        Width = 844
        Height = 188
        Align = alBottom
        DataSource = DMSILIC_.DSPEDIDO
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
            FieldName = 'LKPDNCGEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNDDATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDCDOCM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDCPROG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDCNATZ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDCDEMD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDCENTR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDCJULG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDDDATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDDCADT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDTCADT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNCGEN'
            Visible = True
          end>
      end
      object DBEDPDNCODG: TDBEdit
        Left = 8
        Top = 32
        Width = 134
        Height = 21
        DataField = 'PDNCODG'
        DataSource = DMSILIC_.DSPEDIDO
        TabOrder = 1
      end
      object DBEDPDNDDATA: TDBEdit
        Left = 8
        Top = 72
        Width = 134
        Height = 21
        DataField = 'PDNDDATA'
        DataSource = DMSILIC_.DSPEDIDO
        TabOrder = 2
      end
      object DBEDPDCDOCM: TDBEdit
        Left = 8
        Top = 208
        Width = 394
        Height = 21
        DataField = 'PDCDOCM'
        DataSource = DMSILIC_.DSPEDIDO
        TabOrder = 3
      end
      object DBEDPDCPROG: TDBEdit
        Left = 8
        Top = 248
        Width = 394
        Height = 21
        DataField = 'PDCPROG'
        DataSource = DMSILIC_.DSPEDIDO
        TabOrder = 4
      end
      object DBEDPDCNATZ: TDBEdit
        Left = 8
        Top = 288
        Width = 394
        Height = 21
        DataField = 'PDCNATZ'
        DataSource = DMSILIC_.DSPEDIDO
        TabOrder = 5
      end
      object DBEDPDCDEMD: TDBEdit
        Left = 8
        Top = 328
        Width = 394
        Height = 21
        DataField = 'PDCDEMD'
        DataSource = DMSILIC_.DSPEDIDO
        TabOrder = 6
      end
      object DBEDPDCENTR: TDBEdit
        Left = 424
        Top = 152
        Width = 394
        Height = 21
        DataField = 'PDCENTR'
        DataSource = DMSILIC_.DSPEDIDO
        TabOrder = 7
      end
      object DBEDPDCJULG: TDBEdit
        Left = 424
        Top = 192
        Width = 394
        Height = 21
        DataField = 'PDCJULG'
        DataSource = DMSILIC_.DSPEDIDO
        TabOrder = 8
      end
      object DBEDPDDDATA: TDBEdit
        Left = 424
        Top = 232
        Width = 134
        Height = 21
        DataField = 'PDDDATA'
        DataSource = DMSILIC_.DSPEDIDO
        TabOrder = 9
      end
      object DBEPDDCADT: TDBEdit
        Left = 424
        Top = 272
        Width = 134
        Height = 21
        DataField = 'PDDCADT'
        DataSource = DMSILIC_.DSPEDIDO
        TabOrder = 10
      end
      object DBEDPDTCADT: TDBEdit
        Left = 424
        Top = 312
        Width = 134
        Height = 21
        DataField = 'PDTCADT'
        DataSource = DMSILIC_.DSPEDIDO
        TabOrder = 11
      end
      object BtItens: TButton
        Left = 744
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = BtItensClick
      end
      object BDLKPDNCGEN: TDBLookupComboBox
        Left = 8
        Top = 120
        Width = 393
        Height = 21
        DataField = 'LKPDNCGEN'
        DataSource = DMSILIC_.DSPEDIDO
        TabOrder = 13
      end
      object BDLKPDNC2EN: TDBLookupComboBox
        Left = 8
        Top = 160
        Width = 393
        Height = 21
        DataField = 'LKPDNC2EN'
        DataSource = DMSILIC_.DSPEDIDO
        TabOrder = 14
      end
    end
  end
end
