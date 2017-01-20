object FEE_: TFEE_
  Left = 61
  Top = 167
  Width = 450
  Height = 413
  BorderStyle = bsSizeToolWin
  Caption = 'ENTIDADES DO EDITAL'
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
    Width = 442
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSEE: TDBNavigator
      Left = 0
      Top = 0
      Width = 442
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSENTIDADE_EDITAL
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
    Width = 442
    Height = 341
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 442
      Height = 341
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBLKETAPROC: TLabel
        Left = 8
        Top = 16
        Width = 91
        Height = 13
        Caption = 'Processo do Edittal'
      end
      object LBEENCODG: TLabel
        Left = 8
        Top = 56
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDEENCODG
      end
      object LBLKENCDESC: TLabel
        Left = 8
        Top = 96
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
        FocusControl = DBLKENCDESC
      end
      object DBGGDSEE: TDBGrid
        Left = 0
        Top = 153
        Width = 442
        Height = 188
        Align = alBottom
        DataSource = DMSILIC_.DSENTIDADE_EDITAL
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
            FieldName = 'EENCODG'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EENCGET'
            Width = 132
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EENCGEN'
            Width = 157
            Visible = True
          end>
      end
      object DBEDEENCODG: TDBEdit
        Left = 8
        Top = 72
        Width = 134
        Height = 21
        DataField = 'EENCODG'
        DataSource = DMSILIC_.DSENTIDADE_EDITAL
        TabOrder = 1
      end
      object DBLKETAPROC: TDBLookupComboBox
        Left = 8
        Top = 32
        Width = 145
        Height = 21
        KeyField = 'ETNCODG'
        ListField = 'ETAPROC'
        ListSource = DMSILIC_.DSEDITAL
        TabOrder = 2
      end
      object DBLKENCDESC: TDBLookupComboBox
        Left = 8
        Top = 112
        Width = 404
        Height = 21
        DataField = 'LKENCDESC'
        DataSource = DMSILIC_.DSENTIDADE_EDITAL
        TabOrder = 3
      end
    end
  end
end
