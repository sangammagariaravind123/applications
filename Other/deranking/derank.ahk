#Requires AutoHotkey v2.0
#SingleInstance

^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}

+z:: {
    Pause(A_IsPaused ? False : True)
}

global derank_count := 0
global idlecount := 0
loop {
    global flag := True
    start()
}

start() {
    if getready() {
        Sleep 10
    }
    else if play() {
        Sleep 10
    }
    else if next() {
        Sleep 1000
    }
    else if missout() {
        Sleep 10
    }
    else if skip() {
        Sleep 10
    }
    else if starup() {
        Sleep 10
    }
    else if quit() {
        Sleep 10
    }
    else if (ImageSearch(&disconnectedx, &disconnectedy, 1200, 700, 1680, 990, "*20 10disconnected.png")) {
        Click(disconnectedx, disconnectedy)
    }

    ;else if (ImageSearch(&watchadx, &watchady, 1000, 600, 1910, 1180, "*20 20watchad.png")) {
    ;    Click(watchadx, watchady)
    ;}
    else if (ImageSearch(&rank_downx, &rank_downy, 400, 400, 1800, 1000, "*20 10rank_down.png")) {
        Click(rank_downx, rank_downy)
        global derank_count := derank_count + 1
    }
    ;connection error => retry button
    else if (ImageSearch(&retryx, &retryy, 400, 400, 1800, 1000, "*20 10retry.png")) {
        Click(retryx, retryy)
    }
    else if (ImageSearch(&mp1x, &mp1y, 0, 600, 960, 1200, "*20 0mp1.png")) {
        Click(mp1x, mp1y)
    }
    ; else if (ImageSearch(&searchingx, &searchingy, 0, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "*20 2searching.png")) {
    ;     Click(searchingx, searchingy) ; 1 Searching for players and location
    ; }
    ; else if (ImageSearch(&initx, &inity, 0, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "*20 2init.png")) {
    ;     Click(initx, inity) ; 2 Initializing race
    ; }
    else if (ImageSearch(&waitingx, &waitingy, 0, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "*20 2waiting.png")) {
        Click(waitingx, waitingy) ; 3 Waiting for other players
        Sleep 500
        Send("{Esc}")
        Sleep 700
        if (ImageSearch(&quitx, &quity, 1200, 700, 1680, 990, "*20 5quit.png")) {
            Click(quitx, quity)
        }
    }
    else if (ImageSearch(&rewardnextx, &rewardnexty, 1200, 700, 1680, 990, "*20 6rewardnext.png")) {
        Click(rewardnextx, rewardnexty)
    }
    else if (ImageSearch(&servererrx, &servererry, 0, 0, 1680, 990, "*20 10servererr.png")) {
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
        if idlecount > 3 {
            Send("{Enter}")
            SetTimer () => ToolTip(), -1000
            global idlecount := 0
        }
    }
    if (derank_count >= 5) {
        MsgBox "Deranking completed. Total deranks: " . derank_count
        ExitApp
    }
    ; if (idlecount >= 3) {
    ;     MouseMove A_ScreenHeight, A_ScreenWidth
    ; }
    MouseMove A_ScreenHeight, A_ScreenWidth, 5
}

getready() {
    if (ImageSearch(&grx, &gry, 1200, 700, 1680, 990, "*20 1getready.png")) {
        Click(grx, gry)
        Sleep 1500
        Sleep 200
        Send("{Q}")
        Sleep 1000
        ; Click(1107, 164)  ; Select League
        ; Sleep 100
        Send("{Enter}")
        Sleep 500
        Send("{Enter}")
        MouseMove(A_ScreenHeight, A_ScreenWidth)
        SetTimer () => ToolTip(), 0
        Sleep 500
        MouseMove(900, 1050, 100)
        Sleep 500
        Click(900, 1000)
        return 1
    }
}

play() {
    if (ImageSearch(&playx, &playy, 1200, 700, 1680, 990, "*20 2play.png")) {
        Sleep 500
        Click(playx, playy)
        Sleep 500
        MouseMove(A_ScreenHeight, A_ScreenWidth)
        Sleep 1000
        if (ImageSearch(&playx, &playy, 1200, 700, 1680, 990, "*20 2play.png")) {
            Click(playx, playy)
            Sleep 2000
        }
        return 1
    }
}

skip() {
    if (ImageSearch(&skipx, &skipy, 1200, 700, 1680, 990, "*20 20skip.png")) {
        Send("{D}")
        Sleep 500
        return 1
    }
}

starup() {
    if (ImageSearch(&starupx, &starupy, 1200, 700, 1680, 990, "*20 10starup.png")) {
        Send("{D}")
        Sleep 500
        return 1
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
    else if (ImageSearch(&next4x, &next4y, 1200, 700, 1680, 990, "*20 3next4.png")) {
        Click(next4x, next4y)
    }
    else if (ImageSearch(&next5x, &next5y, 1200, 700, 1680, 990, "*20 3next5.png")) {
        Click(next5x, next5y)
    }
    else {
        return 0
    } return 1
}

missout() {
    if (ImageSearch(&missoutx, &missouty, 1200, 700, 1680, 990, "*20 5missout.png")) {
        Click(missoutx, missouty)
    }
    else if (ImageSearch(&missout2x, &missout2y, 1200, 700, 1680, 990, "*20 5missout2.png")) {
        Click(missout2x, missout2y)
    }
    else {
        return 0
    } return 1
}

quit() {
    if (ImageSearch(&quitx, &quity, 1200, 700, 1680, 990, "*20 5quit.png")) {
        Click(quitx, quity)
        return 1
    } return 0
}