object ModuleDBControl: TModuleDBControl
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 404
  Width = 538
  object DSDev: TDataSource
    DataSet = QueryDev
    Left = 16
    Top = 160
  end
  object ConDBNextDev: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 16
  end
  object QueryTask: TADOQuery
    Connection = ConDBNextDev
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select'
      '   t.*'
      'From'
      '   task t')
    Left = 80
    Top = 88
    object QueryTaskid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QueryTasknameTask: TWideStringField
      FieldName = 'nameTask'
      Size = 255
    end
    object QueryTasktask: TWideStringField
      FieldName = 'task'
      Size = 255
    end
    object QueryTaskstatus: TWideStringField
      FieldName = 'status'
      Size = 255
    end
    object QueryTaskidDev: TIntegerField
      FieldName = 'idDev'
    end
    object QueryTaskdateEnd: TDateTimeField
      FieldName = 'dateEnd'
    end
    object QueryTaskdateNext: TDateTimeField
      FieldName = 'dateNext'
    end
    object QueryTasktypeTask: TWideStringField
      FieldName = 'typeTask'
      Size = 255
    end
    object QueryTasknameDev: TWideStringField
      FieldName = 'nameDev'
      Size = 255
    end
    object QueryTaskappraisal: TIntegerField
      FieldName = 'appraisal'
    end
  end
  object DSTask: TDataSource
    DataSet = QueryTask
    Left = 80
    Top = 160
  end
  object QueryDev: TADOQuery
    Connection = ConDBNextDev
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select'
      '   d.*'
      'From'
      '   dev d')
    Left = 16
    Top = 88
    object QueryDevid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QueryDevname: TWideStringField
      FieldName = 'name'
      Size = 255
    end
    object QueryDevlogin: TWideStringField
      FieldName = 'login'
      Size = 255
    end
    object QueryDevpassword: TWideStringField
      FieldName = 'password'
      Size = 255
    end
    object QueryDevavatar: TWideStringField
      FieldName = 'avatar'
      Size = 255
    end
  end
end
