object FCD_: TFCD_
  Left = 444
  Top = 194
  Width = 518
  Height = 414
  BorderStyle = bsSizeToolWin
  Caption = 'CIDADE'
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
    Width = 510
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSCD: TDBNavigator
      Left = 0
      Top = 0
      Width = 510
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSCIDADE
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
      BeforeAction = DBNVDSCDBeforeAction
      OnClick = DBNVDSCDClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 510
    Height = 342
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 510
      Height = 342
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBCDNCODG: TLabel
        Left = 8
        Top = 48
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDCDNCODG
      end
      object LBCDCDESC: TLabel
        Left = 8
        Top = 88
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDCDCDESC
      end
      object LBLKESCDESC: TLabel
        Left = 9
        Top = 8
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object DBGRDSCD: TDBGrid
        Left = 0
        Top = 146
        Width = 510
        Height = 196
        Align = alBottom
        DataSource = DMSILIC_.DSCIDADE
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
            FieldName = 'CDNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDCDESC'
            Visible = True
          end>
      end
      object DBEDCDNCODG: TDBEdit
        Left = 8
        Top = 64
        Width = 105
        Height = 21
        DataField = 'CDNCODG'
        DataSource = DMSILIC_.DSCIDADE
        TabOrder = 1
      end
      object DBEDCDCDESC: TDBEdit
        Left = 8
        Top = 104
        Width = 478
        Height = 21
        DataField = 'CDCDESC'
        DataSource = DMSILIC_.DSCIDADE
        TabOrder = 2
      end
      object DBCBLKESCDESC: TDBLookupComboBox
        Left = 8
        Top = 24
        Width = 479
        Height = 21
        KeyField = 'ESCUF'
        ListField = 'ESCDESC'
        ListSource = DMSILIC_.DSESTADO
        TabOrder = 3
      end
    end
  end
end
