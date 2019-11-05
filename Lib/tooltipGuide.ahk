
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