#Requires AutoHotkey v2.0
#SingleInstance


MsgBox "Script Started. `n Use Ctrl+Shift+Enter to stop the script`n It's not recommended to switch apps without stopping the script.`n If you are fine with the risk of pausing the script instead of stopping it, you   can use Ctrl+Shift+T. This will hit Esc(automatically) and pause the script            at the same time.`n Click OK and Open the Victor car hunt page and leave it. `nThe script will start within 6 seconds of clicking OK"
Sleep(6000)

count := 0

^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}

;A_IsSuspended

^+t:: {
    Send("{Esc}")
    Pause(A_IsPaused ? False : True)
}

global flag3 := True
global flag2 := True
global flag := False

CoordMode('Pixel', 'Screen')
loop {
    if (A_TimeIdle > 50000) and (count < 1) and flag3 {
        Send("{Esc}")
        Sleep(300)
        Send("{Tab}")
        Sleep(300)
        Send("{Tab}")
        Sleep(300)
        Send("{Enter}")
        count := count + 1
    }
    else if count > 36 {
        if WinExist("Asphalt 9: Legends") {
            WinKill("Asphalt 9: Legends")
        }
        Sleep 500
        Send("^{Esc}")
        Sleep(600)
        Send("{Tab}")
        Sleep 200
        Send("{a}")
        Sleep 200
        Send("{Space}")
    }
    start()
    if flag {
        global count := 0
        ToolTip "Inside if"
        SetTimer () => ToolTip(), -19000
        Sleep(16100)
        play()
    }
}


start() {
    ; CREDITS MULTIPLIER WATCH AD
    ; if (ImageSearch(&credwaX, &credwaY, 0, 0, A_ScreenWidth, A_ScreenHeight, "creditswatchad.png")) {
    ;     Click(credwaX, credwaY)
    ;     Sleep(43000)
    ;     Send("{Tab}")
    ;     Sleep(100)
    ;     Send("{Tab}")
    ;     Sleep(100)
    ;     Send("{Enter}")
    ;     Sleep(1000)
    ;     global flag2 := False
    ; }


    ; RESUME AD

    if (ImageSearch(&resumeadX, &resumeadY, 0, 0, A_ScreenWidth, A_ScreenHeight, "resumead.png")) {
        Click(resumeadX, resumeadY)
        Sleep(500)
    }
    ; PAUSE AD
    else if (ImageSearch(&endadX, &endadY, 0, 0, A_ScreenWidth, A_ScreenHeight, "endad.png")) {
        Click(endadX, endadY)
    }

    ; NEXT 2 (Claim Rewards)
    if (ImageSearch(&next2X, &next2Y, 0, 0, A_ScreenWidth, A_ScreenHeight, "next2.png")) {
        Click(next2X, next2Y)
        global flag2 := True
    }
    else if (ImageSearch(&reconnectX, &reconnectY, 0, 0, A_ScreenWidth, A_ScreenHeight, "reconnect.png")) {
        Send("{Esc}")
        Sleep(500)
    }
    else if (ImageSearch(&dailyeventsX, &dailyeventsY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 dailyevents.png")) {
        Click(dailyeventsX, dailyeventsY)
        global flag2 := True
    }
    else if (ImageSearch(&victoreventX, &victoreventY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 victorevent.png")) {
        Click(victoreventX + 20, victoreventY + 20)
        Sleep(2000)
        Click(victoreventX + 20, victoreventY + 20)
        Sleep(1200)
    }
    else if (ImageSearch(&victoreventX, &victoreventY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 victorevent2.png")) {
        Click(victoreventX + 20, victoreventY + 20)
        Sleep(2000)
    }
    ; MISSOUT
    if (ImageSearch(&missoutX, &missoutY, 0, 0, A_ScreenWidth, A_ScreenHeight, "missout.png")) {
        Click(missoutX, missoutY)
        global flag2 := False
    }

    ;NEXT 1
    if (ImageSearch(&next1X, &next1Y, 0, 0, A_ScreenWidth, A_ScreenHeight, "next1.png")) {
        Click(next1X, next1Y)

    }

    ;NEXT 0
    if (ImageSearch(&nextX, &nextY, 0, 0, A_ScreenWidth, A_ScreenHeight, "next.png")) {
        Click(nextX, nextY)
    }

    ;OPEN EVENT
    if (ImageSearch(&RaceX, &RaceY, 0, 0, A_ScreenWidth, A_ScreenHeight, "race.png")) {
        Click(RaceX, RaceY)
        Sleep(2000)
        Send("{Down}")
        Sleep(1700)
        Send("{Enter}")
        Sleep(1700)
    }

    ;DIRECT FUEL WATCH
    if (ImageSearch(&fwatchX1, &fwatchY1, 0, 0, A_ScreenWidth, A_ScreenHeight, "fuelwatchad.png")) {
        Click(fwatchX1, fwatchY1)
        Sleep(44000)
        Send("{Tab}")
        Sleep(100)
        Send("{Tab}")
        Sleep(100)
        Send("{Enter}")
        Sleep(1500)
        Send("{Esc}")
        Sleep(2000)
    }

    ; CHECK REFILL TICKET WINDOW
    if (ImageSearch(&refillticketsX, &refillticketsY, 0, 0, A_ScreenWidth, A_ScreenHeight, "refilltickets.png")) {
        if (ImageSearch(&twatchX, &twatchY, 0, 0, A_ScreenWidth, A_ScreenHeight, "ticketwatchad.png")) {
            ToolTip "Start() -4.1"
            SetTimer () => ToolTip(), -1500
            Click(twatchX, twatchY)
            Sleep(44000)
            Send("{Tab}")
            Sleep(100)
            Send("{Tab}")
            Sleep(100)
            Send("{Enter}")
            Sleep(2000)
            Send("{Esc}")
        }
        else {
            ImageSearch(&tokenrefillX, &tokenrefillY, 0, 0, A_ScreenWidth, A_ScreenHeight, "tokenrefill.png")
            Click tokenrefillX, tokenrefillY
            Sleep 2000
            Send("{Esc}")
        }
        ; else {
        ;     MouseMove 0, 0
        ;     Sleep 100
        ;     ToolTip "No watchad option, waiting for tickets to refill"
        ;     SetTimer () => ToolTip(), -1200000
        ;     global flag3 := False
        ;     Sleep(120000)
        ;     Send("{Esc}")
        ; }
    }

    ;CHECK SKIP REFILL FUEL
    else if (ImageSearch(&SkipX, &SkipY, 0, 0, A_ScreenWidth, A_ScreenHeight, "skip.png")) {
        Click(SkipX, SkipY)
        Sleep(1500)
        ImageSearch(&fwatchX, &fwatchY, 0, 0, A_ScreenWidth, A_ScreenHeight, "fuelwatchad.png")
        Click(fwatchX, fwatchY)
        Sleep(44000)
        Send("{Tab}")
        Sleep(100)
        Send("{Tab}")
        Sleep(100)
        Send("{Enter}")
        Sleep(2000)
        Send("{Esc}")
        Sleep(2000)
        Send("{Esc}")
        Sleep(1300)
    }

    ;If TOUCHDRIVE is off
    if (ImageSearch(&tdoffX, &tdoffY, 0, 0, A_ScreenWidth, A_ScreenHeight, "tdoff.png")) {
        ImageSearch(&tdonX, &tdonY, 0, 0, A_ScreenWidth, A_ScreenHeight, "tdon.png")
        Click(tdonX, tdonY + 30)
        Sleep(1500)
    }

    ;CLICK PLAY
    if (ImageSearch(&PlayX, &PlayY, 0, 0, A_ScreenWidth, A_ScreenHeight, "play.png")) {
        Click(PlayX, PlayY)
        Sleep(1500)
        if (ImageSearch(&refillticketsX, &refillticketsY, 0, 0, A_ScreenWidth, A_ScreenHeight, "refilltickets.png")) {
            if (ImageSearch(&twatchX, &twatchY, 0, 0, A_ScreenWidth, A_ScreenHeight, "ticketwatchad.png")) {
                ToolTip "Start() -4.1"
                SetTimer () => ToolTip(), -1500
                Click(twatchX, twatchY)
                Sleep(44000)
                Send("{Tab}")
                Sleep(100)
                Send("{Tab}")
                Sleep(100)
                Send("{Enter}")
                Sleep(2000)
                Send("{Esc}")
            }
            ; else {
            ;     MouseMove 0, 0
            ;     Sleep 100
            ;     ToolTip "No watchad option, waiting for tickets to refill"
            ;     SetTimer () => ToolTip(), -1200000
            ;     global flag3 := False
            ;     Sleep(120000)
            ;     Send("{Esc}")
            ; }
            else {
                ImageSearch(&tokenrefillX, &tokenrefillY, 0, 0, A_ScreenWidth, A_ScreenHeight, "tokenrefill.png")
                Click tokenrefillX, tokenrefillY
                Sleep 2000
                Send("{Esc}")
            }
        }
        else {
            ToolTip "Start() -4.2"
            SetTimer () => ToolTip(), -1000
            global flag := True
            ToolTip "flag is " flag
            SetTimer () => ToolTip(), -1500
            return
        }
    }
    ;CAR SELECTION
    else if (ImageSearch(&foundX, &foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "carselection.png")) {
        Send("{Enter}")
        Sleep(1000)
        if (ImageSearch(&foundX, &foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "carselection.png")) {
            Send("{Enter}")
        }
        if (ImageSearch(&foundX, &foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "carselection.png")) {
            Send("{Down}")
            Sleep 1000
            Send("{Enter}")
        }
    }
}

; A_ScriptFullPath
play() {
    ToolTip "Race start"
    SetTimer () => ToolTip(), -1500
    Sleep(3500)
    Send("{s down}")
    ToolTip "Start Drifting"
    SetTimer () => ToolTip(), -1500
    Sleep(200)
    Send("{d}")
    Sleep(1700)
    Send("{s up}")
    Sleep 100
    ToolTip "Stop drifting and right(barrel) and nitro"
    SetTimer () => ToolTip(), -1500

    Send("{d}")
    Sleep(100)
    Send("{Space}")
    Send("{Space}")
    Sleep(500)
    Send("{Space}")
    Send("{Space}")
    Sleep(3397)
    Send("{s}")
    Send("{Space}")
    Sleep(1400)
    Send("{Space}")
    Sleep(600)
    Send("{a}")
    ToolTip "Perfect nitro and left"
    SetTimer () => ToolTip(), -1500
    Sleep(1644)
    Send("{s down}")
    Sleep(100)
    Send("{s up}")
    Send("{Space}")
    Send("{Space}") ;13444
    ToolTip "Orange nitro"
    SetTimer () => ToolTip(), -1500

    Sleep(1700)
    Send("{s down}") ;15444
    ToolTip "Start Drfiting"
    SetTimer () => ToolTip(), -1500

    Sleep(2100)
    Send("{s up}") ;17513
    ToolTip "Stop Drifting"
    SetTimer () => ToolTip(), -1500

    Send("{d}")
    Send("{Space}")
    Send("{Space}")
    Sleep(867)
    Send("{s down}") ;18180
    Sleep(2250)
    Send("{a}")
    Sleep(800)
    Send("{s up}")
    Send("{Space}") ;19111
    Send("{Space}")
    Sleep(500)
    Send("{s}")
    Send("{Space}")
    Sleep(1100)
    Send("{Space}") ;21283
    Sleep(536)
    Send("{s down}") ;22519
    Sleep(881)
    Send("{s up}") ;23400
    Send("{Space}") ;23400
    Send("{Space}") ;23400
    Sleep(900)
    Send("{s down}") ;24300
    Sleep(1300)
    Send("{s up}") ;25600
    Send("{Space}") ;25600
    Send("{Space}") ;25600
    Sleep(800)
    Send("{s down}") ;26400
    Sleep(2400)
    Send("{s up}") ;28800
    Send("{Space}") ;28800
    Send("{Space}") ;28800
    Sleep(1400)
    Send("{s down}") ;30200
    Sleep(1700)
    Send("{d}") ;31900
    Sleep(800)
    Send("{s up}") ;32700
    Send("{Space}") ;32700
    Send("{Space}") ;32700
    Sleep(2700)
    Send("{Space}") ;35800
    Send("{Space}") ;35800

    Sleep(5000)

    global flag := False
    global flag2 := True
}