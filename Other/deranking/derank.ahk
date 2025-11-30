#Requires AutoHotkey v2.0

#SingleInstance

^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}

loop {
    global flag := True
    global derank_count := 0
    start()
}

start() {
    if (ImageSearch(&skipx, &skipy, 1440, 900, 1910, 1180, "*20 skip.png")) {
        Send("{D}")
        Sleep 500
    }
    else if (ImageSearch(&grx, &gry, 1440, 900, 1910, 1180, "*20 getready.png")) {
        Click(grx, gry)
        Sleep 1500
        Sleep 200
        MouseMove(100, 100)
        Send("{Q}")
        Sleep 1500
        Send("{Down}")
        Sleep 500
        Send("{Enter}")
    }
    else if (ImageSearch(&playx, &playy, 1440, 900, 1910, 1180, "*20 play.png")) {
        Click(playx, playy)
    }
    else if (ImageSearch(&next0x, &next0y, 1440, 900, 1910, 1180, "*20 next0.png")) {
        Click(next0x, next0y)
    }
    else if (ImageSearch(&next1x, &next1y, 1440, 900, 1910, 1180, "*20 next1.png")) {
        Click(next1x, next1y)
    }
    else if (ImageSearch(&disconnectedx, &disconnectedy, 1000, 600, 1910, 1180, "*20 disconnected.png")) {
        Click(disconnectedx, disconnectedy)
    }
    else if (ImageSearch(&watchadx, &watchady, 1000, 600, 1910, 1180, "*20 watchad.png")) {
        Click(watchadx, watchady)
    }
    else if (ImageSearch(&rank_downx, &rank_downy, 1000, 600, 1910, 1180, "*20 rank_down.png")) {
        Click(rank_downx, rank_downy)
        derank_count++
    }
}