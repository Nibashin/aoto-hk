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
