#Requires AutoHotkey v2.0

Sleep(2000)
CoordMode('Pixel', 'Screen')

^+Enter:: {
    ExitApp
}

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