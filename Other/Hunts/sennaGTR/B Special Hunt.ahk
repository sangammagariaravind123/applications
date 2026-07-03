#Requires AutoHotkey v2.0

#SingleInstance

; Asphalt - v46.1.1a - D3D12
;Asphalt Legends Unite

MsgBox("Use Ctrl+Shift+Enter to stop the script `n It's not recommended to switch apps without stopping the script.`n If you are fine with the risk of pausing the script instead of stopping it, you can use Ctrl+Shift+T. This will hit Esc(automatically) and pause the script at the same time.`n Click OK and game will start automatically you dont have to do anything unless stuck. `nThe script will start within 6 seconds of clicking OK", "SCG 004C script started")

global flag := True

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

loop {
    global flag := True
    open()
    start()
}

open() {
    if WinExist("Asphalt - v46.1.1a - D3D12") {
        WinActivate("Asphalt - v46.1.1a - D3D12")
        Sleep 500
        WinMaximize "Asphalt - v46.1.1a - D3D12"
    }
    else if !WinExist("Asphalt - v46.1.1a - D3D12") and !WinExist("Asphalt Legends Unite") {
        Run "C:\XboxGames\Asphalt Legends\Content\Asphalt9_gdk_x64_rtl.exe"
        Sleep(7000)
        if WinExist("Asphalt - v46.1.1a - D3D12") {
            WinMaximize "Asphalt - v46.1.1a - D3D12"
        }
        else {
            Sleep 8000
            if WinExist("Asphalt - v46.1.1a - D3D12") {
                WinMaximize "Asphalt - v46.1.1a - D3D12"
            }
        }
    }
}

start() {
    if (ImageSearch(&SE2x, &SE2y, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 SE2.png")) {

    }
    if (ImageSearch(&SE1x, &SE1y, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 SE1.png")) {
        Click(SE1x, SE1y)
    }
    else if (ImageSearch(&SPHuntx, &SPHunty, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 SPHunt.png")) {
        Click(SPHuntx, SPHunty)
        Sleep(500)
        Click(SPHuntx, SPHunty)
    }
    else if (ImageSearch(&Stage2x, &Stage2y, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 Stage3.png")) {
        Click(Stage2x, Stage2y)
        Sleep(500)
    }
    else if (ImageSearch(&next0x, &next0y, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 next0.png")) {
        Click(next0x, next0y)
        Sleep(500)
    }
    else if (ImageSearch(&tdoffx, &tdoffy, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 tdoff.png")) {
        Click(tdoffx, tdoffy)
        Sleep(2000)
    }
    else if (ImageSearch(&playx, &playy, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 play.png")) {
        Click(playx, playy)
        Sleep 1000
        if (ImageSearch(&waitx, &waity, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 wait.png")) {
            global flag := False
            refill()

        }
        if flag {
            Sleep(13800)
            play()
        }
    }
    else if (ImageSearch(&next1x, &next1y, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 next1.png")) {
        Click(next1x, next1y)
        Sleep(500)
    }
    else if (ImageSearch(&next2x, &next2y, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 next2.png")) {
        Click(next2x, next2y)
        Sleep(500)
    }
    else if (ImageSearch(&nextnx, &nextny, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 nextn.png")) {
        Click(nextnx, nextny)
        Sleep(500)
    }
    else if (ImageSearch(&watchadx, &watchady, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 watchad.png")) {
        Click(watchadx, watchady)
        Sleep(500)
    }
    else if (ImageSearch(&retryX, &retryY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 retry.png")) {
        Click(retryX, retryY)
        Sleep(500)
    }
    else if (ImageSearch(&reconnectX, &reconnectY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 reconnect.png")) {
        Send("{Esc}")
        Sleep(500)
    }
    else if (ImageSearch(&watchadX, &watchadY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 ticketwatchad.png")) {
        Click(watchadX, watchadY)
        Sleep(17500)
    }
    else if ImageSearch(&closeX, &closeY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 close.png") {
        Click(closeX, closeY)
        Sleep(500)
    }
    else if ImageSearch(&tapskipX, &tapskipY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 tapskip.png") {
        Click(tapskipX, tapskipY)
        Sleep(500)
    }
}

play() {
    ToolTip "Started"
    SetTimer () => ToolTip(), -3000
    Sleep 4100
    Send "{Left}" ; left - 4.2
    Sleep 1800
    Send "{s down}" ; 360 spin - 6.0
    Sleep 30
    Send "{s up}"
    Sleep 100
    Send "{s down}"
    Sleep 30
    Send "{s up}"
    Sleep 150
    Send "{Space}" ; Orange nitro - 6.5
    Sleep 200
    Send "{Space}"
    Sleep 4300
    Send "{s down}" ; stop nitro - 11.5
    Sleep 150
    Send "{s up}"
    Sleep 1700
    Send "{Space}" ; Perfect nitro - 13
    Sleep 700
    Send "{Space}"
    Sleep 1400
    Send "{s down}" ; start drifting - 15.5
    Sleep 3700
    Send "{s up}" ; stop drifting - 18.5
    Sleep 500
    Send "{Left}" ; left - 19.5
    Sleep 700
    Send "{Space}" ; Shockwave - 20.5
    Sleep 200
    Send "{Space}"
    Sleep 3000
    Send "{Left}" ; left - 22.5
    Sleep 1200
    Send "{s down}" ; stop nitro - 22.7
    Sleep 200
    Send "{s up}" ; 23
    Sleep 500
    Send "{Space}" ; Perfect nitro - 24
    Sleep 300
    Send "{Right}" ; right - 26.2
    Sleep 400
    Send "{Space}"
    Sleep 3000
    Send "{s down}" ; stop nitro - 27.8
    Sleep 200
    Send "{s up}" ; 28
    Sleep 500
    Send "{Left}" ; left - 29.5
    Sleep 1600
    Send "{Space}" ; Perfect nitro - 31
    Sleep 700
    Send "{Space}" ; 31.7
    Sleep 2700
    Send "{Left}" ; left - 35
    Sleep 1200
    Send "{s down}" ; start drifting - 37
    Sleep 2800
    Send "{s up}" ; stop drifting - 39.3
    Sleep 400
    Send "{Space}" ; Shockwave - 39.7
    Sleep 100
    Send "{Space}" ;

    Sleep 300
    MouseMove 100, 100
}

refill() {
    if (ImageSearch(&watchadX, &watchadY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 ticketwatchad.png")) {
        Click(watchadX, watchadY)
        Sleep(17500)
        if ImageSearch(&closeX, &closeY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 close.png") {
            Click(closeX, closeY)
            Sleep(500)
        }
        else {
            Sleep(15000)
            if ImageSearch(&closeX, &closeY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 close.png") {
                Click(closeX, closeY)
                Sleep(500)
            }
        }
    }
    else if (ImageSearch(&tokenx, &tokeny, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 tokenrefill.png")) {
        Click(tokenx, tokeny)
        Sleep 2000
        if ImageSearch(&closeX, &closeY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*20 close.png") {
            Click(closeX, closeY)
            Sleep(500)
        }
    }
}

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