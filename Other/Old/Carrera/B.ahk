#Requires AutoHotkey v2.0
#SingleInstance

open() {
    if !WinExist("Asphalt - v24.0.3a - DX12") and !WinExist("Sign in to steam") {
        Send("^{Esc}")
        Sleep 200
        Send("Asphalt Legends")
        Sleep(200)
        Send("{Enter}")
        Sleep(2000)
    }
    else {
        WinActivate("Asphalt - v24.0.3a - DX12")
    }
}
initial_setup() {
    MsgBox(
        "Use Ctrl+Shift+Enter to stop the script `n It's not recommended to switch apps without stopping the script.`n If you are fine with the risk of pausing the script instead of stopping it, you can use Ctrl+Shift+T. This will hit Esc(automatically) and pause the script at the same time.`n Click OK and game will start automatically you dont have to do anything unless stuck. `nThe script will start within 6 seconds of clicking OK",
        "SCG 004C script started")
    TraySetIcon("apexicon.png")
}