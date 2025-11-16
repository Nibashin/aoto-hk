; グローバル変数を初期化
F14_Used := false

; 無変換 + k, j, h, l の組み合わせを処理
F13 & k::Send, % GetModifiers() . "{Up}"
F13 & j::Send, % GetModifiers() . "{Down}"
F13 & h::Send, % GetModifiers() . "{Left}"
F13 & l::Send, % GetModifiers() . "{Right}"

; 変換 + k, j, h, l の組み合わせを処理
F14 & k::
    F14_Used := true
    Send, % GetModifiers() . "{Up}"
return

F14 & j::
    F14_Used := true
    Send, % GetModifiers() . "{Down}"
return

F14 & h::
    F14_Used := true
    Send, % GetModifiers() . "{Left}"
return

F14 & l::
    F14_Used := true
    Send, % GetModifiers() . "{Right}"
return



GetModifiers() {
    mod := ""
    if GetKeyState("Ctrl", "P")
        mod .= "^"  ; Ctrl
    if GetKeyState("Alt", "P")
        mod .= "!"  ; Alt
    if GetKeyState("Shift", "P")
        mod .= "+"  ; Shift
    if GetKeyState("LWin", "P") || GetKeyState("RWin", "P")
        mod .= "#"  ; Windowsキー (LWin または RWin)
    return mod
}


; 無変換キー + 4(行末移動)または Shift+無変換キー + 4(行末まで選択)
F13 & 4::
    if GetKeyState("Shift", "P")
        Send, +{End}  ; 行末まで選択(Shift+End)
    else
        Send, {End}   ; 行末へ移動
return

; 無変換キー + 0(行頭移動)または Shift+無変換キー + 0(行頭まで選択)
F13 & 0::
    if GetKeyState("Shift", "P")
        Send, +{Home}  ; 頭まで選択(Shift+Home)
    else
        Send, {Home}   ; 頭へ移動
return

; 変換キー + f で半角/全角
F14 & f::
    F14_Used := true
    Send, {vkF3sc029}
return

; 変換キー + n で Ctrl+F11
F14 & n::
    F14_Used := true
    Send, ^+{F11}
return

F13::return

F14::
    F14_Used := false
return

F14 Up::
    if (!F14_Used)
        Send, 1
    F14_Used := false
return

; 一番上へ移動(変換 + 左Shift + g)
F14 & g::
    F14_Used := true
    if GetKeyState("Shift", "P")
        Send, ^+{End}  ; 一番下へ移動(Ctrl+End)
    else
        Send, ^+{Home} ; 一番上へ移動(Ctrl+Home)
return

; 行末に移動して改行(変換 + Shift + o)
F14 & o::
    F14_Used := true
    if GetKeyState("Shift", "P") {
        Send, {End}
        Send, {vkBBsc027}
        Send, {Enter}  ; 行末へ移動してから改行
    } else {
        Send, {Enter}
    }
return

; 削除(変換 + x)、または Shift + 変換 + x で Delete
F14 & x::
    F14_Used := true
    if GetKeyState("Shift", "P")
        Send, {Delete}  ; Delete
    else
        Send, {BS}      ; Backspace
return