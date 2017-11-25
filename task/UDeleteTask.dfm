object FormDeleteTask: TFormDeleteTask
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1076#1072#1085#1080#1077
  ClientHeight = 43
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 346
    Height = 43
    Align = alClient
    TabOrder = 0
    object LbReadPassworld: TLabel
      Left = 1
      Top = 1
      Width = 344
      Height = 19
      Align = alTop
      Alignment = taCenter
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 116
    end
    object EditReadPassword: TEdit
      Left = 1
      Top = 20
      Width = 272
      Height = 22
      Align = alLeft
      TabOrder = 0
      Text = 'EditReadPassword'
      OnKeyPress = EditReadPasswordKeyPress
      ExplicitHeight = 21
    end
    object cxBtReadPassword: TcxButton
      Left = 270
      Top = 20
      Width = 75
      Height = 22
      Align = alRight
      Caption = #1091#1076#1072#1083#1080#1090#1100
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = ModuleImg.ImageListCommon
      TabOrder = 1
      OnClick = cxBtReadPasswordClick
    end
  end
end
