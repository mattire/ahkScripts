

fileCount:=0
currentFileInd:=1

logOn := 1

keyMapping := {"q":0
             , "w":1
             , "e":2
             , "r":3
             , "t":4
             , "y":5
             , "u":6
             , "i":7
             , "o":8
             , "p":9}





#include <logging>
#include <initGlobalCoords>
; #include <tooltipGuide> 	
#include <tooltipGuide2>
;#include <setCoords>
#include <setCoords2> 	
;#include <functionKeyShortcuts>
#include <combKeyShortcuts>
#include <scriptHandling>
#include <fileHandling>

#q::Set2PhaseClick("0")
#w::Set2PhaseClick("1")
#e::Set2PhaseClick("2")
#r::Set2PhaseClick("3")
#t::Set2PhaseClick("4")
#y::Set2PhaseClick("5")
#u::Set2PhaseClick("6")
#i::Set2PhaseClick("7")
#o::Set2PhaseClick("8")
#p::Set2PhaseClick("9")

; #1::SetMouseClick(1)
; #2::SetMouseClick(2)
; #3::SetMouseClick(3)
; #4::SetMouseClick(4)
; #5::SetMouseClick(5)
; #6::SetMouseClick(6)
; #7::SetMouseClick(7)
; #8::SetMouseClick(8)
; #9::SetMouseClick(9)
; #0::SetMouseClick(10)
; #q::SetMouseClick(11)
; #w::SetMouseClick(12)
; #e::SetMouseClick(13)
; #r::SetMouseClick(14)
; #t::SetMouseClick(15)
; #y::SetMouseClick(16)
; #u::SetMouseClick(17)
; #i::SetMouseClick(18)
; #o::SetMouseClick(19)
; #p::SetMouseClick(20)

; #a::SetMouseClick(21)
; #s::SetMouseClick(22)
; #d::SetMouseClick(23)
; #f::SetMouseClick(24)
; #g::SetMouseClick(25)
; #h::SetMouseClick(26)
; #j::SetMouseClick(27)
; #k::SetMouseClick(28)
; #l::SetMouseClick(29)



; +#1::SetMouseTxtClick(1)
; +#2::SetMouseTxtClick(2)
; +#3::SetMouseTxtClick(3)
; +#4::SetMouseTxtClick(4)
; +#5::SetMouseTxtClick(5)
; +#6::SetMouseTxtClick(6)
; +#7::SetMouseTxtClick(7)
; +#8::SetMouseTxtClick(8)
; +#9::SetMouseTxtClick(9)
; +#0::SetMouseTxtClick(10)
; +#q::SetMouseTxtClick(11)
; +#w::SetMouseTxtClick(12)
; +#e::SetMouseTxtClick(13)
; +#r::SetMouseTxtClick(14)
; +#t::SetMouseTxtClick(15)
; +#y::SetMouseTxtClick(16)
; +#u::SetMouseTxtClick(17)
; +#i::SetMouseTxtClick(18)
; +#o::SetMouseTxtClick(19)
; +#p::SetMouseTxtClick(20)

; !#1::SetJustTxt(1)
; !#2::SetJustTxt(2)
; !#3::SetJustTxt(3)
; !#4::SetJustTxt(4)
; !#5::SetJustTxt(5)
; !#6::SetJustTxt(6)
; !#7::SetJustTxt(7)
; !#8::SetJustTxt(8)
; !#9::SetJustTxt(9)
; !#0::SetJustTxt(10)
; !#q::SetJustTxt(11)
; !#w::SetJustTxt(12)
; !#e::SetJustTxt(13)
; !#r::SetJustTxt(14)
; !#t::SetJustTxt(15)
; !#y::SetJustTxt(16)
; !#u::SetJustTxt(17)
; !#i::SetJustTxt(18)
; !#o::SetJustTxt(19)
; !#p::SetJustTxt(20)

; +1::SetDrag(1)
; +2::SetDrag(2)
; +3::SetDrag(3)
; +4::SetDrag(4)
; +5::SetDrag(5)
; +6::SetDrag(6)
; +7::SetDrag(7)
; +8::SetDrag(8)
; +9::SetDrag(9)
; +0::SetDrag(10)
; +q::SetDrag(11)
; +w::SetDrag(12)
; +e::SetDrag(13)
; +r::SetDrag(14)
; +t::SetDrag(15)
; +y::SetDrag(16)
; +u::SetDrag(17)
; +i::SetDrag(18)
; +o::SetDrag(19)
; +p::SetDrag(20)


;----------------



;#q::SetMouseTxtClick(1)
;#w::SetMouseTxtClick(2)
;#e::SetMouseTxtClick(3)
;#r::SetMouseTxtClick(4)
;#t::SetMouseTxtClick(5)
;#y::SetMouseTxtClick(6)
;#u::SetMouseTxtClick(7)
;#i::SetMouseTxtClick(8)
;#o::SetMouseTxtClick(9)
;#p::SetMouseTxtClick(10)

;#a::SetJustTxt(1)
;#s::SetJustTxt(2)
;#d::SetJustTxt(3)
;#f::SetJustTxt(4)
;#g::SetJustTxt(5)
;#h::SetJustTxt(6)
;#j::SetJustTxt(7)
;#k::SetJustTxt(8)
;#l::SetJustTxt(9)


; #z::SetDrag(1)
; #x::SetDrag(2)
; #c::SetDrag(3)
; #v::SetDrag(4)
; #b::SetDrag(5)
; #n::SetDrag(6)
; #m::SetDrag(7)



MouseMoveClick(xx,yy,right,txt,jstTxt, drg)
{
    LogToFile("MouseMoveClick")
    LogToFileMsg("xx    ",xx    )
    LogToFileMsg("yy    ",yy    )
    LogToFileMsg("right ",right )
    LogToFileMsg("txt   ",txt   )
    LogToFileMsg("jstTxt",jstTxt)
    LogToFileMsg("drg   ",drg   )
    if(drg=0)
    {
        if(jstTxt=1)
        {  
            SendTxt(txt)
            ;Send, %txt%
            ;Send {Esc}
        }
        else if(right=0) ;msgbox, %right1% 
        { 
            MouseClick, left, %xx%, %yy% 
            if(txt="")
            {
            }
            else
            {
                Sleep, 50
                SendTxt(txt)
                ;Send %txt%
                ;Send {Esc}
            }
        } 
        else 
        {
            ;MsgBox, BOO
            ;MsgBox, %right%
            LogToFile("here1")
            LogToFile(right)
            MouseClick, right, %xx%, %yy% 
            LogToFile("here2")
        }
    }
    else 
    {
        MouseGetPos xc, yc
        ;msgbox, %xc%, %yc%
        ;msgbox, %xx%, %yy%
        MouseClickDrag, L, %xc%, %yc%, %xx%, %yy%
        ;SendEvent {Click %xc%, %yc%, down}{click %xx%, %yy%, up}
    }
}

SendTxt(txt)
{
    Suspend, permit
    Suspend, toggle
    Send, %txt%
    Send, {Esc}
    Suspend, toggle
    return
}

;#include <functionKeyAutomations>
#include <combKeyAutomations>
	


