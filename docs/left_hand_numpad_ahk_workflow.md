# Left-hand numpad AHK workflow

このメモは、左手テンキー + 3Dconnexion ボタンを使うアプリ専用 AutoHotkey スクリプトを、次回 AI がスムーズに作り直すための作業記録です。2026-05-10 時点では ZBrush 用に `zbrush_simple.ahk` を作成した。

## 背景

ユーザーはワイヤレステンキーを左側に置き、左手で押す前提で使う。テンキーの下には 3Dconnexion デバイスがあり、そのボタンに `Shift` / `Ctrl` / `Alt` / `F23` / `F17` / `F2` / `F16` / `K` / `Space` / `S` などを割り当てて、テンキーと同時押しする。

ZBrush 側にはユーザー定義ホットキーが入っている。AHK は ZBrush の機能を直接呼ぶのではなく、テンキー操作を ZBrush 側ホットキーへ変換する薄いレイヤーとして使う。

## 主要ファイル

- 旧ZBrush AHK: `C:\Users\hp_23\Downloads\23_0616_0749_\23_0616_0749_\Zbrush.ahk`
- 旧ZBrush hotkeys: `C:\Users\hp_23\Downloads\23_0616_0749_\23_0616_0749_\Hotkeys.txt`
- 現行ZBrush hotkeys: `C:\Users\hp_23\AppData\Roaming\Maxon\Maxon ZBrush 2026_F3C8B4C4\ZStartup\HotKeys\StartupHotkeys.txt`
- Blender参考実装: `C:\Projects\aoto-hk\blender_simple.ahk`
- ZBrush整理版: `C:\Projects\aoto-hk\zbrush_simple.ahk`
- MouseGestureL: `C:\Projects\aoto-hk\MouseGestureL`

## 現在の方針

`blender_simple.ahk` と同じく、シンプルなべた書きにする。抽象化しすぎない。各キーのラベル内に「レイヤーキー判定」「修飾キー判定」「tap/hold判定」を明示する。

ZBrush 用は `#IfWinActive ahk_class ZBrush` で限定する。Notepad や VSCode 用の自動リロード処理は混ぜない。

`F17` と `F2` は MouseGestureL 側でも ZBrush ジェスチャートリガーとして使っているため、ZBrush AHK 側で奪いすぎない。必要な送信は可だが、ホットキーとして常時フックする時は競合を確認する。

## 3Dconnexion 設定メモ

写真時点の割り当てはおおむね以下。

- 左側ボタン: `Shift`, `F23`, `F17`, `K`
- 中央系: `Alt`, `Alt+Shift+Q`
- 右側ボタン: `Ctrl`, `F2`, `Alt`, `Shift`, `F16`, `Space`, `S`, `Ctrl+Alt+Shift+K`

この設定が変わると AHK の意味も変わる。作業前に必ず現在の 3Dconnexion 設定を確認する。

## 調査手順

1. 旧AHKを UTF-8 で読む。PowerShell の既定表示だと文字化けすることがある。
   `Get-Content -LiteralPath '<path>' -Encoding UTF8`

2. 実際に有効なホットキーだけ抽出する。コメントや墓場コードが多いので、`::` 行を中心に見る。

3. 旧 `Hotkeys.txt` と現行 `StartupHotkeys.txt` を比較する。
   2026-05-10 時点では SHA256 が一致していたので、ZBrush 側のユーザーホットキーは移植済みと判断した。

4. MouseGestureL との競合を見る。
   `MouseGestureL\Config\MG_Config.ahk` / `MouseGestureL\Config\MouseGestureL.ini` では ZBrush 用に `F17` と `F2` が使われている。

5. AutoHotkey 常駐状況を確認する。
   `Get-CimInstance Win32_Process -Filter "name like 'AutoHotkey%'" | Select-Object ProcessId,Name,CommandLine`

## 旧 ZBrush AHK の要点

基本マッピング:

```text
BackSpace  tap=BackSpace hold=Esc
Numpad0    tap=mask pick sequence hold=Alt+G
Numpad1    tap=V hold=Shift+V
Numpad2    tap=F hold=Shift+F
Numpad3    tap=R hold=Shift+R
Numpad4    tap=Ctrl+Alt+Shift+D hold=C
Numpad5    tap=K hold=Ctrl+Alt+Shift+K
Numpad6    tap=E hold=Shift+E
Numpad7    tap=X hold=Alt+X
Numpad8    S
Numpad9    tap=W hold=Ctrl+W
NumpadDot  tap=T hold=P
NumpadDiv  tap=A hold=Shift+A
NumpadMult tap=Q hold=Y
Tab        Z with modifiers
```

NumLock off 時の別名も拾う:

```text
NumpadIns   => Shift+B
NumpadEnd   => Shift+V
NumpadDown  => Shift+F
NumpadPgDn  => Shift+R
NumpadLeft  => Shift+D
NumpadClear => Shift+K
NumpadRight => Shift+E
NumpadHome  => Shift+X
NumpadUp    => Shift+S
NumpadPgUp  => Shift+W
NumpadDel   => Shift+P
```

旧ファイルには typo があった:

```ahk
^!NumpadIns:send ^!+b
```

これは `::` が足りない。作り直し時は旧ファイルをそのまま移植しない。

## 実装ルール

- `#NoEnv`, `#SingleInstance Force`, `SendMode Input`, `#InstallKeybdHook`, `#UseHook` を入れる。
- 対象アプリの `#IfWinActive` 範囲内にだけホットキーを書く。
- `*NumpadX::` を使い、修飾キー付きでも同じラベルで拾う。
- 修飾キーが押されている場合は tap/hold 判定より先に処理する。
- tap/hold は `KeyWait, Key, T0.3` を使う。
- `SendInput, {Blind}x` は、現在押されている修飾キーを活かして送る時に使う。
- 明示的に `^!+d` などを送りたい時は `{Blind}` を使わない。
- レイヤーキーとして使う `F23` / `F24` / `F16` などは、単独押しで暴発しないよう `*F23::return` のように潰す。ただし MouseGestureL と共有するキーは慎重に。

## 検証手順

構文確認だけなら起動してすぐ止める。

```powershell
$p = Start-Process -FilePath 'C:\Program Files\AutoHotkey\AutoHotkey.exe' `
  -ArgumentList '/ErrorStdOut "C:\Projects\aoto-hk\zbrush_simple.ahk"' `
  -PassThru -WindowStyle Hidden
Start-Sleep -Milliseconds 1000
if (-not $p.HasExited) { Stop-Process -Id $p.Id -Force }
```

常駐起動:

```powershell
Start-Process -FilePath 'C:\Program Files\AutoHotkey\AutoHotkey.exe' `
  -ArgumentList '"C:\Projects\aoto-hk\zbrush_simple.ahk"' `
  -WindowStyle Hidden
```

起動後に AutoHotkey プロセス一覧で確認する。

## ZBrush 2026 側の注意

現行 hotkey ファイルには `FJTOOLS`, `NICKS TOOLS`, `ZADJUSTOR`, `YT`, `CAMERACONTROL` などのプラグイン由来項目が含まれる。2026-05-10 のプラグイン移植では `CamControl` と `YT` 系は入れたが、`FJTOOLS`, `NICKS TOOLS`, `ZADJUSTOR` 本体は見当たらなかった。該当ホットキーは ZBrush 上で効かない可能性がある。

AHK が正しくキーを送っていても、ZBrush 側のホットキー先プラグインが存在しなければ動かない。問題切り分け時は「AHK送信」と「ZBrush側ホットキー/プラグイン存在」を分けて見る。

## 次回の作り方

1. 既存の同種スクリプトを読む。
2. 物理デバイスの現在のキー割り当てを確認する。
3. アプリ側 hotkey ファイルを確認する。
4. 競合する常駐AHKや MouseGestureL のトリガーを確認する。
5. `*_simple.ahk` として新規作成し、旧ファイルは残す。
6. 構文確認する。
7. 実アプリ上で tap / hold / modifier / NumLock off alias を順にテストする。
