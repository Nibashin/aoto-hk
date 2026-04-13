#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;; おまじない
#InstallKeybdHook
#UseHook

;ショートカットなど
  ;VS CODEショートカットリスト
    ;Ctrl+Shift+L	選択部分の全マッチを選択
    ;ctrl+D 以下の出現箇所を選択　連続で押すとどんどんしたに向かって選択できる
    ;^+!&矢印キー　矩形選択
	;すべて折り畳み、展開　^k後^0または^j	→その他折り畳みに関してのショートカット　https://motamemo.com/vscode/vscode-tips/fold-unfold/
;16の刃　ブレンダーアレンジ
		;16の刃
			;*お好きなショートカット::
			;		If (GetKeyState("Tab","P")){
			;			If (GetKeyState("Ctrl","P")){
			;				;↓TabとCtrlとshiftを押している場合
			;				If (GetKeyState("Shift","P")){
			;						;↓TabとCtrlとShiftとAltを押している場合
			;						If (GetKeyState("Alt","P")){    
   			;							Send 他
   			;							return
 			;						}
			;			    	Send 酢
			;			    	return
			;				}
			;				;↓TabとCtrlとAltを押している場合
			;				If (GetKeyState("Alt","P")){
			;					Send 世
			;					return
			;				}
			;				;↓TabとCtrlだけを押している場合
			;			  	Send 子
			;				return
			;			}
;
			;			If (GetKeyState("Shift","P")){
			;			;↓TabとShiftとAltを押している場合
			;				If (GetKeyState("Alt","P")){    
			;			   	Send 祖
			;			   	return
			;			 	}
			;			;↓TabとShiftだけを押している場合
			;			  	Send 佐
			;			   return
			;				}
			;			
			;			If (GetKeyState("Alt","P")){
			;			;↓TabとAltだけを押している場合
			;			  	Send 死
			;				return
			;			}
;
			;			;↓Tabとお好きなショートカットのみ押している場合				
			;			send 毛
			;			return
			;		}
			;		If (GetKeyState("Ctrl","P")){
			;			;↓Ctrlとshiftを押している場合
			;			If (GetKeyState("Shift","P")){
			;					;↓CtrlとShiftとAltを押している場合
			;					If (GetKeyState("Alt","P")){    
   			;						Send 苦
   			;						return
 			;					}
			;		    	Send 尾
			;		    	return
			;			}
			;			;↓CtrlとAltを押している場合
			;			If (GetKeyState("Alt","P")){
			;				Send 科
			;				return
			;			}
			;			;↓Ctrlだけを押している場合
			;		  	Send 胃
			;			return
			;		}
			;		If (GetKeyState("Shift","P")){
			;		;↓ShiftとAltを押している場合
			;			If (GetKeyState("Alt","P")){    
			;		   	Send 機
			;		   	return
			;		 	}
			;		;↓Shiftだけを押している場合
			;		  	Send 宇
			;		   return
			;			}
			;		
			;		If (GetKeyState("Alt","P")){
			;		;↓Altだけを押している場合
			;		  	Send 恵
			;			return
			;		}
			;		;↓お好きなショートカットのみ押している場合				
			;		send 亜
			;		return
		    ;お好きなショートカット Up::
			;    SendEvent {亜 Up}
			;    SendEvent {毛 Up}
			;return


#IfWinActive ahk_exe blender.exe	 ;Blenderのウィンドウがアクティブの時のみ割り当てを行わせる
	*Numpad0::
					If (GetKeyState("F23","P")){
						If (GetKeyState("Ctrl","P")){
							;↓F23とCtrlとshiftを押している場合
							If (GetKeyState("Shift","P")){
									;↓F23とCtrlとShiftとAltを押している場合
									If (GetKeyState("Alt","P")){    
   										Send ^!+b
   										return
 									}
						    	Send ^+b
						    	return
							}
							;↓F23とCtrlとAltを押している場合
							If (GetKeyState("Alt","P")){
								Send ^!b
								return
							}
							;↓F23とCtrlだけを押している場合
						  	Send ^b
							return
						}

						If (GetKeyState("Shift","P")){
						;↓F23とShiftとAltを押している場合
							If (GetKeyState("Alt","P")){    
						   	Send !+b
						   	return
						 	}
						;↓F23とShiftだけを押している場合
						  	Send +b
						   return
							}
						
						If (GetKeyState("Alt","P")){
						;↓F23とAltだけを押している場合
						  	Send !b
							return
						}

						;↓F23とNumpad0のみ押している場合				
						SendEvent {b Down}
						keywait, Numpad0
						return
					}
					If (GetKeyState("Ctrl","P")){
						;↓Ctrlとshiftを押している場合
						If (GetKeyState("Shift","P")){
								;↓CtrlとShiftとAltを押している場合
								If (GetKeyState("Alt","P")){    
   									Send ^!+g
   									return
 								}
					    	Send ^+g
					    	return
						}
						;↓CtrlとAltを押している場合
						If (GetKeyState("Alt","P")){
							Send ^!g
							return
						}
						;↓Ctrlだけを押している場合
					  	Send ^g
						return
					}
					If (GetKeyState("Shift","P")){
					;↓ShiftとAltを押している場合
						If (GetKeyState("Alt","P")){    
					   	Send !+g
					   	return
					 	}
					;↓Shiftだけを押している場合
					  	Send +g
					   return
						}
					
					If (GetKeyState("Alt","P")){
					;↓Altだけを押している場合
					  	Send !g
						return
					}
					;↓Numpad0のみ押している場合				
					Send g
					return
			*NumpadIns::
				If (GetKeyState("F23","P")){
					If (getkeystate("Ctrl","P")){
							If (GetKeyState("Alt","P")){   
								;↓F23とCtrlとShiftとAltを押している場合 
   								Send ^!+b
   								return
 							}						
						;↓F23とCtrlとshiftを押している場合
						Send ^+b
						return
					}
					If (GetKeyState("Alt","P")){
						;↓F23とShiftとAltを押している場合 
						Send +!b
						return
					}
					;↓F23とShiftだけを押している場合
					Send +b
					return
				}
				If (getkeystate("Ctrl","P")){
						If (GetKeyState("Alt","P")){   
							;↓CtrlとShiftとAltを押している場合 
   							Send ^!+g
   							return
 						}						
					;↓Ctrlとshiftを押している場合
					Send ^+g
					return
				}
				If (GetKeyState("Alt","P")){
					;↓ShiftとAltを押している場合 
					Send +!g
					return
				}
				;↓Shiftだけを押している場合
				Send +g
				return
		    *Numpad0 Up::
			    GetKeyState("state","b")
				if( state = "D" ){
					SendEvent {b Up}
					return
				}
			return
			
			;墓場
				;		KeyWait,Numpad0,T0.3		;0.3秒対象キーが押されたかどうか
				;		If(ErrorLevel)
				;		{
				;			send  b ;ここに任意のコマンド 長押し
				;			KeyWait,Numpad0
				;			Return
				;		}
				;	
				;			send g ;ここに任意のコマンド 1度押し
				;			KeyWait,Numpad0
				;			Return
				;		
				;
				;		<#Numpad0::send {Numpad0}
				;		>#Numpad0::send {Numpad1}
				;
				;		^Numpad0::send   ^g
				;
				;		!Numpad0::send   !g
				;
				;	 	^!Numpad0::send  ^!g
				;
				;	  	^NumpadIns::send  ^+g
				;
				;	  	!NumpadIns::send  !+g
				;
				;	 	^!NumpadIns::send ^!+g
				;
				;		NumpadIns::send +b ;Numpad0

	*Numpad1::
			If (GetKeyState("F23","P")){
				If (GetKeyState("Ctrl","P")){
					;↓F23とCtrlとshiftを押している場合
					If (GetKeyState("Shift","P")){
							;↓F23とCtrlとShiftとAltを押している場合
							If (GetKeyState("Alt","P")){    
								Send ^!+.
								return
							}
				    	Send ^+.
				    	return
					}
					;↓F23とCtrlとAltを押している場合
					If (GetKeyState("Alt","P")){
						Send ^!.
						return
					}
					;↓F23とCtrlだけを押している場合
				  	Send ^.
					return
				}

				If (GetKeyState("Shift","P")){
				;↓F23とShiftとAltを押している場合
					If (GetKeyState("Alt","P")){    
				   	Send !+.
				   	return
				 	}
				;↓F23とShiftだけを押している場合
				  	Send +.
				   return
					}
				
				If (GetKeyState("Alt","P")){
				;↓F23とAltだけを押している場合
				  	Send !.
					return
				}

				;↓F23とNumpad1のみ押している場合				
				SendEvent {. Down}
				keywait, Numpad1
				return
			}
			If (GetKeyState("Ctrl","P")){
				;↓Ctrlとshiftを押している場合
				If (GetKeyState("Shift","P")){
						;↓CtrlとShiftとAltを押している場合
						If (GetKeyState("Alt","P")){    
							Send ^!+v
							return
						}
			    	Send ^+v
			    	return
				}
				;↓CtrlとAltを押している場合
				If (GetKeyState("Alt","P")){
					Send ^!v
					return
				}
				;↓Ctrlだけを押している場合
			  	Send ^v
				return
			}
			If (GetKeyState("Shift","P")){
			;↓ShiftとAltを押している場合
				If (GetKeyState("Alt","P")){    
			   	Send !+v
			   	return
			 	}
			;↓Shiftだけを押している場合
			  	Send +v
			   return
				}
			
			If (GetKeyState("Alt","P")){
			;↓Altだけを押している場合
			  	Send !v
				return
			}
			;↓Numpad1のみ押している場合				
			Send v
			return
		*NumpadEnd::
			If (GetKeyState("F23","P")){
				If (getkeystate("Ctrl","P")){
						If (GetKeyState("Alt","P")){   
							;↓F23とCtrlとShiftとAltを押している場合 
							Send ^!+.
							return
						}						
					;↓F23とCtrlとshiftを押している場合
					Send ^+.
					return
				}
				If (GetKeyState("Alt","P")){
					;↓F23とShiftとAltを押している場合 
					Send +!.
					return
				}
				;↓F23とShiftだけを押している場合
				Send +.
				return
			}
			If (getkeystate("Ctrl","P")){
					If (GetKeyState("Alt","P")){   
						;↓CtrlとShiftとAltを押している場合 
						Send ^!+v
						return
					}						
				;↓Ctrlとshiftを押している場合
				Send ^+v
				return
			}
			If (GetKeyState("Alt","P")){
				;↓ShiftとAltを押している場合 
				Send +!v
				return
			}
			;↓Shiftだけを押している場合
			Send +v
			return
    	*Numpad1 Up::
		;    GetKeyState("state","b")
		;	if( state = "D" ){
				SendEvent {. Up}
				return
		;	}
		;return

		;墓場	
			;	KeyWait,Numpad1,T0.3		;0.3秒対象キーが押されたかどうか
			;	If(ErrorLevel)
			;	{
			;		send  . ;ここに任意のコマンド 長押し
			;		KeyWait,Numpad1
			;		Return
			;	}
			;	KeyWait,Numpad1,D T0.13	;0.13秒対象キーが押されるのを待つ
			;	If(ErrorLevel)
			;	{
			;		send / ;ここに任意のコマンド 1度押し
			;		KeyWait,Numpad1
			;		Return
			;	}
			;	send {Numpad3} ;ここに任意のコマンド 2度押し
			;	KeyWait,Numpad1
			;	Return
			;
			;^Numpad1::send   ^v
			;
	  		;!Numpad1::send   !v
			;
	 		;^!Numpad1::send  ^!v
			;
	  		;^NumpadEnd::send  ^+v
			;
	  		;!NumpadEnd::send  !+v
			;
	 		;^!NumpadEnd::send ^!+v
			;
			;NumpadEnd::send +v ;Numpad1

	Numpad2::	
			KeyWait,Numpad2,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send l ;ここに任意のコマンド 長押し
				KeyWait,Numpad2
				Return
			}
			KeyWait,Numpad2,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send f ;ここに任意のコマンド 1度押し
				KeyWait,Numpad2
				Return
			}
			send {Numpad6} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad2
			Return

	  	^Numpad2::send   ^f

	  	!Numpad2::send   !f

	 	^!Numpad2::send  ^!f

	  	^NumpadDown::send  ^+f

	  	!NumpadDown::send  !+f

	 	^!NumpadDown::send ^!+f

		NumpadDown::send +f ;Numpad2

	Numpad3::	
			KeyWait,Numpad3,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send o ;ここに任意のコマンド 長押し
				KeyWait,Numpad3
				Return
			}
			KeyWait,Numpad3,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send r ;ここに任意のコマンド 1度押し
				KeyWait,Numpad3
				Return
			}
			send {Numpad9} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad3
			Return

	  	^Numpad3::send   ^r

	  	!Numpad3::send   !r

	 	^!Numpad3::send  ^!r

	  	^NumpadPgdn::send  ^+r

	  	!NumpadPgdn::send  !+r

	 	^!NumpadPgdn::send ^!+r

		NumpadPgDn::send +r ;Numpad3

	Numpad4::	
			KeyWait,Numpad4,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send  g ;ここに任意のコマンド 長押し
				KeyWait,Numpad4
				Return
			}
			KeyWait,Numpad4,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send y ;ここに任意のコマンド 1度押し
				KeyWait,Numpad4
				Return
			}
			send {Numpad2} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad4
			Return

	  	^Numpad4::send   ^c

	  	!Numpad4::send   !c

	 	^!Numpad4::send  ^!c

	 	^NumpadLeft::send  ^+c

	 	!NumpadLeft::send  !+c

		^!NumpadLeft::send ^!+c

		NumpadLeft::send +c ;Numpad4

	Numpad5::
		SendEvent {d Down}
		keywait, Shift
		Return
		
		Numpad5 Up::
			SendEvent {d Up}
		;KeyWait,Numpad5,T0.3		;0.3秒対象キーが押されたかどうか
		;	If(ErrorLevel)
		;	{
		;		send  k ;ここに任意のコマンド 長押し
		;		KeyWait,Numpad5
		;		Return
		;	}
		;	KeyWait,Numpad5,D T0.13	;0.13秒対象キーが押されるのを待つ
		;	If(ErrorLevel)
		;	{
		;		send d ;ここに任意のコマンド 1度押し
		;		KeyWait,Numpad5
		;		Return
		;	}
		;	send {Numpad5} ;ここに任意のコマンド 2度押し
		;	KeyWait,Numpad5
		;	Return

	 	^Numpad5::send   ^d

	  	!Numpad5::send   !d

	 	^!Numpad5::send  ^!d

	 	^NumpadClear::send  ^+d

	 	!NumpadClear::send  !+d

		^!NumpadClear::send ^!+d

		NumpadClear::send +d ;Numpad5

		Tab & Numpad5::send k

	Numpad6::	
		KeyWait,Numpad6,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send  i ;ここに任意のコマンド 長押し
				KeyWait,Numpad6
				Return
			}
			KeyWait,Numpad6,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send e ;ここに任意のコマンド 1度押し
				KeyWait,Numpad6
				Return
			}
			send {Numpad8} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad6
			Return

		^Numpad6::send   ^e

		!Numpad6::send   !e

		^!Numpad6::send  ^!e

		^+NumpadRight::send  ^+e

		!+NumpadRight::send  !+e

		^!+NumpadRight::send ^!+e

		NumpadRight::send +e ;Numpad6

	Numpad7::	
			KeyWait,Numpad7,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send m ;ここに任意のコマンド 長押し
				KeyWait,Numpad7
				Return
			}
			KeyWait,Numpad7,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send x ;ここに任意のコマンド 1度押し
				KeyWait,Numpad7
				Return
			}
			send {Numpad1} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad7
			Return

		^Numpad7::send   +^z

		!Numpad7::send   !x

		^!Numpad7::send  ^!x

		^NumpadHome::send  ^+m

		!NumpadHome::send  !+x

		^!NumpadHome::send ^!+x

		NumpadHome::send +x ;Numpad7



	Numpad8::	
			KeyWait,Numpad8,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send j ;ここに任意のコマンド 長押し
				KeyWait,Numpad8
				Return
			}
			KeyWait,Numpad8,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send s ;ここに任意のコマンド 1度押し
				KeyWait,Numpad8
				Return
			}
			send {Numpad4} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad8
			Return

		^Numpad8::send   ^s

		!Numpad8::send   !s

		^!Numpad8::send  ^!s

		^NumpadUp::send  ^+s

		!NumpadUp::send  !+s

		^!NumpadUp::send ^!+s

		NumpadUp::send +s ;Numpad8

	Numpad9::	
			KeyWait,Numpad9,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send u ;ここに任意のコマンド 長押し
				KeyWait,Numpad9
				Return
			}
			KeyWait,Numpad9,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send w ;ここに任意のコマンド 1度押し
				KeyWait,Numpad9
				Return
			}
			send +{Numpad7} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad9
			Return

		^Numpad9::send   ^w

		!Numpad9::send   !w

		^!Numpad9::send  ^!w

		^NumpadPgUp::send  ^+w

		!NumpadPgUp::send  !+w

		^!NumpadPgUp::send ^!+w

		NumpadPgUp::send +w ;Numpad9

	NumpadDot::	
			KeyWait,NumpadDot,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send p ;ここに任意のコマンド 長押し
				KeyWait,NumpadDot
				Return
			}
			KeyWait,NumpadDot,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send t ;ここに任意のコマンド 1度押し
				KeyWait,NumpadDot
				Return
			}
			send +t ;ここに任意のコマンド 2度押し
			KeyWait,NumpadDot
			Return

		^NumpadDot::send   ^t
	
		!NumpadDot::send   !t
	
		^!NumpadDot::send  ^!t
	
		^NumpadDel::send  ^+t
	
		!NumpadDel::send  !+t
	
		^!NumpadDel::send ^!+t

		NumpadDel::send +t ;NumpadDot



	

	

	
	
	






	

	

	

	


	

	



	NumpadDiv::	
			KeyWait,NumpadDiv,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send +h ;ここに任意のコマンド 長押し
				KeyWait,NumpadDiv
				Return
			}
			KeyWait,NumpadDiv,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send a ;ここに任意のコマンド 1度押し
				KeyWait,NumpadDiv
				Return
			}
			send !h ;ここに任意のコマンド 2度押し
			KeyWait,NumpadDiv
			Return

		^NumpadDiv::send   ^a

		!NumpadDiv::send   !a

		+NumpadDiv::send   +a

		^!NumpadDiv::send  ^!a

		^+NumpadDiv::send  ^+a

		!+NumpadDiv::send  !+a

		^!+NumpadDiv::send ^!+a

	NumpadMult::	
			KeyWait,NumpadMult,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send c ;ここに任意のコマンド 長押し
				KeyWait,NumpadMult
				Return
			}
			KeyWait,NumpadMult,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send q ;ここに任意のコマンド 1度押し
				KeyWait,NumpadMult
				Return
			}
			send {Tab} ;ここに任意のコマンド 2度押し
			KeyWait,NumpadMult
			Return

		^NumpadMult::send   ^{Tab}

		!NumpadMult::send   !q

		+NumpadMult::send   +q

		^!NumpadMult::send  ^!q

		^+NumpadMult::send  ^+q

		!+NumpadMult::send  !+q

		^!+NumpadMult::send ^!+q




	NumpadSub::
			KeyWait,NumpadSub,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send  4 ;ここに任意のコマンド 長押し
				KeyWait,NumpadSub
				Return
			}
				send 1 ;ここに任意のコマンド 1度押し
				KeyWait,NumpadSub
				Return
		^NumpadSub::send ^1
		!NumpadSub::send !1
		+NumpadSub::send +1


	NumpadAdd::
			KeyWait,NumpadAdd,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send  5 ;ここに任意のコマンド 長押し
				KeyWait,NumpadAdd
				Return
			}
				send 2 ;ここに任意のコマンド 1度押し
				KeyWait,NumpadAdd
				Return
		^NumpadAdd::send ^2
		+NumpadAdd::send +2
		!NumpadAdd::send !2


	NumpadEnter::
			KeyWait,NumpadEnter,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send  6 ;ここに任意のコマンド 長押し
				KeyWait,NumpadEnter
				Return
			}
				send 3 ;ここに任意のコマンド 1度押し
				KeyWait,NumpadEnter
				Return
		^NumpadEnter::send ^3
		+NumpadEnter::send +3
		!NumpadEnter::send !3



	
	
	
	*Tab::
					If (GetKeyState("F23","P")){
						If (GetKeyState("Ctrl","P")){
							;↓F23とCtrlとshiftを押している場合
							If (GetKeyState("Shift","P")){
									;↓F23とCtrlとShiftとAltを押している場合
									If (GetKeyState("Alt","P")){    
   										Send ^!+{Tab}
   										return
 									}
						    	Send ^+{Tab}
						    	return
							}
							;↓F23とCtrlとAltを押している場合
							If (GetKeyState("Alt","P")){
								Send ^!{Tab}
								return
							}
							;↓F23とCtrlだけを押している場合
						  	Send ^{Tab}
							return
						}

						If (GetKeyState("Shift","P")){
						;↓F23とShiftとAltを押している場合
							If (GetKeyState("Alt","P")){    
						   	Send !+{Tab}
						   	return
						 	}
						;↓F23とShiftだけを押している場合
						  	Send +{Tab}
						   return
							}
						
						If (GetKeyState("Alt","P")){
						;↓F23とAltだけを押している場合
						  	Send !{Tab}
							return
						}

						;↓F23とTabのみ押している場合				
						Send z
					}
					If (GetKeyState("Ctrl","P")){
						;↓Ctrlとshiftを押している場合
						If (GetKeyState("Shift","P")){
								;↓CtrlとShiftとAltを押している場合
								If (GetKeyState("Alt","P")){    
   									Send ^!+z
   									return
 								}
					    	Send ^+z
					    	return
						}
						;↓CtrlとAltを押している場合
						If (GetKeyState("Alt","P")){
							Send ^!z
							return
						}
						;↓Ctrlだけを押している場合
					  	Send ^z
						return
					}
					If (GetKeyState("Shift","P")){
					;↓ShiftとAltを押している場合
						If (GetKeyState("Alt","P")){    
					   	Send !+z
					   	return
					 	}
					;↓Shiftだけを押している場合
					  	Send +z
					   return
						}
					
					If (GetKeyState("Alt","P")){
					;↓Altだけを押している場合
					  	Send !z
						return
					}
					;↓Tabのみ押している場合				
					Send {Tab}
					return
			
		;墓場
			;;KeyWait,Tab,T0.3		;0.3秒対象キーが押されたかどうか
			;;If(ErrorLevel)
			;;{
			;;;		send !z ;ここに任意のコマンド 長押し
			;;;		KeyWait,Tab
			;;	Return
			;;}
			;;KeyWait,Tab,D T0.13	;0.13秒対象キーが押されるのを待つ
			;;If(ErrorLevel)
			;;{
			;;;		send z ;ここに任意のコマンド 1度押し
			;;;		KeyWait,Tab
			;;	Return
			;;}
			;;send Tab ;ここに任意のコマンド 2度押し
			;;KeyWait,Tab
			;;Return
			;;;^Tab::send ^z
			;;+Tab::send +z
			;*^Tab::return
			;*+Tab::return
			;*!Tab::return
			;*^+Tab::return
			;*^!Tab::return
			;*^+!Tab::return
			;*!+Tab::return
			*F23::return
			*F24::return

	;マウス
		;XButton2 & Tab::
		;send r
		;	Sleep 3
		;send z
		;Return
		;XButton2 & Numpad7::
		;send r
		;	Sleep 3
		;send x
		;Return
		;XButton2 & Numpad4::
		;send r
		;	Sleep 3
		;send y
		;Return

		;XButton1 & Tab::
		;send g
		;	Sleep 3
		;send z
		;Return
		;XButton1 & Numpad7::
		;send g
		;	Sleep 3
		;send x
		;Return
		;XButton1 & Numpad4::
		;send g
		;	Sleep 3
		;send y
		;Return



	

	

#IfWinActive ahk_exe Adobe Substance 3D Painter.exe	 ;Substance 3D Painterのウィンドウがアクティブの時のみ割り当てを行わせる

	;Numpad0::	
	;		KeyWait,Numpad0,T0.3		;0.3秒対象キーが押されたかどうか
	;		If(ErrorLevel)
	;		{
	;			send  b ;ここに任意のコマンド 長押し
	;			KeyWait,Numpad0
	;			Return
	;		}
	;		KeyWait,Numpad0,D T0.13	;0.13秒対象キーが押されるのを待つ
	;		If(ErrorLevel)
	;		{
	;			send g ;ここに任意のコマンド 1度押し
	;			KeyWait,Numpad0
	;			Return
	;		}
	;		send {Numpad0} ;ここに任意のコマンド 2度押し
	;		KeyWait,Numpad0
	;		Return

	Numpad0::
		KeyWait,Numpad0,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  b ;ここに任意のコマンド 長押し
			KeyWait,Numpad0
			Return
		}
	
			send g ;ここに任意のコマンド 1度押し
			KeyWait,Numpad0
			Return
		

		<#Numpad0::send {Numpad0}
		>#Numpad0::send {Numpad1}

		^Numpad0::send   ^g

		!Numpad0::send   !g

	 	^!Numpad0::send  ^!g

	  	^NumpadIns::send  ^+g

	  	!NumpadIns::send  !+g

	 	^!NumpadIns::send ^!+g

		NumpadIns::send +b ;Numpad0

	Numpad1::
		
			KeyWait,Numpad1,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send  . ;ここに任意のコマンド 長押し
				KeyWait,Numpad1
				Return
			}
			KeyWait,Numpad1,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send / ;ここに任意のコマンド 1度押し
				KeyWait,Numpad1
				Return
			}
			send {Numpad3} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad1
			Return

		^Numpad1::send   ^v

	  	!Numpad1::send   !v

	 	^!Numpad1::send  ^!v

	  	^NumpadEnd::send  ^+v

	  	!NumpadEnd::send  !+v

	 	^!NumpadEnd::send ^!+v

		NumpadEnd::send +v ;Numpad1

	Numpad2::	
			KeyWait,Numpad2,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send l ;ここに任意のコマンド 長押し
				KeyWait,Numpad2
				Return
			}
			KeyWait,Numpad2,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send f ;ここに任意のコマンド 1度押し
				KeyWait,Numpad2
				Return
			}
			send {Numpad6} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad2
			Return

	  	^Numpad2::send   ^f

	  	!Numpad2::send   !f

	 	^!Numpad2::send  ^!f

	  	^NumpadDown::send  ^+f

	  	!NumpadDown::send  !+f

	 	^!NumpadDown::send ^!+f

		NumpadDown::send +f ;Numpad2

	Numpad3::	
			KeyWait,Numpad3,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send o ;ここに任意のコマンド 長押し
				KeyWait,Numpad3
				Return
			}
			KeyWait,Numpad3,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send r ;ここに任意のコマンド 1度押し
				KeyWait,Numpad3
				Return
			}
			send {Numpad9} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad3
			Return

	  	^Numpad3::send   ^r

	  	!Numpad3::send   !r

	 	^!Numpad3::send  ^!r

	  	^NumpadPgdn::send  ^+r

	  	!NumpadPgdn::send  !+r

	 	^!NumpadPgdn::send ^!+r

		NumpadPgDn::send +r ;Numpad3

	Numpad4::	
			KeyWait,Numpad4,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send  g ;ここに任意のコマンド 長押し
				KeyWait,Numpad4
				Return
			}
			KeyWait,Numpad4,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send y ;ここに任意のコマンド 1度押し
				KeyWait,Numpad4
				Return
			}
			send {Numpad2} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad4
			Return

	  	^Numpad4::send   ^c

	  	!Numpad4::send   !c

	 	^!Numpad4::send  ^!c

	 	^NumpadLeft::send  ^+c

	 	!NumpadLeft::send  !+c

		^!NumpadLeft::send ^!+c

		NumpadLeft::send +c ;Numpad4

	Numpad5::	
		KeyWait,Numpad5,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send  k ;ここに任意のコマンド 長押し
				KeyWait,Numpad5
				Return
			}
			KeyWait,Numpad5,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send d ;ここに任意のコマンド 1度押し
				KeyWait,Numpad5
				Return
			}
			send {Numpad5} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad5
			Return

	 	^Numpad5::send   ^d

	  	!Numpad5::send   !d

	 	^!Numpad5::send  ^!d

	 	^NumpadClear::send  ^+d

	 	!NumpadClear::send  !+d

		^!NumpadClear::send ^!+d

		NumpadClear::send +d ;Numpad5

	Numpad6::	
		KeyWait,Numpad6,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send  i ;ここに任意のコマンド 長押し
				KeyWait,Numpad6
				Return
			}
			KeyWait,Numpad6,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send e ;ここに任意のコマンド 1度押し
				KeyWait,Numpad6
				Return
			}
			send {Numpad8} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad6
			Return

		^Numpad6::send   ^e

		!Numpad6::send   !e

		^!Numpad6::send  ^!e

		^+NumpadRight::send  ^+e

		!+NumpadRight::send  !+e

		^!+NumpadRight::send ^!+e

		NumpadRight::send +e ;Numpad6

	Numpad7::	
			KeyWait,Numpad7,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send m ;ここに任意のコマンド 長押し
				KeyWait,Numpad7
				Return
			}
			KeyWait,Numpad7,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send x ;ここに任意のコマンド 1度押し
				KeyWait,Numpad7
				Return
			}
			send {Numpad1} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad7
			Return

		^Numpad7::send   ^y

		!Numpad7::send   !x

		^!Numpad7::send  ^!x

		^NumpadHome::send  ^+m

		!NumpadHome::send  !+x

		^!NumpadHome::send ^!+x

		NumpadHome::send +x ;Numpad7



	Numpad8::	
			KeyWait,Numpad8,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send j ;ここに任意のコマンド 長押し
				KeyWait,Numpad8
				Return
			}
			KeyWait,Numpad8,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send s ;ここに任意のコマンド 1度押し
				KeyWait,Numpad8
				Return
			}
			send {Numpad4} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad8
			Return

		^Numpad8::send   ^s

		!Numpad8::send   !s

		^!Numpad8::send  ^!s

		^NumpadUp::send  ^+s

		!NumpadUp::send  !+s

		^!NumpadUp::send ^!+s

		NumpadUp::send +s ;Numpad8

	Numpad9::	
			KeyWait,Numpad9,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send u ;ここに任意のコマンド 長押し
				KeyWait,Numpad9
				Return
			}
			KeyWait,Numpad9,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send w ;ここに任意のコマンド 1度押し
				KeyWait,Numpad9
				Return
			}
			send +{Numpad7} ;ここに任意のコマンド 2度押し
			KeyWait,Numpad9
			Return

		^Numpad9::send   ^w

		!Numpad9::send   !w

		^!Numpad9::send  ^!w

		^NumpadPgUp::send  ^+w

		!NumpadPgUp::send  !+w

		^!NumpadPgUp::send ^!+w

		NumpadPgUp::send +w ;Numpad9

	NumpadDot::	
			KeyWait,NumpadDot,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send p ;ここに任意のコマンド 長押し
				KeyWait,NumpadDot
				Return
			}
			KeyWait,NumpadDot,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send t ;ここに任意のコマンド 1度押し
				KeyWait,NumpadDot
				Return
			}
			send +t ;ここに任意のコマンド 2度押し
			KeyWait,NumpadDot
			Return

		^NumpadDot::send   ^t
	
		!NumpadDot::send   !t
	
		^!NumpadDot::send  ^!t
	
		^NumpadDel::send  ^+t
	
		!NumpadDel::send  !+t
	
		^!NumpadDel::send ^!+t

		NumpadDel::send +t ;NumpadDot



	

	

	
	
	






	

	

	

	


	

	



	NumpadDiv::	
			KeyWait,NumpadDiv,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send +h ;ここに任意のコマンド 長押し
				KeyWait,NumpadDiv
				Return
			}
			KeyWait,NumpadDiv,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send a ;ここに任意のコマンド 1度押し
				KeyWait,NumpadDiv
				Return
			}
			send !h ;ここに任意のコマンド 2度押し
			KeyWait,NumpadDiv
			Return

		^NumpadDiv::send   ^a

		!NumpadDiv::send   !a

		+NumpadDiv::send   +a

		^!NumpadDiv::send  ^!a

		^+NumpadDiv::send  ^+a

		!+NumpadDiv::send  !+a

		^!+NumpadDiv::send ^!+a

	NumpadMult::	
			KeyWait,NumpadMult,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send c ;ここに任意のコマンド 長押し
				KeyWait,NumpadMult
				Return
			}
			KeyWait,NumpadMult,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send q ;ここに任意のコマンド 1度押し
				KeyWait,NumpadMult
				Return
			}
			send {Tab} ;ここに任意のコマンド 2度押し
			KeyWait,NumpadMult
			Return

		^NumpadMult::send   ^{Tab}

		!NumpadMult::send   !q

		+NumpadMult::send   +q

		^!NumpadMult::send  ^!q

		^+NumpadMult::send  ^+q

		!+NumpadMult::send  !+q

		^!+NumpadMult::send ^!+q




	NumpadSub::
			KeyWait,NumpadSub,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send  4 ;ここに任意のコマンド 長押し
				KeyWait,NumpadSub
				Return
			}
				send 1 ;ここに任意のコマンド 1度押し
				KeyWait,NumpadSub
				Return
		^NumpadSub::send ^1
		!NumpadSub::send !1
		+NumpadSub::send +1


	NumpadAdd::
			KeyWait,NumpadAdd,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send  5 ;ここに任意のコマンド 長押し
				KeyWait,NumpadAdd
				Return
			}
				send 2 ;ここに任意のコマンド 1度押し
				KeyWait,NumpadAdd
				Return
		^NumpadAdd::send ^2
		+NumpadAdd::send +2
		!NumpadAdd::send !2


	NumpadEnter::
			KeyWait,NumpadEnter,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send  6 ;ここに任意のコマンド 長押し
				KeyWait,NumpadEnter
				Return
			}
				send 3 ;ここに任意のコマンド 1度押し
				KeyWait,NumpadEnter
				Return
		^NumpadEnter::send ^3
		+NumpadEnter::send +3
		!NumpadEnter::send !3

	Tab::	
			KeyWait,Tab,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send !z ;ここに任意のコマンド 長押し
				KeyWait,Tab
				Return
			}
			KeyWait,Tab,D T0.13	;0.13秒対象キーが押されるのを待つ
			If(ErrorLevel)
			{
				send z ;ここに任意のコマンド 1度押し
				KeyWait,Tab
				Return
			}
			send Tab ;ここに任意のコマンド 2度押し
			KeyWait,Tab
			Return

		^Tab::send ^z
		+Tab::send +z
		


	;マウス
		XButton2 & Tab::
		send r
			Sleep 3
		send z
		Return
		XButton2 & Numpad7::
		send r
			Sleep 3
		send x
		Return
		XButton2 & Numpad4::
		send r
			Sleep 3
		send y
		Return

		XButton1 & Tab::
		send g
			Sleep 3
		send z
		Return
		XButton1 & Numpad7::
		send g
			Sleep 3
		send x
		Return
		XButton1 & Numpad4::
		send g
			Sleep 3
		send y
		Return



	

	

#IfWinActive ahk_exe CLIPStudioPaint.exe	 ;CLIPStudioPaint.exeのウィンドウがアクティブの時のみ割り当てを行わせる

	Numpad0::	
		KeyWait,Numpad0,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  / ;ここに任意のコマンド 長押し
			KeyWait,Numpad0
			Return
		}
		KeyWait,Numpad0,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send b ;ここに任意のコマンド 1度押し
			KeyWait,Numpad0
			Return
		}
		send {Numpad0} ;ここに任意のコマンド 2度押し
		KeyWait,Numpad0
		Return

	  ^Numpad0::send   ^b

	  !Numpad0::send   !b

	 ^!Numpad0::send  ^!b

	  ^NumpadIns::send  ^+b

	  !NumpadIns::send  !+b

	 ^!NumpadIns::send ^!+b

	Numpad1::	
		KeyWait,Numpad1,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  . ;ここに任意のコマンド 長押し
			KeyWait,Numpad1
			Return
		}
		KeyWait,Numpad1,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send v ;ここに任意のコマンド 1度押し
			KeyWait,Numpad1
			Return
		}
		send {Numpad3} ;ここに任意のコマンド 2度押し
		KeyWait,Numpad1
		Return

	  ^Numpad1::send   ^v

	  !Numpad1::send   !v

	 ^!Numpad1::send  ^!v

	  ^NumpadEnd::send  ^+v

	  !NumpadEnd::send  !+v

	 ^!NumpadEnd::send ^!+v

	Numpad2::	
		KeyWait,Numpad2,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send l ;ここに任意のコマンド 長押し
			KeyWait,Numpad2
			Return
		}
		KeyWait,Numpad2,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send f ;ここに任意のコマンド 1度押し
			KeyWait,Numpad2
			Return
		}
		send {Numpad6} ;ここに任意のコマンド 2度押し
		KeyWait,Numpad2
		Return

	  ^Numpad2::send   ^f

	  !Numpad2::send   !f

	 ^!Numpad2::send  ^!f

	  ^NumpadDown::send  ^+f

	  !NumpadDown::send  !+f

	 ^!NumpadDown::send ^!+f

	Numpad3::	
		KeyWait,Numpad3,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send o ;ここに任意のコマンド 長押し
			KeyWait,Numpad3
			Return
		}
		KeyWait,Numpad3,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send r ;ここに任意のコマンド 1度押し
			KeyWait,Numpad3
			Return
		}
		send {Numpad9} ;ここに任意のコマンド 2度押し
		KeyWait,Numpad3
		Return

	  ^Numpad3::send   ^r

	  !Numpad3::send   !r

	 ^!Numpad3::send  ^!r

	  ^NumpadPgdn::send  ^+r

	  !NumpadPgdn::send  !+r

	 ^!NumpadPgdn::send ^!+r

	Numpad4::	
		KeyWait,Numpad4,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  g ;ここに任意のコマンド 長押し
			KeyWait,Numpad4
			Return
		}
		KeyWait,Numpad4,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send c ;ここに任意のコマンド 1度押し
			KeyWait,Numpad4
			Return
		}
		send {Numpad2} ;ここに任意のコマンド 2度押し
		KeyWait,Numpad4
		Return

	  ^Numpad4::send   ^c

	  !Numpad4::send   !c

	 ^!Numpad4::send  ^!c

	 ^NumpadLeft::send  ^+c

	 !NumpadLeft::send  !+c

	^!NumpadLeft::send ^!+c

	Numpad5::	
		KeyWait,Numpad5,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  k ;ここに任意のコマンド 長押し
			KeyWait,Numpad5
			Return
		}
		KeyWait,Numpad5,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send d ;ここに任意のコマンド 1度押し
			KeyWait,Numpad5
			Return
		}
		send {Numpad5} ;ここに任意のコマンド 2度押し
		KeyWait,Numpad5
		Return

	  ^Numpad5::send   ^d

	  !Numpad5::send   !d

	 ^!Numpad5::send  ^!d

	 ^NumpadClear::send  ^+d

	 !NumpadClear::send  !+d

	^!NumpadClear::send ^!+d

	Numpad6::	
		KeyWait,Numpad6,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  i ;ここに任意のコマンド 長押し
			KeyWait,Numpad6
			Return
		}
		KeyWait,Numpad6,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send e ;ここに任意のコマンド 1度押し
			KeyWait,Numpad6
			Return
		}
		send {Numpad8} ;ここに任意のコマンド 2度押し
		KeyWait,Numpad6
		Return

	  ^Numpad6::send   ^e

	  !Numpad6::send   !e

	 ^!Numpad6::send  ^!e

	 ^+NumpadRight::send  ^+e

	 !+NumpadRight::send  !+e

	^!+NumpadRight::send ^!+e

	Numpad7::	
		KeyWait,Numpad7,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send m ;ここに任意のコマンド 長押し
			KeyWait,Numpad7
			Return
		}
		KeyWait,Numpad7,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send x ;ここに任意のコマンド 1度押し
			KeyWait,Numpad7
			Return
		}
		send {Numpad1} ;ここに任意のコマンド 2度押し
		KeyWait,Numpad7
		Return

	  ^Numpad7::send   +^z

	  !Numpad7::send   !x

	 ^!Numpad7::send  ^!x

	 ^NumpadHome::send  ^+x

	 !NumpadHome::send  !+x

	^!NumpadHome::send ^!+x



	Numpad8::	
		KeyWait,Numpad8,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send j ;ここに任意のコマンド 長押し
			KeyWait,Numpad8
			Return
		}
		KeyWait,Numpad8,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send s ;ここに任意のコマンド 1度押し
			KeyWait,Numpad8
			Return
		}
		send {Numpad4} ;ここに任意のコマンド 2度押し
		KeyWait,Numpad8
		Return

	  ^Numpad8::send   ^s

	  !Numpad8::send   !s

	 ^!Numpad8::send  ^!s

	  ^NumpadUp::send  ^+s

	  !NumpadUp::send  !+s

	 ^!NumpadUp::send ^!+s

	Numpad9::	
		KeyWait,Numpad9,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send u ;ここに任意のコマンド 長押し
			KeyWait,Numpad9
			Return
		}
		KeyWait,Numpad9,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send w ;ここに任意のコマンド 1度押し
			KeyWait,Numpad9
			Return
		}
		send {Numpad7} ;ここに任意のコマンド 2度押し
		KeyWait,Numpad9
		Return

	  ^Numpad9::send   ^w

	  !Numpad9::send   !w

	 ^!Numpad9::send  ^!w

	  ^NumpadPgUp::send  ^+w

	  !NumpadPgUp::send  !+w

	 ^!NumpadPgUp::send ^!+w

	NumpadDot::	
		KeyWait,NumpadDot,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send p ;ここに任意のコマンド 長押し
			KeyWait,NumpadDot
			Return
		}
		KeyWait,NumpadDot,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send t ;ここに任意のコマンド 1度押し
			KeyWait,NumpadDot
			Return
		}
		send +t ;ここに任意のコマンド 2度押し
		KeyWait,NumpadDot
		Return

	  ^NumpadDot::send   ^t

	  !NumpadDot::send   !t

	 ^!NumpadDot::send  ^!t

	 ^NumpadDel::send  ^+t

	 !NumpadDel::send  !+t

	^!NumpadDel::send ^!+t



	NumpadIns::send +b ;Numpad0

	NumpadEnd::send +v ;Numpad1

	NumpadDown::send +f ;Numpad2

	NumpadPgDn::send +r ;Numpad3

	NumpadLeft::send +c ;Numpad4

	NumpadClear::send +d ;Numpad5

	NumpadRight::send +e ;Numpad6

	NumpadHome::send +x ;Numpad7

	NumpadUp::send +s ;Numpad8

	NumpadPgUp::send +w ;Numpad9

	NumpadDel::send +t ;NumpadDot



	NumpadDiv::	
		KeyWait,NumpadDiv,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send h ;ここに任意のコマンド 長押し
			KeyWait,NumpadDiv
			Return
		}
		KeyWait,NumpadDiv,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send a ;ここに任意のコマンド 1度押し
			KeyWait,NumpadDiv
			Return
		}
		send +a ;ここに任意のコマンド 2度押し
		KeyWait,NumpadDiv
		Return

	  ^NumpadDiv::send   ^a

	  !NumpadDiv::send   !a

	  +NumpadDiv::send   +a

	 ^!NumpadDiv::send  ^!a

	 ^+NumpadDiv::send  ^+a

	 !+NumpadDiv::send  !+a

	^!+NumpadDiv::send ^!+a

	NumpadMult::	
		KeyWait,NumpadMult,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send y ;ここに任意のコマンド 長押し
			KeyWait,NumpadMult
			Return
		}
		KeyWait,NumpadMult,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send q ;ここに任意のコマンド 1度押し
			KeyWait,NumpadMult
			Return
		}
		send {Tab} ;ここに任意のコマンド 2度押し
		KeyWait,NumpadMult
		Return

	  ^NumpadMult::send   ^q

	  !NumpadMult::send   !q

	  +NumpadMult::send   +q

	 ^!NumpadMult::send  ^!q

	 ^+NumpadMult::send  ^+q

	 !+NumpadMult::send  !+q

	^!+NumpadMult::send ^!+q


	;
	;*NumpadAdd::
	;SetKeyDelay -1
	;send {Blind}{Alt Down}
	;return
	;*NumpadAdd up::
	;SetKeyDelay -1
	;send {Blind}{Alt Up}
	;return
	;
	;*NumpadEnter::
	;SetKeyDelay -1
	;send {Blind}{Shift Down}
	;return
	;*NumpadEnter up::
	;SetKeyDelay -1
	;send {Blind}{Shift Up}
	;return
	;;;;マウスの4ボタンをCtrl+Z
	;XButton1::
	;  Send, f
	;return
	;;;;マウスの5ボタンをCtrl+Y
	;XButton2::
	;  Send, c
	;return


	NumpadSub::
	KeyWait,NumpadSub,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  4 ;ここに任意のコマンド 長押し
			KeyWait,NumpadSub
			Return
		}
		KeyWait,NumpadSub,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send 1 ;ここに任意のコマンド 1度押し
			KeyWait,NumpadSub
			Return
		}
		send 7 ;ここに任意のコマンド 2度押し
		KeyWait,NumpadSub
		Return



	NumpadAdd::
	KeyWait,NumpadAdd,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  5 ;ここに任意のコマンド 長押し
			KeyWait,NumpadAdd
			Return
		}
		KeyWait,NumpadAdd,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send 2 ;ここに任意のコマンド 1度押し
			KeyWait,NumpadAdd
			Return
		}
		send 8 ;ここに任意のコマンド 2度押し
		KeyWait,NumpadAdd
		Return



	NumpadEnter::
	KeyWait,NumpadEnter,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  6 ;ここに任意のコマンド 長押し
			KeyWait,NumpadEnter
			Return
		}
		KeyWait,NumpadEnter,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send 3 ;ここに任意のコマンド 1度押し
			KeyWait,NumpadEnter
			Return
		}
		send 9 ;ここに任意のコマンド 2度押し
		KeyWait,NumpadEnter
		Return



	Tab::	
		KeyWait,Tab,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send n ;ここに任意のコマンド 長押し
			KeyWait,Tab
			Return
		}
		KeyWait,Tab,D T0.13	;0.13秒対象キーが押されるのを待つ
		If(ErrorLevel)
		{
			send z ;ここに任意のコマンド 1度押し
			KeyWait,Tab
			Return
		}
		send +z ;ここに任意のコマンド 2度押し
		KeyWait,Tab
		Return

		^Tab::send ^z
		+Tab::send +z
	









































#IfWinActive ahk_class gdkWindowToplevel	 ;GIMPのウィンドウがアクティブの時のみ割り当てを行わせる


	;マウス中ボタンクリックを無変換キーに変換
	;*MButton::
	;SetKeyDelay -1
	;send {Blind}{F14 Down}
	;return
	;*MButton up::
	;SetKeyDelay -1
	;send {Blind}{F14 Up}
	;return

	BackSpace::

		KeyWait,BackSpace,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  ^n ;ここに任意のコマンド 長押し
			KeyWait,BackSpace
			Return
		}
			send {BackSpace} ;ここに任意のコマンド 1度押し
			KeyWait,BackSpace
			Return



	Numpad0::	
		KeyWait,Numpad0,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  !g ;ここに任意のコマンド 長押し
			KeyWait,Numpad0
			Return
		}
			send b ;ここに任意のコマンド 1度押し
			KeyWait,Numpad0
			Return

	  ^Numpad0::send   ^b

	  !Numpad0::send   !b

	 ^!Numpad0::send  ^!b

	 ^NumpadIns::send  ^+b

	 !NumpadIns::send  !+b

	^!NumpadIns:send ^!+b

	Numpad1::	
		KeyWait,Numpad1,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  +v ;ここに任意のコマンド 長押し
			KeyWait,Numpad1
			Return
		}
			send v ;ここに任意のコマンド 1度押し
			KeyWait,Numpad1
			Return

	  ^Numpad1::send   ^v

	  !Numpad1::send   !v

	 ^!Numpad1::send  ^!v

	 ^+Numpad1::send  ^+v

	 !+Numpad1::send  !+v

	^!+Numpad1::send ^!+v

	Numpad2::	
		KeyWait,Numpad2,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  +f ;ここに任意のコマンド 長押し
			KeyWait,Numpad2
			Return
		}

			send f ;ここに任意のコマンド 1度押し
			KeyWait,Numpad2
			Return


	  ^Numpad2::send   ^f

	  !Numpad2::send   !f

	 ^!Numpad2::send  ^!f

	 ^+Numpad2::send  ^+f

	 !+Numpad2::send  !+f

	^!+Numpad2::send ^!+f

	Numpad3::	
		KeyWait,Numpad3,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  +r ;ここに任意のコマンド 長押し
			KeyWait,Numpad3
			Return
		}

			send r ;ここに任意のコマンド 1度押し
			KeyWait,Numpad3
			Return

	  ^Numpad3::send   ^r

	  !Numpad3::send   !r

	 ^!Numpad3::send  ^!r

	 ^+Numpad3::send  ^+r

	 !+Numpad3::send  !+r

	^!+Numpad3::send ^!+r

	Numpad4::	
		KeyWait,Numpad4,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  +c ;ここに任意のコマンド 長押し
			KeyWait,Numpad4
			Return
		}

			send c ;ここに任意のコマンド 1度押し
			KeyWait,Numpad4
			Return


	  ^Numpad4::send   ^c

	  !Numpad4::send   !c

	 ^!Numpad4::send  ^!c

	 ^+Numpad4::send  ^+c

	 !+Numpad4::send  !+c

	^!+Numpad4::send ^!+c

	Numpad5::	
		Keywait,Numpad5,T0.3
		If(ErrorLevel)
		{
			send  k ;ここに任意のコマンド スーパー長押し
			KeyWait,Numpad5
			Return
		}

			send  d ;ここに任意のコマンド 長押し
			KeyWait,Numpad5
			Return

	  ^Numpad5::send   ^d

	  !Numpad5::send   !d

	 ^!Numpad5::send  ^!d

	 ^NumpadClear::send  ^+d

	 !NumpadClear::send  !+d

	^!NumpadClear::send ^!+d

	Numpad6::	
		KeyWait,Numpad6,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  +e ;ここに任意のコマンド 長押し
			KeyWait,Numpad6
			Return
		}

			send e ;ここに任意のコマンド 1度押し
			KeyWait,Numpad6
			Return


	  ^Numpad6::send   ^e

	  !Numpad6::send   !e

	 ^!Numpad6::send  ^!e

	 ^+Numpad6::send  ^+e

	 !+Numpad6::send  !+e

	^!+Numpad6::send ^!+e

	Numpad7::	
		KeyWait,Numpad7,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send !x ;ここに任意のコマンド 長押し
			KeyWait,Numpad7
			Return
		}

			send x ;ここに任意のコマンド 1度押し
			KeyWait,Numpad7
			Return


	  ^Numpad7::send   +^z

	  !Numpad7::send   !x

	 ^!Numpad7::send  ^!x

	 ^NumpadHome::send  ^+x

	 !NumpadHome::send  !+x

	^!NumpadHome::send ^!+x



	*Numpad8::s

	  ^Numpad8::send   ^s

	  !Numpad8::send   !s

	 ^!Numpad8::send  ^!s

	 ^Numpadup::send  ^+s

	 !Numpadup::send  !+s

	^!Numpadup::send ^!+s

	Numpad9::	
		KeyWait,Numpad9,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send +w ;ここに任意のコマンド 長押し
			KeyWait,Numpad9
			Return
		}

			send w ;ここに任意のコマンド 1度押し
			KeyWait,Numpad9
			Return


	  ^Numpad9::send   ^w

	  !Numpad9::send   !w

	 ^!Numpad9::send  ^!w

	 ^+Numpad9::send  ^+w

	 !+Numpad9::send  !+w

	^!+Numpad9::send ^!+w

	NumpadDot::	
		KeyWait,NumpadDot,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send p ;ここに任意のコマンド 長押し
			KeyWait,NumpadDot
			Return
		}

			send t ;ここに任意のコマンド 1度押し
			KeyWait,NumpadDot
			Return


	  ^NumpadDot::send   ^t

	  !NumpadDot::send   !t

	 ^!NumpadDot::send  ^!t

	 ^+NumpadDot::send  ^+t

	 !+NumpadDot::send  !+t

	^!+NumpadDot::send ^!+t



	NumpadIns::send +b ;Numpad0

	NumpadEnd::send +v ;Numpad1

	NumpadDown::send +f ;Numpad2

	NumpadPgDn::send +r ;Numpad3

	NumpadLeft::send +c ;Numpad4

	NumpadClear::send +d ;Numpad5

	NumpadRight::send +e ;Numpad6

	NumpadHome::send +x ;Numpad7

	NumpadUp::send +s ;Numpad8

	NumpadPgUp::send +w ;Numpad9

	NumpadDel::send +p ;NumpadDot



	NumpadDiv::	
		KeyWait,NumpadDiv,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send +a ;ここに任意のコマンド 長押し
			KeyWait,NumpadDiv
			Return
		}

			send a ;ここに任意のコマンド 1度押し
			KeyWait,NumpadDiv
			Return


	  ^NumpadDiv::send   ^a

	  !NumpadDiv::send   !a

	  +NumpadDiv::send   +a

	 ^!NumpadDiv::send  ^!a

	 ^+NumpadDiv::send  ^+a

	 !+NumpadDiv::send  !+a

	^!+NumpadDiv::send ^!+a

	NumpadMult::	
		KeyWait,NumpadMult,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send y ;ここに任意のコマンド 長押し
			KeyWait,NumpadMult
			Return
		}

			send q ;ここに任意のコマンド 1度押し
			KeyWait,NumpadMult
			Return

	  ^NumpadMult::send   ^q

	  !NumpadMult::send   !q

	  +NumpadMult::send   +q

	 ^!NumpadMult::send  ^!q

	 ^+NumpadMult::send  ^+q

	 !+NumpadMult::send  !+q

	^!+NumpadMult::send ^!+q

	*NumpadSub::
	SetKeyDelay -1
	send {Blind}{Ctrl Down}
	return
	*NumpadSub up::
	SetKeyDelay -1
	send {Blind}{Ctrl Up}
	return

	*NumpadAdd::
	SetKeyDelay -1
	send {Blind}{Alt Down}
	return
	*NumpadAdd up::
	SetKeyDelay -1
	send {Blind}{Alt Up}
	return

	*NumpadEnter::
	SetKeyDelay -1
	send {Blind}{Shift Down}
	return
	*NumpadEnter up::
	SetKeyDelay -1
	send {Blind}{Shift Up}
	return

	Tab::	
		KeyWait,Tab,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send z ;ここに任意のコマンド 長押し
			KeyWait,Tab
			Return
		}

			send {Tab} ;ここに任意のコマンド 1度押し
			KeyWait,Tab
			Return


		^Tab::send ^z
	



























#IfWinActive ahk_class QWidget	 ;DAZ_studioのウィンドウがアクティブの時のみ割り当てを行わせる


	;マウス中ボタンクリックを無変換キーに変換
	;*MButton::
	;SetKeyDelay -1
	;send {Blind}{F14 Down}
	;return
	;*MButton up::
	;SetKeyDelay -1
	;send {Blind}{F14 Up}
	;return

	BackSpace::

		KeyWait,BackSpace,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  ^n ;ここに任意のコマンド 長押し
			KeyWait,BackSpace
			Return
		}
			send {BackSpace} ;ここに任意のコマンド 1度押し
			KeyWait,BackSpace
			Return



	Numpad0::	
		KeyWait,Numpad0,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  !g ;ここに任意のコマンド 長押し
			KeyWait,Numpad0
			Return
		}
			send b ;ここに任意のコマンド 1度押し
			KeyWait,Numpad0
			Return

	  ^Numpad0::send   ^b

	  !Numpad0::send   !b

	 ^!Numpad0::send  ^!b

	 ^NumpadIns::send  ^+b

	 !NumpadIns::send  !+b

	^!NumpadIns:send ^!+b

	Numpad1::	
		KeyWait,Numpad1,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  +v ;ここに任意のコマンド 長押し
			KeyWait,Numpad1
			Return
		}
			send v ;ここに任意のコマンド 1度押し
			KeyWait,Numpad1
			Return

	  ^Numpad1::send   ^v

	  !Numpad1::send   !v

	 ^!Numpad1::send  ^!v

	 ^+Numpad1::send  ^+v

	 !+Numpad1::send  !+v

	^!+Numpad1::send ^!+v

	Numpad2::	
		KeyWait,Numpad2,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  +f ;ここに任意のコマンド 長押し
			KeyWait,Numpad2
			Return
		}

			send f ;ここに任意のコマンド 1度押し
			KeyWait,Numpad2
			Return


	  ^Numpad2::send   ^f

	  !Numpad2::send   !f

	 ^!Numpad2::send  ^!f

	 ^+Numpad2::send  ^+f

	 !+Numpad2::send  !+f

	^!+Numpad2::send ^!+f

	Numpad3::	
		KeyWait,Numpad3,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  +r ;ここに任意のコマンド 長押し
			KeyWait,Numpad3
			Return
		}

			send r ;ここに任意のコマンド 1度押し
			KeyWait,Numpad3
			Return

	  ^Numpad3::send   ^r

	  !Numpad3::send   !r

	 ^!Numpad3::send  ^!r

	 ^+Numpad3::send  ^+r

	 !+Numpad3::send  !+r

	^!+Numpad3::send ^!+r

	Numpad4::	
		KeyWait,Numpad4,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  +c ;ここに任意のコマンド 長押し
			KeyWait,Numpad4
			Return
		}

			send c ;ここに任意のコマンド 1度押し
			KeyWait,Numpad4
			Return


	  ^Numpad4::send   ^c

	  !Numpad4::send   !c

	 ^!Numpad4::send  ^!c

	 ^+Numpad4::send  ^+c

	 !+Numpad4::send  !+c

	^!+Numpad4::send ^!+c

	Numpad5::	
		Keywait,Numpad5,T0.3
		If(ErrorLevel)
		{
			send  k ;ここに任意のコマンド スーパー長押し
			KeyWait,Numpad5
			Return
		}

			send  d ;ここに任意のコマンド 長押し
			KeyWait,Numpad5
			Return

	  ^Numpad5::send   ^d

	  !Numpad5::send   !d

	 ^!Numpad5::send  ^!d

	 ^NumpadClear::send  ^+d

	 !NumpadClear::send  !+d

	^!NumpadClear::send ^!+d

	Numpad6::	
		KeyWait,Numpad6,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send  +e ;ここに任意のコマンド 長押し
			KeyWait,Numpad6
			Return
		}

			send e ;ここに任意のコマンド 1度押し
			KeyWait,Numpad6
			Return


	  ^Numpad6::send   ^e

	  !Numpad6::send   !e

	 ^!Numpad6::send  ^!e

	 ^+Numpad6::send  ^+e

	 !+Numpad6::send  !+e

	^!+Numpad6::send ^!+e

	Numpad7::	
		KeyWait,Numpad7,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send !x ;ここに任意のコマンド 長押し
			KeyWait,Numpad7
			Return
		}

			send x ;ここに任意のコマンド 1度押し
			KeyWait,Numpad7
			Return


	  ^Numpad7::send   ^y

	  !Numpad7::send   !x

	 ^!Numpad7::send  ^!x

	 ^NumpadHome::send  ^+x

	 !NumpadHome::send  !+x

	^!NumpadHome::send ^!+x



	*Numpad8::s

	  ^Numpad8::send   ^s

	  !Numpad8::send   !s

	 ^!Numpad8::send  ^!s

	 ^Numpadup::send  ^+s

	 !Numpadup::send  !+s

	^!Numpadup::send ^!+s

	Numpad9::	
		KeyWait,Numpad9,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send +w ;ここに任意のコマンド 長押し
			KeyWait,Numpad9
			Return
		}

			send w ;ここに任意のコマンド 1度押し
			KeyWait,Numpad9
			Return


	  ^Numpad9::send   ^w

	  !Numpad9::send   !w

	 ^!Numpad9::send  ^!w

	 ^+Numpad9::send  ^+w

	 !+Numpad9::send  !+w

	^!+Numpad9::send ^!+w

	NumpadDot::	
		KeyWait,NumpadDot,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send p ;ここに任意のコマンド 長押し
			KeyWait,NumpadDot
			Return
		}

			send t ;ここに任意のコマンド 1度押し
			KeyWait,NumpadDot
			Return


	  ^NumpadDot::send   ^t

	  !NumpadDot::send   !t

	 ^!NumpadDot::send  ^!t

	 ^+NumpadDot::send  ^+t

	 !+NumpadDot::send  !+t

	^!+NumpadDot::send ^!+t



	NumpadIns::send +b ;Numpad0

	NumpadEnd::send +v ;Numpad1

	NumpadDown::send +f ;Numpad2

	NumpadPgDn::send +r ;Numpad3

	NumpadLeft::send +c ;Numpad4

	NumpadClear::send +d ;Numpad5

	NumpadRight::send +e ;Numpad6

	NumpadHome::send +x ;Numpad7

	NumpadUp::send +s ;Numpad8

	NumpadPgUp::send +w ;Numpad9

	NumpadDel::send +p ;NumpadDot



	NumpadDiv::	
		KeyWait,NumpadDiv,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send +a ;ここに任意のコマンド 長押し
			KeyWait,NumpadDiv
			Return
		}

			send a ;ここに任意のコマンド 1度押し
			KeyWait,NumpadDiv
			Return


	  ^NumpadDiv::send   ^a

	  !NumpadDiv::send   !a

	  +NumpadDiv::send   +a

	 ^!NumpadDiv::send  ^!a

	 ^+NumpadDiv::send  ^+a

	 !+NumpadDiv::send  !+a

	^!+NumpadDiv::send ^!+a

	NumpadMult::	
		KeyWait,NumpadMult,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send y ;ここに任意のコマンド 長押し
			KeyWait,NumpadMult
			Return
		}

			send q ;ここに任意のコマンド 1度押し
			KeyWait,NumpadMult
			Return

	  ^NumpadMult::send   ^q

	  !NumpadMult::send   !q

	  +NumpadMult::send   +q

	 ^!NumpadMult::send  ^!q

	 ^+NumpadMult::send  ^+q

	 !+NumpadMult::send  !+q

	^!+NumpadMult::send ^!+q

	*NumpadSub::
	SetKeyDelay -1
	send {Blind}{Ctrl Down}
	return
	*NumpadSub up::
	SetKeyDelay -1
	send {Blind}{Ctrl Up}
	return

	*NumpadAdd::
	SetKeyDelay -1
	send {Blind}{Alt Down}
	return
	*NumpadAdd up::
	SetKeyDelay -1
	send {Blind}{Alt Up}
	return

	*NumpadEnter::
	SetKeyDelay -1
	send {Blind}{Shift Down}
	return
	*NumpadEnter up::
	SetKeyDelay -1
	send {Blind}{Shift Up}
	return

	Tab::	
		KeyWait,Tab,T0.3		;0.3秒対象キーが押されたかどうか
		If(ErrorLevel)
		{
			send +z ;ここに任意のコマンド 長押し
			KeyWait,Tab
			Return
		}

			send z ;ここに任意のコマンド 1度押し
			KeyWait,Tab
			Return


		^Tab::send ^z
	








































#IfWinActive ahk_exe notepad.exe  ;メモ帳のウィンドウがアクティブの時のみ割り当てを行わせるの時のみ割り当てを行わせる

	;スクリプトの自動リロード
	
	~^s:: 
	ScriptName := blender_clista_puref_daz.ahk
	IfWinActive, %ScriptName%
	Sleep 250
	{
	Reload
	}
	SoundBeep
	return

	*Numpad8::s

	  ^Numpad8::
	ScriptName := blender_clista_puref_daz.ahk
	IfWinActive, %ScriptName%
	Sleep 250
	{
	Reload
	}
	SoundBeep
	return

	  !Numpad8::send   !s

	 ^!Numpad8::send  ^!s

	 ^Numpadup::send  ^+s

	 !Numpadup::send  !+s

	^!Numpadup::send ^!+s


#IfWinActive ahk_exe Code.exe  ;Vistualstudiocodeのウィンドウがアクティブの時のみ割り当てを行わせるの時のみ割り当てを行わせる

	;スクリプトの自動リロード
 
	~^s:: 
		ScriptName := ZBrush.ahk
		IfWinActive, %ScriptName%
		Sleep 250
		{
		Reload
		}
		ScriptName := blender_clista_puref_daz.ahk
		IfWinActive, %ScriptName%
		Sleep 250
		{
		Reload
		}
		ScriptName := Default.ahk
		IfWinActive, %ScriptName%
		Sleep 250
		{
		Reload
		}
		SoundBeep
		return

	*Numpad8::s

	^Numpad8::
		send ^s
		ScriptName := ZBrush.ahk
		IfWinActive, %ScriptName%
		Sleep 250
		{
		Reload
		}
		ScriptName := blender_clista_puref_daz.ahk
		IfWinActive, %ScriptName%
		Sleep 250
		{
		Reload
		}
		ScriptName := Default.ahk
		IfWinActive, %ScriptName%
		Sleep 250
		{
		Reload
		}
		SoundBeep
		return

	!Numpad8::send   !s

	^!Numpad8::send  ^!s

	^Numpadup::send  ^+s

	!Numpadup::send  !+s

	^!Numpadup::send ^!+s



#IfWinActive ahk_class Qt5QWindowIcon ;PureRef使用中に発動
	
	;やり直し
		^Tab::send ^z
		^+Tab::send ^+z
		
	
	
	NumpadDot::	
			KeyWait,NumpadDot,T0.3		;0.3秒対象キーが押されたかどうか
			If(ErrorLevel)
			{
				send p ;ここに任意のコマンド 長押し
				KeyWait,NumpadDot
				Return
			}

				send t ;ここに任意のコマンド 1度押し
				KeyWait,NumpadDot
				Return

		^NumpadDot::send   ^t

		!NumpadDot::send   !t

		^!NumpadDot::send  ^!t

		^+NumpadDot::send  ^+t

		!+NumpadDot::send  !+t

		^!+NumpadDot::send ^!+t
		

	

	Numpad1::	
		
		^Numpad1::send   ^v

		!Numpad1::send   !v

		^!Numpad1::send  ^!v

		^NumpadEnd::send  ^m

		!NumpadEnd::send  !+v

		^!NumpadEnd::send ^!+v
	
	Numpad2::	
		
		^Numpad2::send   ^f
		!Numpad2::send   !f
		^!Numpad2::send  ^!f
		^+Numpad2::send  ^+f
		!+Numpad2::send  !+f
		^!+Numpad2::send ^!+f
	Numpad4::	
		
		^Numpad4::send   ^c

		!Numpad4::send   !c

		^!Numpad4::send  ^!c

		^+Numpad4::send  ^+c

		!+Numpad4::send  !+c

		^!+Numpad4::send ^!+c
	
	

	
	Numpad7::	
		
		^Numpad7::send   ^x

		!Numpad7::send   !x

		^!Numpad7::send  ^!x

		^+Numpad7::send  ^+x

		!+Numpad7::send  !+x

		^!+Numpad7::send ^!+x


	Numpad8::	
		
		^Numpad8::send   ^s
		!Numpad8::send   !s
		^!Numpad8::send  ^!s
		^+Numpad8::send  ^+s
		!+Numpad8::send  !+s
		^!+Numpad8::send ^!+s
#IfWinActive ahk_class Chrome_WidgetWin_1  ;discordのウィンドウがアクティブの時のみ割り当てを行わせる


	F1::send ^+m































