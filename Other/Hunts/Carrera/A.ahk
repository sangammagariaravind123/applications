#Requires AutoHotkey v2.0
#SingleInstance

; Asphalt - v24.0.1f - DX12
;Asphalt Legends Unite

MsgBox("Use Ctrl+Shift+Enter to stop the script `n It's not recommended to switch apps without stopping the script.`n If you are fine with the risk of pausing the script instead of stopping it, you can use Ctrl+Shift+T. This will hit Esc(automatically) and pause the script at the same time.`n Click OK and game will start automatically you dont have to do anything unless stuck. `nThe script will start within 6 seconds of clicking OK", "SCG 004C script started")

TraySetIcon("apexicon.png")
open() {
    if !WinExist("Asphalt - v24.5.0n - D3D12") and !WinExist("Sign in to steam") {
        Send("^{Esc}")
        Sleep 200
        Send("Asphalt Legends")
        Sleep(200)
        Send("{Enter}")
        Sleep(2000)
        Send "{# Up}"
        ; WinMaximize
        Sleep(8000)
        ; WinMaximize "Asphalt - v24.0.1f - DX12"
    }
    else {
        WinActivate("Asphalt - v24.5.0n - D3D12")
    }
}

; open()

global count := 0

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
    open()
    ; if (A_TimeIdleMouse > 60000) and (count < 1) and flag3 {
    ;     global count := count + 1
    ; }
    ; else if count > 36 {
    ;     if WinExist("Asphalt 9: Legends") {
    ;         WinKill("Asphalt 9: Legends")
    ;     }
    ;     open()
    ;     count := 0
    ; }
    start()
    if flag {
        global count := 0
        ToolTip "Inside if"
        SetTimer () => ToolTip(), -19000
        ;17380 - start time
        Sleep(14800)
        play()
    }
}


start() {
    if (ImageSearch(&SCG2X, &SCG2Y, 0, 0, A_ScreenWidth, A_ScreenHeight, "*40 carrera.png")) {
        Click(SCG2X, SCG2Y)
        Sleep(1000)
        Click(SCG2X, SCG2Y)
    }
    if (ImageSearch(&SCGX, &SCGY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*40 carrera.png")) {
        Click(SCGX, SCGY)
    }

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

    if (ImageSearch(&msad, &doiasjh, 0, 0, A_ScreenWidth, A_ScreenHeight, "*50 minimised.png")) {
        WinMaximize
    }
    if (ImageSearch(&resumeadX, &resumeadY, 0, 0, A_ScreenWidth, A_ScreenHeight, "resumead.png")) {
        Click(resumeadX, resumeadY)
        Sleep(500)
    }
    if (ImageSearch(&retryX, &retryY, 0, 0, A_ScreenWidth, A_ScreenHeight, "retry.png")) {
        Click(retryX, retryY)
        Sleep(500)
    }
    ; PAUSE AD
    else if (ImageSearch(&endadX, &endadY, 0, 0, A_ScreenWidth, A_ScreenHeight, "endad.png")) {
        Click(endadX, endadY)
    }

    ; NEXT 2 (Claim Rewards)
    if (ImageSearch(&next2X, &next2Y, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 next2.png")) {
        Click(next2X, next2Y)
        global flag2 := True
    }
    else if (ImageSearch(&reconnectX, &reconnectY, 0, 0, A_ScreenWidth, A_ScreenHeight, "reconnect.png")) {
        Send("{Esc}")
        Sleep(500)
    }
    else if (ImageSearch(&dailyeventsX, &dailyeventsY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 dailyevents2.png")) {
        Click(dailyeventsX, dailyeventsY)
        Sleep(500)
    }
    else if (ImageSearch(&dailyeventsX, &dailyeventsY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 dailyevents.png")) {
        Click(dailyeventsX, dailyeventsY)
        Sleep(1500)
        global flag2 := True
        x := 0
        loop 7 {
            Send "{Right Down}"
            Sleep 200
            Send "{Right Up}"

            f := False
            MouseMove(259, 760)

            Sleep(200)
            if (ImageSearch(&SCGX, &SCGY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*40 911.png")) {
                Sleep(1000)
                Click(SCGX, SCGY)
                Sleep(1000)
                Click(SCGX, SCGY)
                f := True
                break
            }
            else if (ImageSearch(&SCG2X, &SCG2Y, 0, 0, A_ScreenWidth, A_ScreenHeight, "*40 911.png")) {
                Click(SCG2X, SCG2Y)
            }
            if f {
                break
            }
        }
    }

    ;NEXT 0
    if (ImageSearch(&nextX, &nextY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 next.png")) {
        Click(nextX, nextY)
    }

    ;NEXT 1
    if (ImageSearch(&next1X, &next1Y, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 next1.png")) {
        Click(next1X, next1Y)
    }
    ; MISSOUT
    if (ImageSearch(&missoutX, &missoutY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 missout.png")) {
        Click(missoutX, missoutY)
        global flag2 := False
    }


    ;OPEN EVENT
    if (ImageSearch(&RaceX, &RaceY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 race.png")) {
        Click(RaceX, RaceY)
        MouseMove 100, 100
        Sleep(2000)
        Send("{Down}")
        Sleep(1700)
        Send("{Enter}")
        Sleep(3000)
        MouseMove 1974, 1811
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

    ; TOKEN REFILL FUEL
    if (ImageSearch(&tk2X, &tk2y, 0, 0, A_ScreenWidth, A_ScreenHeight, "tokenrefill2.png")) {
        Click(tk2X, tk2y)
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
        if (ImageSearch(&twatchX, &twatchY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 ticketwatchad.png")) {
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
    else if (ImageSearch(&SkipX, &SkipY, A_ScreenWidth / 2, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "skip.png")) {
        Click(SkipX, SkipY)
        Sleep(1500)
        if (ImageSearch(&tk2X, &tk2y, A_ScreenWidth / 2, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "tokenrefill2.png")) {
            Click(tk2X, tk2y)
        }
        ; ImageSearch(&fwatchX, &fwatchY, 0, 0, A_ScreenWidth, A_ScreenHeight, "fuelwatchad.png")
        ; Click(fwatchX, fwatchY)
        ; Sleep(44000)
        ; Send("{Tab}")
        ; Sleep(100)
        ; Send("{Tab}")
        ; Sleep(100)
        ; Send("{Enter}")
        ; Sleep(2000)
        ; Send("{Esc}")
        ; Sleep(2000)
        ; Send("{Esc}")
        ; Sleep(1300)
    }

    ;If TOUCHDRIVE is off
    if (ImageSearch(&tdoffX, &tdoffY, 0, 0, A_ScreenWidth, A_ScreenHeight, "tdoff.png")) {
        ImageSearch(&tdonX, &tdonY, 0, 0, A_ScreenWidth, A_ScreenHeight, "tdon.png")
        Click(tdonX, tdonY + 30)
        Sleep(1500)
    }


    ;CAR SELECTION
    else if (ImageSearch(&foundX, &foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "carselection.png")) {
        Send("{Enter}")
        Click(110, 80)
        Sleep(1000)
        if (ImageSearch(&foundX, &foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "carselection.png")) {
            Send("{Enter}")
            Click(110, 80)
        }
        if (ImageSearch(&foundX, &foundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "carselection.png")) {
            Send("{Down}")
            Sleep 1000
            Send("{Enter}")
            Click(110, 80)
        }
    }
}


; A_ScriptFullPath
play() {
    ToolTip "Race start"
    SetTimer () => ToolTip(), -1500
    Sleep(4000) ;4000
    Send("{a}")
    ToolTip "Left"
    SetTimer () => ToolTip(), -1500
    Sleep(2000) ;6000
    Send("{Space}")
    Send("{Space}")
    ToolTip "Orange Nitro"
    SetTimer () => ToolTip(), -1500
    Sleep(2000)
    Send("{s down}") ;8000
    Sleep(30)
    Send("{s up}") ;8000
    SetTimer () => ToolTip(), -1500
    Sleep(6200)
    Send("{Space}") ;14200
    Sleep(700)
    Send("{Space}") ;14900
    SetTimer () => ToolTip(), -1500
    Sleep(1900)
    Send("{s down}") ;16800
    Sleep(30)
    Send("{s up}") ;16800
    Sleep(8200)
    Send("{a}") ;25000
    Sleep(1500)
    Send("{Space}")
    Send("{Space}")
    Sleep(2000)
    Send("{a}")
    Sleep(500)
    Send("{Space}")
    Send("{Space}")
    Sleep(500)
    Send("{d}")
    Sleep(3000)
    Send("{s}")
    Sleep(4000)
    Send("{Space}")
    Sleep(700)
    Send("{Space}")

    ; ToolTip "360" ;12200
    ; SetTimer () => ToolTip(), -1500


    global flag := False
    global flag2 := True
}

;4000 - left
;6000 - orange nitro
;14600 - PN


; Perform 360
; Send "{s down}"
; Sleep 30
; Send "{s up}"
; Sleep 100
; Send "{s down}"
; Sleep 30
; Send "{s up}" ;12400
; Sleep 30
; Send "{s down}" ;13300
; Sleep 400
; Send "{s up}" ;13700
; Sleep 3000
