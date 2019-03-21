object Dm: TDm
  OldCreateOrder = False
  Height = 150
  Width = 215
  object TheosConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Theos')
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    LoginPrompt = False
    Left = 53
    Top = 11
  end
end
