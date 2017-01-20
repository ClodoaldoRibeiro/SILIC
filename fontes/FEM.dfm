object FEM_: TFEM_
  Left = 386
  Top = 163
  BorderStyle = bsNone
  Caption = 'EMAIL'
  ClientHeight = 381
  ClientWidth = 459
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
    Width = 459
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSEM: TDBNavigator
      Left = 0
      Top = 0
      Width = 459
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSEMAIL
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
    Width = 459
    Height = 340
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 459
      Height = 340
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBEMNCGENQ: TLabel
        Left = 8
        Top = 16
        Width = 42
        Height = 13
        Caption = 'Entidade'
        FocusControl = DBCBLKEMNCGENQ
      end
      object LBEMNCODG: TLabel
        Left = 8
        Top = 56
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDEMNCODG
      end
      object Label3: TLabel
        Left = 8
        Top = 96
        Width = 25
        Height = 13
        Caption = 'Email'
        FocusControl = DBEDEMCDESC
      end
      object DBGGDSEM: TDBGrid
        Left = 0
        Top = 152
        Width = 459
        Height = 188
        Align = alBottom
        DataSource = DMSILIC_.DSEMAIL
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
            FieldName = 'EMNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMCDESC'
            Visible = True
          end>
      end
      object DBCBLKEMNCGENQ: TDBLookupComboBox
        Left = 8
        Top = 32
        Width = 404
        Height = 21
        KeyField = 'ENNCODG'
        ListField = 'ENCDESC'
        ListSource = DMSILIC_.DSENTIDADE
        TabOrder = 1
      end
      object DBEDEMNCODG: TDBEdit
        Left = 8
        Top = 72
        Width = 134
        Height = 21
        DataField = 'EMNCODG'
        DataSource = DMSILIC_.DSEMAIL
        TabOrder = 2
      end
      object DBEDEMCDESC: TDBEdit
        Left = 8
        Top = 112
        Width = 394
        Height = 21
        DataField = 'EMCDESC'
        DataSource = DMSILIC_.DSEMAIL
        TabOrder = 3
      end
    end
  end
end
