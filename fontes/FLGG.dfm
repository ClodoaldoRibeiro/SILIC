object FLGG_: TFLGG_
  Left = 467
  Top = 105
  Width = 535
  Height = 417
  BorderStyle = bsSizeToolWin
  Caption = 'LOGRADOURO POR TIPO DE LOGRADOURO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 527
    Height = 386
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'Logradouro por tipo de logradouro')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    Align = alClient
    TabOrder = 0
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      DataSource = DMSILIC_.QRLogradouroPorTipo
      SeriesColor = clRed
      XLabelsSource = 'TLCDESC'
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
      PieValues.ValueSource = 'COUNT OF LGCCEP'
    end
  end
end
