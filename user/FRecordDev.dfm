object FrameRecordDev: TFrameRecordDev
  Left = 0
  Top = 0
  Width = 1200
  Height = 150
  TabOrder = 0
  object DBGridDev: TDBGrid
    Left = 0
    Top = 0
    Width = 1200
    Height = 150
    Align = alClient
    Ctl3D = False
    DataSource = ModuleDBControl.DSDev
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = [toPressAndHold]
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
        Width = 150
        Visible = True
      end>
  end
end
