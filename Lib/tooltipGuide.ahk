
ShowCoords()
{
	global 
	; global count
	;if(count>3)
	;{
	;	MsgBox, greater
	;}
	;msgbox, %count% 
	;Loop, %count%
	Loop, 5
	{
		;msgbox, #%A_Index% 
		gtxt := txt%A_Index%
		gright := right%A_Index%
		
		;ToolTip, #%A_Index% right%A_Index% txt%A_Index%, mouseX%A_Index%, mouseY%A_Index%, %A_Index%
		ToolTip, #%A_Index% %gright% %gtxt%, mouseX%A_Index%, mouseY%A_Index%, %A_Index%
	}
	
	;ToolTip, #1 %right1% %txt1%, %mouseX1%, %mouseY1%, 1
	;ToolTip, #2 %right2% %txt2%, %mouseX2%, %mouseY2%, 2
	;ToolTip, #3 %right3% %txt3%, %mouseX3%, %mouseY3%, 3
	;ToolTip, #4 %right4% %txt4%, %mouseX4%, %mouseY4%, 4
    ;ToolTip, #5 %right5% %txt5%, %mouseX5%, %mouseY5%, 5
}

HideCoords()
{
    ToolTip,,,,1
    ToolTip,,,,2
    ToolTip,,,,3
    ToolTip,,,,4
    ToolTip,,,,5
    ToolTip
}



;Shift & Space::
; ~Space::
~alt::
	ShowCoords()
	Input, OutputVar, L1 M
	if(OutputVar = "1"){
		HideCoords()
		MouseMoveClick(mouseX1, mouseY1, right1, txt1, jstTxt1, drag1)
	}
	else if(OutputVar = "2"){
		HideCoords()
		MouseMoveClick(mouseX2, mouseY2, right2, txt2, jstTxt2, drag2)
	}
	else if(OutputVar = "3"){
		HideCoords()
		MouseMoveClick(mouseX3, mouseY3, right3, txt3, jstTxt3, drag3)
	}
	else if(OutputVar = "4"){
		HideCoords()
		MouseMoveClick(mouseX4, mouseY4, right4, txt4, jstTxt4, drag4)
	}
	else if(OutputVar = "5"){
		HideCoords()
		MouseMoveClick(mouseX5, mouseY5, right5, txt5, jstTxt5, drag5)
	}
	else {
		HideCoords()
	}
	
	;while(GetKeyState("lshift"))
	;{
	;	st1 := GetKeyState("1")
	;	st2 := GetKeyState("2")
	;	st3 := GetKeyState("3")
	;	st4 := GetKeyState("4")
	;	if(st1) { 
	;		MouseMoveClick(mouseX1, mouseY1, right1, txt1)
	;		;HideCoords()
	;	}
	
	;	Sleep, 10
	;}
return
	