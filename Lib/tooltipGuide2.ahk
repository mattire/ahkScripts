
ShowCoords()
{
	global 
	Loop, 20
	{
		gtxt := txt%A_Index%
		gright := right%A_Index%
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


ShowToolTipInd(ch, ind, aindex)
{
    global
    ;global mouseX%ind%, mouseY%ind%
    ;global mouseX%ind%
    ;global mouseY%ind%
    ;global mouseX, mouseY
    ; Xcoord := mouseX%ind%
    ; Ycoord := mouseY%ind%
    %Xcoord% = mouseX%ind%
    %Ycoord% = mouseY%ind%
    Xcoord_ := mouseX%ind%
    Ycoord_ := mouseY%ind%
    LogToFile("ShowToolTipInd")
    LogToFileMsg("ch"   ,ch)
    LogToFileMsg("ind"      ,ind)
    LogToFileMsg("Xcoord"   ,Xcoord)
    LogToFileMsg("Ycoord"   ,Ycoord)
    LogToFileMsg("Xcoord_"   ,Xcoord_)
    LogToFileMsg("Ycoord_"   ,Ycoord_)
    ToolTip, %ch%, Xcoord, Ycoord, aindex
}


#'::
    v :=keyMapping["q"]
    MsgBox, %v%
return


ShowCoordsPhase(ch, hide)
{
    global keyMapping
    LogToFile("ShowCoordsPhase")
    LogToFileMsg("ch"   ,ch)
    ; start :=keyMapping[ch]
    start :=ch
    LogToFileMsg("start", start)
    Loop, 10
    {
        ; ind := start + A_Index
        ind = %start%%A_Index%
        x = mouseX%ind%
        y = mouseY%ind%
        LogToFileMsg("A_Index", A_Index)
        LogToFileMsg("ind", ind)
        LogToFileMsg("X", mouseX%ind%)
        LogToFileMsg("Y", mouseY%ind%)
        LogToFileMsg("x", x)
        LogToFileMsg("y", y)
        ; ShowToolTipInd(ch, ind, A_Index)
        ; ToolTip, #%A_Index% %gright% %gtxt%, mouseX%ind%, mouseY%ind%, %ind%
        ToolTip, #%A_Index% %gright% %gtxt%, mouseX%ind%, mouseY%ind%, %A_Index%
    }
    if(hide==1)
    {
        SetTimer, RemoveToolTip, 2000
        ; HideCoords()
    }
    else if (hide==2)
    {
        Input, OutputVar, L1 M
        if (OutputVar==0||OutputVar==1||OutputVar==2||OutputVar==3||OutputVar==4||OutputVar==5||OutputVar==6||OutputVar==7||OutputVar==8||OutputVar==9)
        {
            ind = %start%%OutputVar%
            MouseMoveClick(  mouseX%ind%
                            ,mouseY%ind%
                            ,right%ind%
                            ,txt%ind%
                            ,jstTxt%ind%
                            ,drag%ind%)
        } 
        SetTimer, RemoveToolTip, 0
    }
    
}

!q::ShowCoordsPhase(0, 2)
!w::ShowCoordsPhase(1, 2)
!e::ShowCoordsPhase(2, 2)
!r::ShowCoordsPhase(3, 2)
!t::ShowCoordsPhase(4, 2)
!y::ShowCoordsPhase(5, 2)
!u::ShowCoordsPhase(6, 2)
!i::ShowCoordsPhase(7, 2)
!o::ShowCoordsPhase(8, 2)
!p::ShowCoordsPhase(9, 2)

; !q::ShowCoordsPhase(q, 1)
; !w::ShowCoordsPhase(w, 1)
; !e::ShowCoordsPhase(e, 1)
; !r::ShowCoordsPhase(r, 1)
; !t::ShowCoordsPhase(t, 1)
; !y::ShowCoordsPhase(y, 1)
; !u::ShowCoordsPhase(u, 1)
; !i::ShowCoordsPhase(i, 1)
; !o::ShowCoordsPhase(o, 1)
; !p::ShowCoordsPhase(p, 1)

ToolTipClickPhase(ch)
{
    LogToFile("ToolTipClickPhase")
    ind1 := keyMapping[ch]
    ShowCoordsPhase(ch, 0)

    Input, OutputVar, L1 M
    HideCoords()
    
    ind = %ind1%%OutputVar%
    
    LogToFile("ToolTipClickPhase"       )
    LogToFileMsg("ind1      ",ind1      )
    LogToFileMsg("ind       ",ind       )
    LogToFileMsg("OutputVar ",OutputVar )
    
    MouseMoveClick(  mouseX%ind%
                    ,mouseY%ind%
                    ,right%ind%
                    ,txt%ind%
                    ,jstTxt%ind%
                    ,drag%ind%)
}

; ~alt::
; ~Space::
; ~!q::
; Shift & Space::
ShowCoordsOld()
{
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
    ;--------------------
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
}


RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    
    Loop, 20
    {
        ToolTip,,,,%A_Index%
    }

    ToolTip
    
    ; ToolTip,,,,1
    ; ToolTip,,,,2
    ; ToolTip,,,,3
	; ToolTip,,,,4
	; ToolTip,,,,5
	; ToolTip,,,,6
	; ToolTip,,,,7
	; ToolTip,,,,8
	; ToolTip,,,,9
	; ToolTip,,,,10
    ; ToolTip
    return