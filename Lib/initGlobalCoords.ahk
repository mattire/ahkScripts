
InitGlobalCoord(ind)
{
    global
    mouseX%ind% := 0
    mouseY%ind% := 0
    right%ind%  := 0
    jstTxt%ind% := 0
    txt%ind%    := ""
    drag%ind%   := 0
}

SetGlobalCoordSet(ind1)
{
    Loop, 10
    {
        ; loopInd := A_Index-1
        ; ind = %ind1%%loopInd%
        ind = %ind1%%A_Index%
        InitGlobalCoord(ind)
    }
}

InitGlobals()
{
    Loop, 10
    {
        loopInd := A_Index-1
        SetGlobalCoordSet(loopInd)
    }
    ; MsgBox, Initialized
}



LogGlobalCoord(ind, ind1, ind2)
{
    
    x := mouseX%ind%
    y := mouseY%ind%
    LogToFileMsg("coord ind", ind)
    LogToFileMsg("coord ind1", ind1)
    LogToFileMsg("coord ind2", ind2)
    LogToFileMsg("log x", x)
    LogToFileMsg("log y", y)
    ; mouseX%ind% = 0 
    ; mouseY%ind% = 0
}

LogGlobalCoordSet(ind1)
{
    Loop, 10
    {
        ; loopInd := A_Index -1
        ; ind = %ind1%%loopInd%
        ind = %ind1%%A_Index%
        LogToFileMsg("a ind 12", ind)
        ; LogGlobalCoord(ind, ind1, A_Index)
        LogGlobalCoord(ind, ind1, loopInd)
    }
}


LogGlobalCoords()
{
    Loop, 10
    {
        loopInd := A_Index -1
        ; LogToFileMsg("a ind 1", A_Index-1)
        ; LogGlobalCoordSet(A_Index-1)
        LogToFileMsg("a ind 1", loopInd)
        LogGlobalCoordSet(loopInd)
    }
}

InitGlobals()
; LogGlobalCoords()
