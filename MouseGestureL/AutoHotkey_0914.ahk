
;; 05.無変換キー(左親指Ctrl)との組み合わせ
;; ●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
;; 【上下左右】

; 無変換 + k, j, h, l の組み合わせを処理
vk1d & k:: Send(GetModifiers() . "{Up}")
vk1d & j:: Send(GetModifiers() . "{Down}")
vk1d & h:: Send(GetModifiers() . "{Left}")
vk1d & l:: Send(GetModifiers() . "{Right}")

; 変換 + k, j, h, l の組み合わせを処理
vk1c & k:: Send(GetModifiers() . "{Up}")
vk1c & j:: Send(GetModifiers() . "{Down}")
vk1c & h:: Send(GetModifiers() . "{Left}")
vk1c & l:: Send(GetModifiers() . "{Right}")



GetModifiers() {
    mod := ""
    if GetKeyState("Ctrl", "P") {
        mod .= "^"  ; Ctrl
    }
    if GetKeyState("Alt", "P") {
        mod .= "!"  ; Alt
    }
    if GetKeyState("Shift", "P") {
        mod .= "+"  ; Shift
    }
    if GetKeyState("LWin", "P") || GetKeyState("RWin", "P") {
        mod .= "#"  ; Windowsキー (LWin または RWin)
    }
    return mod
}


; 無変換キー + 4（行末移動）または Shift+無変換キー + 4（行末まで選択）
vk1d & 4:: {
    if GetKeyState("Shift", "P") {
        Send("+{End}")  ; 行末まで選択(Shift+End)
    } else {
        Send("{End}")   ; 行末へ移動
    }
}

; 無変換キー + 0（行頭移動）または Shift+無変換キー + 0（行頭まで選択）
vk1d & 0:: {
    if GetKeyState("Shift", "P") {
        Send("+{Home}")  ; 頭まで選択(Shift+Home)
    } else {
        Send("{Home}")   ; 頭へ移動
    }
}
; 変換キー + 4（行末移動）または Shift+無変換キー + 4（行末まで選択）
vk1c & 4:: {
    if GetKeyState("Shift", "P") {
        Send("+{End}")  ; 行末まで選択(Shift+End)
    } else {
        Send("{End}")   ; 行末へ移動
    }
}

; 変換キー + 0（行頭移動）または Shift+無変換キー + 0（行頭まで選択）
vk1c & 0:: {
    if GetKeyState("Shift", "P") {
        Send("+{Home}")  ; 頭まで選択(Shift+Home)
    } else {
        Send("{Home}")   ; 頭へ移動
    }
}



; 変換キー + f で半角/全角
vk1c & f:: Send("{vkF3sc029}")

; 変換キー + n で Ctrl+F11
vk1c & n:: Send("^+{F11}")

vk1d:: return
vk1c:: return

; 一番上へ移動(変換 + 左Shift + g)
vk1c & g:: {
    if GetKeyState("Shift", "P") {
        Send("^+{End}")  ; 一番下へ移動(Ctrl+End)
    } else {
        Send("^+{Home}") ; 一番上へ移動(Ctrl+Home)
    }
}

; 行末に移動して改行（変換 + Shift + o）
vk1c & o:: {
    if GetKeyState("Shift", "P") {
        Send("{End}")
        Send("{Enter}")  ; 行末へ移動してから改行
    } else {
        Send("{Enter}")
    }
}

; 行末に移動して改行（無変換 + Shift + o）
vk1d & o:: {
    if GetKeyState("Shift", "P") {
        Send("{End}")
        Send("{Enter}")  ; 行末へ移動してから改行
    } else {
        Send("{Enter}")
    }
}

; 削除（変換 + x）、または Shift + 変換 + x で Delete
vk1c & x:: {
    if GetKeyState("Shift", "P") {
        Send("{Delete}")  ; Delete
    } else {
        Send("{BS}")      ; Backspace
    }
}
;==================================================

vk1d & q:: {
    if GetKeyState("Shift", "P") {
        Send("+{Escape}")  ; Delete
    } else {
        Send("{Escape}")      ; Backspace
    }
}
;==================================================
;==================================================





~^s::  ; Ctrl + S のホットキーをそのまま送信
{
    ; 1. アクティブウィンドウが VSCode か確認
    if WinActive("ahk_exe Code.exe")
    {
        ; VSCodeに対してCtrl+Sを送信した後、保存が完了するまで待機
        Sleep(100)  ; 必要に応じてこの値を調整（1秒=1000ms）

        ; 2. アクティブウィンドウのハンドルを取得
        hwnd := WinActive()

        ; ハンドルが取得できているか確認
        if !hwnd
        {
            MsgBox("アクティブウィンドウのハンドルが取得できませんでした。")
            return
        }

        ; 3. ウィンドウタイトルを取得
        title := WinGetTitle(hwnd)

        ; title の長さで値が入っているかを確認
        if (StrLen(title) = 0)
        {
            MsgBox("ウィンドウタイトルを取得できませんでした。")
            return
        }

        ; デバッグ用にタイトルを表示
        ;MsgBox("ウィンドウタイトル: " title)

        ; 4. matches を初期化
        matches := []

        ; 5. タイトルからファイル名を抽出
        match := RegExMatch(title, "(.+\.ahk) - Visual Studio Code", &matches)
        
        if (match)
        {
            ; matches[1]にマッチしたファイル名が格納されている
            fileName := matches[1]

            ; フルパスを作成 (例: "C:\Path\To\Your\Script\" の部分を実際のパスに置き換えてください)
            fullPath := "C:\Users\user\Documents\ahk\" . fileName

            ; 6. マッチしたファイル名を使ってスクリプトを実行
            ;MsgBox(fullpath) ;フルパスがあってるか確認するため
            Run(fullPath)
        }
        else
        {
            MsgBox("現在編集中のファイルは .ahk ファイル ではないか、タイトルが想定と違います。")
        }
    }
}

  