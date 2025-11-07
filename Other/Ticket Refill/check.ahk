#Requires AutoHotkey v2.0

Sleep(2000)
CoordMode('Pixel', 'Screen')

v := 0
n := 0
loop {
    if (ImageSearch(&helloX, &helloY, 0, 0, A_ScreenWidth, A_ScreenHeight, "ticketwatchad.png")) {
        v++
    }
    else {
        n++
    }
    ToolTip "Visible: " v "`n Not visible: " n " " helloX " " helloY

}

^+Enter:: {
    ExitApp
}
; loop {
;     if (ImageSearch(&foundX, &foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "dewatchad1.png")) {
;         MsgBox "Yes"
;     }
;     else {
;         MsgBox "No"
;     }
; }
