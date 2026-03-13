#Requires AutoHotkey v2.0

#SingleInstance

^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}

global derank_count := 0
global idlecount := 0
loop {
    global flag := True
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
        Send("{Q}")
        Sleep 2000
        Click(1107, 164)
        Sleep 100
        Send("{Enter}")
        Sleep 500
        Send("{Enter}")
        MouseMove(100, 100)
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
    else if (ImageSearch(&disconnectedx, &disconnectedy, 1440, 900, 1910, 1180, "*20 disconnected.png")) {
        Click(disconnectedx, disconnectedy)
    }
    else if (ImageSearch(&missoutx, &missouty, 1440, 900, 1910, 1180, "*20 missout.png")) {
        Click(missoutx, missouty)
    }
    ;else if (ImageSearch(&watchadx, &watchady, 1000, 600, 1910, 1180, "*20 watchad.png")) {
    ;    Click(watchadx, watchady)
    ;}
    else if (ImageSearch(&rank_downx, &rank_downy, 400, 400, 1800, 1000, "*20 rank_down.png")) {
        Click(rank_downx, rank_downy)
        global derank_count := derank_count + 1
    }
    if (derank_count >= 30) {
        MsgBox "Deranking completed. Total deranks: " . derank_count
        ExitApp
    }
    ;connection error => retry button
    else if (ImageSearch(&retryx, &retryy, 400, 400, 1800, 1000, "*20 retry.png")) {
        Click(retryx, retryy)
    }
    else if (ImageSearch(&mp1x, &mp1y, 0, 600, 960, 1200, "*20 mp1.png")) {
        Click(mp1x, mp1y)
    }
    else if (ImageSearch(&rewardnextx, &rewardnexty, 1440, 900, 1910, 1180, "*20 rewardnext.png")) {
        Click(rewardnextx, rewardnexty)
    }
    else if (ImageSearch(&servererrx, &servererry, 1440, 900, 1910, 1180, "*20 servererr.png")) {
        Click(servererrx, servererry)
        Sleep 1000
        Send("{Esc}")
    }
    else {
        global idlecount := idlecount + 1
    }
    if (idlecount >= 5) {
        MouseMove 100, 100, 100
        global idlecount := 0
    }
}