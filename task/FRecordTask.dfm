object FrameRecordTask: TFrameRecordTask
  Left = 0
  Top = 0
  Width = 1200
  Height = 400
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 927
    Top = 0
    Height = 400
    Align = alRight
    ExplicitLeft = 824
    ExplicitTop = 144
    ExplicitHeight = 100
  end
  object DBGridTask: TDBGrid
    Left = 0
    Top = 0
    Width = 927
    Height = 400
    Align = alClient
    Color = clBtnFace
    Ctl3D = False
    DataSource = ModuleDBControl.DSTask
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridTaskDblClick
    OnTitleClick = DBGridTaskTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = #1088#1077#1074#1080#1079#1080#1103
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nameTask'
        Title.Caption = #1048#1084#1103' '#1079#1072#1076#1072#1085#1080#1103
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'typeTask'
        Title.Caption = #1058#1080#1087' '#1079#1072#1076#1072#1085#1080#1103
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dateNext'
        Title.Caption = #1085#1072#1095#1072#1083#1086
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dateEnd'
        Title.Caption = #1086#1082#1086#1085#1095#1072#1085#1080#1077
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nameDev'
        Title.Caption = #1085#1072#1079'. '#1088#1072#1079#1088'.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'appraisal'
        Title.Caption = #1086#1094#1077#1085#1082#1072
        Width = 70
        Visible = True
      end>
  end
  object DBMemoTask: TDBMemo
    Left = 930
    Top = 0
    Width = 270
    Height = 400
    Align = alRight
    DataField = 'task'
    DataSource = ModuleDBControl.DSTask
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
end
