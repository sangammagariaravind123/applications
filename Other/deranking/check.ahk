#Requires AutoHotkey v2.0

Sleep(2000)
CoordMode('Pixel', 'Screen')

; x := 1
; MouseMove(259, 760)
; loop 5 {
;     ToolTip "Right" x
;     Send("{WheelDown}")
;     global x += 1
;     Sleep 1000
; }

^+Enter:: {
    ExitApp
}

; loop {
;     Send "{Left}"
; }

v := 0
n := 0

; IMAGE MATCHING CHECK
loop {
    ToolTip "Visible: " v "`n Not visible: " n
    if (ImageSearch(&helloX, &helloY, A_ScreenWidth / 2, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "*300 3next0.png")) {
        MouseMove helloX, helloY
        v++
    }
    else {
        n++
    }
    ToolTip "Visible: " v "`n Not visible: " n
}

; ToolTip A_ScreenHeight / 2

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
