#Requires AutoHotkey v2.0
#SingleInstance Force
SendMode "Input"      ; 高速＆確実に送る

;------------------------------------------
; ▼ 出力フォーマットを Map で定義
;------------------------------------------
dateFmt := Map(
    "None",      "yyyyMMdd",        ; 無変換 + y
    "Shift",     "yy'_'MMdd",       ; 無変換 + Shift + y
    "Ctrl",      "yyyy-MM-dd",      ; 無変換 + Ctrl + y
    "CtrlShift", "yyyy'/'MM'/'dd"   ; 無変換 + Ctrl + Shift + y
)

;------------------------------------------
; ▼ 無変換(vk1D) + y で日付を吐く
;------------------------------------------
vk1D & y:: {
    isShift := GetKeyState("Shift", "P")
    isCtrl  := GetKeyState("Ctrl",  "P")

    ; ── 1) 強制的に半角英数へ（元に戻さない）
    ; 「英数 / Disable IME」キーは機種で sc が違う場合あり。
    ; 日本語109配列なら  vkF3 sc029  が一般的。
    Send "{vkF3sc029}"
    Sleep 30   ; IME が切り替わる猶予（おまじない）

    ; ── 2) 出力フォーマットを決定
    if (isCtrl && isShift)
        fmt := dateFmt["CtrlShift"]
    else if (isCtrl)
        fmt := dateFmt["Ctrl"]
    else if (isShift)
        fmt := dateFmt["Shift"]
    else
        fmt := dateFmt["None"]

    ; ── 3) 日付生成 → 送信
    out := FormatTime(A_Now, fmt)
    SendText out
}

