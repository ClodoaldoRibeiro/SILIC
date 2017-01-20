object FED_: TFED_
  Left = 509
  Top = 54
  BorderStyle = bsNone
  Caption = 'ENDERE'#199'O'
  ClientHeight = 532
  ClientWidth = 481
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
    Width = 481
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSED: TDBNavigator
      Left = 0
      Top = 0
      Width = 481
      Height = 25
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSENDERECO
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
    Width = 481
    Height = 491
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 481
      Height = 491
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 0
        Width = 42
        Height = 13
        Caption = 'Entidade'
        FocusControl = DBEDEDNCODG
      end
      object LBEDCDESC: TLabel
        Left = 16
        Top = 80
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEDEDCDESC
      end
      object LBEDCNUMR: TLabel
        Left = 16
        Top = 120
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEDEDCNUMR
      end
      object LBEDCOBS: TLabel
        Left = 16
        Top = 160
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
        FocusControl = DBEDEDCOBS
      end
      object LBEDMOBS: TLabel
        Left = 16
        Top = 200
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
        FocusControl = DBEDEDMOBS
      end
      object Label6: TLabel
        Left = 16
        Top = 240
        Width = 21
        Height = 13
        Caption = 'CEP'
        FocusControl = DBLookupComboBox2
      end
      object LBEDNCODG: TLabel
        Left = 16
        Top = 40
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDEDNCODG
      end
      object DBGRDSED: TDBGrid
        Left = 0
        Top = 303
        Width = 481
        Height = 188
        Align = alBottom
        DataSource = DMSILIC_.DSENDERECO
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
            FieldName = 'EDNCGEN'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDNCODG'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDCDESC'
            Width = 234
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDCNUMR'
            Visible = True
          end>
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 16
        Width = 241
        Height = 21
        KeyField = 'ENNCGEN'
        ListField = 'ENCDESC'
        ListSource = DMSILIC_.DSENTIDADE
        TabOrder = 1
      end
      object DBEDEDNCODG: TDBEdit
        Left = 16
        Top = 56
        Width = 134
        Height = 21
        DataField = 'EDNCODG'
        DataSource = DMSILIC_.DSENDERECO
        TabOrder = 2
      end
      object DBEDEDCDESC: TDBEdit
        Left = 16
        Top = 96
        Width = 394
        Height = 21
        DataField = 'EDCDESC'
        DataSource = DMSILIC_.DSENDERECO
        TabOrder = 3
      end
      object DBEDEDCNUMR: TDBEdit
        Left = 16
        Top = 136
        Width = 134
        Height = 21
        DataField = 'EDCNUMR'
        DataSource = DMSILIC_.DSENDERECO
        TabOrder = 4
      end
      object DBEDEDCOBS: TDBEdit
        Left = 16
        Top = 176
        Width = 394
        Height = 21
        DataField = 'EDCOBS'
        DataSource = DMSILIC_.DSENDERECO
        TabOrder = 5
      end
      object DBEDEDMOBS: TDBEdit
        Left = 16
        Top = 216
        Width = 394
        Height = 21
        DataField = 'EDMOBS'
        DataSource = DMSILIC_.DSENDERECO
        TabOrder = 6
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 16
        Top = 256
        Width = 404
        Height = 21
        DataField = 'LKEDCCEP'
        DataSource = DMSILIC_.DSENDERECO
        TabOrder = 7
      end
    end
  end
end
