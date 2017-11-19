object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = #1052#1072#1090#1088#1080#1094#1072' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1086#1073#1103#1079#1072#1085#1085#1086#1089#1090#1077#1081
  ClientHeight = 800
  ClientWidth = 1234
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControlMainMenu: TcxPageControl
    Left = 0
    Top = 0
    Width = 1234
    Height = 800
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxStatist
    Properties.CustomButtons.Buttons = <>
    Properties.Images = ModuleImg.ImageListMainMenu
    Properties.Rotate = True
    Properties.TabPosition = tpLeft
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    ClientRectBottom = 794
    ClientRectLeft = 146
    ClientRectRight = 1228
    ClientRectTop = 2
    object cxMainTask: TcxTabSheet
      Caption = #1047#1072#1076#1072#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      OnShow = cxMainTaskShow
      inline FrameMainTask: TFrameMainTask
        Left = 0
        Top = 0
        Width = 1082
        Height = 792
        Align = alClient
        PopupMenu = FrameMainTask.PMMain
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 792
        inherited Splitter2: TSplitter
          Width = 1082
          ExplicitWidth = 1082
        end
        inherited PanelFun: TPanel
          Width = 1082
          ExplicitWidth = 1082
        end
        inherited PanelDev: TPanel
          Width = 1082
          ExplicitWidth = 1082
          inherited FrameRecordDev: TFrameRecordDev
            Width = 1080
            ExplicitWidth = 1080
            inherited DBGridDev: TDBGrid
              Width = 1080
            end
          end
        end
        inherited PanelTask: TPanel
          Width = 1082
          Height = 532
          ExplicitWidth = 1082
          ExplicitHeight = 532
          inherited FrameRecordTask: TFrameRecordTask
            Width = 1080
            Height = 530
            ExplicitWidth = 1080
            ExplicitHeight = 530
            inherited Splitter1: TSplitter
              Left = 807
              Height = 530
              ExplicitLeft = 807
              ExplicitHeight = 530
            end
            inherited DBGridTask: TDBGrid
              Width = 807
              Height = 530
            end
            inherited DBMemoTask: TDBMemo
              Left = 810
              Height = 530
              ExplicitLeft = 810
              ExplicitHeight = 530
            end
          end
        end
        inherited DBEditRelationsTableDevAndTask: TDBEdit
          Left = 16
          ExplicitLeft = 16
        end
      end
    end
    object cxUser: TcxTabSheet
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      Highlighted = True
      ImageIndex = 0
      OnShow = cxUserShow
      inline FrameMainUser: TFrameMainUser
        Left = 0
        Top = 0
        Width = 1082
        Height = 792
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 792
        inherited LbName: TLabel
          Width = 29
          Height = 19
          ExplicitWidth = 29
          ExplicitHeight = 19
        end
        inherited LbLogin: TLabel
          Width = 45
          Height = 19
          ExplicitWidth = 45
          ExplicitHeight = 19
        end
        inherited LbIDUser: TLabel
          Width = 66
          Height = 19
          ExplicitWidth = 66
          ExplicitHeight = 19
        end
        inherited LbPasswordUser: TLabel
          Width = 116
          Height = 19
          ExplicitWidth = 116
          ExplicitHeight = 19
        end
        inherited LbNewPassword: TLabel
          Width = 105
          Height = 19
          ExplicitWidth = 105
          ExplicitHeight = 19
        end
        inherited LbRepeatNewPassword: TLabel
          Width = 187
          Height = 19
          ExplicitWidth = 187
          ExplicitHeight = 19
        end
        inherited LbOldPassword: TLabel
          Width = 173
          Height = 19
          ExplicitWidth = 173
          ExplicitHeight = 19
        end
        inherited LbPathAvatarUser: TLabel
          Width = 118
          Height = 19
          ExplicitWidth = 118
          ExplicitHeight = 19
        end
        inherited EditDev: TEdit
          Height = 27
          ExplicitHeight = 27
        end
        inherited EditLogin: TEdit
          Height = 27
          ExplicitHeight = 27
        end
        inherited EditNewPassword: TEdit
          Height = 27
          ExplicitHeight = 27
        end
        inherited EditRepeatNewPassword: TEdit
          Height = 27
          ExplicitHeight = 27
        end
        inherited EditOldPassword: TEdit
          Height = 27
          ExplicitHeight = 27
        end
        inherited cxMemoPathAvatarUser: TcxMemo
          Lines.Strings = (
            'cxMemoPathAvatar'
            'User')
        end
      end
    end
    object cxStatist: TcxTabSheet
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      Highlighted = True
      ImageIndex = 1
      OnShow = cxStatistShow
      inline FrameMainStatist: TFrameMainStatist
        Left = 0
        Top = 0
        Width = 1082
        Height = 792
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 792
        inherited DBChartStatistTask: TDBChart
          Left = 739
          Height = 792
          ExplicitLeft = 739
          ExplicitHeight = 792
        end
        inherited DBChartStatistAppraisal: TDBChart
          Width = 499
          Height = 792
          ExplicitWidth = 499
          ExplicitHeight = 792
          inherited Series2: TLineSeries
            XLabelsSource = ''
          end
        end
        inherited PanelNoChart: TPanel
          Height = 792
          ExplicitHeight = 792
          inherited FrameRecordDev: TFrameRecordDev
            Height = 685
            ExplicitHeight = 685
            inherited DBGridDev: TDBGrid
              Height = 685
            end
          end
        end
      end
    end
    object cxAbout: TcxTabSheet
      Caption = #1054#1073' '#1072#1074#1090#1086#1088#1077
      ImageIndex = 3
      OnShow = cxAboutShow
      inline FrameMainAbout: TFrameMainAbout
        Left = 0
        Top = 0
        Width = 1082
        Height = 792
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1082
        ExplicitHeight = 792
        inherited LbLastName: TLabel
          Width = 142
          Height = 19
          Font.Height = -16
          ExplicitWidth = 142
          ExplicitHeight = 19
        end
        inherited LbFirstName: TLabel
          Width = 72
          Height = 19
          Font.Height = -16
          ExplicitWidth = 72
          ExplicitHeight = 19
        end
        inherited LbMiddelName: TLabel
          Width = 134
          Height = 19
          Font.Height = -16
          ExplicitWidth = 134
          ExplicitHeight = 19
        end
        inherited LbGroup: TLabel
          Width = 77
          Height = 19
          Font.Height = -16
          ExplicitWidth = 77
          ExplicitHeight = 19
        end
        inherited LbCompane: TLabel
          Width = 198
          Height = 19
          Font.Height = -16
          ExplicitWidth = 198
          ExplicitHeight = 19
        end
      end
    end
  end
end
