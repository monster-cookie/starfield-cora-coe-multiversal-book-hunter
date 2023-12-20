ScriptName CCMBH_Help

;;
;; MAJOR NOTE: ALL FUNCTIONS MUST BE GLOBAL WITHOUT CREATION KIT
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions
;;;

;; Call using: CGF "CCMBH_Debug.Show" 
Function Show() Global
  String message = "Cora is a completely stand alone companion based on the variant universe version of here combined with the hunter/emissary.\n" 
  message += "\n\nHow to use\n\n"
  message += "To toggle debug mode and logging:\n\tCGF \"CCMBH_Debug.ToggleDebugMode\"\n"
  message += "Configuration Status Screen:\n\tCGF \"CCMBH_Debug.ConfigurationSettings\"\n"

  Debug.MessageBox(message)
EndFunction
