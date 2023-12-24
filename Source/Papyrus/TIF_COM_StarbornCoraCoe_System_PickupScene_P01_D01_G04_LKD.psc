ScriptName TIF_COM_StarbornCoraCoe_System_PickupScene_P01_D01_G04_LKD Extends TopicInfo Const hidden

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property Venpi_DebugEnabled Auto Const Mandatory
String Property Venpi_ModName="CoraCoeMultiversalBookHunter" Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Fragments
;;;
Function Fragment_Begin(ObjectReference akSpeakerRef)
  Actor speaker = akSpeakerRef as Actor
  COM_CompanionQuestScript myQuest = Self.GetOwningQuest() as COM_CompanionQuestScript
  myQuest.PersonalQuestReminder()
EndFunction
