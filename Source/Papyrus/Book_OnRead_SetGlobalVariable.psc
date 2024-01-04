ScriptName Book_OnRead_SetGlobalVariable Extends ObjectReference

;; TODO: This should be moved to Venpi Core

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global Variables
;;;
GlobalVariable Property Venpi_DebugEnabled Auto Const Mandatory
String Property Venpi_ModName="CoraCoeMultiversalBookHunter" Auto Const Mandatory

GlobalVariable Property GlobalVariableToSet Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Properties
;;;
Float Property ValueToSet Auto Const Mandatory

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Events
;;;
Event OnRead()
  VPI_Debug.DebugMessage(Venpi_ModName, "Book_OnRead_SetGlobalVariable", "OnRead", "Setting global variable " + GlobalVariableToSet + " to " + ValueToSet + ".", 0, Venpi_DebugEnabled.GetValueInt())
  GlobalVariableToSet.SetValue(ValueToSet)
EndEvent