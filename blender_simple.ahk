#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%
#InstallKeybdHook
#UseHook

; ============================================================
; Blender 左手デバイス - シンプル確実版
; ============================================================
; - 関数を使わず、ホットキーラベル内に直接ロジックを書く
; - tap/hold判定はKeyWaitで行うが、修飾キー/Layerは事前判定
; ============================================================

; ---- マッピング(オブジェクトではなくグローバル変数で個別定義) ----
; tap/hold値の取得は GetTap(key) / GetHold(key) 関数で
; F23/F24 レイヤー上書きは個別関数で
; 今回はシンプルに「ホットキーごとにべた書き」

; ============================================================
#IfWinActive ahk_exe blender.exe

; ---- Numpad0 (B位置) tap=g hold=b ----
*Numpad0::
    if (GetKeyState("F23","P")) {
        SendInput, {Blind}0
        return
    }
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}+c
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        ; Ctrl単独+Numpad0 → Ctrl+B (ベベル)
        if (Mods = "^") {
            SendInput, {Blind}b
            return
        }
        SendInput, {Blind}g
        return
    }
    KeyWait, Numpad0, T0.3
    if (ErrorLevel) {
        Send b
        KeyWait, Numpad0
    } else {
        Send g
    }
return

; ---- Numpad1 (V位置) tap=v hold=. ----
*Numpad1::
    if (GetKeyState("F23","P")) {
        SendInput, {Blind}3
        return
    }
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}{Numpad0}
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}v
        return
    }
    KeyWait, Numpad1, T0.3
    if (ErrorLevel) {
        Send .
        KeyWait, Numpad1
    } else {
        Send v
    }
return

; ---- Numpad2 (F位置) tap=f hold=l ----
*Numpad2::
    if (GetKeyState("F23","P")) {
        SendInput, {Blind}6
        return
    }
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}.
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}f
        return
    }
    KeyWait, Numpad2, T0.3
    if (ErrorLevel) {
        Send l
        KeyWait, Numpad2
    } else {
        Send f
    }
return

; ---- Numpad3 (R位置) tap=r hold=o ----
*Numpad3::
    if (GetKeyState("F23","P")) {
        SendInput, {Blind}9
        return
    }
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}{Home}
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}r
        return
    }
    KeyWait, Numpad3, T0.3
    if (ErrorLevel) {
        Send o
        KeyWait, Numpad3
    } else {
        Send r
    }
return

; ---- Numpad4 (C位置) tap=c hold=g ----
*Numpad4::
    if (GetKeyState("F23","P")) {
        SendInput, {Blind}2
        return
    }
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}{Numpad3}
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}c
        return
    }
    KeyWait, Numpad4, T0.3
    if (ErrorLevel) {
        Send g
        KeyWait, Numpad4
    } else {
        Send c
    }
return

; ---- Numpad5 (D位置) tap=d hold=k ----
*Numpad5::
    if (GetKeyState("F23","P")) {
        SendInput, {Blind}5
        return
    }
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}{Numpad5}
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}d
        return
    }
    KeyWait, Numpad5, T0.3
    if (ErrorLevel) {
        Send k
        KeyWait, Numpad5
    } else {
        Send d
    }
return

; ---- Numpad6 (E位置) tap=e hold=i ----
*Numpad6::
    if (GetKeyState("F23","P")) {
        SendInput, {Blind}8
        return
    }
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}^{Numpad3}
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}e
        return
    }
    KeyWait, Numpad6, T0.3
    if (ErrorLevel) {
        Send i
        KeyWait, Numpad6
    } else {
        Send e
    }
return

; ---- Numpad7 (X位置) tap=x hold=m ----
*Numpad7::
    if (GetKeyState("F23","P")) {
        SendInput, {Blind}1
        return
    }
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}{Numpad1}
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}x
        return
    }
    KeyWait, Numpad7, T0.3
    if (ErrorLevel) {
        Send m
        KeyWait, Numpad7
    } else {
        Send x
    }
return

; ---- Numpad8 (S位置) tap=s hold=j ----
*Numpad8::
    if (GetKeyState("F23","P")) {
        SendInput, {Blind}4
        return
    }
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}{Numpad7}
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}s
        return
    }
    KeyWait, Numpad8, T0.3
    if (ErrorLevel) {
        Send j
        KeyWait, Numpad8
    } else {
        Send s
    }
return

; ---- Numpad9 (W位置) tap=w hold=u ----
*Numpad9::
    if (GetKeyState("F23","P")) {
        SendInput, {Blind}7
        return
    }
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}^{Numpad7}
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}w
        return
    }
    KeyWait, Numpad9, T0.3
    if (ErrorLevel) {
        Send u
        KeyWait, Numpad9
    } else {
        Send w
    }
return

; ---- NumpadDot (T位置) tap=t hold=p ----
*NumpadDot::
    if (GetKeyState("F23","P")) {
        SendInput, {Blind}.
        return
    }
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}n
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}t
        return
    }
    KeyWait, NumpadDot, T0.3
    if (ErrorLevel) {
        Send p
        KeyWait, NumpadDot
    } else {
        Send t
    }
return

; ---- NumpadDiv (A位置) tap=a hold=Shift+H ----
*NumpadDiv::
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}/
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}a
        return
    }
    KeyWait, NumpadDiv, T0.3
    if (ErrorLevel) {
        Send +h
        KeyWait, NumpadDiv
    } else {
        Send a
    }
return

; ---- NumpadMult (Q位置) tap=q hold=c ----
*NumpadMult::
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}z
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        SendInput, {Blind}q
        return
    }
    KeyWait, NumpadMult, T0.3
    if (ErrorLevel) {
        Send c
        KeyWait, NumpadMult
    } else {
        Send q
    }
return

; ---- 最上段: 数字送信(選択モード) ----
*NumpadSub::SendInput, {Blind}1
*NumpadAdd::SendInput, {Blind}2
*NumpadEnter::SendInput, {Blind}3

; ---- Tab (Z位置) tap={Tab} hold=z ----
*Tab::
    if (GetKeyState("F24","P")) {
        SendInput, {Blind}^{Tab}
        return
    }
    Mods := GetMods()
    if (Mods != "") {
        ; Ctrl+Shift+Tab → Ctrl+Shift+Z (やり直し)
        if (Mods = "^+") {
            SendInput, {Blind}z
            return
        }
        ; Ctrl+Tab → Ctrl+Z (アンドゥ)
        if (Mods = "^") {
            SendInput, {Blind}z
            return
        }
        SendInput, {Blind}{Tab}
        return
    }
    KeyWait, Tab, T0.3
    if (ErrorLevel) {
        Send z
        KeyWait, Tab
    } else {
        Send {Tab}
    }
return

; ---- F23/F24 レイヤーキー (単独では何もしない) ----
*F23::return
*F24::return

#IfWinActive

; ============================================================
; ヘルパー関数: 押されている修飾キーをAHK記法で返す
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
