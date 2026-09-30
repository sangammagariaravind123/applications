#Requires AutoHotkey v2.0

^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}

loop {
    if (ImageSearch(&dewaX, &dewaY, 0, 0, A_ScreenWidth, A_ScreenHeight, "dewatchad1.png")) {
        MouseMove dewaX, dewaY
    } else {
        ToolTip "Not visible"
    }
}