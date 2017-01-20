object FET_: TFET_
  Left = 319
  Top = 97
  Width = 688
  Height = 534
  BorderStyle = bsSizeToolWin
  Caption = 'EDITAL'
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
    Width = 680
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSET: TDBNavigator
      Left = 0
      Top = 0
      Width = 680
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSEDITAL
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
    Width = 680
    Height = 462
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 680
      Height = 462
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBETNCODG: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDETNCODG
      end
      object LBETAPROC: TLabel
        Left = 8
        Top = 48
        Width = 44
        Height = 13
        Caption = 'Processo'
        FocusControl = DBEDETAPROC
      end
      object Label3: TLabel
        Left = 8
        Top = 88
        Width = 29
        Height = 13
        Caption = 'Forma'
        FocusControl = DBEDETAFORM
      end
      object LBETDDATA: TLabel
        Left = 8
        Top = 128
        Width = 65
        Height = 13
        Caption = 'Data abertura'
        FocusControl = DBEDETDDATA
      end
      object LBETHHORA: TLabel
        Left = 168
        Top = 128
        Width = 65
        Height = 13
        Caption = 'Hora abertura'
        FocusControl = DBEDETHHORA
      end
      object LBETDCADT: TLabel
        Left = 8
        Top = 168
        Width = 82
        Height = 13
        Caption = 'Data do cadastro'
        FocusControl = DBEDETDCADT
      end
      object LBETHCADT: TLabel
        Left = 168
        Top = 168
        Width = 82
        Height = 13
        Caption = 'Hora do cadastro'
        FocusControl = DBEDETHCADT
      end
      object DBGRDSET: TDBGrid
        Left = 0
        Top = 232
        Width = 680
        Height = 230
        Align = alBottom
        DataSource = DMSILIC_.DSEDITAL
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
            FieldName = 'ETNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ETAPROC'
            Width = 287
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ETAFORM'
            Width = 288
            Visible = True
          end>
      end
      object DBEDETNCODG: TDBEdit
        Left = 8
        Top = 24
        Width = 134
        Height = 21
        DataField = 'ETNCODG'
        DataSource = DMSILIC_.DSEDITAL
        TabOrder = 1
      end
      object DBEDETAPROC: TDBEdit
        Left = 8
        Top = 64
        Width = 654
        Height = 21
        DataField = 'ETAPROC'
        DataSource = DMSILIC_.DSEDITAL
        TabOrder = 2
      end
      object DBEDETAFORM: TDBEdit
        Left = 8
        Top = 104
        Width = 654
        Height = 21
        DataField = 'ETAFORM'
        DataSource = DMSILIC_.DSEDITAL
        TabOrder = 3
      end
      object DBEDETDDATA: TDBEdit
        Left = 8
        Top = 144
        Width = 134
        Height = 21
        DataField = 'ETDDATA'
        DataSource = DMSILIC_.DSEDITAL
        MaxLength = 10
        TabOrder = 4
      end
      object DBEDETHHORA: TDBEdit
        Left = 168
        Top = 144
        Width = 134
        Height = 21
        DataField = 'ETHHORA'
        DataSource = DMSILIC_.DSEDITAL
        MaxLength = 8
        TabOrder = 5
      end
      object DBEDETDCADT: TDBEdit
        Left = 8
        Top = 184
        Width = 134
        Height = 21
        DataField = 'ETDCADT'
        DataSource = DMSILIC_.DSEDITAL
        MaxLength = 10
        TabOrder = 6
      end
      object DBEDETHCADT: TDBEdit
        Left = 168
        Top = 184
        Width = 134
        Height = 21
        DataField = 'ETHCADT'
        DataSource = DMSILIC_.DSEDITAL
        MaxLength = 8
        TabOrder = 7
      end
      object PNLBTNS: TPanel
        Left = 354
        Top = 0
        Width = 296
        Height = 38
        BevelOuter = bvNone
        TabOrder = 8
        object btEntidade: TButton
          Left = 5
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Entidades'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btEntidadeClick
        end
        object btPedidos: TButton
          Left = 85
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btPedidosClick
        end
        object btItens: TButton
          Left = 165
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btItensClick
        end
      end
    end
  end
end
