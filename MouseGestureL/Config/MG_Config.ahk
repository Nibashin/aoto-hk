MG_IniFileVersion=1.41
MG_8Dir=0
MG_ActiveAsTarget=0
MG_Interval=20
MG_AlwaysHook=0
MG_PrvntCtxtMenu=0
MG_Threshold=40
MG_LongThresholdX=800
MG_LongThresholdY=500
MG_LongThreshold=700
MG_FirstLongOnly=1
MG_TimeoutThreshold=12
MG_Timeout=0
MG_DGInterval=0
MG_TmReleaseTrigger=3
MG_ORangeDefault=3
MG_ORangeA=3
MG_ORangeB=3
MG_EdgeInterval=20
MG_EdgeIndiv=0
MG_CornerX=1
MG_CornerY=1
MG_DisableDefMB=0
MG_DisableDefX1B=0
MG_DisableDefX2B=0
MG_UseNavi=1
MG_UseExNavi=3
MG_NaviInterval=10
MG_NaviPersist=0
MG_ExNaviTransBG=1
MG_ExNaviFG=000000
MG_ExNaviBG=FFFFFF
MG_ExNaviTranspcy=255
MG_ExNaviSize=24
MG_ExNaviSpacing=2
MG_ExNaviPadding=4
MG_ExNaviMargin=8
MG_AdNaviFG=FFFFFF
MG_AdNaviNI=7F7F7F
MG_AdNaviBG=000000
MG_AdNaviTranspcy=220
MG_AdNaviSize=11
MG_AdNaviFont=メイリオ
MG_AdNaviPosition=0
MG_AdNaviPaddingL=6
MG_AdNaviPaddingR=6
MG_AdNaviPaddingT=3
MG_AdNaviPaddingB=3
MG_AdNaviRound=2
MG_AdNaviMargin=14
MG_AdNaviSpaceX=2
MG_AdNaviSpaceY=2
MG_AdNaviOnClick=0
MG_ShowTrail=0
MG_DrawTrailWnd=1
MG_TrailColor=0000FF
MG_TrailTranspcy=255
MG_TrailWidth=3
MG_TrailStartMove=3
MG_TrailInterval=10
MG_ShowLogs=0
MG_LogPosition=4
MG_LogPosX=0
MG_LogPosY=0
MG_LogMax=20
MG_LogSizeW=400
MG_LogInterval=500
MG_LogFG=FFFFFF
MG_LogBG=000000
MG_LogTranspcy=100
MG_LogFontSize=10
MG_LogFont=MS UI Gothic
MG_EditCommand=
MG_HotkeyReload=
MG_HotkeyEnable=
MG_HotkeyAbort=Escape
MG_HotkeyNavi=
MG_HotkeyShowList=F1
MG_ScriptEditor=
MG_TraySubmenu=0
MG_AdjustDlg=0
MG_DlgHeightLimit=800
MG_FoldTarget=0
MG_DisableWarning=0
MG_ActvtExclud := []
MG_MaxLength=8
MG_Triggers=RB_MB_X1B_X2B_F17_F2
MG_SubTriggers=LB


Goto, MG_RB_End

MG_RB_Enable:
	if (!MG_AlwaysHook) {
		MG_RB_HookEnabled := Func("MG_IsHookEnabled_RB")
		Hotkey, If, % MG_RB_HookEnabled
	}
	Hotkey, *RButton, MG_RB_DownHotkey, On
	Hotkey, *RButton up, MG_RB_UpHotkey, On
	Hotkey, If
	MG_RB_Enabled := 1
return

MG_RB_Disable:
	Hotkey, *RButton, MG_RB_DownHotkey, Off
	Hotkey, *RButton up, MG_RB_UpHotkey, Off
	MG_RB_Enabled := 0
return

MG_RB_DownHotkey:
	MG_TriggerDown("RB")
return

MG_RB_UpHotkey:
	MG_TriggerUp("RB")
return

MG_RB_Down:
	MG_SendButton("RB", "RButton", "Down")
return

MG_RB_Up:
	MG_SendButton("RB", "RButton", "Up")
return

MG_RB_Check:
	MG_CheckButton("RB", "RButton")
return

MG_RB_End:


Goto, MG_MB_End

MG_MB_Enable:
	if (!MG_AlwaysHook) {
		MG_MB_HookEnabled := Func("MG_IsHookEnabled_MB")
		Hotkey, If, % MG_MB_HookEnabled
	}
	Hotkey, *MButton, MG_MB_DownHotkey, On
	Hotkey, *MButton up, MG_MB_UpHotkey, On
	Hotkey, If
	MG_MB_Enabled := 1
return

MG_MB_Disable:
	Hotkey, *MButton, MG_MB_DownHotkey, Off
	Hotkey, *MButton up, MG_MB_UpHotkey, Off
	MG_MB_Enabled := 0
return

MG_MB_DownHotkey:
	MG_TriggerDown("MB")
return

MG_MB_UpHotkey:
	MG_TriggerUp("MB")
return

MG_MB_Down:
	if (!MG_DisableDefMB) {
		MG_SendButton("MB", "MButton", "Down")
	}
return

MG_MB_Up:
	if (!MG_DisableDefMB) {
		MG_SendButton("MB", "MButton", "Up")
	}
return

MG_MB_Check:
	MG_CheckButton("MB", "MButton")
return

MG_MB_End:


Goto, MG_X1B_End

MG_X1B_Enable:
	if (!MG_AlwaysHook) {
		MG_X1B_HookEnabled := Func("MG_IsHookEnabled_X1B")
		Hotkey, If, % MG_X1B_HookEnabled
	}
	Hotkey, *XButton1, MG_X1B_DownHotkey, On
	Hotkey, *XButton1 up, MG_X1B_UpHotkey, On
	Hotkey, If
	MG_X1B_Enabled := 1
return

MG_X1B_Disable:
	Hotkey, *XButton1, MG_X1B_DownHotkey, Off
	Hotkey, *XButton1 up, MG_X1B_UpHotkey, Off
	MG_X1B_Enabled := 0
return

MG_X1B_DownHotkey:
	MG_TriggerDown("X1B")
return

MG_X1B_UpHotkey:
	MG_TriggerUp("X1B")
return

MG_X1B_Down:
	if (!MG_DisableDefX1B) {
		MG_SendButton("X1B", "XButton1", "Down")
	}
return

MG_X1B_Up:
	if (!MG_DisableDefX1B) {
		MG_SendButton("X1B", "XButton1", "Up")
	}
return

MG_X1B_Check:
	MG_CheckButton("X1B", "XButton1")
return

MG_X1B_End:


Goto, MG_X2B_End

MG_X2B_Enable:
	if (!MG_AlwaysHook) {
		MG_X2B_HookEnabled := Func("MG_IsHookEnabled_X2B")
		Hotkey, If, % MG_X2B_HookEnabled
	}
	Hotkey, *XButton2, MG_X2B_DownHotkey, On
	Hotkey, *XButton2 up, MG_X2B_UpHotkey, On
	Hotkey, If
	MG_X2B_Enabled := 1
return

MG_X2B_Disable:
	Hotkey, *XButton2, MG_X2B_DownHotkey, Off
	Hotkey, *XButton2 up, MG_X2B_UpHotkey, Off
	MG_X2B_Enabled := 0
return

MG_X2B_DownHotkey:
	MG_TriggerDown("X2B")
return

MG_X2B_UpHotkey:
	MG_TriggerUp("X2B")
return

MG_X2B_Down:
	if (!MG_DisableDefX2B) {
		MG_SendButton("X2B", "XButton2", "Down")
	}
return

MG_X2B_Up:
	if (!MG_DisableDefX2B) {
		MG_SendButton("X2B", "XButton2", "Up")
	}
return

MG_X2B_Check:
	MG_CheckButton("X2B", "XButton2")
return

MG_X2B_End:


;Description = F17
Goto, MG_F17_End

MG_F17_Enable:
	if (!MG_AlwaysHook) {
		MG_F17_HookEnabled := Func("MG_IsHookEnabled_F17")
		Hotkey, If, % MG_F17_HookEnabled
	}
	Hotkey, F17, MG_F17_DownHotkey, On
	Hotkey, F17 up, MG_F17_UpHotkey, On
	Hotkey, If
	MG_F17_Enabled := 1
return

MG_F17_Disable:
	Hotkey, F17, MG_F17_DownHotkey, Off
	Hotkey, F17 up, MG_F17_UpHotkey, Off
	MG_F17_Enabled := 0
return

MG_F17_DownHotkey:
	MG_TriggerDown("F17")
return

MG_F17_UpHotkey:
	MG_TriggerUp("F17")
return

MG_F17_Down:
	MG_SendButton("F17", "F17", "Down")
return

MG_F17_Up:
	MG_SendButton("F17", "F17", "Up")
return

MG_F17_Check:
	MG_CheckButton("F17", "F17")
return

MG_F17_End:


;Description = F2
Goto, MG_F2_End

MG_F2_Enable:
	if (!MG_AlwaysHook) {
		MG_F2_HookEnabled := Func("MG_IsHookEnabled_F2")
		Hotkey, If, % MG_F2_HookEnabled
	}
	Hotkey, F2, MG_F2_DownHotkey, On
	Hotkey, F2 up, MG_F2_UpHotkey, On
	Hotkey, If
	MG_F2_Enabled := 1
return

MG_F2_Disable:
	Hotkey, F2, MG_F2_DownHotkey, Off
	Hotkey, F2 up, MG_F2_UpHotkey, Off
	MG_F2_Enabled := 0
return

MG_F2_DownHotkey:
	MG_TriggerDown("F2")
return

MG_F2_UpHotkey:
	MG_TriggerUp("F2")
return

MG_F2_Down:
	MG_SendButton("F2", "F2", "Down")
return

MG_F2_Up:
	MG_SendButton("F2", "F2", "Up")
return

MG_F2_Check:
	MG_CheckButton("F2", "F2")
return

MG_F2_End:


Goto, MG_LB_End

MG_LB_Enable:
	if (!MG_AlwaysHook) {
		MG_LB_HookEnabled := Func("MG_IsHookEnabled_LB")
		Hotkey, If, % MG_LB_HookEnabled
	}
	Hotkey, *LButton, MG_LB_DownHotkey, On
	Hotkey, *LButton up, MG_LB_UpHotkey, On
	Hotkey, If
	MG_LB_Enabled := 1
return

MG_LB_Disable:
	Hotkey, *LButton, MG_LB_DownHotkey, Off
	Hotkey, *LButton up, MG_LB_UpHotkey, Off
	MG_LB_Enabled := 0
return

MG_LB_DownHotkey:
	MG_TriggerDown("LB")
return

MG_LB_UpHotkey:
	MG_TriggerUp("LB")
return

MG_LB_Down:
	MG_SendButton("LB", "LButton", "Down")
return

MG_LB_Up:
	MG_SendButton("LB", "LButton", "Up")
return

MG_LB_Check:
	MG_CheckButton("LB", "LButton")
return

MG_LB_End:


Goto, MG_Config_End


MG_IsDisable() {
	global
	return ((MG_WClass="TankWindowClass"))
}

MG_IsTarget1() {
	global
	return ((MG_Exe="iexplore.exe") || (MG_Exe="msedge.exe") || (MG_Exe="chrome.exe") || (MG_Exe="firefox.exe"))
}

MG_IsTarget2() {
	global
	return ((MG_WClass="CabinetWClass") || (MG_WClass="ExploreWClass") || (MG_WClass="Progman") || (MG_WClass="WorkerW"))
}

MG_IsTarget3() {
	global
	return (MG_IsTarget2() && ((MG_TreeListHitTest())))
}

MG_IsTarget4() {
	global
	return ((MG_StrComp(MG_WClass, "__video_control_biz__", 2)))
}

MG_IsTarget5() {
	global
	return ((MG_WClass="XLMAIN"))
}

MG_IsTarget6() {
	global
	return ((MG_WClass="Qt624QWindowIcon"))
}

MG_IsTarget7() {
	global
	return ((MG_WClass="Qt6101QWindowIcon"))
}

MG_IsTarget8() {
	global
	return ((MG_WClass="mintty"))
}

MG_IsTarget9() {
	global
	return ((MG_WClass="ZBrush"))
}

MG_IsExDefault() {
	return (MG_IsTarget4() || MG_IsTarget6() || MG_IsTarget7() || MG_IsTarget9())
}

MG_Gesture_RB_:
	if (MG_IsTarget3()) {
		;ジェスチャーキャンセル
		MG_Abort()
	} else if (!MG_IsExDefault()){
		;アクティブ化
		if (InStr(MG_WClass, "Chrome_WidgetWin")!=1 || (MG_WStyle & 0x000B0000)) {
			MG_WinActivate()
		}
	}
return

MG_GetAction_RB_:
	if (MG_IsTarget3()) {
		MG_ActionStr := "ジェスチャーキャンセル"
	} else if (!MG_IsExDefault()){
		MG_ActionStr := "アクティブ化"
	}
return

MG_Gesture_RB_LB__:
	if (!MG_IsExDefault()) {
		;ウィンドウを閉じる
		PostMessage, 0x0010
	}
return

MG_GetAction_RB_LB__:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "ウィンドウを閉じる"
	}
return

MG_Gesture_RB_L_:
	if (!MG_IsExDefault()) {
		;戻る
		Send, !{Left}
	}
return

MG_GetAction_RB_L_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "戻る"
	}
return

MG_Gesture_RB_R_:
	if (!MG_IsExDefault()) {
		;進む
		Send, !{Right}
	}
return

MG_GetAction_RB_R_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "進む"
	}
return

MG_Gesture_RB_RR_:
	if (!MG_IsExDefault()) {
		;Enter
		Send, {Enter}
	}
return

MG_GetAction_RB_RR_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Enter"
	}
return

MG_Gesture_RB_U_:
	if (MG_IsTarget8()) {
		;Shift+Insertを押す
		Send, +{Insert}
	} else if (!MG_IsExDefault()){
		;ペースト
		
		
		; Ctrlキーが押されているとき
		if GetKeyState("Ctrl", "P")
		{
		    Send, d
			return
		}
		
		; Altキーが押されているとき
		if GetKeyState("Alt", "P")
		{
		    Send, a
			return
		}
		
		; Shiftキーが押されているとき
		if GetKeyState("Shift", "P")
		{
		    Send, b
			return
		}
		
		; Windowsキーが押されているとき
		if GetKeyState("LWin", "P") or GetKeyState("RWin", "P")
		{
		    Send, c
			return
		}
		
		; 何も修飾キーが押されていないとき
		Send, ^v
		return
	}
return

MG_GetAction_RB_U_:
	if (MG_IsTarget8()) {
		MG_ActionStr := "Shift+Insertを押す"
	} else if (!MG_IsExDefault()){
		MG_ActionStr := "ペースト"
	}
return

MG_Gesture_RB_UD_:
	if (!MG_IsExDefault()) {
		;Ctrl+Aを押す
		Send, ^a
	}
return

MG_GetAction_RB_UD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Ctrl+Aを押す"
	}
return

MG_Gesture_RB_UU_:
	if (!MG_IsExDefault()) {
		;Clibor
		Send, {Control 2}
	}
return

MG_GetAction_RB_UU_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Clibor"
	}
return

MG_Gesture_RB_UUR_:
	if (!MG_IsExDefault()) {
		;Clibor定型文
		Send, {Alt 2}
	}
return

MG_GetAction_RB_UUR_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Clibor定型文"
	}
return

MG_Gesture_RB_UUD_:
	if (!MG_IsExDefault()) {
		;CliborFIFOモード
		Send, #{F12}
	}
return

MG_GetAction_RB_UUD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "CliborFIFOモード"
	}
return

MG_Gesture_RB_D_:
	if (MG_IsTarget8()) {
		;Ctrl+Insertを押す
		Send, ^{Insert}
	} else if (!MG_IsExDefault()){
		;コピー    
			ctrl  := GetKeyState("Ctrl",  "P")
		    alt   := GetKeyState("Alt",   "P")
		    shift := GetKeyState("Shift", "P")
		
		    if (ctrl && !alt && !shift) {
		    	;Ctrl+Alt+Fを押す
				Send, ^!f
		    }
		    else if (alt && !ctrl && !shift) {
		    	;Send,
		    }
		    else if (shift && !ctrl && !alt) {
		    	;Send,
		    }
		    else if (!ctrl && !alt && !shift) {
		    	Send, ^c
		    }
		    ; 必要なら Ctrl+Alt+A や Ctrl+Shift+A などの分岐も追加できます
		    return
		
	}
return

MG_GetAction_RB_D_:
	if (MG_IsTarget8()) {
		MG_ActionStr := "Ctrl+Insertを押す"
	} else if (!MG_IsExDefault()){
		MG_ActionStr := "コピー    "
	}
return

MG_Gesture_RB_LU_:
	if (!MG_IsExDefault()) {
		;選択を「」で囲む
		Send, ^x
		Send, 「
		Send, 」
		Send, {Enter}
		Send, {Left}
		Send, ^v
	}
return

MG_GetAction_RB_LU_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "選択を「」で囲む"
	}
return

MG_Gesture_RB_LR_:
	if (!MG_IsExDefault()) {
		;windowコントロール
		Send, #{Tab}
	}
return

MG_GetAction_RB_LR_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "windowコントロール"
	}
return

MG_Gesture_RB_LRD_:
	if (!MG_IsExDefault()) {
		;Endを押す→Shift+Homeを押す (2回)→Ctrl+Cを押す
		Send, {End}
		Send, +{Home 2}
		Send, ^c
	}
return

MG_GetAction_RB_LRD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Endを押す→Shift+Homeを押す (2回)→Ctrl+Cを押す"
	}
return

MG_Gesture_RB_RL_:
	if (!MG_IsExDefault()) {
		;以前のアクティブウィンドウを復元
		MG_ActivatePrevWin(1000)
	}
return

MG_GetAction_RB_RL_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "以前のアクティブウィンドウを復元"
	}
return

MG_Gesture_RB_RLD_:
	if (!MG_IsExDefault()) {
		;Endを押す
		Send, {End}
		
		;Shift+Homeを押す (2回)
		Send, +{Home 2}
		
		
		;Ctrl+Cを押す
		Send, ^c
	}
return

MG_GetAction_RB_RLD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Endを押す"
	}
return

MG_Gesture_RB_LD_:
	if (!MG_IsExDefault()) {
		
	}
return

MG_GetAction_RB_LD_:
	if (!MG_IsExDefault()) {
		
	}
return

MG_Gesture_RB_RU_:
	if (!MG_IsExDefault()) {
		;直前のアクティブウィンドウを復元
		MG_ActivatePrevWin()
	}
return

MG_GetAction_RB_RU_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "直前のアクティブウィンドウを復元"
	}
return

MG_Gesture_RB_RD_:
	if (MG_IsTarget5()) {
		;改行
		Send, !{Enter}
	} else if (!MG_IsExDefault()){
		;Shift+Enter
		Send, +{Enter}
	}
return

MG_GetAction_RB_RD_:
	if (MG_IsTarget5()) {
		MG_ActionStr := "改行"
	} else if (!MG_IsExDefault()){
		MG_ActionStr := "Shift+Enter"
	}
return

MG_Gesture_RB_UL_:
	if (!MG_IsExDefault()) {
		
	}
return

MG_GetAction_RB_UL_:
	if (!MG_IsExDefault()) {
		
	}
return

MG_Gesture_RB_UR_:
	if (!MG_IsExDefault()) {
		
	}
return

MG_GetAction_RB_UR_:
	if (!MG_IsExDefault()) {
		
	}
return

MG_Gesture_RB_DL_:
	if (!MG_IsExDefault()) {
		;Enter
		Send, {Enter}
	}
return

MG_GetAction_RB_DL_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "Enter"
	}
return

MG_Gesture_RB_DR_:
	if (!MG_IsExDefault()) {
		;切り取り
		Send, ^x
	}
return

MG_GetAction_RB_DR_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "切り取り"
	}
return

MG_Gesture_RB_LURD_:
	if (!MG_IsExDefault()) {
		;メール
		Send, {vkF0sc03A}
		Send, zH=9Mx
	}
return

MG_GetAction_RB_LURD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "メール"
	}
return

MG_Gesture_RB_RULD_:
	if (!MG_IsExDefault()) {
		;ヤフー
		Send, {vkF0sc03A}
		Send, Ewafa
	}
return

MG_GetAction_RB_RULD_:
	if (!MG_IsExDefault()) {
		MG_ActionStr := "ヤフー"
	}
return


MG_Gesture_MB_L_:
	if (!MG_IsExDefault()) {
		
	}
return

MG_GetAction_MB_L_:
	if (!MG_IsExDefault()) {
		
	}
return

MG_Gesture_X2B_LR_:
	if (MG_IsTarget6()) {
		;windowコントロール
		Send, #{Tab}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_X2B_LR_:
	if (MG_IsTarget6()) {
		MG_ActionStr := "windowコントロール"
	} else {
		MG_ActionStr := ""
	}
return



MG_Gesture_MB_LU_:
	if (MG_IsTarget9()) {
		;MaskPen　マスクを反転
		If GetKeyState("Ctrl") {
		  Send !+m
		    return
		  }
		  Send  ^{F5}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_LU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "MaskPen　マスクを反転"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_LUL_:
	if (MG_IsTarget9()) {
		;MaskLasso　すべてをマスク
		If GetKeyState("Ctrl") {
		  Send ^a
		    return
		  }
		  Send  ^{F8}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_LUL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "MaskLasso　すべてをマスク"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_LUR_:
	if (MG_IsTarget9()) {
		;MaskRect　マスクをクリア
		If GetKeyState("Ctrl") {
		  Send ^!a
		    return
		  }
		  Send  ^{F6}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_LUR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "MaskRect　マスクをクリア"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_LURD_:
	if (MG_IsTarget9()) {
		;変更頂点をマスク　（変更頂点ギズモ）
		If GetKeyState("Ctrl") {
		  Send +!^n
		    return
		  }
		  Send  ^!m
		  Send !+m
		  Send w
		  Send	+w
			return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_LURD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "変更頂点をマスク　（変更頂点ギズモ）"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_LUD_:
	if (MG_IsTarget9()) {
		;MaskCurve　マスクを表示非表示
		If GetKeyState("Ctrl") {
		  Send ^h
		    return
		  }
		  send ^{F7}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_LUD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "MaskCurve　マスクを表示非表示"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_LR_:
	if (MG_IsTarget9()) {
		;Move_brush
		
		send ^{F1}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_LR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "Move_brush"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_LRL_:
	if (MG_IsTarget9()) {
		;MoveTopo_brush
		send q
		send ^{F4}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_LRL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "MoveTopo_brush"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_LRU_:
	if (MG_IsTarget9()) {
		;MoveF_brush
		send q
		send ^{F2}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_LRU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "MoveF_brush"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_LRD_:
	if (MG_IsTarget9()) {
		;MoveB_brush
		send q
		send ^{F3}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_LRD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "MoveB_brush"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_R_:
	if (MG_IsTarget9()) {
		;高SubDiv
		If GetKeyState("Ctrl") {
			;↓Ctrlとshiftを押している場合
			If GetKeyState("Shift") {
					;↓CtrlとShiftとAltを押している場合
					If GetKeyState("Alt") {    
						Send ^!{F3}
						return
					}
		    	Send !+^b
		    	return
			}
			;↓CtrlとAltを押している場合
			If GetKeyState("Alt") {
				Send f
				return
			}
			;↓Ctrlだけを押している場合
				Send v
				Send ^+d
				Sleep, 500 ; 0.5 second
				Send v
				  return
		}
		If GetKeyState("Shift") {
		;↓ShiftとAltを押している場合
			If GetKeyState("Alt") {    
		   	Send g
		   	return
		 	}
		;↓Shiftだけを押している場合
		     Send ^+d
		     return
			}
					;			
		If GetKeyState("Alt") {
		;↓Altだけを押している場合
		  	Send e
		}
		;↓お好きなショートカットのみ押している場合				
		Send +d
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_R_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "高SubDiv"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_RL_:
	if (MG_IsTarget9()) {
		;アプリケーションの移動
		
		
		 Send #{Tab}
		  return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_RL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "アプリケーションの移動"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_LD_:
	if (MG_IsTarget9()) {
		;SK_TrimPolish
		send q
		send ^{F9}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_LD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "SK_TrimPolish"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_LDR_:
	if (MG_IsTarget9()) {
		;SK_Slash
		send q
		send ^{F11}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_LDR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "SK_Slash"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_LDL_:
	if (MG_IsTarget9()) {
		;
		send ^{}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_LDL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_LDU_:
	if (MG_IsTarget9()) {
		;
		send ^{}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_LDU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_U_:
	if (MG_IsTarget9()) {
		;サブツール↑
		If GetKeyState("Ctrl") {
			;↓Ctrlとshiftを押している場合
			If GetKeyState("Shift") {
					;↓CtrlとShiftとAltを押している場合
					If GetKeyState("Alt") {    
						Send ^!{f2}
						return
					}
		    	Send e
		    	return
			}
			;↓CtrlとAltを押している場合
			If GetKeyState("Alt") {
				Send f
				return
			}
			;↓Ctrlだけを押している場合
		    Send ^{Up}
		    return
		}
		If GetKeyState("Shift") {
		;↓ShiftとAltを押している場合
			If GetKeyState("Alt") {    
		   	Send g
		   	return
		 	}
		;↓Shiftだけを押している場合
		     Send +w
		     return
			}
					;			
		If GetKeyState("Alt") {
		;↓Altだけを押している場合
		  	Send w
			Send +w
			return
		}
		;↓お好きなショートカットのみ押している場合				
		Send {Up}
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_U_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "サブツール↑"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_UR_:
	if (MG_IsTarget9()) {
		;ClayBuildup
		send q
		send +{F8}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_UR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "ClayBuildup"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_URD_:
	if (MG_IsTarget9()) {
		;SK_ClayFill
		send q
		send +{F9}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_URD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "SK_ClayFill"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_URL_:
	if (MG_IsTarget9()) {
		;SK_cloth
		send q
		send +{F11}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_URL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "SK_cloth"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_URU_:
	if (MG_IsTarget9()) {
		;FormSoftB
		send q
		send +{F12}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_URU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "FormSoftB"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_UD_:
	if (MG_IsTarget9()) {
		;アペンド
		
		if GetKeyState("Alt") {
		    Send,^c
			sleep 100
			Send !^q
		    return
		  }
		Else If GetKeyState("Ctrl") {
		    Send,^c
			sleep 100
			Send !^i
		    return
		  }
		Else if GetKeyState("Shift") {
		    Send,^c
			sleep 100
			Send !^+g
		    return
		  }
		  Send !+i
		  return
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_UD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "アペンド"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_UDR_:
	if (MG_IsTarget9()) {
		;シリンダーX
		Send,^c
		sleep 100
		Send, !+x
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_UDR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "シリンダーX"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_UDL_:
	if (MG_IsTarget9()) {
		;シリンダーZ
		Send,^c
		sleep 100
		Send, !+z
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_UDL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "シリンダーZ"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_UDU_:
	if (MG_IsTarget9()) {
		;シリンダーY
		Send,^c
		sleep 100
		Send, !+y
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_UDU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "シリンダーY"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_UL_:
	if (MG_IsTarget9()) {
		;Select_Rect
		send q
		send +^{F1}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_UL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "Select_Rect"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_ULR_:
	if (MG_IsTarget9()) {
		;Select_Lasso
		send q
		send +^{F2}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_ULR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "Select_Lasso"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_ULD_:
	if (MG_IsTarget9()) {
		;Knife_Curve
		send q
		send +^{F3}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_ULD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "Knife_Curve"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_ULU_:
	if (MG_IsTarget9()) {
		;Slice_Curve
		send q
		send +^{F4}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_ULU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "Slice_Curve"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_D_:
	if (MG_IsTarget9()) {
		;サブツール↓（非表示削除
		If GetKeyState("Ctrl") {
			;↓Ctrlとshiftを押している場合
			If GetKeyState("Shift") {
					;↓CtrlとShiftとAltを押している場合
					If GetKeyState("Alt") {    
						Send ^!{f1}
						return
					}
		    	Send e
		    	return
			}
			;↓CtrlとAltを押している場合
			If GetKeyState("Alt") {
				Send f
				return
			}
			;↓Ctrlだけを押している場合
		    Send ^{Down}
		    return
		}
		If GetKeyState("Shift") {
		;↓ShiftとAltを押している場合
			If GetKeyState("Alt") {    
		   	Send g
		   	return
		 	}
		;↓Shiftだけを押している場合
		     Send +w
		     return
			}
					;			
		If GetKeyState("Alt") {
		;↓Altだけを押している場合
		  	Send q
			return
		}
		;↓お好きなショートカットのみ押している場合				
		Send {Down}
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_D_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "サブツール↓（非表示削除"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_DU_:
	if (MG_IsTarget9()) {
		;ステージを切り替えてフォーカス(ギズモ３D、トランスポーズ切り替え）
		if GetKeyState("Alt") {    
		    Send w
		    return
		 }
		if GetKeyState("Shift") {
		    ;Send ^+d
		    return
		  }
		Else If GetKeyState("Ctrl") {
		  Send !g
		    return
		  }
		  send +{F1}
		  send f
		  return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_DU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "ステージを切り替えてフォーカス(ギズモ３D、トランスポーズ切り替え）"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_DR_:
	if (MG_IsTarget9()) {
		;
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_DR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_MB_DL_:
	if (MG_IsTarget9()) {
		;ztl、インポート、シェルグループ
		if GetKeyState("Alt") {
		    Send q
		    return
		  }
		Else If GetKeyState("Ctrl") {
		    Send ^!+v
		    return
		  }
		Else if GetKeyState("Shift") {
		    Send +w
		    return
		  }
		  Send ^!i
		  return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_MB_DL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "ztl、インポート、シェルグループ"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_U_:
	if (MG_IsTarget9()) {
		;N N 押し出し
		send !+^{F8}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_U_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "N N 押し出し"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_UR_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_UR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_URU_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_URU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_URD_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_URD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_URL_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_URL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_UD_:
	if (MG_IsTarget9()) {
		;移動 N N
		send !+^{F4}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_UD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "移動 N N"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_UDU_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_UDU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_UDR_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_UDR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_UDL_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_UDL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_UL_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_UL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_ULU_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_ULU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_ULR_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_ULR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_ULD_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_ULD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_R_:
	if (MG_IsTarget9()) {
		;N クリース N
		send !^+{F7}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_R_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "N クリース N"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_RU_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_RU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_RUR_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_RUR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_RUD_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_RUD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_RUL_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_RUL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_RD_:
	if (MG_IsTarget9()) {
		;スライド N N
		send ^+!w
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_RD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "スライド N N"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_RDU_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_RDU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_RDR_:
	if (MG_IsTarget9()) {
		;頂点を接合
		send ^+!y
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_RDR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "頂点を接合"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_RDL_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_RDL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_RL_:
	if (MG_IsTarget9()) {
		;N スライド N (スライド N N)
		If GetKeyState("Ctrl") {
			Send !^{vkE2sc073}
		    return
		  }
		  	send !+^{vkE2sc073}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_RL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "N スライド N (スライド N N)"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_RLU_:
	if (MG_IsTarget9()) {
		;スライド N N
		send !^{vkE2sc073}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_RLU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "スライド N N"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_RLR_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_RLR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_RLD_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_RLD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_D_:
	if (MG_IsTarget9()) {
		;Zmodeler
		send q
		send {F6}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_D_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "Zmodeler"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_DU_:
	if (MG_IsTarget9()) {
		;N エッジ挿入 N 
		send q
		send !+^/
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_DU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "N エッジ挿入 N "
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_DUR_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_DUR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_DUD_:
	if (MG_IsTarget9()) {
		;N N 削除
		send !^+{3}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_DUD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "N N 削除"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_DUL_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_DUL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_DR_:
	if (MG_IsTarget9()) {
		;N ブリッジ N
		send !+^{F6}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_DR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "N ブリッジ N"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_DRU_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_DRU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_DRD_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_DRD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_DRL_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_DRL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_DL_:
	if (MG_IsTarget9()) {
		;N N 削除
		send !+^{3}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_DL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "N N 削除"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_DLU_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_DLU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_DLR_:
	if (MG_IsTarget9()) {
		;N 削除 N
		send !^{F1}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_DLR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "N 削除 N"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_DLD_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_DLD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_L_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_L_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_LU_:
	if (MG_IsTarget9()) {
		;N マスク N 完全エッジループ
		If GetKeyState("Ctrl") {
		    return
		  }
		  send !+^{F11}
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_LU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "N マスク N 完全エッジループ"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_LUR_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_LUR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_LUD_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_LUD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_LUL_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_LUL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_LR_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_LR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_LRU_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_LRU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_LRD_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_LRD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_LRL_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_LRL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_LD_:
	if (MG_IsTarget9()) {
		;ループスケール
		send ^+!e
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_LD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "ループスケール"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_LDU_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_LDU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_LDR_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_LDR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F2_LDL_:
	if (MG_IsTarget9()) {
		
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F2_LDL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := ""
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_X1B_UR_:
	if (MG_IsTarget9()) {
		;MouseGestureLを再起動
		MG_Reload()
		Return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_X1B_UR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "MouseGestureLを再起動"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_X1B_U_:
	if (MG_IsTarget9()) {
		;MouseGestureLの設定を開く
		run "%A_ScriptDir%\MG_Edit.ahk"
		Return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_X1B_U_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "MouseGestureLの設定を開く"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F17_U_:
	if (MG_IsTarget9()) {
		;QHideGrp
		Send !^{NumpadUp}
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F17_U_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "QHideGrp"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F17_D_:
	if (MG_IsTarget9()) {
		;QColor
		Send !^{NumpadDown}
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F17_D_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "QColor"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F17_R_:
	if (MG_IsTarget9()) {
		;QMask
		Send !^{NumpadRight}
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F17_R_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "QMask"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F17_RU_:
	if (MG_IsTarget9()) {
		;QIsoGrp
		Send !^{NumpadPgUp}
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F17_RU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "QIsoGrp"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F17_RL_:
	if (MG_IsTarget9()) {
		;QSplit
		Send ^+{F6}
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F17_RL_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "QSplit"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F17_LR_:
	if (MG_IsTarget9()) {
		;ClesrQpick
		Send ^+{F7}
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F17_LR_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "ClesrQpick"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F17_RD_:
	if (MG_IsTarget9()) {
		;QAlign
		Send !^{NumpadPgDn}
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F17_RD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "QAlign"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F17_LD_:
	if (MG_IsTarget9()) {
		;QPick
		Send !^{NumpadEnd}
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F17_LD_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "QPick"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F17_LU_:
	if (MG_IsTarget9()) {
		;QHide
		Send !^{NumpadHome}
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F17_LU_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "QHide"
	} else {
		MG_ActionStr := ""
	}
return

MG_Gesture_F17_L_:
	if (MG_IsTarget9()) {
		;QMerge
		Send !^{NumpadLeft}
		return
	} else {
		MG_Cancel()
	}
return

MG_GetAction_F17_L_:
	if (MG_IsTarget9()) {
		MG_ActionStr := "QMerge"
	} else {
		MG_ActionStr := ""
	}
return


MG_IsHookEnabled_RB() {
	global
	MG_TriggerCount ? : MG_GetMousePosInfo()
	return (MG_RB_Enabled && (MG_TriggerCount || (!MG_IsDisable() && !MG_IsTarget4() && !MG_IsTarget6() && !MG_IsTarget7() && !MG_IsTarget9())))
}

MG_IsHookEnabled_MB() {
	global
	MG_TriggerCount ? : MG_GetMousePosInfo()
	return (MG_MB_Enabled && (MG_TriggerCount || (!MG_IsDisable() && (MG_IsTarget9()))))
}

MG_IsHookEnabled_X1B() {
	global
	MG_TriggerCount ? : MG_GetMousePosInfo()
	return (MG_X1B_Enabled && (MG_TriggerCount || (!MG_IsDisable() && (MG_IsTarget9()))))
}

MG_IsHookEnabled_X2B() {
	global
	MG_TriggerCount ? : MG_GetMousePosInfo()
	return (MG_X2B_Enabled && (MG_TriggerCount || (!MG_IsDisable() && (MG_IsTarget6()))))
}

MG_IsHookEnabled_F17() {
	global
	MG_TriggerCount ? : MG_GetMousePosInfo()
	return (MG_F17_Enabled && (MG_TriggerCount || (!MG_IsDisable() && (MG_IsTarget9()))))
}

MG_IsHookEnabled_F2() {
	global
	MG_TriggerCount ? : MG_GetMousePosInfo()
	return (MG_F2_Enabled && (MG_TriggerCount || (!MG_IsDisable() && (MG_IsTarget9()))))
}

MG_IsHookEnabled_LB() {
	global
	return (MG_LB_Enabled && MG_TriggerCount)
}


#if MG_Active
Escape::MG_Abort()
F1::MG_ShowGestureList()
#if


MG_Config_end: