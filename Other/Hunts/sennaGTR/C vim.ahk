#Requires AutoHotkey v2.0

tapThreshold := 200  ; milliseconds
isHeld := false

vscodeClass := "Chrome_WidgetWin_1"

#HotIf WinActive("ahk_class " vscodeClass)

CapsLock::
{
    isHeld := false
    startTime := A_TickCount
    SetTimer(CheckIfHeld, tapThreshold)  ; run once after tapThreshold ms
    KeyWait("CapsLock")  ; wait for CapsLock release
    SetTimer(CheckIfHeld, 0)  ; stop timer

    if (isHeld) {
        Send("{Ctrl Up}")
    } else {
        Send("{Esc}")
    }
    isHeld := false
}

CheckIfHeld()
{
    if GetKeyState("CapsLock", "P") {
        isHeld := true
        Send("{Ctrl Down}")
        KeyWait("CapsLock")  ; wait for CapsLock release

    }
}

#HotIf