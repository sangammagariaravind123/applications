#Requires AutoHotkey v2.0

HotIfWinActive "ahk_exe. Code.exe"  ; Only active when the target window is active

global CapsLock_DownTime := 0
global CtrlActive := false

; Correctly register the CapsLock down and up events
Hotkey("~*CapsLock", OnCapsDown)  ; D = down
Hotkey("~*CapsLock", OnCapsUp)  ; U = up

OnCapsDown(*) {
    global CapsLock_DownTime
    global CtrlActive

    CapsLock_DownTime := A_TickCount
    CtrlActive := false

    SetTimer(CheckHold, -200)  ; One-shot timer: 200ms
}

CheckHold() {
    global CtrlActive
    if GetKeyState("CapsLock", "P") {
        Send("{Ctrl down}")
        CtrlActive := true
    }
}

OnCapsUp(*) {
    global CapsLock_DownTime
    global CtrlActive

    if CtrlActive {
        Send("{Ctrl up}")
    } else {
        elapsed := A_TickCount - CapsLock_DownTime
        if (elapsed < 200)
            Send("{Esc}")
    }
}