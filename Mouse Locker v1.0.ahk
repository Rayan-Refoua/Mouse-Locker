;
; Language:       English
; Platform:       Win9x/NT
; Author:         Rayan Refoua Rayan@Refoua.me
;

#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
FileInstall, ico.ico, %A_Temp%\MouseLocker_ico.ico  , 1
FileInstall, ico-off.ico, %A_Temp%\MouseLocker_ico-off.ico , 1
Menu, Tray, Icon , %A_Temp%\MouseLocker_ico-off.ico
Menu, Tray, NoStandard
Menu, Tray, Add, Help
Menu, Tray, Add, Exit

Help:
MsgBox, 4160, Title, For locking press F1`n`nFor Unlocking press F2`n`n`nExit The App From Tray Icon`n`n`nRayan@Refoua.me
Return

Exit:
FileDelete, %A_Temp%\MouseLocker_ico.ico
FileDelete, %A_Temp%\MouseLocker_ico-off.ico
ExitApp
Return

TrayOFF:
TrayTip
Return

F1::
SetTimer, TrayOFF, -1
BlockInput, mousemove
Menu, Tray, Icon , %A_Temp%\MouseLocker_ico.ico
TrayTip , Mouse Locker, Mouse is Locked`nHit F2 to Unlock, 1, 32
SetTimer, TrayOFF, -4000
Return

F2::
SetTimer, TrayOFF, -1
BlockInput, MouseMoveOff
Menu, Tray, Icon , %A_Temp%\MouseLocker_ico-off.ico
TrayTip , Mouse Locker, Mouse is Unlocked`nHit F1 to lock, 1, 32
SetTimer, TrayOFF, -2000
Return