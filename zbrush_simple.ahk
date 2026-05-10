#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%
#InstallKeybdHook
#UseHook

; ============================================================
; ZBrush left-hand numpad - simple version
; ============================================================
; - Keeps the old Zbrush.ahk behavior, but removes editor reload logic.
; - Modifiers are handled before tap/hold where the old script had direct maps.
; - F17/F2 are intentionally not hooked here; MouseGestureL uses them for ZBrush.
; ============================================================

#IfWinActive ahk_class ZBrush

; ---- F13: K layer ----
*F13::SendInput, {Blind}k

; ---- Utility macros used for repeated subtool operations ----
+n::
    InputBox, loopCount,,Enter a number for loop count
    if (ErrorLevel || loopCount = "")
        return
    Loop, %loopCount% {
        SendInput, {F17}
        Sleep, 50
        SendInput, {Down}
        Sleep, 50
    }
    SendInput, {F17}
    MsgBox, all done
return

+!n::
    InputBox, loopCount,,Enter a number for loop count
    if (ErrorLevel || loopCount = "")
        return
    Loop, %loopCount% {
        SendInput, {LButton}
        Sleep, 50
        SendInput, {Down}
        Sleep, 50
    }
    SendInput, {LButton}
    MsgBox, all done
return

+^n::
    InputBox, command,,Enter a shortcut key
    if (ErrorLevel || command = "")
        return
    InputBox, loopCount,,Enter a number for loop count
    if (ErrorLevel || loopCount = "")
        return
    SendInput, %command%
    Loop, %loopCount% {
        SendInput, {Down}
        Sleep, 50
        SendInput, %command%
        Sleep, 50
    }
    MsgBox, all done
return

; ---- Backspace: tap=Backspace hold=Esc ----
*BackSpace::
    KeyWait, BackSpace, T0.3
    if (ErrorLevel) {
        SendInput, {Esc}
        KeyWait, BackSpace
    } else {
        SendInput, {BackSpace}
    }
return

; ---- Numpad0: tap=mask pick sequence hold=Gizmo 3D ----
*Numpad0::
    if (GetKeyState("LWin","P") || GetKeyState("RWin","P")) {
        SendInput, ^!+{F23}
        return
    }
    Mods := GetMods()
    if (Mods = "^") {
        SendInput, ^g
        return
    }
    if (Mods = "!") {
        SendInput, !b
        return
    }
    if (Mods = "^!") {
        SendInput, ^!b
        return
    }
    if (InStr(Mods, "+")) {
        SendInput, {Blind}b
        return
    }
    KeyWait, Numpad0, T0.3
    if (ErrorLevel) {
        SendInput, !g
        KeyWait, Numpad0
    } else {
        SendInput, w
        Sleep, 100
        SendInput, {Ctrl Down}
        Sleep, 100
        SendInput, {LButton}
        Sleep, 100
        SendInput, {Ctrl Up}
        Sleep, 100
        SendInput, q
    }
return

*NumpadIns::SendInput, {Blind}+b

; ---- Numpad1: tap=V hold=Shift+V ----
*Numpad1::
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}v
        return
    }
    KeyWait, Numpad1, T0.3
    if (ErrorLevel) {
        SendInput, +v
        KeyWait, Numpad1
    } else {
        SendInput, v
    }
return

*NumpadEnd::SendInput, {Blind}+v

; ---- Numpad2: tap=F hold=Shift+F ----
*Numpad2::
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}f
        return
    }
    KeyWait, Numpad2, T0.3
    if (ErrorLevel) {
        SendInput, +f
        KeyWait, Numpad2
    } else {
        SendInput, f
    }
return

*NumpadDown::SendInput, {Blind}+f

; ---- Numpad3: tap=R hold=Shift+R, Ctrl tap=Ctrl+O ----
*Numpad3::
    Mods := GetMods()
    if (Mods = "^") {
        SendInput, ^o
        return
    }
    if (Mods != "") {
        SendInput, {Blind}r
        return
    }
    KeyWait, Numpad3, T0.3
    if (ErrorLevel) {
        SendInput, +r
        KeyWait, Numpad3
    } else {
        SendInput, r
    }
return

*NumpadPgDn::SendInput, {Blind}+r

; ---- Numpad4: tap=Ctrl+Alt+Shift+D hold=C, Ctrl tap=Ctrl+C ----
*Numpad4::
    Mods := GetMods()
    if (Mods = "^") {
        SendInput, ^c
        return
    }
    if (Mods != "") {
        SendInput, {Blind}d
        return
    }
    KeyWait, Numpad4, T0.3
    if (ErrorLevel) {
        SendInput, c
        KeyWait, Numpad4
    } else {
        SendInput, ^!+d
    }
return

*NumpadLeft::SendInput, {Blind}+d

; ---- Numpad5: tap=K hold=Ctrl+Alt+Shift+K, Ctrl tap=Ctrl+D ----
*Numpad5::
    Mods := GetMods()
    if (Mods = "^") {
        SendInput, ^d
        return
    }
    if (Mods != "") {
        SendInput, {Blind}k
        return
    }
    KeyWait, Numpad5, T0.3
    if (ErrorLevel) {
        SendInput, ^!+k
        KeyWait, Numpad5
    } else {
        SendInput, k
    }
return

*NumpadClear::SendInput, {Blind}+k

; ---- Numpad6: tap=E hold=Shift+E ----
*Numpad6::
    if (GetKeyState("LWin","P") || GetKeyState("RWin","P")) {
        SendInput, {F17}
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}e
        return
    }
    KeyWait, Numpad6, T0.3
    if (ErrorLevel) {
        SendInput, +e
        KeyWait, Numpad6
    } else {
        SendInput, e
    }
return

*NumpadRight::SendInput, {Blind}+e

; ---- Numpad7: tap=X hold=Alt+X, Ctrl tap=Ctrl+Shift+Z ----
*Numpad7::
    Mods := GetMods()
    if (Mods = "^") {
        SendInput, ^+z
        return
    }
    if (Mods != "") {
        SendInput, {Blind}x
        return
    }
    KeyWait, Numpad7, T0.3
    if (ErrorLevel) {
        SendInput, !x
        KeyWait, Numpad7
    } else {
        SendInput, x
    }
return

*NumpadHome::SendInput, {Blind}+x

; ---- Numpad8: S ----
*Numpad8::SendInput, {Blind}s
*NumpadUp::SendInput, {Blind}+s

; ---- Numpad9: tap=W hold=Ctrl+W ----
*Numpad9::
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}w
        return
    }
    KeyWait, Numpad9, T0.3
    if (ErrorLevel) {
        SendInput, ^w
        KeyWait, Numpad9
    } else {
        SendInput, w
    }
return

*NumpadPgUp::SendInput, {Blind}+w

; ---- NumpadDot: tap=T hold=P, Shift/NumLock alias=Shift+P ----
*NumpadDot::
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}t
        return
    }
    KeyWait, NumpadDot, T0.3
    if (ErrorLevel) {
        SendInput, p
        KeyWait, NumpadDot
    } else {
        SendInput, t
    }
return

*NumpadDel::SendInput, {Blind}+p

; ---- NumpadDiv: tap=A hold=Shift+A, Ctrl tap=Ctrl+H ----
*NumpadDiv::
    Mods := GetMods()
    if (Mods = "^") {
        SendInput, ^h
        return
    }
    if (Mods != "") {
        SendInput, {Blind}a
        return
    }
    KeyWait, NumpadDiv, T0.3
    if (ErrorLevel) {
        SendInput, +a
        KeyWait, NumpadDiv
    } else {
        SendInput, a
    }
return

; ---- NumpadMult: tap=Q hold=Y ----
*NumpadMult::
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}q
        return
    }
    KeyWait, NumpadMult, T0.3
    if (ErrorLevel) {
        SendInput, y
        KeyWait, NumpadMult
    } else {
        SendInput, q
    }
return

; ---- Tab: Z with current modifiers ----
*Tab::SendInput, {Blind}z

; Keep possible layer keys silent in ZBrush. F17/F2 are left for MouseGestureL.
*F23::return
*F16::return

#IfWinActive

; ============================================================
; Helper: pressed modifiers in AHK notation, fixed order.
; ============================================================
GetMods() {
    m := ""
    if (GetKeyState("Ctrl","P"))
        m .= "^"
    if (GetKeyState("Shift","P"))
        m .= "+"
    if (GetKeyState("Alt","P"))
        m .= "!"
    return m
}
