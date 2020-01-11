
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















; ^#5::
	; MouseMoveClick(mouseX1, mouseY1, right1,txt1, jstTxt1, drag1)
	; Sleep, 50
	; MouseMoveClick(mouseX2, mouseY2, right2,txt2, jstTxt2, drag2)
	; Sleep, 50
	; MouseMoveClick(mouseX3, mouseY3, right3,txt3, jstTxt3, drag3)
	; Sleep, 50
	; MouseMoveClick(mouseX4, mouseY4, right4,txt4, jstTxt4, drag4)
	; Sleep, 50
	; MouseMoveClick(mouseX5, mouseY5, right5,txt5, jstTxt5, drag5)
; return


; ^#4::
	; MouseMoveClick(mouseX1, mouseY1, right1,txt1, jstTxt1, drag1)
	; Sleep, 50
	; MouseMoveClick(mouseX2, mouseY2, right2,txt2, jstTxt2, drag2)
	; Sleep, 50
	; MouseMoveClick(mouseX3, mouseY3, right3,txt3, jstTxt3, drag3)
	; Sleep, 50
	; MouseMoveClick(mouseX4, mouseY4, right4,txt4, jstTxt4, drag4)
; return


; ^#3::
	; MouseMoveClick(mouseX1, mouseY1, right1,txt1, jstTxt1, drag1)
	; Sleep, 50
	; MouseMoveClick(mouseX2, mouseY2, right2,txt2, jstTxt2, drag2)
	; Sleep, 50
	; MouseMoveClick(mouseX3, mouseY3, right3,txt3, jstTxt3, drag3)
; return


; ^#2::
	; MouseMoveClick(mouseX1, mouseY1, right1,txt1, jstTxt1, drag1)
	; Sleep, 50
	; MouseMoveClick(mouseX2, mouseY2, right2,txt2, jstTxt2, drag2)
; return

-------------------

; ^#0::
	; MouseMoveClick(mouseX6, mouseY6, right6,txt6, jstTxt6, drag6)
	; Sleep, 50
	; MouseMoveClick(mouseX7, mouseY7, right7,txt7, jstTxt7, drag7)
	; Sleep, 50
	; MouseMoveClick(mouseX8, mouseY8, right8,txt8, jstTxt8, drag8)
	; Sleep, 50
	; MouseMoveClick(mouseX9, mouseY9, right9,txt9, jstTxt9, drag9)
	; Sleep, 50
	; MouseMoveClick(mouseX10, mouseY10, right10,txt10, jstTxt10, drag10)
; return


; ^#9::
	; MouseMoveClick(mouseX6, mouseY6, right6,txt6, jstTxt6, drag6)
	; Sleep, 50
	; MouseMoveClick(mouseX7, mouseY7, right7,txt7, jstTxt7, drag7)
	; Sleep, 50
	; MouseMoveClick(mouseX8, mouseY8, right8,txt8, jstTxt8, drag8)
	; Sleep, 50
	; MouseMoveClick(mouseX9, mouseY9, right9,txt9, jstTxt9, drag9)
; return


; ^#8::
    LogToFile("^#8 start")
	; MouseMoveClick(mouseX6, mouseY6, right6,txt6, jstTxt6, drag6)
	; Sleep, 50
	; MouseMoveClick(mouseX7, mouseY7, right7,txt7, jstTxt7, drag7)
	; Sleep, 50
	; MouseMoveClick(mouseX8, mouseY8, right8,txt8, jstTxt8, drag8)
    LogToFile("^#8 end")
; return


; ^#7::
    ; LogToFile("^#7 start")
	; MouseMoveClick(mouseX6, mouseY6, right6,txt6, jstTxt6, drag6)
	; Sleep, 50
	; MouseMoveClick(mouseX7, mouseY7, right7,txt7, jstTxt7, drag7)
; return


-------------------


; ^#t::
    ; MouseMoveClick(mouseX11, mouseY11, right11,txt11, jstTxt11, drag11)
	; Sleep, 50
	; MouseMoveClick(mouseX12, mouseY12, right12,txt12, jstTxt12, drag12)
	; Sleep, 50
	; MouseMoveClick(mouseX13, mouseY13, right13,txt13, jstTxt13, drag13)
	; Sleep, 50
	; MouseMoveClick(mouseX14, mouseY14, right14,txt14, jstTxt14, drag14)
	; Sleep, 50
	; MouseMoveClick(mouseX15, mouseY15, right15,txt15, jstTxt15, drag15)
; return


; ^#r::
	; MouseMoveClick(mouseX11, mouseY11, right11,txt11, jstTxt11, drag11)
	; Sleep, 50
	; MouseMoveClick(mouseX12, mouseY12, right12,txt12, jstTxt12, drag12)
	; Sleep, 50
	; MouseMoveClick(mouseX13, mouseY13, right13,txt13, jstTxt13, drag13)
	; Sleep, 50
	; MouseMoveClick(mouseX14, mouseY14, right14,txt14, jstTxt14, drag14)
; return


; ^#e::
    LogToFile("^#e start")
	; MouseMoveClick(mouseX11, mouseY11, right11,txt11, jstTxt11, drag11)
	; Sleep, 50
	; MouseMoveClick(mouseX12, mouseY12, right12,txt12, jstTxt12, drag12)
	; Sleep, 50
	; MouseMoveClick(mouseX13, mouseY13, right13,txt13, jstTxt13, drag13)
    LogToFile("^#e end")
; return


; ^#w::
    ; LogToFile("^#w start")
	; MouseMoveClick(mouseX11, mouseY11, right11,txt11, jstTxt11, drag11)
	; Sleep, 50
	; MouseMoveClick(mouseX12, mouseY12, right12,txt12, jstTxt12, drag12)
; return


-------------------


; ^#p::
	; MouseMoveClick(mouseX16, mouseY16, right16,txt16, jstTxt16, drag16)
	; Sleep, 50
	; MouseMoveClick(mouseX17, mouseY17, right17,txt17, jstTxt17, drag17)
	; Sleep, 50
	; MouseMoveClick(mouseX18, mouseY18, right18,txt18, jstTxt18, drag18)
	; Sleep, 50
	; MouseMoveClick(mouseX19, mouseY19, right19,txt19, jstTxt19, drag19)
	; Sleep, 200
	; MouseMoveClick(mouseX20, mouseY20, right20,txt20, jstTxt20, drag20)
; return


; ^#o::
	; MouseMoveClick(mouseX16, mouseY16, right16,txt16, jstTxt16, drag16)
	; Sleep, 50
	; MouseMoveClick(mouseX17, mouseY17, right17,txt17, jstTxt17, drag17)
	; Sleep, 50
	; MouseMoveClick(mouseX18, mouseY18, right18,txt18, jstTxt18, drag18)
	; Sleep, 50
	; MouseMoveClick(mouseX19, mouseY19, right19,txt19, jstTxt19, drag19)
; return


; ^#i::
	; MouseMoveClick(mouseX16, mouseY16, right16,txt16, jstTxt16, drag16)
	; Sleep, 50
	; MouseMoveClick(mouseX17, mouseY17, right17,txt17, jstTxt17, drag17)
	; Sleep, 50
	; MouseMoveClick(mouseX18, mouseY18, right18,txt18, jstTxt18, drag18)
; return


; ^#u::
	; MouseMoveClick(mouseX16, mouseY16, right16,txt16, jstTxt16, drag16)
	; Sleep, 50
	; MouseMoveClick(mouseX17, mouseY17, right17,txt17, jstTxt17, drag17)
; return
