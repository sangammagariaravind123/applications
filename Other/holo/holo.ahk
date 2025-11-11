#Requires AutoHotkey v2.0


CoordMode('Pixel', 'Screen')

^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}


Sleep(2000)
loop {
    ; Check all PNG images in the script's directory
    loop Files, A_ScriptDir "\*.png" {
        imagePath := A_LoopFileFullPath
        if (ImageSearch(&foundX, &foundY, A_ScreenWidth/2, A_ScreenHeight/2, A_ScreenWidth, A_ScreenHeight, "*30 " imagePath)) {
            Click(foundX, foundY)
            Sleep 500
	    continue
        }
	else if (ImageSearch(&foundX, &foundY, A_ScreenWidth/2, 0, A_ScreenWidth, A_ScreenHeight, "*30 " imagePath)) {
            Click(foundX, foundY)
            Sleep 500
        }

    }
}

^#?:: {
    Suspend
    Return
}