
SetCoord(ind,xx,yy,txt)
{
	global
	mouseX%ind%=%xx%
	mouseY%ind%=%yy%
	right%ind% := GetKeyState("Capslock", "T")  ; 1 if CapsLock is ON, 0 otherwise.
	txt%ind%=%txt%
	tooltip %xx% %yy%, %xx%, %yy% ; display tooltip of %xx% %yy% at coordinates x0 y0
	SetTimer, RemoveToolTip, 2000	
}

SetMouseClick(ind)
{
	MouseGetPos xx, yy
	SetCoord(ind,xx,yy,"")
}

SetMouseTxtClick(ind)
{
	MouseGetPos xx, yy
	InputBox, UserInput, Input, , , 240, 100
	SetCoord(1,xx,yy,UserInput)	
}

#+1::SetMouseClick(1)
#+2::SetMouseClick(2)
#+3::SetMouseClick(3)

#+q::SetMouseTxtClick(1)
#+w::SetMouseTxtClick(2)
#+e::SetMouseTxtClick(3)

#1::
	global mouseX1
	global mouseY1
	global right1
	global txt1
	MouseMoveClick(mouseX1, mouseY1, right1, txt1)
return

#2::
	global mouseX2
	global mouseY2
	global right2
	global txt2
	MouseMoveClick(mouseX2, mouseY2, right2, txt2)
return
	
#3::
	global mouseX3
	global mouseY3
	global right3
	global txt3
	MouseMoveClick(mouseX3, mouseY3, right3, txt3)
return
	
MouseMoveClick(xx,yy,right,txt)
{
	if right=0 ;msgbox, %right1% 
	{ 
		MouseClick, left, %xx%, %yy% 
		if(txt="")
		{
		}
		else
		{
			Send %txt%
		}
	} 
	else 
	{
		MouseClick, right, %xx%, %yy% 
	}
}

#f3::
	MouseMoveClick(mouseX1, mouseY1, right1,txt1)
	Sleep, 50
	MouseMoveClick(mouseX2, mouseY2, right2,txt2)
	Sleep, 50
	MouseMoveClick(mouseX3, mouseY3, right3,txt3)
return


#f2::
	MouseMoveClick(mouseX1, mouseY1, right1,txt1)
	Sleep, 50
	MouseMoveClick(mouseX2, mouseY2, right2,txt2)
return
	
#f1::
	global mouseX1
	global mouseY1
	global mouseX2
	global mouseY2
	ToolTip, #1, %mouseX1%, %mouseY1%, 1
	ToolTip, #2, %mouseX2%, %mouseY2%, 2
	global mouseX3
	global mouseY3
	;ToolTip, %mouseX3% %mouseY3%, %mouseX3%, %mouseY3%, 3
	ToolTip, #3, %mouseX3%, %mouseY3%, 3

	SetTimer, RemoveToolTip, 2000	
return	

+#f1::
	sp := " "
	lf := "`n"
	caps := GetKeyState("Capslock", "T")
	if(caps=0)
	{
		content1 = %mouseX1%%sp%%mouseY1%%sp%%right1%%lf%
		content2 = %mouseX2%%sp%%mouseY2%%sp%%right2%%lf%
		content3 = %mouseX3%%sp%%mouseY3%%sp%%right3%%lf%
		content = %content1%%content2%%content3%
		FileSelectFile, fn
		f := FileOpen(fn, "w")
		f.Write(content)
		f.Close()
	} 
	else 
	{
		FileSelectFile, fn
		FileRead, content, %fn%
		arr := StrSplit(content,"`n")
		for i, ln in arr
		{
			ToCoords(ln, i)
		}
	}
return

ToCoords(ln, ind)
{
	global
	cs := StrSplit(ln," ")
	mouseX%ind% := cs[1]
	mouseY%ind% := cs[2]
	right%ind% := cs[3]
	count := ind
}


^r::reload

RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip,,,,1
    ToolTip,,,,2
    ToolTip,,,,3
    ToolTip
    return
	
	