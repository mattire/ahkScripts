
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
            capsOn := GetKeyState("Capslock", "T")
            
            if(capsOn==0){
                ind = %start%%OutputVar%
                MouseMoveClick(  mouseX%ind%
                                ,mouseY%ind%
                                ,right%ind%
                                ,txt%ind%
                                ,jstTxt%ind%
                                ,drag%ind%)
            }
            if(capsOn==1){
                ; RunSequenceClicks(start, OutputVar)
                count := OutputVar + 0
                ; , %count%
                ;Loop, count
                Loop, %count%
                {
                    ind = %start%%A_Index%
                    ; MsgBox, %ind%
                    MouseMoveClick(  mouseX%ind%
                                    ,mouseY%ind%
                                    ,right%ind%
                                    ,txt%ind%
                                    ,jstTxt%ind%
                                    ,drag%ind%)                                    
                }
            }
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