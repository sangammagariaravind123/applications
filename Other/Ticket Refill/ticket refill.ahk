#Requires AutoHotkey v2.0

CoordMode('Pixel', 'Screen')

^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}

TraySetIcon("ticket.png")
; ^O:: Pause(A_IsPaused ? False : True)
^O:: {
    if A_IsPaused {
        Pause(False)
        TraySetIcon("ticket.png")
    }
    else {
        Pause(True)
    }
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
}

^#?:: {
    Suspend
    Return
}