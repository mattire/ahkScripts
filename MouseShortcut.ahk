

#+1::
	MouseGetPos xx, yy
	tooltip %xx% %yy%, %xx%, %yy% ; display tooltip of %xx% %yy% at coordinates x0 y0
	global mouseX1
	mouseX1=%xx%
	global mouseY1
	mouseY1=%yy%
	global right1=1
	right1 := GetKeyState("Capslock", "T")  ; 1 if CapsLock is ON, 0 otherwise.
	SetTimer, RemoveToolTip, 2000	
return

#+2::
	MouseGetPos xx, yy
	tooltip %xx% %yy%, %xx%, %yy% ; display tooltip of %xx% %yy% at coordinates x0 y0
	global mouseX2
	mouseX2=%xx%
	global mouseY2
	mouseY2=%yy%
	global right2
	right2 := GetKeyState("Capslock", "T")  ; 1 if CapsLock is ON, 0 otherwise.
	SetTimer, RemoveToolTip, 2000	
return

#+3::
	MouseGetPos xx, yy
	tooltip %xx% %yy%, %xx%, %yy% ; display tooltip of %xx% %yy% at coordinates x0 y0
	global mouseX3
	mouseX3=%xx%
	global mouseY3
	mouseY3=%yy%
	global right3
	right3 := GetKeyState("Capslock", "T")  ; 1 if CapsLock is ON, 0 otherwise.
	SetTimer, RemoveToolTip, 2000	
return




#1::
	global mouseX1
	global mouseY1
	global right1
	MouseMoveClick(mouseX1, mouseY1, right1)
return

#2::
	global mouseX2
	global mouseY2
	global right2
	MouseMoveClick(mouseX2, mouseY2, right2)
return
	
#3::
	global mouseX3
	global mouseY3
	global right3
	MouseMoveClick(mouseX3, mouseY3, right3)
return
	
MouseMoveClick(xx,yy,right)
{
	if right=0 ;msgbox, %right1% 
	{ 
		MouseClick, left, %xx%, %yy% 
	} 
	else 
	{
		MouseClick, right, %xx%, %yy% 
	}
}

#f3::
	MouseMoveClick(mouseX1, mouseY1, right1)
	Sleep, 50
	MouseMoveClick(mouseX2, mouseY2, right2)
	Sleep, 50
	MouseMoveClick(mouseX3, mouseY3, right3)
return


#f2::
	MouseMoveClick(mouseX1, mouseY1, right1)
	Sleep, 50
	MouseMoveClick(mouseX2, mouseY2, right2)
return
	
#f1::
	global mouseX1
	global mouseY1
	global mouseX2
	global mouseY2
	ToolTip, %mouseX1% %mouseY1%, %mouseX1%, %mouseY1%, 1
	ToolTip, %mouseX2% %mouseY2%, %mouseX2%, %mouseY2%, 2
	global mouseX3
	global mouseY3
	ToolTip, %mouseX3% %mouseY3%, %mouseX3%, %mouseY3%, 3

	SetTimer, RemoveToolTip, 2000	
return	

RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip,,,,1
    ToolTip,,,,2
    ToolTip,,,,3
    ToolTip
    return
	
	