ScriptName Book_OnRead_IncreaseAffinity Extends ObjectReference

;; TODO: This should be moved to Venpi Core

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
ReferenceAlias Property Alias_Companion Auto Const mandatory
ActorValue Property COM_Affinity Auto Const mandatory
Float Property ValueToAdd Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnRead()
  VPI_Debug.DebugMessage(Venpi_ModName, "Book_ApplySpellOnReadScript", "OnRead", "Increasing companion (" + Alias_Companion + ") affinity by " + ValueToAdd + ".", 0, Venpi_DebugEnabled.GetValueInt())
  Alias_Companion.GetActorRef().SetValue(COM_Affinity, ValueToAdd)
EndEvent