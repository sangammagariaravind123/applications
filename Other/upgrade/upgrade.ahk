#Requires AutoHotkey v2.0

Sleep(1200)
CoordMode('Pixel', 'Screen')

^+Enter:: {
    ExitApp
}

+z:: {
    Pause(A_IsPaused ? False : True)
}

loop {
    if (ImageSearch(&upgx, &upgy, 0, 0, 1680, 990, "*20 upg.png")) {
        Click(upgx, upgy)
    }
    else if (ImageSearch(&ipx, &ipy, 0, 0, 1680, 990, "*20 ip.png")) {
        Click(ipx, ipy)
    }
}