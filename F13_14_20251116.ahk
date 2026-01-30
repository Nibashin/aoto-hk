#Requires AutoHotkey v1.1
#NoEnv  ; 推奨: 環境変数を無視してパフォーマンス向上
#SingleInstance Force ; 多重起動を防ぐ
SendMode Input  ; 推奨: 高速で信頼性の高い入力モード
SetWorkingDir %A_ScriptDir%  ; スクリプトのディレクトリを作業ディレクトリにする

;; ========================================
;; グローバル変数の初期化
;; ========================================
global F14_Used := false  ; F14が組み合わせで使われたかのフラグ
global F15_Used := false  ; F15が組み合わせで使われたかのフラグ

return ; 自動実行セクションの終了

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
;; F14(無変換キー)の設定
;; ========================================

; --- F14単体押し ---
F14::
    F14_Used := false
return

F14 Up::
    if (!F14_Used)
        IME_SET(0)  ; 半角英数入力に切り替え
    F14_Used := false
return


;; ========================================
;; F15(変換キー)の設定
;; ========================================

; --- F15単体押し ---
F15::
    F15_Used := false
return

F15 Up::
    if (!F15_Used)
        IME_SET(1)  ; ひらがな入力に切り替え
    F15_Used := false
return


;; ========================================
;; F15との組み合わせ【既存】
;; ========================================

; 変換 + k, j, h, l でカーソル移動（修飾キー対応）
F15 & k::
    F15_Used := true
    Send, % GetModifiers() . "{Up}"
return

F15 & j::
    F15_Used := true
    Send, % GetModifiers() . "{Down}"
return

F15 & h::
    F15_Used := true
    Send, % GetModifiers() . "{Left}"
return

F15 & l::
    F15_Used := true
    Send, % GetModifiers() . "{Right}"
return

; 変換 + f で半角/全角切り替え
F15 & f::
    F15_Used := true
    Send, {vkF3sc029}
return

; 変換 + x でBackspace / Shift+変換+x でDelete
F15 & x::
    F15_Used := true
    if GetKeyState("Shift", "P")
        Send, {Delete}
    else
        Send, {BS}
return

; 変換 + Shift + o で+改行 / 変換 + o で改行
F15 & o::
    F15_Used := true
    if GetKeyState("Shift", "P") {
        Send, +{Enter}
    } else {
        Send, {Enter}
    }
return


;; ========================================
;; F15との組み合わせ【最優先】vim風
;; ========================================

; 変換 + w で次の単語へ / Shift+変換+w で次の単語まで選択
F15 & w::
    F15_Used := true
    if GetKeyState("Shift", "P")
        Send, ^+{Right}
    else
        Send, ^{Right}
return

; 変換 + b で前の単語へ / Shift+変換+b で前の単語まで選択
F15 & b::
    F15_Used := true
    if GetKeyState("Shift", "P")
        Send, ^+{Left}
    else
        Send, ^{Left}
return

; 変換 + 0 で行頭へ / Shift+変換+0 で行頭まで選択
F15 & 0::
    F15_Used := true
    if GetKeyState("Shift", "P")
        Send, +{Home}
    else
        Send, {Home}
return

; 変換 + 4 で行末へ / Shift+変換+4 で行末まで選択
F15 & 4::
    F15_Used := true
    if GetKeyState("Shift", "P")
        Send, +{End}
    else
        Send, {End}
return

; 変換 + g でファイル先頭へ / Shift+変換+g でファイル末尾へ
F15 & g::
    F15_Used := true
    if GetKeyState("Shift", "P")
        Send, ^{End}
    else
        Send, ^{Home}
return

; 変換 + u でアンドゥ（Ctrl+Z）
F15 & u::
    F15_Used := true
    Send, ^z
return

; 変換 + r でリドゥ（Ctrl+Y）
F15 & r::
    F15_Used := true
    Send, ^y
return

; 変換 + c でコピー（Ctrl+C）選択範囲をコピー
F15 & c::
    F15_Used := true
    Send, ^c
return

; 変換 + p でペースト（Ctrl+V）
F15 & p::
    F15_Used := true
    Send, ^v
return


;; ========================================
;; F15との組み合わせ【高優先】vim風
;; ========================================

; 変換 + d で半ページ下（Ctrl使用時）/ 行削除（通常時）
;F15 & d::
;    F15_Used := true
;    if GetKeyState("Ctrl", "P")
;        Send, {PgDn}  ; Ctrl+d で半ページ下（vim風）
;    else
;        Send, ^+k  ; d で行削除（VSCodeのCtrl+Shift+K）
;return

; 変換 + y で行をコピー（Home→Shift+End→Ctrl+C→Down）
;F15 & y::
;    F15_Used := true
;    Send, {Home}
;    Send, +{End}
;    Send, ^c
;    Send, {Down}
;return

; 変換 + s で保存（Ctrl+S）
;F15 & s::
;    F15_Used := true
;    Send, ^s
;return

; 変換 + t で新しいタブ（Ctrl+T）
F15 & t::
    F15_Used := true
    Send, ^t
return


;; ========================================
;; VSCode専用: Ctrl+S で .ahk ファイルを自動実行
;; ========================================
;~^s::
;    ; アクティブウィンドウがVSCodeの場合のみ実行
;    ; タイトルマッチモードを部分一致に変更しておくと安心です
;    SetTitleMatchMode, 2
;    
;    if WinActive("ahk_exe Code.exe")
;    {
;        ; 保存が完了するまで待機
;        Sleep, 200
;
;        ; アクティブウィンドウのハンドルを取得
;        WinGet, hwnd, ID, A
;
;        if !hwnd
;        {
;            return
;        }
;
;        ; ウィンドウタイトルを取得
;        WinGetTitle, title, ahk_id %hwnd%
;
;        if (title = "")
;        {
;            return
;        }
;
;        ; タイトルから .ahk ファイル名を抽出
;        ; RegExMatch(対象, パターン, 出力変数)
;        if RegExMatch(title, "(.+\.ahk) - Visual Studio Code", matches)
;        {
;            ; matches1 に正規表現の()の中身(ファイル名)が入る
;            fileName := matches1
;
;            ; ▼【重要】パスの設定
;            ; マイドキュメント内のahkフォルダなら以下のように書くのが安全です
;            fullPath := A_MyDocuments . "\ahk\" . fileName
;            
;            ; 元のコードのパス指定を使いたい場合はこちらを有効にしてください
;            ; fullPath := "C:\Users\user\Documents\ahk\" . fileName
;
;            ; ファイルが存在するか確認してから実行
;            if FileExist(fullPath)
;            {
;                Run, "%fullPath%"
;                Tooltip, Reloaded: %fileName%
;                SetTimer, RemoveTooltip, -1000
;            }
;        }
;    }
;return
;
;RemoveTooltip:
;    Tooltip
;return

;; ========================================
;; 必須関数: IME_SET (これがないとエラーになります)
;; ========================================
IME_SET(SetSts, WinTitle="A")    {
    ControlGet,hwnd,HWND,,,%WinTitle%
    if  (WinActive(WinTitle))   {
        ptrSize := !A_PtrSize ? 4 : A_PtrSize
        VarSetCapacity(stGTI, cbSize:=4+4+(PtrSize*6)+16, 0)
        NumPut(cbSize, stGTI,  0, "UInt")   ;   DWORD   cbSize;
        hwnd := DllCall("GetGUIThreadInfo", Uint,0, Ptr,&stGTI)
                 ? NumGet(stGTI,8+PtrSize,"Ptr") : hwnd
    }

    return DllCall("SendMessage"
          , Ptr, DllCall("imm32\ImmGetDefaultIMEWnd", Ptr,hwnd)
          , UInt, 0x0283  ;Message : WM_IME_CONTROL
          ,  Int, 0x006   ;wParam  : IMC_SETOPENSTATUS
          ,  Int, SetSts) ;lParam  : 0 or 1
}