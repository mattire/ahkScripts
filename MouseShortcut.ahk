

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
#include <combKeyAutomations2>
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




MouseMoveClick(xx,yy,rght,txt,jstTxt, drg)
{
    LogToFile("MouseMoveClick")
    LogToFileMsg("xx    ",xx    )
    LogToFileMsg("yy    ",yy    )
    LogToFileMsg("rght ",rght )
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
        else if(rght==0) ;msgbox, %rght1% 
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
        ; msgbox, %rght%
        if(rght==1)
        {
            LogToFileMsg("xx", xx)
            LogToFileMsg("yy", yy)
            
            MouseClick, left, %xx%, %yy% 
            Sleep, 20
            MouseClick, right
            ; MouseClick, right, %xx%, %yy%
            ; MouseClick, right, 800, 400
            ; MouseMove, %xx%, %yy%, 5   
            ; Sleep, 10
            ; Send, {RButton down}
            ; Sleep, 10
            ; Send, {RButton up}
            ; Sleep, 50
            ; Send, {RButton down}
            ; Send, {RButton up}
            ; MouseClick, RIGHT, %xx%, %yy%
            LogToFile("here2")
        }
    }
    else 
    {
        LogToFile("here3")
        ; msgbox, BLAAAB
        ; MouseGetPos xc, yc
        ; msgbox, %xc%, %yc%
        ; msgbox, %xx%, %yy%
        ; MouseClickDrag, L, %xc%, %yc%, %xx%, %yy%
        ; SendEvent {Click %xc%, %yc%, down}{click %xx%, %yy%, up}
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
; #include <combKeyAutomations>
	


