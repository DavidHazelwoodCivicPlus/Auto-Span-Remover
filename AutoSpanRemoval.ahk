#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^+s::	
	Sleep 100
	Send ^c
	Sleep 150
	segment:= clipboard
	Sleep 250
	clipboardBackup := ClipboardAll
	regex := "<span[^>]*>.*?</span>"
	Sleep 150
	Clipboard:= segment
	Sleep 100
	Send ^v
Return