#Requires AutoHotkey v2.0
open_game() {
    if WinExist("Asphalt - v24.0.3a - DX12") and WinExist("gamingservicesui.exe") {
        ToolTip "Yes"
    }
    else {
        Run "C:\XboxGames\Asphalt Legends Unite\Content\Asphalt9_gdk_x64_rtl.exe"
        Sleep 8000
    }
}
loop {
    open_game()
}

^+Enter:: {
    MsgBox "Script Stopped"
    ExitApp
}

