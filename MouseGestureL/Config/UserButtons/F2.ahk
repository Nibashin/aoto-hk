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
