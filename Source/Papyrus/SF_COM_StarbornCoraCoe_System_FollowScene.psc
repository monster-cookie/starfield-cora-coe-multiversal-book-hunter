ScriptName SF_COM_StarbornCoraCoe_System_FollowScene Extends Scene Const hidden

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
Function Fragment_Phase_02_End()
  COM_CompanionQuestScript myQuest = Self.GetOwningQuest() as COM_CompanionQuestScript
  myQuest.FollowSceneEnded()
EndFunction
