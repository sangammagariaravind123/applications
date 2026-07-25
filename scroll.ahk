#Requires AutoHotkey v2.0
MsgBox(" Scroll script is running.`n UpArrKey - scroll up `n DownArrKey to scroll down `n Shift to Pause `n Control to stop script. `n Esc to close this Dialog")

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