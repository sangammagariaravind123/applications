#Requires AutoHotkey v2.0

^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}

F1:: Click "Down", "Right"
F2:: Click "Up", "Right"

global f_running := false

$e:: {
    global e_toggle := false, e_timer
    e_toggle := !e_toggle
    if e_toggle {
        ; start timer calling SendF every 10 ms (adjust as needed)
        e_timer := SetTimer(SendE, 500)
    } else {
        ; stop the timer
        SetTimer(e_timer, "Off")
    }
}

SendE() {
    global f_running
    if f_running
        return
    f_running := true
    Send "e"
    f_running := false
}