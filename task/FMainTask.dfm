object FrameMainTask: TFrameMainTask
  Left = 0
  Top = 0
  Width = 1042
  Height = 667
  PopupMenu = PMMain
  TabOrder = 0
  object Splitter2: TSplitter
    Left = 0
    Top = 255
    Width = 1042
    Height = 5
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 90
  end
  object PanelFun: TPanel
    Left = 0
    Top = 0
    Width = 1042
    Height = 105
    Align = alTop
    TabOrder = 0
    object LbSortStatus: TLabel
      Left = 155
      Top = 5
      Width = 123
      Height = 13
      Caption = #1089#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1089#1090#1072#1090#1091#1089#1091
    end
    object CBSortStatus: TComboBox
      Left = 155
      Top = 25
      Width = 120
      Height = 22
      Style = csOwnerDrawVariable
      TabOrder = 0
      OnChange = CBSortStatusChange
      Items.Strings = (
        '-'
        #1085#1072#1079#1085#1072#1095#1077#1085#1086
        #1075#1086#1090#1086#1074#1086
        #1074' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1077
        #1090#1077#1089#1090)
    end
    object cxBtAddRecord: TcxButton
      Left = 1
      Top = 3
      Width = 145
      Height = 25
      Caption = #1076#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1076#1072#1085#1080#1077
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = ModuleImg.ImageListMainTask
      TabOrder = 1
      OnClick = cxBtAddRecordClick
    end
    object cxBtEditRecord: TcxButton
      Left = 1
      Top = 34
      Width = 145
      Height = 25
      Caption = #1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1076#1072#1085#1080#1077
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = ModuleImg.ImageListMainTask
      TabOrder = 2
      OnClick = cxBtEditRecordClick
    end
    object cxBtDeleteRecord: TcxButton
      Left = 1
      Top = 65
      Width = 145
      Height = 25
      Caption = #1091#1076#1072#1083#1080#1090#1100' '#1079#1072#1076#1072#1085#1080#1077
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = ModuleImg.ImageListMainTask
      TabOrder = 3
      OnClick = cxBtDeleteRecordClick
    end
  end
  object PanelDev: TPanel
    Left = 0
    Top = 105
    Width = 1042
    Height = 150
    Align = alTop
    TabOrder = 1
    inline FrameRecordDev: TFrameRecordDev
      Left = 1
      Top = 1
      Width = 1040
      Height = 148
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 1040
      ExplicitHeight = 148
      inherited DBGridDev: TDBGrid
        Width = 1040
        Height = 270
        Align = alTop
      end
    end
  end
  object PanelTask: TPanel
    Left = 0
    Top = 260
    Width = 1042
    Height = 407
    Align = alClient
    PopupMenu = PMPanelTask
    TabOrder = 2
    inline FrameRecordTask: TFrameRecordTask
      Left = 1
      Top = 1
      Width = 1040
      Height = 405
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 1040
      ExplicitHeight = 405
      inherited Splitter1: TSplitter
        Left = 767
        Height = 405
        ExplicitLeft = 757
        ExplicitTop = 0
        ExplicitHeight = 298
      end
      inherited DBGridTask: TDBGrid
        Width = 767
        Height = 405
        Touch.InteractiveGestures = [igZoom, igPan, igPressAndTap]
        Touch.ParentTabletOptions = False
      end
      inherited DBMemoTask: TDBMemo
        Left = 770
        Height = 405
        ExplicitLeft = 770
        ExplicitHeight = 405
      end
    end
  end
  object DBEditRelationsTableDevAndTask: TDBEdit
    Left = 64
    Top = 136
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = ModuleDBControl.DSDev
    TabOrder = 3
    Visible = False
    OnChange = DBEditRelationsTableDevAndTaskChange
  end
  object PMMain: TPopupMenu
    Images = ModuleImg.ImageListMainTask
    Left = 480
    Top = 8
    object refresh1: TMenuItem
      Caption = #1086#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 3
      OnClick = refreshClick
    end
  end
  object PMPanelTask: TPopupMenu
    Images = ModuleImg.ImageListMainTask
    Left = 424
    Top = 8
    object refresh2: TMenuItem
      Caption = #1086#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 3
      OnClick = refreshClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object addrecord2: TMenuItem
      Caption = #1076#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1076#1072#1085#1080#1077
      ImageIndex = 0
      OnClick = cxBtAddRecordClick
    end
    object editrecord2: TMenuItem
      Caption = #1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1076#1072#1085#1080#1077
      ImageIndex = 2
      OnClick = cxBtEditRecordClick
    end
    object deleterecord2: TMenuItem
      Caption = #1091#1076#1072#1083#1080#1090#1100' '#1079#1072#1076#1072#1085#1080#1077
      ImageIndex = 1
      OnClick = cxBtDeleteRecordClick
    end
  end
end
