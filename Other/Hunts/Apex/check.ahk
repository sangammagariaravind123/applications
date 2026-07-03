#Requires AutoHotkey v2.0

Sleep(3000)
CoordMode('Pixel', 'Screen')

^+Enter:: {
    ExitApp
}

v := 0
n := 0
loop {
    if (ImageSearch(&helloX, &helloY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 dailyevents.png")) {
        v++
    }
    else {
        n++
    }
    ToolTip "Visible: " v "`n Not visible: " n
}


; ToolTip "S"
; SetTimer () => ToolTip(), -1500
; Send "{s down}"
; Sleep 30
; Send "{s up}"
; Sleep 100
; Send "{s down}"
; Sleep 30
; Send "{s up}"


; global count := 0
; fun() {
;     loop {
;         global count := count + 1
;         ToolTip "count" count
;     }
; }
; fun()
