#MaxHotkeysPerInterval 200

; Change icon on startup
if (GetKeyState("NumLock", "T") = 1) {
	GoSub, LockIcon
}
else {
	GoSub, KeyboardIcon
}

CapsLock::
	if (GetKeyState("NumLock", "T") = 0) {
		; On
		SetNumLockState, On
		TrayTip, Num Lock, Enabled, 1, 17
		GoSub, LockIcon
	}
	else {
		; Off
		SetNumLockState, Off
		TrayTip, Num Lock, Disabled, 1, 17
		GoSub, KeyboardIcon
	}
Return

KeyboardIcon:
	Menu, Tray, Icon, shell32.dll, 174
Return

LockIcon:
	Menu, Tray, Icon, shell32.dll, 48
Return
