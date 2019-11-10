

+f1::Run C:\Windows\notepad.exe %A_ScriptDir%\help.txt

^r::reload


;#RShift
;LWin & RShift::
;#f1::
;HOME & Winkey::
;+Space::
Shift & Space::
	; Suspend, Toggle
	; MsgBox, toggled
    Suspend, permit
    if (State = 0) {
        Gui, +AlwaysOnTop +Disabled -SysMenu +Owner 
        Gui, Add, Text,, On
        Gui, Show, xCenter yCenter, State, NoActivate,
        sleep, 400
        Gui, Destroy
        State++
    }
    else {
        State := 0
        Gui, +AlwaysOnTop +Disabled -SysMenu +Owner 
        Gui, Add, Text,, Off
        Gui, Show, xCenter yCenter, State, NoActivate, 
        sleep, 400
        Gui, Destroy
    }
    Suspend, toggle
return
