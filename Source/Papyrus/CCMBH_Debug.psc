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

  String message = "Current Feature Flag Settings (1-On, 0=Off)\n\n"
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
