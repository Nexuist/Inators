#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxHotkeysPerInterval 200

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

Ctrl::LWin
LWin::Ctrl
