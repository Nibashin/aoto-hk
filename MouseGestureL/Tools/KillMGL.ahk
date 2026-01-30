;===============================================================================
;
;		Terminate MouseGestureL.ahk externally
;														Implemented by Pyonkichi
;===============================================================================
KM_Timeout	:= 3000
KM_WinTitle	:= "MouseGestureL.ahk Main Window ahk_class AutoHotkeyGUI"
KillMGL()
Goto, KM_End

KillMGL() {
	local hWnd, tmStart, nPid

	DetectHiddenWindows, On
	if (hWnd := WinExist(KM_WinTitle)) {
		tmStart := A_TickCount
		WinClose, ahk_id %hWnd%
		while (hWnd := WinExist(KM_WinTitle)) {
			Sleep, 100
			if ((A_TickCount-tmStart) > KM_Timeout) {
				nPid := 0
				WinGet, nPid, PID, ahk_id %hWnd%
				if (nPid) {
					Process, Close, %nPid%
				}
				break
			}
		}
	}
}

KM_End:
