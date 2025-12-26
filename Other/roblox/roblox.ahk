#Requires AutoHotkey v2.0

^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}

; Toggle right-click hold: press once to start, press again to stop
global F1_TOGGLE := False

F1:: {
    global F1_TOGGLE
    F1_TOGGLE := !F1_TOGGLE
    if (F1_TOGGLE) {
        MouseDown("Right")
        ToolTip "Right-Click: HELD"
        SetTimer(() => ToolTip(), -1000)
    } else {
        MouseUp("Right")
        ToolTip "Right-Click: RELEASED"
        SetTimer(() => ToolTip(), -1000)
    }
}

; Toggle auto-press E: press once to start, press again to stop
global E_TOGGLE := False

E:: {
    global E_TOGGLE
    E_TOGGLE := !E_TOGGLE
    if (E_TOGGLE) {
        SetTimer(AutoE(), 100) ; repeat every 100 ms (adjust as needed)
        ToolTip "Auto E: ON"
        SetTimer(() => ToolTip(), -1000)
    } else {
        SetTimer(AutoE(), "Off")
        ToolTip "Auto E: OFF"
        SetTimer(() => ToolTip(), -1000)
    }
}

AutoE() {
    Send("{e}")
}