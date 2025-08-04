#Requires AutoHotkey v2.0
MsgBox("Scroll script is running. UpArrKey to scroll up, DownArrKey to scroll down, Control to Pause, Shift to stop script.")

Up:: {
    loop {
        Send("{WheelUp}")
        if GetKeyState("Control", "P") {
            break
        }
    } }

Down:: {
    loop {
        Send("{WheelDown}")
        if GetKeyState("Control", "P") {
            break
        }
    } }

Shift:: ExitApp