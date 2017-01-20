object FEN_: TFEN_
  Left = 315
  Top = 24
  BorderStyle = bsNone
  Caption = 'ENTIDADE'
  ClientHeight = 617
  ClientWidth = 973
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 973
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBNVDSER: TDBNavigator
      Left = 0
      Top = 0
      Width = 369
      Height = 41
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSENTIDADERELACAO
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
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
    object DBNavigator2: TDBNavigator
      Left = 369
      Top = 0
      Width = 584
      Height = 41
      Cursor = crHandPoint
      DataSource = DMSILIC_.DSENTIDADE
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alLeft
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
      TabOrder = 1
      BeforeAction = DBNavigator2BeforeAction
      OnClick = DBNavigator2Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 973
    Height = 576
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 0
      Width = 973
      Height = 576
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      TabOrder = 0
      object LBENNCODG: TLabel
        Left = 16
        Top = 24
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEDENNCODG
      end
      object Label3: TLabel
        Left = 520
        Top = 16
        Width = 21
        Height = 13
        Caption = 'Foto'
        FocusControl = DBIMENOFOTO
      end
      object LBENDDNAS: TLabel
        Left = 17
        Top = 105
        Width = 95
        Height = 13
        Caption = 'Data de nascimento'
        FocusControl = DBEDENDDNAS
      end
      object LBENCDESC: TLabel
        Left = 16
        Top = 66
        Width = 28
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEDENCDESC
      end
      object Label12: TLabel
        Left = 768
        Top = 28
        Width = 83
        Height = 13
        Caption = 'Data de Cadastro'
      end
      object Label13: TLabel
        Left = 768
        Top = 65
        Width = 83
        Height = 13
        Caption = 'Hora de Cadastro'
      end
      object Label16: TLabel
        Left = 704
        Top = 112
        Width = 71
        Height = 13
        Caption = 'Chefe do Setor'
      end
      object DBGRDSEN: TDBGrid
        Left = 0
        Top = 407
        Width = 973
        Height = 169
        Align = alBottom
        DataSource = DMSILIC_.DSENTIDADE
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
            FieldName = 'ENNCODG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENCDESC'
            Width = 491
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENCTIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDCADT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENHCADT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENCDCEN'
            Width = 179
            Visible = True
          end>
      end
      object DBEDENNCODG: TDBEdit
        Left = 16
        Top = 39
        Width = 134
        Height = 21
        DataField = 'ENNCODG'
        DataSource = DMSILIC_.DSENTIDADE
        Enabled = False
        TabOrder = 1
      end
      object DBRGENCTIPO: TDBRadioGroup
        Left = 16
        Top = 151
        Width = 217
        Height = 36
        Caption = 'Tipo'
        Columns = 2
        DataField = 'ENCTIPO'
        DataSource = DMSILIC_.DSENTIDADE
        Items.Strings = (
          'Pessoa F'#237'sica'
          'Pessoa Jur'#237'dica')
        TabOrder = 2
        Values.Strings = (
          'F'
          'J')
        OnChange = DBRGENCTIPOChange
      end
      object DBIMENOFOTO: TDBImage
        Left = 519
        Top = 31
        Width = 122
        Height = 145
        DataField = 'ENOFOTO'
        DataSource = DMSILIC_.DSENTIDADE
        TabOrder = 3
      end
      object DBEDENDDNAS: TDBEdit
        Left = 16
        Top = 120
        Width = 126
        Height = 21
        DataField = 'ENDDNAS'
        DataSource = DMSILIC_.DSENTIDADE
        MaxLength = 10
        TabOrder = 4
      end
      object PNLCPF: TPanel
        Left = 8
        Top = 200
        Width = 417
        Height = 177
        BevelOuter = bvNone
        TabOrder = 5
        object LBENCAPEL: TLabel
          Left = 8
          Top = 11
          Width = 35
          Height = 13
          Caption = 'Apelido'
          FocusControl = DBEDENCAPEL
        end
        object LBENCCPF: TLabel
          Left = 8
          Top = 56
          Width = 20
          Height = 13
          Caption = 'CPF'
          FocusControl = DBEDENCCPF
        end
        object LBLKENNCGEC: TLabel
          Left = 8
          Top = 132
          Width = 54
          Height = 13
          Caption = 'Estado civil'
          FocusControl = DBCBLKENNCGEC
        end
        object DBEDENCAPEL: TDBEdit
          Left = 7
          Top = 28
          Width = 394
          Height = 21
          DataField = 'ENCAPEL'
          DataSource = DMSILIC_.DSENTIDADE
          TabOrder = 0
        end
        object DBRGENCSEXO: TDBRadioGroup
          Left = 8
          Top = 92
          Width = 193
          Height = 35
          Caption = 'Sexo'
          Columns = 2
          DataField = 'ENCSEXO'
          DataSource = DMSILIC_.DSENTIDADE
          Items.Strings = (
            'Masculino'
            'Feminino')
          TabOrder = 1
          Values.Strings = (
            'M'
            'F')
        end
        object DBEDENCCPF: TDBEdit
          Left = 8
          Top = 69
          Width = 147
          Height = 21
          DataField = 'ENCCPF'
          DataSource = DMSILIC_.DSENTIDADE
          MaxLength = 14
          TabOrder = 2
        end
        object DBCBLKENNCGEC: TDBLookupComboBox
          Left = 9
          Top = 148
          Width = 404
          Height = 21
          DataField = 'LKENNCGEC'
          DataSource = DMSILIC_.DSENTIDADE
          TabOrder = 3
        end
      end
      object PNLCNPJ: TPanel
        Left = 508
        Top = 222
        Width = 401
        Height = 174
        BevelOuter = bvNone
        TabOrder = 6
        object Label7: TLabel
          Left = 7
          Top = 4
          Width = 27
          Height = 13
          Caption = 'CNPJ'
        end
        object LBENCRZSC: TLabel
          Left = 7
          Top = 44
          Width = 61
          Height = 13
          Caption = 'Raz'#227'o social'
        end
        object LBENCIE: TLabel
          Left = 8
          Top = 86
          Width = 87
          Height = 13
          Caption = 'Inscri'#231#227'o Estadual'
        end
        object LBENCIM: TLabel
          Left = 8
          Top = 126
          Width = 90
          Height = 13
          Caption = 'Inscri'#231#227'o municipal'
        end
        object DBEDENCCNPJ: TDBEdit
          Left = 8
          Top = 16
          Width = 184
          Height = 21
          DataField = 'ENCCNPJ'
          DataSource = DMSILIC_.DSENTIDADE
          MaxLength = 18
          TabOrder = 0
        end
        object DBEDENCRZSC: TDBEdit
          Left = 8
          Top = 60
          Width = 385
          Height = 21
          DataField = 'ENCRZSC'
          DataSource = DMSILIC_.DSENTIDADE
          TabOrder = 1
        end
        object DBEDENCIE: TDBEdit
          Left = 9
          Top = 101
          Width = 199
          Height = 21
          DataField = 'ENCIE'
          DataSource = DMSILIC_.DSENTIDADE
          TabOrder = 2
        end
        object DBEDENCIM: TDBEdit
          Left = 9
          Top = 142
          Width = 197
          Height = 21
          DataField = 'ENCIM'
          DataSource = DMSILIC_.DSENTIDADE
          MaxLength = 14
          TabOrder = 3
        end
      end
      object DBEDENCDESC: TDBEdit
        Left = 16
        Top = 81
        Width = 401
        Height = 21
        DataField = 'ENCDESC'
        DataSource = DMSILIC_.DSENTIDADE
        TabOrder = 7
      end
      object BTFOTO: TButton
        Left = 560
        Top = 176
        Width = 41
        Height = 33
        Hint = 'Inserir Foto'
        Caption = 'J'
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Wingdings'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = BTFOTOClick
      end
      object DBEDENDCADT: TDBEdit
        Left = 768
        Top = 41
        Width = 113
        Height = 21
        DataField = 'ENDCADT'
        DataSource = DMSILIC_.DSENTIDADE
        MaxLength = 10
        TabOrder = 9
      end
      object DBEDENHCADT: TDBEdit
        Left = 768
        Top = 78
        Width = 113
        Height = 21
        DataField = 'ENHCADT'
        DataSource = DMSILIC_.DSENTIDADE
        MaxLength = 8
        TabOrder = 10
      end
      object DBLkCBENCDCEN: TDBLookupComboBox
        Left = 704
        Top = 125
        Width = 208
        Height = 21
        DataField = 'ENCDCEN'
        DataSource = DMSILIC_.DSENTIDADE
        TabOrder = 11
      end
      object BTEMAIL: TButton
        Left = 248
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = BTEMAILClick
      end
      object BTCONTATO: TButton
        Left = 401
        Top = 32
        Width = 76
        Height = 25
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = BTCONTATOClick
      end
      object BTENDEREC: TButton
        Left = 325
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnClick = BTENDERECClick
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 648
    Top = 73
  end
end
