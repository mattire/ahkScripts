

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
	Loop, 20
	{
		;msgbox, #%A_Index% 
		gtxt := txt%A_Index%
		gright := right%A_Index%
		
		;ToolTip, #%A_Index% right%A_Index% txt%A_Index%, mouseX%A_Index%, mouseY%A_Index%, %A_Index%
		ToolTip, #%A_Index% %gright% %gtxt%, mouseX%A_Index%, mouseY%A_Index%, %A_Index%
	}	
}

HideCoords()
{
    Loop, 20
    {
        ToolTip,,,,%A_Index%
    }

    ToolTip
}



;Shift & Space::
; ~Space::
~alt::
    global keyMapping
	ShowCoords()
	Input, OutputVar, L1 M
    
    ind := keyMapping[OutputVar]
    LogToFile("Guide")
    LogToFileMsg("OutputVar",OutputVar    )
    LogToFileMsg("ind      ",ind    )
    
    ; HideCoords()
    ; MouseMoveClick(mouseX%ind%, mouseY%ind%, right%ind%, txt%ind%, jstTxt%ind%, drag%ind%)
    
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
    else if(OutputVar = "6"){
		HideCoords()
		MouseMoveClick(mouseX6, mouseY6, right6, txt6, jstTxt6, drag6)
	}
    else if(OutputVar = "7"){
		HideCoords()
		MouseMoveClick(mouseX7, mouseY7, right7, txt7, jstTxt7, drag7)
	}
    else if(OutputVar = "8"){
		HideCoords()
		MouseMoveClick(mouseX8, mouseY8, right8, txt8, jstTxt8, drag8)
	}
    else if(OutputVar = "9"){
		HideCoords()
		MouseMoveClick(mouseX9, mouseY9, right9, txt9, jstTxt9, drag9)
	}
    else if(OutputVar = "0"){
		HideCoords()
		MouseMoveClick(mouseX10, mouseY10, right10, txt10, jstTxt10, drag10)
	}
    ; --------------------
    else if(OutputVar = "q"){
		HideCoords()
		MouseMoveClick(mouseX11, mouseY11, right11, txt11, jstTxt11, drag11)
	}
	else if(OutputVar = "w"){
		HideCoords()
		MouseMoveClick(mouseX12, mouseY12, right12, txt12, jstTxt12, drag12)
	}
	else if(OutputVar = "e"){
		HideCoords()
		MouseMoveClick(mouseX13, mouseY13, right13, txt13, jstTxt13, drag13)
	}
	else if(OutputVar = "r"){
		HideCoords()
		MouseMoveClick(mouseX14, mouseY14, right14, txt14, jstTxt14, drag14)
	}
	else if(OutputVar = "t"){
		HideCoords()
		MouseMoveClick(mouseX15, mouseY15, right15, txt15, jstTxt15, drag15)
	}
    else if(OutputVar = "y"){
		HideCoords()
		MouseMoveClick(mouseX16, mouseY16, right16, txt16, jstTxt16, drag16)
	}
    else if(OutputVar = "u"){
		HideCoords()
		MouseMoveClick(mouseX17, mouseY17, right17, txt17, jstTxt17, drag17)
	}
    else if(OutputVar = "i"){
		HideCoords()
		MouseMoveClick(mouseX18, mouseY18, right18, txt18, jstTxt18, drag18)
	}
    else if(OutputVar = "o"){
		HideCoords()
		MouseMoveClick(mouseX19, mouseY19, right19, txt19, jstTxt19, drag19)
	}
    else if(OutputVar = "p"){
		HideCoords()
		MouseMoveClick(mouseX20, mouseY20, right20, txt20, jstTxt20, drag20)
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



RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip,,,,1
    ToolTip,,,,2
    ToolTip,,,,3
	ToolTip,,,,4
	ToolTip,,,,5
	ToolTip,,,,6
	ToolTip,,,,7
	ToolTip,,,,8
	ToolTip,,,,9
	ToolTip,,,,10
    ToolTip
    return