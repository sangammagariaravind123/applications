#Requires AutoHotkey v2.0
MsgBox("Scroll script is running. UpArrKey to scroll up, DownArrKey to scroll down, Shift to Pause, Control to stop script.")

Up:: {
    loop {
        Send("{WheelUp}")
        if GetKeyState("Shift", "P") {
            break
        }
    } }

Down:: {
    loop {
        Send("{WheelDown}")
        if GetKeyState("Shift", "P") {
            break
        }
    } }

Control:: ExitApp