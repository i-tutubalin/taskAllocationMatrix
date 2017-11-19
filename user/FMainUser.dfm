object FrameMainUser: TFrameMainUser
  Left = 0
  Top = 0
  Width = 1040
  Height = 640
  TabOrder = 0
  object LbName: TLabel
    Left = 203
    Top = 24
    Width = 19
    Height = 13
    Caption = #1048#1084#1103
  end
  object LbLogin: TLabel
    Left = 207
    Top = 70
    Width = 30
    Height = 13
    Caption = #1051#1086#1075#1080#1085
  end
  object LbIDUser: TLabel
    Left = 278
    Top = 5
    Width = 44
    Height = 13
    Caption = 'LbIDUser'
    Visible = False
  end
  object LbPasswordUser: TLabel
    Left = 278
    Top = 24
    Width = 79
    Height = 13
    Caption = 'LbPasswordUser'
    Visible = False
  end
  object LbNewPassword: TLabel
    Left = 14
    Top = 213
    Width = 72
    Height = 13
    Caption = #1053#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100
  end
  object LbRepeatNewPassword: TLabel
    Left = 14
    Top = 266
    Width = 129
    Height = 13
    Caption = #1055#1086#1074#1090#1086#1088#1080#1090#1077' '#1085#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100
  end
  object LbOldPassword: TLabel
    Left = 12
    Top = 320
    Width = 122
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1090#1072#1088#1099#1081' '#1087#1072#1088#1086#1083#1100
  end
  object LbIncorrectPassword: TLabel
    Left = 371
    Top = 342
    Width = 117
    Height = 13
    Caption = #1053#1077' '#1087#1088#1072#1074#1080#1083#1100#1085#1099#1081' '#1087#1072#1088#1086#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LbIncorrectRepeatPassword: TLabel
    Left = 371
    Top = 288
    Width = 111
    Height = 13
    Caption = #1087#1072#1088#1086#1083#1080' '#1085#1077' '#1089#1086#1074#1087#1072#1076#1072#1102#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object ImageAvatarUser: TImage
    Left = 14
    Top = 5
    Width = 183
    Height = 202
    Proportional = True
    Stretch = True
  end
  object LbPathAvatarUser: TLabel
    Left = 203
    Top = 125
    Width = 85
    Height = 13
    Caption = #1055#1091#1090#1100' '#1082' '#1072#1074#1072#1090#1072#1088#1082#1077
  end
  object EditDev: TEdit
    Left = 203
    Top = 43
    Width = 154
    Height = 21
    TabOrder = 0
    Text = 'EditDev'
  end
  object EditLogin: TEdit
    Left = 205
    Top = 89
    Width = 152
    Height = 21
    TabOrder = 1
    Text = 'EditLogin'
  end
  object cxBtEditInfoUser: TcxButton
    Left = 12
    Top = 375
    Width = 345
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    OptionsImage.ImageIndex = 0
    OptionsImage.Images = ModuleImg.ImageListCommon
    TabOrder = 2
    OnClick = cxBtEditInfoUserClick
  end
  object EditNewPassword: TEdit
    Left = 14
    Top = 232
    Width = 343
    Height = 21
    TabOrder = 3
  end
  object EditRepeatNewPassword: TEdit
    Left = 16
    Top = 285
    Width = 341
    Height = 21
    TabOrder = 4
  end
  object EditOldPassword: TEdit
    Left = 12
    Top = 339
    Width = 345
    Height = 21
    TabOrder = 5
  end
  object cxMemoPathAvatarUser: TcxMemo
    Left = 203
    Top = 144
    Lines.Strings = (
      'cxMemoPathAvatarUser')
    TabOrder = 6
    Height = 25
    Width = 154
  end
  object cxBtPathAvatarUser: TcxButton
    Left = 203
    Top = 183
    Width = 152
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1072#1074#1072#1090#1072#1088#1082#1091
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    TabOrder = 7
    OnClick = cxBtPathAvatarUserClick
  end
  object OpenPictureDialogAvatar: TOpenPictureDialog
    Left = 516
    Top = 90
  end
end
