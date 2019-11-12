

fileCount:=0
currentFileInd:=1

logOn := 1

#include <tooltipGuide> 	
#include <setCoords> 	
;#include <functionKeyShortcuts>
#include <combKeyShortcuts>
#include <logging>
#include <scriptHandling>
#include <fileHandling>


#1::SetMouseClick(1)
#2::SetMouseClick(2)
#3::SetMouseClick(3)
#4::SetMouseClick(4)
#5::SetMouseClick(5)
#6::SetMouseClick(6)
#7::SetMouseClick(7)
#8::SetMouseClick(8)
#9::SetMouseClick(9)
#0::SetMouseClick(10)
#q::SetMouseClick(11)
#w::SetMouseClick(12)
#e::SetMouseClick(13)
#r::SetMouseClick(14)
#t::SetMouseClick(15)
#y::SetMouseClick(16)
#u::SetMouseClick(17)
#i::SetMouseClick(18)
#o::SetMouseClick(19)
#p::SetMouseClick(20)

+#1::SetMouseTxtClick(1)
+#2::SetMouseTxtClick(2)
+#3::SetMouseTxtClick(3)
+#4::SetMouseTxtClick(4)
+#5::SetMouseTxtClick(5)
+#6::SetMouseTxtClick(6)
+#7::SetMouseTxtClick(7)
+#8::SetMouseTxtClick(8)
+#9::SetMouseTxtClick(9)
+#0::SetMouseTxtClick(10)
+#q::SetMouseTxtClick(11)
+#w::SetMouseTxtClick(12)
+#e::SetMouseTxtClick(13)
+#r::SetMouseTxtClick(14)
+#t::SetMouseTxtClick(15)
+#y::SetMouseTxtClick(16)
+#u::SetMouseTxtClick(17)
+#i::SetMouseTxtClick(18)
+#o::SetMouseTxtClick(19)
+#p::SetMouseTxtClick(20)


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


#z::SetDrag(1)
#x::SetDrag(2)
#c::SetDrag(3)
#v::SetDrag(4)
#b::SetDrag(5)
#n::SetDrag(6)
#m::SetDrag(7)



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
            Send, %txt%
            Send {Esc}
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
                Send %txt%
                Send {Esc}
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

;#include <functionKeyAutomations>
#include <combKeyAutomations>
	


