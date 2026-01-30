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
MG_Triggers=RB_MB_X2B
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
	return (0)
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

MG_IsExDefault() {
	return (MG_IsTarget4() || MG_IsTarget6() || MG_IsTarget7())
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
	if (!MG_IsExDefault()) {
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
	if (!MG_IsExDefault()) {
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
	if (!MG_IsExDefault()) {
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
	if (!MG_IsExDefault()) {
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



MG_IsHookEnabled_RB() {
	global
	MG_TriggerCount ? : MG_GetMousePosInfo()
	return (MG_RB_Enabled && (MG_TriggerCount || (!MG_IsDisable() && !MG_IsTarget4() && !MG_IsTarget6() && !MG_IsTarget7())))
}

MG_IsHookEnabled_MB() {
	global
	return (MG_MB_Enabled && MG_TriggerCount)
}

MG_IsHookEnabled_X2B() {
	global
	MG_TriggerCount ? : MG_GetMousePosInfo()
	return (MG_X2B_Enabled && (MG_TriggerCount || (!MG_IsDisable() && (MG_IsTarget6()))))
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