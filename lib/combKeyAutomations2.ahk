
SendClick(ind)
{
    global
    MouseMoveClick(  mouseX%ind%
                    ,mouseY%ind%
                    ,right%ind%
                    ,txt%ind%
                    ,jstTxt%ind%
                    ,drag%ind%)
    Sleep, 50
}

RunSequenceClicks(ind1, count)
{
    ; global
    ; ind = %ind1%%count%
    ; SendClick(ind)
    ; return
    Loop, %count%
    {
        ind = %ind1%%A_Index%
        ; MsgBox, %ind%
        SendClick(ind)
        Sleep, 50
    }
    return
}

RunSequence(count)
{
    global altNUm
    Send, {Esc}
    RunSequenceClicks(altNUm, count)
}

f1::RunSequence(1)
f2::RunSequence(2)
f3::RunSequence(3)
f4::RunSequence(4)
f5::RunSequence(5) 
f6::RunSequence(6) 
f7::RunSequence(7) 
f8::RunSequence(8) 
f9::RunSequence(9) 
; f10::






