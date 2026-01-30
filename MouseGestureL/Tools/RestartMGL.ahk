;===============================================================================
;
;		Restart MouseGestureL.ahk externally
;														Implemented by Pyonkichi
;===============================================================================
#include %A_ScriptDir%\KillMGL.ahk
Sleep, 500
RM_Folder = %1%
RestartMGL()
return

RestartMGL(folder:="") {
	local path

	DetectHiddenWindows, On
	if (!WinExist(KM_WinTitle)) {
		if (InStr(FileExist(RM_Folder), "D")==0) {
			RM_Folder := ".."
		}
		path := RM_Folder . "\MouseGestureL.ahk"
		if (FileExist(path)) {
			Run, %path%
		}
	}
}

