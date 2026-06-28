ScriptName AP_QF_LO_AIOCompatibilityPatc_0900AB86 Extends Quest hidden

;-- Variables ---------------------------------------

;-- Properties --------------------------------------
ReferenceAlias Property Alias_OrcArcher01 Auto
ReferenceAlias Property Alias_OrcArcher02 Auto
ReferenceAlias Property Alias_OrcFarmer Auto
ReferenceAlias Property Alias_OrcGuard01 Auto
ReferenceAlias Property Alias_OrcGuard02 Auto
ReferenceAlias Property Alias_OrcGuard03 Auto
ReferenceAlias Property Alias_OrcGuardFemale01 Auto
ReferenceAlias Property Alias_OrcGuardFemale02 Auto
ReferenceAlias Property Alias_OrcMage Auto
ReferenceAlias Property Alias_OrcMerchant Auto
ReferenceAlias Property Alias_OrcMiner Auto

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

Function Fragment_0()
  Alias_OrcMerchant.GetRef().Disable(False) ; #DEBUG_LINE_NO:65
  Alias_OrcArcher01.GetRef().Disable(False) ; #DEBUG_LINE_NO:66
  Alias_OrcArcher02.GetRef().Disable(False) ; #DEBUG_LINE_NO:67
  Alias_OrcGuard01.GetRef().Disable(False) ; #DEBUG_LINE_NO:69
  Alias_OrcGuard02.GetRef().Disable(False) ; #DEBUG_LINE_NO:70
  Alias_OrcGuard03.GetRef().Disable(False) ; #DEBUG_LINE_NO:71
  Alias_OrcMage.GetRef().Disable(False) ; #DEBUG_LINE_NO:73
  Alias_OrcMiner.GetRef().Disable(False) ; #DEBUG_LINE_NO:74
  Alias_OrcFarmer.GetRef().Disable(False) ; #DEBUG_LINE_NO:75
  Alias_OrcGuardFemale01.GetRef().Disable(False) ; #DEBUG_LINE_NO:77
  Alias_OrcGuardFemale02.GetRef().Disable(False) ; #DEBUG_LINE_NO:78
EndFunction
