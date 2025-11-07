#Requires AutoHotkey v2.0
#SingleInstance Force

TraySetIcon("Fuelicon.png")
CoordMode('Pixel', 'Screen')

^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}
global x:=0


^P:: {
    if A_IsPaused {
        Pause(False)
        TraySetIcon("Fuelicon.png")
    }
    else {
        Pause(True)
        TraySetIcon("Fuelicon1.png")
    }
    ; Pause(A_IsPaused ? False : True)
}

loop {
    if (ImageSearch(&foundX, &foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "skip.png")) {
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
	x+=1
        Click(fwatchX, fwatchY)
        Sleep 1000
        MouseMove 100, 100
        Sleep(10000)
    }
    ToolTip x
}