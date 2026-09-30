#Requires AutoHotkey v2.0

Sleep(1200)
CoordMode('Pixel', 'Screen')

^+Enter:: {
    ExitApp
}

v := 0
n := 0

; IMAGE MATCHING CHECK
loop {
    ToolTip "Visible: " v "`n Not visible: " n
    if (ImageSearch(&mpx, &mpy, 1200, 700, 1680, 990, "*20 0mp.png")) {
        MouseMove mpx, mpy
        v++
    }
    else {
        n++
    }
    ToolTip "Visible: " v "`n Not visible: " n
}