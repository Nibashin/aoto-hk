#Requires AutoHotkey v1.1
#NoEnv
#SingleInstance Force
#Persistent
SendMode Input
SetWorkingDir %A_ScriptDir%

global selectedValue := 0
global leftValue := ""
global rightValue := ""
global extraEnter := 0
global extraShiftEnter := 0

;-------------------------------------
; GUI表示（F1キーで起動）
;-------------------------------------
F1::
    Gui, Destroy
    Gui, Add, Text, x10 y10, 数値を選択または入力してください (1～10ボタン or 中央入力)
    
    ; 1～10ボタン配置
    xPos := 10, yPos := 40
    Loop, 10 {
        btnLabel := A_Index
        Gui, Add, Button, x%xPos% y%yPos% w25 h25 gButtonClicked, %btnLabel%
        xPos += 30
        if (Mod(A_Index, 5) = 0) {
            xPos := 10, yPos += 40
        }
    }
    
    ; 左テキストボックス（Windows+V送信前の文字）
    Gui, Add, Text, x10 y120, Left:
    Gui, Add, Edit, x40 y118 w60 vLeftTextValue
    
    ; 中央テキストボックス（数値入力）
    Gui, Add, Text, x110 y120, Num:
    Gui, Add, Edit, x140 y118 w40 vMyCustomValue
    
    ; 右テキストボックス（Windows+V送信後の文字）
    Gui, Add, Text, x190 y120, Right:
    Gui, Add, Edit, x230 y118 w60 vRightTextValue
    
    ; チェックボックス（Enter / Shift+Enter）※どちらか一方のみ有効
    Gui, Add, Checkbox, x10 y155 vExtraKeyEnter gExtraCheck, Enter
    Gui, Add, Checkbox, x70 y155 vExtraKeyShiftEnter gExtraCheck, Shift+Enter
    
    ; OKボタン（数値自由入力の場合）
    Gui, Add, Button, x230 y155 w60 gOkClicked, OK
    
    Gui, Show, w310 h190, 入力画面
return

;-------------------------------------
; チェックボックスの相互排他処理
;-------------------------------------
ExtraCheck:
    GuiControlGet, valEnter, , ExtraKeyEnter
    GuiControlGet, valShift, , ExtraKeyShiftEnter
    if (A_GuiControl = "ExtraKeyEnter" && valEnter)
        GuiControl,, ExtraKeyShiftEnter, 0
    if (A_GuiControl = "ExtraKeyShiftEnter" && valShift)
        GuiControl,, ExtraKeyEnter, 0
return

;-------------------------------------
; 1～10ボタン押下時の処理
;-------------------------------------
ButtonClicked:
    GuiControlGet, ctrlVal,, %A_GuiControl%
    if RegExMatch(ctrlVal, "^\d+$") {
        selectedValue := ctrlVal
        GuiControlGet, leftValue, , LeftTextValue
        GuiControlGet, rightValue, , RightTextValue
        GuiControlGet, extraEnter, , ExtraKeyEnter
        GuiControlGet, extraShiftEnter, , ExtraKeyShiftEnter
        Gui, Destroy
        Gosub, StartMacro
    }
return

;-------------------------------------
; OKボタン押下時の処理（数値自由入力の場合）
;-------------------------------------
OkClicked:
    GuiControlGet, typedValue,, MyCustomValue
    if (typedValue = "") {
        MsgBox, 48, エラー, 数値を入力してください。
        return
    }
    if RegExMatch(typedValue, "^\d+$") {
        selectedValue := typedValue
        if (selectedValue < 1) {
            MsgBox, 48, エラー, 1以上の数値を入力してください。
            return
        }
        GuiControlGet, leftValue, , LeftTextValue
        GuiControlGet, rightValue, , RightTextValue
        GuiControlGet, extraEnter, , ExtraKeyEnter
        GuiControlGet, extraShiftEnter, , ExtraKeyShiftEnter
        Gui, Destroy
        Gosub, StartMacro
    } else {
        MsgBox, 48, エラー, 数値を入力してください(整数)。
    }
return

;-------------------------------------
; マクロ実行部
;-------------------------------------
StartMacro:
    X := selectedValue
    if (X < 1)
        return
    Loop, %X% {
        ; 強制停止判定（Escキーが押されていればループ終了）
        if GetKeyState("Esc", "P") {
            MsgBox, 64, 停止, 強制停止されました。
            break
        }
        i := A_Index
        
        ; (1) 左テキストがあればUnicode送信
        if (leftValue != "") {
            SendUnicode(leftValue)
            Sleep, 300
        }
        
        ; (2) Windows+V送信
        SendInput, #v
        Sleep, 300
        
        ; (3) Downキーを (i-1) 回送信
        downCount := i - 1
        Loop, %downCount% {
            if GetKeyState("Esc", "P") {
                MsgBox, 64, 停止, 強制停止されました。
                break 2
            }
            SendInput, {Down}
            Sleep, 150
        }
        
        ; (4) Enterでクリップ履歴選択確定
        SendInput, {Enter}
        Sleep, 600
        
        ; (5) 右テキストがあればUnicode送信
        if (rightValue != "") {
            SendUnicode(rightValue)
            Sleep, 600
            ; 右テキストに全角文字が含まれている場合は、送信後にEnterキーを追加
            if RegExMatch(rightValue, "[^\x00-\x7F]") {
                SendInput, {Enter}
                Sleep, 300
            }
        }
        
        ; (6) チェックボックス設定に応じた追加送信（Enter または Shift+Enter）
        if (extraEnter) {
            SendInput, {Enter}
            Sleep, 600
        } else if (extraShiftEnter) {
            SendInput, +{Enter}
            Sleep, 600
        }
    }
return

;-------------------------------------
; SendUnicode() : テキストを1文字ずつUnicode送信する関数
;-------------------------------------
SendUnicode(text) {
    Loop, Parse, text
    {
        char := A_LoopField
        code := Asc(char)
        hex := Format("{:04X}", code)
        SendInput, {U+%hex%}
        Sleep, 50
    }
}
