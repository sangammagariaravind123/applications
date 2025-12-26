#Requires AutoHotkey v2.0

CoordMode('Pixel', 'Screen')

^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}

global ticket := 0
global fuel := 0
Sleep(2000)
loop {
    if (ImageSearch(&foundX, &foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*50 ticketwatchad.png")) {
        Click(foundX, foundY)
        global ticket := ticket + 1
        Sleep(5000)
        MouseMove 100, 100
    }
    else if (ImageSearch(&foundX1, &foundY1, 0, 0, A_ScreenWidth, A_ScreenHeight, "*50 dewatchad1.png")) {
        Click(foundX1, foundY1)
        global ticket := ticket + 1
        Sleep(5000)
        MouseMove 100, 100
    }
    else if (ImageSearch(&dewaX, &dewaY, 0, 0, A_ScreenWidth, A_ScreenHeight, "refilltickets.png")) {
        Click(1541, 788)
        global ticket := ticket + 1
        Sleep(5000)
        MouseMove 100, 100
    }
    else if (ImageSearch(&foundX, &foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "skip.png")) {
        Click(foundX, foundY)
        Sleep(1000)
        ImageSearch(&fwatchX, &fwatchY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*50 fuelwatchad.png")
        Click(fwatchX, fwatchY)
        global fuel := fuel + 1
        Sleep 1000
        MouseMove 100, 100
        Sleep(10000)
    }
    else if (ImageSearch(&fwatchX, &fwatchY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*50 fuelwatchad.png")) {
        Click(fwatchX, fwatchY)
        global ticket := ticket + 1
        Sleep 1000
        MouseMove 100, 100
        Sleep(10000)
    }
    if (ticket == 4) or (fuel == 4) {
        if (MsgBox("Do you want to continue?", "Refill Script", 0x1) == "OK") {
            global ticket := 0
            global fuel := 0
        }
        else {
            MsgBox "Script Stopped"
            ExitApp
        }
    }
}

^#?:: {
    Suspend
    Return
}