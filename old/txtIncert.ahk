^s::  ; Ctrl + S で動作するショートカット
    ; クリップボードの内容を取得
    ClipWait, 2  ; クリップボードが空でないか2秒間待機
    if ErrorLevel
    {
        MsgBox, クリップボードが空です。
        return
    }
    
    clipboardContent := Clipboard

    ; 1行目を抽出してタイトルとして使う
    StringSplit, lines, clipboardContent, `n  ; 改行で分割
    title := lines1

    ; ファイル名として不正な文字を置き換え
    StringReplace, title, title, \, -, All
    StringReplace, title, title, /, -, All
    StringReplace, title, title, :, -, All
    StringReplace, title, title, *, -, All
    StringReplace, title, title, ?, -, All
    StringReplace, title, title, ", -, All
    StringReplace, title, title, <, -, All
    StringReplace, title, title, >, -, All
    StringReplace, title, title, |, -, All

    ; ファイルパスを指定（ここではデスクトップ）
    FilePath := A_Desktop . "\" . title . ".txt"

    ; クリップボードの内容をテキストファイルとして保存
    FileAppend, %clipboardContent%, %FilePath%

    ; 保存完了の通知
    MsgBox, テキストファイルが保存されました！`nファイル名: %title%.txt
return
