#Requires AutoHotkey v2.0
#SingleInstance

; Program to remove broswer history for a specific website.

Sleep 1500 ; don't wanna have the program clicking as soon as it starts. cuz it has to wait until you switch to the browser window

^+Enter:: { ; Ctrl + Shift + Enter to stop the script
    MsgBox "Script Stopped"
    ExitApp
}
+z:: { ; Shift + Z to pause/resume the script
    Pause(A_IsPaused ? False : True)
}

loop {
    Click 1491, 294
    Sleep 1000 ; Polling rate for the remove button in history page is too low 😑
}