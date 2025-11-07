#Requires AutoHotkey v2.0

Sleep(3000)
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
    ToolTip "Visible: " v "`n Not visible: " n

}

^+Enter:: {
    ExitApp
}