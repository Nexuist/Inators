#MaxHotkeysPerInterval 200

; Change icon on startup
if (GetKeyState("CapsLock", "T") = 1) {
	GoSub, LockIcon
}
else {
	GoSub, KeyboardIcon
}

CapsLock::
	; This is run whenever CapsLock is pressed
	if (GetKeyState("CapsLock", "T") = 0) {
		; On
		SetCapsLockState, On
		TrayTip, Caps Lock, Enabled, 1, 17
		GoSub, LockIcon
	}
	else {
		; Off
		SetCapsLockState, Off
		TrayTip, Caps Lock, Disabled, 1, 17
		GoSub, KeyboardIcon
	}
Return

KeyboardIcon:
	Menu, Tray, Icon, shell32.dll, 174
Return

LockIcon:
	Menu, Tray, Icon, shell32.dll, 48
Return
