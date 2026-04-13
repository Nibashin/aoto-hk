#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



;;; おまじない
#InstallKeybdHook
#UseHook
	;F1::send {F13}
	;F2::send {F14}
	;F3::send {F15}
	;F4::send {F16}
	;F5::send {F17}
	;F6::send {F18}
	;F7::send {F19}
	;F8::send {F20}
	;F9::send {F21}
	;F10::send {F22}
	;F11::send {F23}
	;F12::send {F24}
#IfWinActive ahk_exe blender.exe
    ;ショートカットリスト    
        ; Numpad0の組み合わせに応じた変すうの定義 テンキーの0
        	0_frontText := {"None": "g", "Ctrl": "^g", "Alt": "!g", "Shift": "+g", "CtrlAlt": "^!g", "CtrlShift": "^+g", "AltShift": "!+g", "CtrlAltShift": "^!+g"} 
        	0_backText := {"None": "@", "Ctrl": "^b", "Alt": "!b", "Shift": "+b", "CtrlAlt": "^!b", "CtrlShift": "^+b", "AltShift": "!+b", "CtrlAltShift": "^!+b"}
        ; 特定のキーに対応する値を変更
        	0_backText_DU := 0_backText["None"]

        ; Numpad1の組み合わせに応じた変すうの定義 テンキーの1
        	1_frontText := {"None": "/", "Ctrl": "^v", "Alt": "!v", "Shift": "v", "CtrlAlt": "^!v", "CtrlShift": "^+v", "AltShift": "!+v", "CtrlAltShift": "^!+v"}
        	1_backText := {"None": ".", "Ctrl": "^.", "Alt": "!.", "Shift": "+.", "CtrlAlt": "^!.", "CtrlShift": "^+.", "AltShift": "!+.", "CtrlAltShift": "^!+."}  
        ; 特定のキーに対応する値を変更
        	1_backText_DU := 1_backText["None"]

        ; Numpad2の組み合わせに応じた変すうの定義 テンキーの2
        	2_frontText := {"None": "f", "Ctrl": "^f", "Alt": "!f", "Shift": "+f", "CtrlAlt": "^!f", "CtrlShift": "^+f", "AltShift": "!+f", "CtrlAltShift": "^!+f"} 
        	2_backText := {"None": "l", "Ctrl": "^l", "Alt": "!l", "Shift": "+l", "CtrlAlt": "^!l", "CtrlShift": "^+l", "AltShift": "!+l", "CtrlAltShift": "^!+l"}  
        ; 特定のキーに対応する値を変更
        	2_backText_DU := 2_backText["None"]

        ; Numpad3の組み合わせに応じた変すうの定義 テンキーの3
        	3_frontText := {"None": "d", "Ctrl": "^r", "Alt": "!r", "Shift": "+r", "CtrlAlt": "^!r", "CtrlShift": "^+r", "AltShift": "!+r", "CtrlAltShift": "^!+r"} 
        	3_backText := {"None": "o", "Ctrl": "^o", "Alt": "!o", "Shift": "+o", "CtrlAlt": "^!o", "CtrlShift": "^+o", "AltShift": "!+o", "CtrlAltShift": "^!+o"}  
        ; 特定のキーに対応する値を変更
        	3_backText_DU := 3_backText["None"]

        ; Numpad4の組み合わせに応じた変すうの定義 テンキーの4
        	4_frontText := {"None": "y", "Ctrl": "^c", "Alt": "!y", "Shift": "+c", "CtrlAlt": "^!y", "CtrlShift": "^+y", "AltShift": "!+y", "CtrlAltShift": "^!+y"}
        	4_backText := {"None": "vkBCsc033", "Ctrl": "^{vkBCsc033}", "Alt": "!{vkBCsc033}", "Shift": "+{vkBCsc033}", "CtrlAlt": "^!{vkBCsc033}", "CtrlShift": "^+{vkBCsc033}", "AltShift": "!+{vkBCsc033}", "CtrlAltShift": "^!+{vkBCsc033}"}  
        ; 特定のキーに対応する値を変更
        	4_backText_DU := 4_backText["None"]

        ; Numpad5の組み合わせに応じた変すうの定義 テンキーの5
        	5_frontText := {"None": "r", "Ctrl": "^d", "Alt": "!d", "Shift": "+d", "CtrlAlt": "^!d", "CtrlShift": "^+d", "AltShift": "!+d", "CtrlAltShift": "^!+d"} 
        	5_backText := {"None": "k", "Ctrl": "^k", "Alt": "!k", "Shift": "+k", "CtrlAlt": "^!k", "CtrlShift": "^+k", "AltShift": "!+k", "CtrlAltShift": "^!+k"}  
        ; 特定のキーに対応する値を変更
        	5_backText_DU := 5_backText["None"]

        ; Numpad6の組み合わせに応じた変すうの定義 テンキーの6
        	6_frontText := {"None": "e", "Ctrl": "^e", "Alt": "!e", "Shift": "+e", "CtrlAlt": "^!e", "CtrlShift": "^+e", "AltShift": "!+e", "CtrlAltShift": "^!+e"} 
        	6_backText := {"None": "i", "Ctrl": "^i", "Alt": "!i", "Shift": "+i", "CtrlAlt": "^!i", "CtrlShift": "^+i", "AltShift": "!+i", "CtrlAltShift": "^!+i"}  
        ; 特定のキーに対応する値を変更
        	6_backText_DU := 6_backText["None"]

        ; Numpad7の組み合わせに応じた変すうの定義 テンキーの7
        	7_frontText := {"None": "x", "Ctrl": "^+z", "Alt": "!x", "Shift": "+x", "CtrlAlt": "^!x", "CtrlShift": "^+x", "AltShift": "!+x", "CtrlAltShift": "^!+x"}
        	7_backText := {"None": "m", "Ctrl": "^m", "Alt": "!m", "Shift": "+m", "CtrlAlt": "^!m", "CtrlShift": "^+m", "AltShift": "!+m", "CtrlAltShift": "^!+m"}  
        ; 特定のキーに対応する値を変更
        	7_backText_DU := 7_backText["None"]

        ; Numpad8の組み合わせに応じた変すうの定義 テンキーの8
        	8_frontText := {"None": "s", "Ctrl": "^s", "Alt": "!s", "Shift": "+s", "CtrlAlt": "^!s", "CtrlShift": "^+s", "AltShift": "!+s", "CtrlAltShift": "^!+s"} 
        	8_backText := {"None": "j", "Ctrl": "^j", "Alt": "!j", "Shift": "+j", "CtrlAlt": "^!j", "CtrlShift": "^+j", "AltShift": "!+j", "CtrlAltShift": "^!+j"}  
        ; 特定のキーに対応する値を変更
        	8_frontText_DU := 8_frontText["Shift"]

        ; Numpad9の組み合わせに応じた変すうの定義 テンキーの9
        	9_frontText := {"None": "w", "Ctrl": "^w", "Alt": "!w", "Shift": "+w", "CtrlAlt": "^!w", "CtrlShift": "^+w", "AltShift": "!+w", "CtrlAltShift": "^!+w"} 
        	9_backText := {"None": "u", "Ctrl": "^u", "Alt": "!u", "Shift": "+u", "CtrlAlt": "^!u", "CtrlShift": "^+u", "AltShift": "!+u", "CtrlAltShift": "^!+u"}  
        ; 特定のキーに対応する値を変更
        	9_backText_DU := 9_backText["None"]

        ; NumpadDotの組み合わせに応じた変すうの定義 テンキーの.
        	Dot_frontText := {"None": "p", "Ctrl": "^p", "Alt": "!p", "Shift": "+p", "CtrlAlt": "^!p", "CtrlShift": "^+p", "AltShift": "!+p", "CtrlAltShift": "^!+p"}
        	Dot_backText := {"None": "t", "Ctrl": "^t", "Alt": "!t", "Shift": "+t", "CtrlAlt": "^!t", "CtrlShift": "^+t", "AltShift": "!+t", "CtrlAltShift": "^!+t"}
        ; 特定のキーに対応する値を変更
        	Dot_backText_DU := Dot_backText["None"]

        ; NumpadDivの組み合わせに応じた変すうの定義 テンキーの/
        	Div_frontText := {"None": "a", "Ctrl": "^a", "Alt": "!a", "Shift": "+a", "CtrlAlt": "^!a", "CtrlShift": "^+a", "AltShift": "!+a", "CtrlAltShift": "^!+a"}   
        	Div_backText := {"None": "h", "Ctrl": "^h", "Alt": "!h", "Shift": "+h", "CtrlAlt": "^!h", "CtrlShift": "^+h", "AltShift": "!+h", "CtrlAltShift": "^!+h"}    
        ; 特定のキーに対応する値を変更
        	Div_backText_DU := Div_backText["None"]

        ; NumpadMultの組み合わせに応じた変すうの定義 テンキーの*
        	Mult_frontText := {"None": "q", "Ctrl": "^q", "Alt": "!q", "Shift": "+q", "CtrlAlt": "^!q", "CtrlShift": "^+q", "AltShift": "!+q", "CtrlAltShift": "^!+q"}  
        	Mult_backText := {"None": "c", "Ctrl": "^c", "Alt": "!c", "Shift": "+c", "CtrlAlt": "^!c", "CtrlShift": "^+c", "AltShift": "!+c", "CtrlAltShift": "^!+c"}   
        ; 特定のキーに対応する値を変更
        	Mult_backText_DU := Mult_backText["None"]

        ; NumpadSubの組み合わせに応じた変すうの定義 テンキーの/
        	Sub_frontText := {"None": "1", "Ctrl": "^Numpadsub", "Alt": "!1", "Shift": "+1", "CtrlAlt": "^!1", "CtrlShift": "^+1", "AltShift": "!+1", "CtrlAltShift": "^!+1"}
        	Sub_backText := {"None": "4", "Ctrl": "^4", "Alt": "!4", "Shift": "+4", "CtrlAlt": "^!4", "CtrlShift": "^+4", "AltShift": "!+4", "CtrlAltShift": "^!+4"}    
        ; 特定のキーに対応する値を変更
        	Sub_backText_DU := Sub_backText["None"]

        ; NumpadAddの組み合わせに応じた変すうの定義 テンキーの+
        	Add_frontText := {"None": "2", "Ctrl": "^Numpadadd", "Alt": "!2", "Shift": "+2", "CtrlAlt": "^!2", "CtrlShift": "^+2", "AltShift": "!+2", "CtrlAltShift": "^!+2"}
        	Add_backText := {"None": "4", "Ctrl": "^4", "Alt": "!4", "Shift": "+4", "CtrlAlt": "^!4", "CtrlShift": "^+4", "AltShift": "!+4", "CtrlAltShift": "^!+4"}    
        ; 特定のキーに対応する値を変更
        	Add_backText_DU := Add_backText["None"]

        ; NumpadEnterの組み合わせに応じた変すうの定義 テンキーのenter
        	Enter_frontText := {"None": "{Enter}", "Ctrl": "^{Enter}", "Alt": "!{Enter}", "Shift": "+{Enter}", "CtrlAlt": "^!{Enter}", "CtrlShift": "^+{Enter}", "AltShift": "!+{Enter}", "CtrlAltShift": "^!+{Enter}"} 
        	Enter_backText := {"None": "Esc", "Ctrl": "^{Esc}", "Alt": "!{Esc}", "Shift": "+{Esc}", "CtrlAlt": "^!{Esc}", "CtrlShift": "^+{Esc}", "AltShift": "!+{Esc}", "CtrlAltShift": "^!+{Esc}"}  
        ; 特定のキーに対応する値を変更
        	Enter_backText_DU := Enter_backText["None"]

        ; Tabの組み合わせに応じた変すうの定義 Tab（キーボードのtab含む）
        	Tab_frontText := {"None": "{Tab}", "Ctrl": "^z", "Alt": "!z", "Shift": "+z", "CtrlAlt": "^!z", "CtrlShift": "^+z", "AltShift": "!+z", "CtrlAltShift": "^!+z"}
        	Tab_backText := {"None": "z", "Ctrl": "^{Tab}", "Alt": "!{Tab}", "Shift": "+{Tab}", "CtrlAlt": "^!{Tab}", "CtrlShift": "^+{Tab}", "AltShift": "!+{Tab}", "CtrlAltShift": "^!+{Tab}"}
        ; 特定のキーに対応する値を変更
        	Tab_backText_DU := Tab_backText["None"]

 