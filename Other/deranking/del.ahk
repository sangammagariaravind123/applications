#Requires AutoHotkey v2.0
#SingleInstance


^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}
+z:: {
    Pause(A_IsPaused ? False : True)
}

loop {
    Click
}