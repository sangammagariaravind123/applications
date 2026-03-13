#Requires AutoHotkey v2.0
#SingleInstance

MsgBox("Use Ctrl+Shift+Enter to stop the script `n It's not recommended to switch apps without stopping the script.`n If you are fine with the risk of pausing the script instead of stopping it, you can use Ctrl+Shift+T. This will hit Esc(automatically) and pause the script at the same time.`n Click OK and game will start automatically you dont have to do anything unless stuck. `nThe script will start within 6 seconds of clicking OK", "SCG 004C script started")

; TraySetIcon("apexicon.png")
open() {
    if !WinExist("Asphalt - v48.0.5a - D3D12") and !WinExist("Asphalt Legends Unite") {
        Run "C:\XboxGames\Asphalt Legends Unite\Content\Asphalt9_gdk_x64_rtl.exe"
        ; Send("^{Esc}")
        ; Sleep 200
        ; Send("Asphalt Legends")
        ; Sleep(200)
        ; Send("{Enter}")
        ; Sleep(2000)t
        ; WinMaximize
        Sleep(8000)
        ; WinMaximize "Asphalt - v24.0.1f - DX12"
    }
    else if WinExist("Asphalt Legends Unite") {
        Sleep 1000
        Send "{# Up}"
    }
    else if WinExist("Asphalt - v48.0.5a - D3D12") {
        WinActivate("Asphalt - v48.0.5a - D3D12")
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
    if (ImageSearch(&SCG2X, &SCG2Y, 0, 0, A_ScreenWidth, A_ScreenHeight, "*40 berlinetta.png")) {
        Click(SCG2X, SCG2Y)
        Sleep(1000)
        Click(SCG2X, SCG2Y)
    }
    else if (ImageSearch(&SCGX, &SCGY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*40 berlinetta.png")) {
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

    ; MISSOUT
    else if (ImageSearch(&missoutX, &missoutY, A_ScreenWidth / 2, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "missout.png")) {
        Click(missoutX, missoutY)
        global flag2 := False
    }


    ; RESUME AD

    else if (ImageSearch(&msad, &doiasjh, 0, 0, A_ScreenWidth, A_ScreenHeight, "*50 minimised.png")) {
        WinMaximize
    }
    else if (ImageSearch(&resumeadX, &resumeadY, 0, 0, A_ScreenWidth, A_ScreenHeight, "resumead.png")) {
        Click(resumeadX, resumeadY)
        Sleep(500)
    }
    else if (ImageSearch(&retryX, &retryY, 0, 0, A_ScreenWidth, A_ScreenHeight, "retry.png")) {
        Click(retryX, retryY)
        Sleep(500)
    }
    ; PAUSE AD
    ; else if (ImageSearch(&endadX, &endadY, 0, 0, A_ScreenWidth, A_ScreenHeight, "endad.png")) {
    ;     Click(endadX, endadY)
    ; }

    ; NEXT 2 (Claim Rewards)
    else if (ImageSearch(&next2X, &next2Y, A_ScreenWidth / 2, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "next2.png")) {
        Click(next2X, next2Y)
        global flag2 := True
    }
    else if (ImageSearch(&reconnectX, &reconnectY, 0, 0, A_ScreenWidth, A_ScreenHeight, "reconnect.png")) {
        Send("{Esc}")
        Sleep(500)
    }
    else if (ImageSearch(&dailyeventsX, &dailyeventsY, 0, 0, A_ScreenWidth, A_ScreenHeight, "dailyevents.png")) {
        Click(dailyeventsX, dailyeventsY)
        Sleep(500)
    }
    else if (ImageSearch(&dailyeventsX, &dailyeventsY, 0, 0, A_ScreenWidth, A_ScreenHeight, "dailyevents2.png")) {
        Click(dailyeventsX, dailyeventsY)
        Sleep(1500)
        global flag2 := True
        x := 0
        loop 8 {
            Send "{Right Down}"
            Sleep 200
            Send "{Right Up}"

            f := False
            MouseMove(259, 760)

            Sleep(200)
            if (ImageSearch(&SCGX, &SCGY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*40 berlinetta.png")) {
                Sleep(1000)
                Click(SCGX, SCGY)
                Sleep(1000)
                Click(SCGX, SCGY)
                f := True
                break
            }
            else if (ImageSearch(&SCG2X, &SCG2Y, 0, 0, A_ScreenWidth, A_ScreenHeight, "*40 berlinetta.png")) {
                Click(SCG2X, SCG2Y)
            }
            if f {
                break
            }
        }
    }

    ;NEXT 0
    else if (ImageSearch(&nextX, &nextY, A_ScreenWidth / 2, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "next.png")) {
        Click(nextX, nextY)
    }

    ;NEXT 1
    else if (ImageSearch(&next1X, &next1Y, A_ScreenWidth / 2, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "next1.png")) {
        Click(next1X, next1Y)
    }

    ;OPEN EVENT
    else if (ImageSearch(&RaceX, &RaceY, A_ScreenWidth / 2, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "race.png")) {
        Click(RaceX, RaceY)
        MouseMove 100, 100
        Sleep(2000)
        Send("{Down}")
        Sleep(1700)
        Send("{Enter}")
        Sleep(3000)
        MouseMove 1974, 1811
    }

    ;NO FUEL
    if (ImageSearch(&skipx, &skipy, A_ScreenWidth / 2, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "skip.png")) {
        Send("{A}")
        Sleep 500
    }
    if (ImageSearch(&classBx, &classBy, A_ScreenWidth / 2, 0, A_ScreenWidth, A_ScreenHeight / 2, "classB.png")) {
        Send("{A}")
        Sleep 500
    }

    ;CLICK PLAY
    else if (ImageSearch(&PlayX, &PlayY, A_ScreenWidth / 2, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "play.png") & ImageSearch(&skipx, &skipy, A_ScreenWidth / 2, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "classC.png")) {
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
    else if (ImageSearch(&tk2X, &tk2y, 0, 0, A_ScreenWidth, A_ScreenHeight, "tokenrefill2.png")) {
        Click(tk2X, tk2y)
    }

    ; CHECK REFILL TICKET WINDOW
    else if (ImageSearch(&refillticketsX, &refillticketsY, 0, 0, A_ScreenWidth, A_ScreenHeight, "refilltickets.png")) {
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
        ; TOKEN REFILL TICKETS
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

    ;If TOUCHDRIVE is off
    if (ImageSearch(&tdoffX, &tdoffY, A_ScreenWidth / 2, A_ScreenHeight / 2, A_ScreenWidth, A_ScreenHeight, "tdoff.png")) {
        ImageSearch(&tdonX, &tdonY, 0, 0, A_ScreenWidth, A_ScreenHeight, "tdon.png")
        Click(tdonX, tdonY + 30)
        Sleep(1500)
    }
}


; A_ScriptFullPath
play() {
    ToolTip "Race start"
    SetTimer () => ToolTip(), -1500
    ; Sleep(4000) ;4000
    ; Send("{a}")
    ; ToolTip "Left"
    ; SetTimer () => ToolTip(), -1500
    ; Sleep(2000) ;6000
    ; Send("{Space}")
    ; Send("{Space}")
    ; ToolTip "Orange Nitro"
    ; SetTimer () => ToolTip(), -1500
    ; Sleep(2000)
    ; Send("{s down}") ;8000
    ; Sleep(30)
    ; Send("{s up}") ;8000
    ; SetTimer () => ToolTip(), -1500
    ; Sleep(6200)
    ; Send("{Space}") ;14200
    ; Sleep(700)
    ; Send("{Space}") ;14900
    ; SetTimer () => ToolTip(), -1500
    ; Sleep(1900)
    ; Send("{s down}") ;16800
    ; Sleep(30)
    ; Send("{s up}") ;16800
    ; Sleep(8200)
    ; Send("{a}") ;25000
    ; Sleep(1500)
    ; Send("{Space}")
    ; Send("{Space}")
    ; Sleep(2000)
    ; Send("{a}")
    ; Sleep(500)
    ; Send("{Space}")
    ; Send("{Space}")
    ; Sleep(500)
    ; Send("{d}")
    ; Sleep(3000)
    ; Send("{s}")
    ; Sleep(4000)
    ; Send("{Space}")
    ; Sleep(700)
    ; Send("{Space}")


    global flag := False
    global flag2 := True
}


; Perform 360
; ToolTip "360" ;12200
; SetTimer () => ToolTip(), -1500
; Send "{s down}"
; Sleep 30
; Send "{s up}"
; Sleep 100
; Send "{s down}"
; Sleep 30
; Send "{s up}" ;12400

left() {
    ToolTip "Left"
    SetTimer () => ToolTip(), -1000
    Send "{Left}"
}

right() {
    ToolTip "Right"
    SetTimer () => ToolTip(), -1000
    Send "{Right}"
}

t360() {
    ToolTip "360"
    SetTimer () => ToolTip(), -1000
    Send "{s down}"
    Sleep 30
    Send "{s up}"
    Sleep 100
    Send "{s down}"
    Sleep 30
    Send "{s up}"
}

ON() { ; Orange Nitro
    ToolTip "Orange Nitro"
    SetTimer () => ToolTip(), -1000
    Send "{Space}"
    Sleep 200
    Send "{Space}"
}

PN() { ; Perfect Nitro
    ToolTip "Perfect Nitro"
    SetTimer () => ToolTip(), -1000
    Send "{Space}"
    Sleep 700
    Send "{Space}"
}

SW() { ; Shockwave
    ToolTip "Shockwave"
    SetTimer () => ToolTip(), -1000
    Send "{Space}"
}

SN() { ; Stop Nitro
    ToolTip "Stop Nitro"
    SetTimer () => ToolTip(), -1000
    Send "{s down}"
    Sleep 150
    Send "{s up}"
}

STD() { ; Start Drifting
    ToolTip "Start Drifting"
    SetTimer () => ToolTip(), -1000
    Send "{s down}"
}

SPD() { ; Stop Drifting
    ToolTip "Stop Drifting"
    SetTimer () => ToolTip(), -1000
    Send "{s up}"
}