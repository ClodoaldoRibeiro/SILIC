object FMD_: TFMD_
  Left = 386
  Top = 163
  Width = 436
  Height = 412
  BorderStyle = bsSizeToolWin
  Caption = 'MODELO'
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
    Width = 428
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSMD: TDBNavigator
      Left = 0
      Top = 0
      Width = 428
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSMODELO
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
    Width = 428
    Height = 340
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 428
      Height = 340
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBMDCCGMC: TLabel
        Left = 8
        Top = 8
        Width = 30
        Height = 13
        Caption = 'Marca'
      end
      object LBMDNCODG: TLabel
        Left = 8
        Top = 48
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDMDNCODG
      end
      object LBMDCDESC: TLabel
        Left = 8
        Top = 88
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDMDCDESC
      end
      object DBGRDSMD: TDBGrid
        Left = 0
        Top = 152
        Width = 428
        Height = 188
        Align = alBottom
        DataSource = DMSILIC_.DSMODELO
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
            FieldName = 'MDNCODG'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MDCDESC'
            Width = 297
            Visible = True
          end>
      end
      object DBEDMDNCODG: TDBEdit
        Left = 8
        Top = 64
        Width = 134
        Height = 21
        DataField = 'MDNCODG'
        DataSource = DMSILIC_.DSMODELO
        TabOrder = 1
      end
      object DBEDMDCDESC: TDBEdit
        Left = 8
        Top = 104
        Width = 394
        Height = 21
        DataField = 'MDCDESC'
        DataSource = DMSILIC_.DSMODELO
        TabOrder = 2
      end
      object DBCBLKMCCDESC: TDBLookupComboBox
        Left = 8
        Top = 24
        Width = 201
        Height = 21
        KeyField = 'MCNCODG'
        ListField = 'MCCDESC'
        ListSource = DMSILIC_.DSMARCA
        TabOrder = 3
      end
    end
  end
end
