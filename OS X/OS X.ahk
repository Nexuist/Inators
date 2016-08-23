#NoEnv ; For compatibility with future AHK releases
SendMode Input
#MaxHotkeysPerInterval 200 ; To prevent the warning dialog from popping up all the time

; Switch wheel directions, like on OS X
WheelUp::
 Send {WheelDown}
Return

WheelDown::
 Send {WheelUp}
Return

WheelLeft::
 Send {WheelRight}
Return

WheelRight::
 Send {WheelLeft}
Return

; On OS X, the Command key is used for copy (Command+C), paste (Command+V), etc.
; On Windows, the CTRL key is used for these - CTRL+C, CTRL+V, etc.
; Also in Windows, the Command key becomes the Windows key (pressing Command will open the start menu).
; As you can imagine, this can become quite confusing having to switch shortcuts all the time, so this will just flip the keys.
; The CTRL key will become the Windows key and the Windows key (Command) will become the CTRL key.
Ctrl::LWin
LWin::Ctrl
