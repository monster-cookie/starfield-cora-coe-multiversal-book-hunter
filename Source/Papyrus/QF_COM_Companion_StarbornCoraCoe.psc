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
Function Fragment_Stage_0002_Item_00()
  Alias_CoraCoe.GetActorRef().SetValue(COM_Affinity, 100.0)
EndFunction

Function Fragment_Stage_0900_Item_00()
  ;; Trigger Commitment Quest
EndFunction

Function Fragment_Stage_5000_Item_00()
  ;; Trigger Anger Speech Challenge Success Phase
EndFunction

Function Fragment_Stage_5010_Item_00()
  ;; Trigger Anger Speech Challenge Failure Phase
EndFunction
