object FPL_: TFPL_
  Left = 118
  Top = 175
  Width = 425
  Height = 383
  BorderStyle = bsSizeToolWin
  Caption = 'PEDIDOS DO EDITAL'
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
    Width = 417
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSPL: TDBNavigator
      Left = 0
      Top = 0
      Width = 417
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSPEDIDOSEDITAL
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
    Width = 417
    Height = 311
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 417
      Height = 311
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBLKETAPROC: TLabel
        Left = 8
        Top = 48
        Width = 88
        Height = 13
        Caption = 'Processo do Edital'
        FocusControl = DBCBLKETAPROC
      end
      object Label1: TLabel
        Left = 8
        Top = 96
        Width = 33
        Height = 13
        Caption = 'Pedido'
        FocusControl = DBLKPDCDOCM
      end
      object DBGRDSPL: TDBGrid
        Left = 0
        Top = 168
        Width = 417
        Height = 143
        Align = alBottom
        DataSource = DMSILIC_.DSPEDIDOSEDITAL
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
            FieldName = 'PLNCGET'
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLNCGPE'
            Width = 228
            Visible = True
          end>
      end
      object DBCBLKETAPROC: TDBLookupComboBox
        Left = 8
        Top = 64
        Width = 401
        Height = 21
        KeyField = 'ETNCODG'
        ListField = 'ETAPROC'
        ListSource = DMSILIC_.DSEDITAL
        TabOrder = 1
      end
      object DBLKPDCDOCM: TDBLookupComboBox
        Left = 8
        Top = 112
        Width = 404
        Height = 21
        DataField = 'LKPDCDOCM'
        DataSource = DMSILIC_.DSPEDIDOSEDITAL
        TabOrder = 2
      end
    end
  end
end
