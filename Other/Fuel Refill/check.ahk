#Requires AutoHotkey v2.0

CoordMode('Pixel', 'Screen')
loop {
    if (ImageSearch(&foundX, &foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*50 fuelwatchad.png")) {
        MsgBox "Yes"
    }
    else MsgBox "No"

}

^+Enter:: {
    ExitApp
}