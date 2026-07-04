#Requires AutoHotkey v2.0
#SingleInstance
next()
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
    if (ImageSearch(&grx, &gry, 1200, 700, 1680, 990, "*20 1getready.png")) {
        Click(grx, gry)
        Sleep 1500
        Sleep 200
        Send("{Q}")
        Sleep 2000
        ; Click(1107, 164)
        ; Sleep 100
        Send("{Enter}")
        Sleep 500
        Send("{Enter}")
        MouseMove(100, 100)
    }
    else if (ImageSearch(&playx, &playy, 1200, 700, 1680, 990, "*20 2play.png")) {
        Click(playx, playy)
    }
    else if (ImageSearch(&disconnectedx, &disconnectedy, 1200, 700, 1680, 990, "*20 10disconnected.png")) {
        Click(disconnectedx, disconnectedy)
    }
    else if (ImageSearch(&missoutx, &missouty, 1200, 700, 1680, 990, "*20 5missout.png")) {
        Click(missoutx, missouty)
    }
    else if (ImageSearch(&missout2x, &missout2y, 1200, 700, 1680, 990, "*20 5missout2.png")) {
        Click(missout2x, missout2y)
    }
    ;else if (ImageSearch(&watchadx, &watchady, 1000, 600, 1910, 1180, "*20 20watchad.png")) {
    ;    Click(watchadx, watchady)
    ;}
    else if (ImageSearch(&rank_downx, &rank_downy, 400, 400, 1800, 1000, "*20 10rank_down.png")) {
        Click(rank_downx, rank_downy)
        global derank_count := derank_count + 1
    }
    if (derank_count >= 5) {
        MsgBox "Deranking completed. Total deranks: " . derank_count
        ExitApp
    }
    ;connection error => retry button
    else if (ImageSearch(&retryx, &retryy, 400, 400, 1800, 1000, "*20 10retry.png")) {
        Click(retryx, retryy)
    }
    else if (ImageSearch(&mp1x, &mp1y, 0, 600, 960, 1200, "*20 0mp1.png")) {
        Click(mp1x, mp1y)
    }
    else if (ImageSearch(&rewardnextx, &rewardnexty, 1200, 700, 1680, 990, "*20 6rewardnext.png")) {
        Click(rewardnextx, rewardnexty)
    }
    else if (ImageSearch(&servererrx, &servererry, 1200, 700, 1680, 990, "*20 10servererr.png")) {
        Click(servererrx, servererry)
        Sleep 1000
        Send("{Esc}")
    }
    else if (ImageSearch(&conn_errx, &conn_erry, 1200, 700, 1680, 990, "*40 10conn_err.png")) {
        Click(conn_errx, conn_erry)
        Sleep 1000
    }
    else {
        global idlecount := idlecount + 1
        ToolTip "Derank Count: " . derank_count . "`nIdle Count: " . idlecount
        SetTimer () => ToolTip(), -1000
    }
    ; if (idlecount >= 5) {
    ;     MouseMove 100, 100, 100
    ;     global idlecount := 0
    ; }
}

skip() {
    if (ImageSearch(&skipx, &skipy, 1200, 700, 1680, 990, "*20 20skip.png")) {
        Send("{D}")
        Sleep 500
    }
}

next() {
    if (ImageSearch(&next0x, &next0y, 1200, 700, 1680, 990, "*100 3next0.png")) {
        Click(next0x, next0y)
    }
    else if (ImageSearch(&next1x, &next1y, 1200, 700, 1680, 990, "*20 3next1.png")) {
        Click(next1x, next1y)
    }
    else if (ImageSearch(&next2x, &next2y, 1200, 700, 1680, 990, "*20 3next2.png")) {
        Click(next2x, next2y)
    }
    else if (ImageSearch(&next3x, &next3y, 1200, 700, 1680, 990, "*20 3next3.png")) {
        Click(next3x, next3y)
    }
}