object FrameMainStatist: TFrameMainStatist
  Left = 0
  Top = 0
  Width = 895
  Height = 671
  TabOrder = 0
  object DBChartStatistTask: TDBChart
    Left = 560
    Top = 0
    Width = 316
    Height = 290
    Title.Text.Strings = (
      'TDBChart')
    View3D = False
    TabOrder = 0
    Visible = False
    object Series1: TGanttSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      DataSource = ModuleDBControl.QueryTask
      Title = 'Revision&Date'
      XLabelsSource = 'id'
      ClickableLine = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.Name = 'Start'
      XValues.Order = loAscending
      XValues.ValueSource = 'dateNext'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'id'
      StartValues.Name = 'Start'
      StartValues.Order = loAscending
      StartValues.ValueSource = 'dateNext'
      EndValues.Name = 'End'
      EndValues.Order = loNone
      EndValues.ValueSource = 'dateEnd'
      NextTask.Name = 'NextTask'
      NextTask.Order = loNone
    end
  end
  object DBChartStatistAppraisal: TDBChart
    Left = 238
    Top = 0
    Width = 316
    Height = 290
    Title.Text.Strings = (
      'TDBChart')
    View3D = False
    TabOrder = 1
    Visible = False
    object Series2: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      DataSource = ModuleDBControl.QueryTask
      XLabelsSource = 'id'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'dateEnd'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'appraisal'
      object TeeFunction1: TCustomTeeFunction
        Period = 1.000000000000000000
        NumPoints = 100
      end
    end
  end
  object PanelNoChart: TPanel
    Left = 0
    Top = 0
    Width = 240
    Height = 671
    Align = alLeft
    Caption = 'PanelNoChart'
    TabOrder = 2
    object cxRGSwithChart: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1074#1080#1076' '#1075#1088#1072#1092#1080#1082#1072
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 0
      Height = 105
      Width = 238
      object cxRBStatistTask: TcxRadioButton
        Left = 16
        Top = 48
        Width = 273
        Height = 17
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1075#1088#1072#1092#1080#1082' '#1079#1072#1076#1072#1085#1080#1081
        TabOrder = 0
        OnClick = cxRBStatistTaskClick
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
      end
      object cxRBStatistAppraisal: TcxRadioButton
        Left = 16
        Top = 25
        Width = 273
        Height = 17
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1075#1088#1072#1092#1080#1082' '#1086#1094#1077#1085#1082#1080
        TabOrder = 1
        OnClick = cxRBStatistAppraisalClick
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
      end
    end
    inline FrameRecordDev: TFrameRecordDev
      Left = 1
      Top = 106
      Width = 240
      Height = 564
      Align = alLeft
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 106
      ExplicitWidth = 240
      ExplicitHeight = 564
      inherited DBGridDev: TDBGrid
        Width = 240
        Height = 564
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Title.Caption = #1085#1086#1084#1077#1088
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1048#1084#1103
            Width = 100
            Visible = True
          end>
      end
    end
  end
end
