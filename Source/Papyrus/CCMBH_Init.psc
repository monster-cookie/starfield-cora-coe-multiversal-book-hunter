ScriptName CCMBH_Init extends Quest

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property Venpi_DebugEnabled Auto Const Mandatory
String Property Venpi_ModName="CoraCoeMultiversalBookHunter" Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties
;;;
Actor Property PlayerRef Auto Const Mandatory
ReferenceAlias Property Alias_StarbornCoraCoe Auto Const Mandatory
Quest Property SQ_Companions Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnQuestInit()
  VPI_Debug.DebugMessage(Venpi_ModName, "CCMBH_Init", "OnQuestInit", "OnQuestInit triggered.", 0, Venpi_DebugEnabled.GetValueInt())
  PromoteNPCStarbornCoraCoeToCompanion()
EndEvent

Function PromoteNPCStarbornCoraCoeToCompanion()
  VPI_Debug.DebugMessage(Venpi_ModName, "CCMBH_Init", "PromoteNPCStarbornCoraCoeToCompanion", "Resetting StoryGates and Making Cora a Companion again.", 0, Venpi_DebugEnabled.GetValueInt())
  Actor StarbornCoraCoeREF = Alias_StarbornCoraCoe.GetActorRef()
  (SQ_Companions as SQ_CompanionsScript).SetRoleAvailable(StarbornCoraCoeREF, True)
  (StarbornCoraCoeREF as CompanionActorScript).AllowStoryGatesAndRestartTimer()
EndFunction