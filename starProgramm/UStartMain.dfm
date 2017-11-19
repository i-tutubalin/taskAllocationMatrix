object FormStartMain: TFormStartMain
  Left = 0
  Top = 0
  Caption = #1042#1086#1081#1076#1080#1090#1077' '#1074' '#1089#1080#1089#1090#1077#1084#1091
  ClientHeight = 220
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 23
  object LbReadPassword: TLabel
    Left = 100
    Top = 19
    Width = 215
    Height = 23
    Alignment = taCenter
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1083#1086#1075#1080#1085' '#1080' '#1087#1072#1088#1086#1083#1100
  end
  object EditReadPassword: TEdit
    Left = 100
    Top = 85
    Width = 250
    Height = 31
    TabOrder = 0
    OnKeyPress = EditReadPasswordKeyPress
  end
  object EditReadLogin: TEdit
    Left = 100
    Top = 50
    Width = 250
    Height = 31
    Alignment = taCenter
    TabOrder = 1
    OnKeyPress = EditReadLoginKeyPress
  end
  object DBCBReadLogin: TDBComboBox
    Left = 1
    Top = 48
    Width = 73
    Height = 31
    DataField = 'login'
    DataSource = ModuleDBControl.DSDev
    TabOrder = 2
    Visible = False
  end
  object DBCBReadPassword: TDBComboBox
    Left = 1
    Top = 85
    Width = 73
    Height = 31
    DataField = 'password'
    DataSource = ModuleDBControl.DSDev
    TabOrder = 3
    Visible = False
  end
  object cxBtReadPassword: TcxButton
    Left = 100
    Top = 122
    Width = 250
    Height = 35
    Caption = #1042#1086#1081#1090#1080
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    OptionsImage.ImageIndex = 0
    OptionsImage.Images = ModuleImg.ImageListCommon
    TabOrder = 4
    OnClick = cxBtReadPasswordClick
  end
end
