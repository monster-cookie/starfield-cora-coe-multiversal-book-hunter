ScriptName QF_COM_Companion_StarbornCoraCoe Extends Quest

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
ReferenceAlias Property Alias_CoraCoe Auto Const mandatory
ActorValue Property COM_Affinity Auto Const mandatory
Scene Property COM_StarbornCoraCoe_System_AngerScene Auto Const mandatory
Quest Property CCMBH_CoraTakesBooks Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Variables
;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Fragments
;;;
Function Fragment_Stage0002_Item00()
  VPI_Debug.DebugMessage(Venpi_ModName, "QF_COM_Companion_StarbornCoraCoe", "Fragment_Stage0002_Item00", "Stage 2 Index 0 fragment triggered. Setting Cora's base affinity to 100.", 0, Venpi_DebugEnabled.GetValueInt())
  Alias_CoraCoe.GetActorRef().SetValue(COM_Affinity, 100.0)
EndFunction

Function Fragment_Stage0035_Index00()
  VPI_Debug.DebugMessage(Venpi_ModName, "QF_COM_Companion_StarbornCoraCoe", "Fragment_Stage0035_Index00", "Stage 35 Index 0 fragment triggered. Unlocking Evil Player and Book Collecting topics.", 0, Venpi_DebugEnabled.GetValueInt())
  ;; NG+ conversation is complete
  Self.SetStage(40) ;; Unlock book collector topic
  Self.SetStage(50) ;; Unlock evil player topic
EndFunction

Function Fragment_Stage0040_Index00()
  VPI_Debug.DebugMessage(Venpi_ModName, "QF_COM_Companion_StarbornCoraCoe", "Fragment_Stage0040_Index00", "Stage 40 Index 0 fragment triggered. Book Collector topic should be unlocked.", 0, Venpi_DebugEnabled.GetValueInt())
  ;; Book Collector topic is unlocked
EndFunction

Function Fragment_Stage0045_Index00()
  VPI_Debug.DebugMessage(Venpi_ModName, "QF_COM_Companion_StarbornCoraCoe", "Fragment_Stage0045_Index00", "Stage 45 Index 0 fragment triggered. Book Collector topic should be completed", 0, Venpi_DebugEnabled.GetValueInt())
  ;; Book Collector topic is complete
  CCMBH_CoraTakesBooks.Start()
EndFunction

Function Fragment_Stage0050_Index00()
  VPI_Debug.DebugMessage(Venpi_ModName, "QF_COM_Companion_StarbornCoraCoe", "Fragment_Stage0050_Index00", "Stage 50 Index 0 fragment triggered. Evil Player topic should be unlocked.", 0, Venpi_DebugEnabled.GetValueInt())
  ;; Book Collector topic is unlocked
EndFunction

Function Fragment_Stage0055_Index00()
  VPI_Debug.DebugMessage(Venpi_ModName, "QF_COM_Companion_StarbornCoraCoe", "Fragment_Stage0055_Index00", "Stage 55 Index 0 fragment triggered. Evil Player topic should be completed.", 0, Venpi_DebugEnabled.GetValueInt())
  ;; Book Collector topic is complete
EndFunction

Function Fragment_Stage0900_Index00()
  VPI_Debug.DebugMessage(Venpi_ModName, "QF_COM_Companion_StarbornCoraCoe", "Fragment_Stage0900_Index00", "Stage 900 Index 0 fragment triggered. Starting Commitment quest line.", 0, Venpi_DebugEnabled.GetValueInt())
  ;; Trigger Commitment Quest
EndFunction

Function Fragment_Stage5000_Index00()
  VPI_Debug.DebugMessage(Venpi_ModName, "QF_COM_Companion_StarbornCoraCoe", "Fragment_Stage5000_Index00", "Stage 5000 Index 0 fragment triggered. Player won anger speech mini game.", 0, Venpi_DebugEnabled.GetValueInt())
  ;; Trigger Anger Speech Challenge Success Phase
EndFunction

Function Fragment_Stage5010_Index00()
  VPI_Debug.DebugMessage(Venpi_ModName, "QF_COM_Companion_StarbornCoraCoe", "Fragment_Stage5010_Index00", "Stage 5010 Index 0 fragment triggered. Player lost anger speech mini game.", 0, Venpi_DebugEnabled.GetValueInt())
  ;; Trigger Anger Speech Challenge Failure Phase
EndFunction
