

fileCount:=0
currentFileInd:=1

logOn := 1

#include <tooltipGuide> 	
#include <setCoords> 	
#include <functionKeyShortcuts>
#include <logging>
#include <scriptHandling>
#include <fileHandling>


#+1::SetMouseClick(1)
#+2::SetMouseClick(2)
#+3::SetMouseClick(3)
#+4::SetMouseClick(4)
#+5::SetMouseClick(5)

#+q::SetMouseTxtClick(1)
#+w::SetMouseTxtClick(2)
#+e::SetMouseTxtClick(3)
#+r::SetMouseTxtClick(4)
#+t::SetMouseTxtClick(5)

#+a::SetJustTxt(1)
#+s::SetJustTxt(2)
#+d::SetJustTxt(3)
#+f::SetJustTxt(4)
#+g::SetJustTxt(5)

#+z::SetDrag(1)
#+x::SetDrag(2)
#+c::SetDrag(3)
#+v::SetDrag(4)
#+b::SetDrag(5)



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

#include <functionKeyAutomations>
	


