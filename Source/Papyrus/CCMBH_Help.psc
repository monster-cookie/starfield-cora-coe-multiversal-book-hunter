ScriptName CCMBH_Help

;;
;; MAJOR NOTE: ALL FUNCTIONS MUST BE GLOBAL WITHOUT CREATION KIT
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;

;; Call using: CGF "CCMBH_Help.Show" 
Function Show() Global
  String message = "Cora is a completely stand alone companion based on the variant universe version of here combined with the hunter/emissary.\n" 
  message += "\n\nHow to use\n\n"
  message += "   To toggle debug mode and logging:\n\tCGF \"CCMBH_Debug.ToggleDebugMode\"\n"
  message += "         To NG+ reset Starborn Cora:\n\tCGF \"CCMBH_Debug.ResetCora\"\n"
  message += " Force enable Book Collector Topics:\n\tCGF \"CCMBH_Debug.ForceEnableBookCollectorTopics\"\n"
  message += "Force enable Book Collector Feature:\n\tCGF \"CCMBH_Debug.ForceEnableBookCollectorFeature\"\n"
  message += "    Force enable Evil Player Topics:\n\tCGF \"CCMBH_Debug.ForceEnableEvilPlayerTopics\"\n"
  message += "            Force Cora to your side:\n\tCGF \"CCMBH_Debug.MoveCoraToPlayer\"\n"
  message += "  Force Cora to Available Companion:\n\tCGF \"CCMBH_Debug.MakeAvailableCompanion\"\n"
  message += "     Force Cora to Active Companion:\n\tCGF \"CCMBH_Debug.MakeActiveCompanion\"\n"
  message += "        Feature Flags Status Screen:\n\tCGF \"CCMBH_Debug.FeatureFlags\"\n"
  message += "       System Settings Debug Screen:\n\tCGF \"CCMBH_Debug.SystemSettings\"\n"
  message += "       Cora's Important AV Settings:\n\tCGF \"CCMBH_Debug.CoraAVSettings\"\n"

  Debug.MessageBox(message)
EndFunction
