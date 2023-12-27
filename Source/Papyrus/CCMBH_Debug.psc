ScriptName CCMBH_Debug

;;
;; MAJOR NOTE: ALL FUNCTIONS MUST BE GLOBAL WITHOUT CREATION KIT
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;

;; Call using: CGF "CCMBH_Debug.FeatureFlags" 
Function FeatureFlags() Global
  GlobalVariable Venpi_DebugEnabled = Game.GetFormFromFile(0x71000800, "VenpiCore.esm") as GlobalVariable
  ObjectReference StarbornCoraCoeRef = Game.GetFormFromFile(0x770009C2, "CoraCoeMultiversalBookHunter.esm") as ObjectReference
  Actor StarbornCoraCoe = StarbornCoraCoeRef as Actor
  Quest CCMBH_CoraTakesBooks = Game.GetFormFromFile(0x7B000A3B, "CoraCoeMultiversalBookHunter.esm") as Quest
  Quest COM_Companion_StarbornCoraCoe = Game.GetFormFromFile(0x7B000802, "CoraCoeMultiversalBookHunter.esm") as Quest

  String message = "Important IDs\n\n"
  message += "                    Cora Anchor = " + StarbornCoraCoeRef.GetFormID() + "\n"
  message += "                    Cora NPC ID = " + StarbornCoraCoe.GetFormID() + "\n"
  message += "   Cora Book Collector Quest ID = " + CCMBH_CoraTakesBooks.GetFormID() + "\n"
  message += "Cora Companion Handler Quest ID = " + COM_Companion_StarbornCoraCoe.GetFormID() + "\n"
  message += "\n\nCurrent Feature Flag Settings (1-On, 0=Off)\n\n"
  message += "     Debug Mode = " + Venpi_DebugEnabled.GetValueInt() + "\n"

  Debug.MessageBox(message)
  Debug.Trace(message, 2)
EndFunction

;; Call using: CGF "CCMBH_Debug.SystemSettings" 
Function SystemSettings() Global
  ObjectReference StarbornCoraCoeRef = Game.GetFormFromFile(0x770009C2, "CoraCoeMultiversalBookHunter.esm") as ObjectReference
  ConditionForm COM_CND_DIAL_TopLevel_Pickup = Game.GetFormFromFile(0x00270721, "Starfield.esm") as ConditionForm
  ConditionForm COM_CND_DIAL_TopLevel_Follow = Game.GetFormFromFile(0x0026B9F4, "Starfield.esm") as ConditionForm
  ConditionForm COM_CND_DIAL_TopLevel_Wait = Game.GetFormFromFile(0x0026B9F0, "Starfield.esm") as ConditionForm
  ConditionForm COM_CND_DIAL_TopLevel_Friendship = Game.GetFormFromFile(0x0026B9EB, "Starfield.esm") as ConditionForm
  ConditionForm COM_CND_DIAL_TopLevel_Romance = Game.GetFormFromFile(0x0026B9E9, "Starfield.esm") as ConditionForm
  ConditionForm COM_CND_DIAL_TopLevel_Flirt = Game.GetFormFromFile(0x0026B9EC, "Starfield.esm") as ConditionForm
  ConditionForm COM_CND_DIAL_TopLevel_Flirt_Stack1_StarbornCoraCoe = Game.GetFormFromFile(0x77000A36, "CoraCoeMultiversalBookHunter.esm") as ConditionForm
  ConditionForm COM_CND_DIAL_TopLevel_Flirt_Stack2_StarbornCoraCoe = Game.GetFormFromFile(0x77000A37, "CoraCoeMultiversalBookHunter.esm") as ConditionForm
  ConditionForm COM_CND_DIAL_TopLevel_Flirt_Stack3_StarbornCoraCoe = Game.GetFormFromFile(0x77000A38, "CoraCoeMultiversalBookHunter.esm") as ConditionForm

  String message = "Current System Settings\n\n"
  message += " Pickup Eligible = " + COM_CND_DIAL_TopLevel_Pickup.IsTrue(StarbornCoraCoeRef, None) + "\n"
  message += " Follow Eligible = " + COM_CND_DIAL_TopLevel_Follow.IsTrue(StarbornCoraCoeRef, None) + "\n"
  message += "   Wait Eligible = " + COM_CND_DIAL_TopLevel_Wait.IsTrue(StarbornCoraCoeRef, None) + "\n"
  message += "       Is Friend = " + COM_CND_DIAL_TopLevel_Friendship.IsTrue(StarbornCoraCoeRef, None) + "\n"
  message += "     Is Romantic = " + COM_CND_DIAL_TopLevel_Romance.IsTrue(StarbornCoraCoeRef, None) + "\n"
  message += "     Is Flirting = " + COM_CND_DIAL_TopLevel_Flirt.IsTrue(StarbornCoraCoeRef, None) + "\n"
  message += "Is Flirt Level 1 = " + COM_CND_DIAL_TopLevel_Flirt_Stack1_StarbornCoraCoe.IsTrue(StarbornCoraCoeRef, None) + "\n"
  message += "Is Flirt Level 2 = " + COM_CND_DIAL_TopLevel_Flirt_Stack2_StarbornCoraCoe.IsTrue(StarbornCoraCoeRef, None) + "\n"
  message += "Is Flirt Level 3 = " + COM_CND_DIAL_TopLevel_Flirt_Stack3_StarbornCoraCoe.IsTrue(StarbornCoraCoeRef, None) + "\n"

  Debug.MessageBox(message)
  Debug.Trace(message, 2)
EndFunction

;; Call using: CGF "CCMBH_Debug.CoraAVSettings" 
Function CoraAVSettings() Global
  ObjectReference StarbornCoraCoeRef = Game.GetFormFromFile(0x770009C2, "CoraCoeMultiversalBookHunter.esm") as ObjectReference
  GlobalVariable iFollower_Com_Follow = Game.GetFormFromFile(0x0000D839, "Starfield.esm") as GlobalVariable
  ActorValue COM_AvailableCompanion = Game.GetFormFromFile(0x002A9DE0, "Starfield.esm") as ActorValue
  ActorValue COM_ActiveCompanion = Game.GetFormFromFile(0x002A9DDF, "Starfield.esm") as ActorValue
  ActorValue FollowerState = Game.GetFormFromFile(0x00000344, "Starfield.esm") as ActorValue
  Bool followerCheck = StarbornCoraCoeRef.GetValueInt(FollowerState) == iFollower_Com_Follow.GetValueInt()

  String message = "Cora's AV Settings\n\n"
  message += "Available Companion = " + StarbornCoraCoeRef.GetValueInt(COM_AvailableCompanion) + "> Pickup needs 1, Follow needs 1, Wait needs 1\n"
  message += "   Active Companion = " + StarbornCoraCoeRef.GetValueInt(COM_ActiveCompanion) + "> Pickup needs 0, Follow needs 1, Wait needs 1\n"
  message += "     Follower State = " + followerCheck + "> Pickup needs N/A, Follow needs true, Wait needs true\n"

  Debug.MessageBox(message)
  Debug.Trace(message, 2)
EndFunction

;; Call using: CGF "CCMBH_Debug.ToggleDebugMode" 
Function ToggleDebugMode() Global
  GlobalVariable Venpi_DebugEnabled = Game.GetFormFromFile(0x71000800, "VenpiCore.esm") as GlobalVariable
  If (Venpi_DebugEnabled == None)
    Debug.MessageBox("Failed to find Venpi_DebugEnabled global variable in CoraCanRead.esm. Please contact Venpi for help.")
    Return
  Else
    If (Venpi_DebugEnabled.GetValueInt() == 0)
      Venpi_DebugEnabled.SetValueInt(1)
    Else
      Venpi_DebugEnabled.SetValueInt(0)
    EndIf
  EndIf
EndFunction

;; Call using: CGF "CCMBH_Debug.ResetCora" 
Function ResetCora() Global
  ObjectReference StarbornCoraCoeRef = Game.GetFormFromFile(0x7B0009C2, "CoraCoeMultiversalBookHunter.esm") as ObjectReference
  Actor StarbornCoraCoe = StarbornCoraCoeRef as Actor

  ;; Reset the companion quest
  Quest SQ_Companions = Game.GetFormFromFile(0x002A567C, "Starfield.esm") as Quest
  (SQ_Companions as SQ_CompanionsScript).SetRoleInactive(StarbornCoraCoe, True, False, True)
  (SQ_Companions as SQ_CompanionsScript).SetRoleUnavailable(StarbornCoraCoe, True)
  
  ;; Reset the book collector quest
  Quest CCMBH_CoraTakesBooks = Game.GetFormFromFile(0x7B000A3B, "CoraCoeMultiversalBookHunter.esm") as Quest
  CCMBH_CoraTakesBooks.Reset()

  ;; Reset Cora's handler quest
  Quest COM_Companion_StarbornCoraCoe = Game.GetFormFromFile(0x7B000802, "CoraCoeMultiversalBookHunter.esm") as Quest
  COM_Companion_StarbornCoraCoe.Reset()

  ;; Disable/Enable her NPC
  StarbornCoraCoeRef.Disable(True)
  Utility.Wait(1)
  StarbornCoraCoeRef.Enable(True)
  Utility.Wait(5)

  ;; Make her an available companion again
  PromoteToAvailableCompanion()
EndFunction

;; Call using: CGF "CCMBH_Debug.ForceEnableBookCollectorTopics" 
Function ForceEnableBookCollectorTopics() Global
  ;; Reset Cora's handler quest
  Quest COM_Companion_StarbornCoraCoe = Game.GetFormFromFile(0x7B000802, "CoraCoeMultiversalBookHunter.esm") as Quest
  COM_Companion_StarbornCoraCoe.SetStage(40)
EndFunction

;; Call using: CGF "CCMBH_Debug.ForceEnableEvilPlayerTopics" 
Function ForceEnableEvilPlayerTopics() Global
  ;; Reset Cora's handler quest
  Quest COM_Companion_StarbornCoraCoe = Game.GetFormFromFile(0x7B000802, "CoraCoeMultiversalBookHunter.esm") as Quest
  COM_Companion_StarbornCoraCoe.SetStage(50)
EndFunction

;; Call using: CGF "CCMBH_Debug.MoveCoraToPlayer" 
Function MoveCoraToPlayer() Global
  ObjectReference StarbornCoraCoeRef = Game.GetFormFromFile(0x7B0009C2, "CoraCoeMultiversalBookHunter.esm") as ObjectReference
  Actor player = Game.GetPlayer()
  StarbornCoraCoeRef.MoveTo(player as ObjectReference, 0, 0, 0.0, True, False)
EndFunction

;; Call using: CGF "CCMBH_Debug.MakeAvailableCompanion" 
Function PromoteToAvailableCompanion() Global
  ObjectReference StarbornCoraCoeRef = Game.GetFormFromFile(0x7B0009C2, "CoraCoeMultiversalBookHunter.esm") as ObjectReference
  Actor StarbornCoraCoe = StarbornCoraCoeRef as Actor

  Quest SQ_Companions = Game.GetFormFromFile(0x002A567C, "Starfield.esm") as Quest
  (SQ_Companions as SQ_CompanionsScript).SetRoleAvailable(StarbornCoraCoe, True)

  (StarbornCoraCoe as CompanionActorScript).AllowStoryGatesAndRestartTimer()

  MoveCoraToPlayer()
EndFunction


;; Call using: CGF "CCMBH_Debug.MakeActiveCompanion" 
Function MakeActiveCompanion() Global
  ObjectReference StarbornCoraCoeRef = Game.GetFormFromFile(0x7B0009C2, "CoraCoeMultiversalBookHunter.esm") as ObjectReference
  Actor StarbornCoraCoe = StarbornCoraCoeRef as Actor

  Quest SQ_Companions = Game.GetFormFromFile(0x002A567C, "Starfield.esm") as Quest
  (SQ_Companions as SQ_CompanionsScript).SetRoleActive(StarbornCoraCoe, True, True, 0.0, 0.0)

  MoveCoraToPlayer()
EndFunction

;; Call using: CGF "CCMBH_Debug.ForceEnableBookCollectorFeature" 
Function ForceEnableBookCollectorFeature() Global
  ;; Reset Cora's handler quest
  Quest COM_Companion_StarbornCoraCoe = Game.GetFormFromFile(0x7B000802, "CoraCoeMultiversalBookHunter.esm") as Quest
  COM_Companion_StarbornCoraCoe.SetStage(40)
  COM_Companion_StarbornCoraCoe.SetStage(45)
  Quest CCMBH_CoraTakesBooks = Game.GetFormFromFile(0x7B000A3B, "CoraCoeMultiversalBookHunter.esm") as Quest
  CCMBH_CoraTakesBooks.Start()
EndFunction
