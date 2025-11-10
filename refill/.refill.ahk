#Requires AutoHotkey v2.0

CoordMode('Pixel', 'Screen')

^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}


Sleep(2000)
loop {
    if (ImageSearch(&foundX, &foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*50 ticketwatchad.png")) {
        Click(foundX, foundY)
        Sleep(5000)
        MouseMove 100, 100
    }
    else if (ImageSearch(&foundX1, &foundY1, 0, 0, A_ScreenWidth, A_ScreenHeight, "*50 dewatchad1.png")) {
        Click(foundX1, foundY1)
        Sleep(5000)
        MouseMove 100, 100
    }
    else if (ImageSearch(&dewaX, &dewaY, 0, 0, A_ScreenWidth, A_ScreenHeight, "refilltickets.png")) {
        Click(1541, 788)
        Sleep(5000)
        MouseMove 100, 100
    }
    else if (ImageSearch(&foundX, &foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "skip.png")) {
        Click(foundX, foundY)
        Sleep(1000)
        ImageSearch(&fwatchX, &fwatchY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*50 fuelwatchad.png")
        Click(fwatchX, fwatchY)
        Sleep 1000
        MouseMove 100, 100
        Sleep(10000)
    }
    else if (ImageSearch(&gsX, &gsY, 0, 0, A_ScreenWidth, A_ScreenHeight, "skip_green.png")) {
        Click(gsX, gsY)
        Sleep(1000)
        ImageSearch(&fwatchX, &fwatchY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*50 fuelwatchad.png")
        Click(fwatchX, fwatchY)
        MouseMove 100, 100
        Sleep(10000)
        Send("{Tab}")
        Sleep(100)
        Send("{Tab}")
        Sleep(100)
        Send("{Enter}")
        Sleep(2000)
        Send("{Esc}")
    }
    else if (ImageSearch(&fwatchX, &fwatchY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*50 fuelwatchad.png")) {
        Click(fwatchX, fwatchY)
        Sleep 1000
        MouseMove 100, 100
        Sleep(10000)
    }
}

^#?:: {
    Suspend
    Return
}