
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
    MouseClick, right, 800, 400
return





ShowCoordsPhase(ch, hide)
{
    global altNum
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
        ; LogToFileMsg("A_Index", A_Index)
        ; LogToFileMsg("ind", ind)
        ; LogToFileMsg("X", mouseX%ind%)
        ; LogToFileMsg("Y", mouseY%ind%)
        ; LogToFileMsg("x", x)
        ; LogToFileMsg("y", y)
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
        altNum := start
        Input, OutputVar, L1 M
        if (OutputVar==0||OutputVar==1||OutputVar==2||OutputVar==3||OutputVar==4||OutputVar==5||OutputVar==6||OutputVar==7||OutputVar==8||OutputVar==9)
        {   
            SetTimer, RemoveToolTip, 0
            capsOn := GetKeyState("Capslock", "T")
            State := GetKeyState("Alt", "P")
            ; MsgBox, %State%        
            ; GetKeyState, State, Shift
            
            ; if(capsOn==0){
            ; if(State==0){
                ind = %start%%OutputVar%
                r := right%ind%
                ; MsgBox, %r%
                if (r == 0)
                {
                    MouseMoveClick(  mouseX%ind%
                                    ,mouseY%ind%
                                    ,right%ind%
                                    ,txt%ind%
                                    ,jstTxt%ind%
                                    ,drag%ind%)
                } 
                else
                {
                    ; MouseClick, right, 800, 400
                    ;; MsgBox, buu
                    ; Sleep, 1000
                    
                    ; MouseClick, right
                    ; MouseClick, right, mouseX%ind%, mouseY%ind%
                    MouseMove, mouseX%ind%, mouseY%ind%
                    
                    Sleep, 50
                    Send, {RButton down}
                    Sleep, 50
                    Send, {RButton up}

                    ;Click, right, mouseX%ind%, mouseY%ind%
                    ; MouseClick, right, mouseX%ind%, mouseY%ind%
                }
                
            ; }
            
        } 
        else {
            SetTimer, RemoveToolTip, 0
        }
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

return
