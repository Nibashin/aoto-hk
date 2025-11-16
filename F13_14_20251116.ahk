;; ========================================
;; AutoHotkey v1.1 キーバインド設定
;; ========================================

;; ========================================
;; グローバル変数の初期化
;; ========================================
F13_Used := false  ; F13が組み合わせで使われたかのフラグ
F14_Used := false  ; F14が組み合わせで使われたかのフラグ


;; ========================================
;; 修飾キー取得関数
;; ========================================
; 現在押されている修飾キー(Ctrl, Alt, Shift, Win)を取得して文字列で返す
GetModifiers() {
    mod := ""
    if GetKeyState("Ctrl", "P")
        mod .= "^"  ; Ctrl
    if GetKeyState("Alt", "P")
        mod .= "!"  ; Alt
    if GetKeyState("Shift", "P")
        mod .= "+"  ; Shift
    if GetKeyState("LWin", "P") || GetKeyState("RWin", "P")
        mod .= "#"  ; Windowsキー
    return mod
}


;; ========================================
;; F13(無変換キー)の設定
;; ========================================

; --- F13単体押し ---
F13::
    F13_Used := false
return

F13 Up::
    if (!F13_Used)
        IME_SET(0)  ; 半角英数入力に切り替え
    F13_Used := false
return



;; ========================================
;; F14(変換キー)の設定
;; ========================================

; --- F14単体押し ---
F14::
    F14_Used := false
return

F14 Up::
    if (!F14_Used)
        IME_SET(1)  ; ひらがな入力に切り替え
    F14_Used := false
return


;; ========================================
;; F14との組み合わせ【既存】
;; ========================================

; 変換 + k, j, h, l でカーソル移動（修飾キー対応）
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

; 変換 + f で半角/全角切り替え
F14 & f::
    F14_Used := true
    Send, {vkF3sc029}
return

; 変換 + x でBackspace / Shift+変換+x でDelete
F14 & x::
    F14_Used := true
    if GetKeyState("Shift", "P")
        Send, {Delete}
    else
        Send, {BS}
return

; 変換 + Shift + o で+改行 / 変換 + o で改行
F14 & o::
    F14_Used := true
    if GetKeyState("Shift", "P") {
        Send, +{Enter}
    } else {
        Send, {Enter}
    }
return


;; ========================================
;; F14との組み合わせ【最優先】vim風
;; ========================================

; 変換 + w で次の単語へ / Shift+変換+w で次の単語まで選択
F14 & w::
    F14_Used := true
    if GetKeyState("Shift", "P")
        Send, ^+{Right}
    else
        Send, ^{Right}
return

; 変換 + b で前の単語へ / Shift+変換+b で前の単語まで選択
F14 & b::
    F14_Used := true
    if GetKeyState("Shift", "P")
        Send, ^+{Left}
    else
        Send, ^{Left}
return

; 変換 + 0 で行頭へ / Shift+変換+0 で行頭まで選択
F14 & 0::
    F14_Used := true
    if GetKeyState("Shift", "P")
        Send, +{Home}
    else
        Send, {Home}
return

; 変換 + 4 で行末へ / Shift+変換+4 で行末まで選択
F14 & 4::
    F14_Used := true
    if GetKeyState("Shift", "P")
        Send, +{End}
    else
        Send, {End}
return

; 変換 + g でファイル先頭へ / Shift+変換+g でファイル末尾へ
F14 & g::
    F14_Used := true
    if GetKeyState("Shift", "P")
        Send, ^{End}
    else
        Send, ^{Home}
return

; 変換 + u でアンドゥ（Ctrl+Z）
F14 & u::
    F14_Used := true
    Send, ^z
return

; 変換 + r でリドゥ（Ctrl+Y）
F14 & r::
    F14_Used := true
    Send, ^y
return

; 変換 + c でコピー（Ctrl+C）選択範囲をコピー
F14 & c::
    F14_Used := true
    Send, ^c
return

; 変換 + p でペースト（Ctrl+V）
F14 & p::
    F14_Used := true
    Send, ^v
return

; 変換 + n で次を検索（F3） / Shift+変換+n で前を検索（Shift+F3）
;F14 & n::
;    F14_Used := true
;    if GetKeyState("Shift", "P")
;        Send, +{F3}
;    else
;        Send, {F3}
;return


;; ========================================
;; F14との組み合わせ【高優先】vim風
;; ========================================

; 変換 + d で半ページ下（Ctrl使用時）/ 行削除（通常時）
F14 & d::
    F14_Used := true
    if GetKeyState("Ctrl", "P")
        Send, {PgDn}  ; Ctrl+d で半ページ下（vim風）
    else
        Send, ^+k  ; d で行削除（VSCodeのCtrl+Shift+K）
return

; 変換 + y で行をコピー（Home→Shift+End→Ctrl+C→Down）
F14 & y::
    F14_Used := true
    Send, {Home}
    Send, +{End}
    Send, ^c
    Send, {Down}
return

; 変換 + s で保存（Ctrl+S）
F14 & s::
    F14_Used := true
    Send, ^s
return

; 変換 + t で新しいタブ（Ctrl+T）
F14 & t::
    F14_Used := true
    Send, ^t
return


;; ========================================
;; VSCode専用: Ctrl+S で .ahk ファイルを自動実行
;; ========================================
~^s::
    ; アクティブウィンドウがVSCodeの場合のみ実行
    if WinActive("ahk_exe Code.exe")
    {
        ; 保存が完了するまで待機
        Sleep, 100

        ; アクティブウィンドウのハンドルを取得
        WinGet, hwnd, ID, A

        if !hwnd
        {
            MsgBox, アクティブウィンドウのハンドルが取得できませんでした。
            return
        }

        ; ウィンドウタイトルを取得
        WinGetTitle, title, ahk_id %hwnd%

        if (StrLen(title) = 0)
        {
            MsgBox, ウィンドウタイトルを取得できませんでした。
            return
        }

        ; タイトルから .ahk ファイル名を抽出
        if RegExMatch(title, "(.+\.ahk) - Visual Studio Code", matches)
        {
            fileName := matches1

            ; フルパスを作成（実際のパスに置き換えてください）
            fullPath := "C:\Users\user\Documents\ahk\" . fileName

            ; スクリプトを実行
            Run, %fullPath%
        }
        else
        {
            MsgBox, 現在編集中のファイルは .ahk ファイルではないか、タイトルが想定と違います。
        }
    }
return