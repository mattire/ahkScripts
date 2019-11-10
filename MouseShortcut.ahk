

fileCount:=0
currentFileInd:=1

logOn := 1

#include <tooltipGuide> 	
#include <setCoords> 	
#include <functionKeyShortcuts>
#include <logging>

+f1::Run C:\Windows\notepad.exe %A_ScriptDir%\help.txt

^r::reload

;OutputDebug, Hello debug


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
	

	
#f1::
	; Suspend, Toggle
	; MsgBox, toggled
    Suspend, permit
    if (State = 0) {
        Gui, +AlwaysOnTop +Disabled -SysMenu +Owner 
        Gui, Add, Text,, On
        Gui, Show, xCenter yCenter, State, NoActivate,
        sleep, 400
        Gui, Destroy
        State++
    }
    else {
        State := 0
        Gui, +AlwaysOnTop +Disabled -SysMenu +Owner 
        Gui, Add, Text,, Off
        Gui, Show, xCenter yCenter, State, NoActivate, 
        sleep, 400
        Gui, Destroy
    }
    Suspend, toggle
return







+#f1::
	sp := " "
	lf := "`n"
	caps := GetKeyState("Capslock", "T")
	if(caps=0)
	{  
		LogToFile("saving")
		contents := ""
		;Loop, %count%
        Loop, 5
		{
			mX := mouseX%A_Index%
			mY := mouseY%A_Index%
			mr := right%A_Index%
			mt := txt%A_Index%
            jt := jstTxt%A_Index%
            dg := drag%A_Index%
            LogToFile(%mX%)
			;MsgBox, %mX%
			if(mX<>""&&mY<>"")
			{
				contents = %contents%%mX%%sp%%mY%%sp%%mr%%sp%%mt%%sp%%jt%%sp%%dg%%lf%
			}
		}
		
		;content1 = %mouseX1%%sp%%mouseY1%%sp%%right1%%sp%%txt1%%lf%
		;content2 = %mouseX2%%sp%%mouseY2%%sp%%right2%%sp%%txt2%%lf%
		;content3 = %mouseX3%%sp%%mouseY3%%sp%%right3%%sp%%txt3%%lf%
		;content4 = %mouseX4%%sp%%mouseY4%%sp%%right4%%sp%%txt4%%lf%
		;content5 = %mouseX5%%sp%%mouseY5%%sp%%right5%%sp%%txt5%%lf%
		;content = %content1%%content2%%content3%%content4%%content5%
		FileSelectFile, fn
		f := FileOpen(fn, "w")
		;f.Write(content)
		f.Write(contents)
		f.Close()
	} 
	else 
	{
		FileSelectFile, fn
		fileCount:=fileCount+1
		AddGlobalFileName(fn)
		LoadFile(fn)
	}
return

+#f2::
	ReadSettings()
	; FileSelectFolder, fld
	; MsgBox % list_files(fld)
return



ReadSettings()
{
	FileRead, content, Settings.txt
	global fileCount
	arr := StrSplit(content,"`n")
	for i, ln in arr
	{
		;trim!!!
		lnt := trim(ln)
		p = %A_WorkingDir%\%lnt%
		;MsgBox, %p%
		LoadFile(p)
		; UPDATE FILE COUNT  !!!
		fileCount:=fileCount+1
		MsgBox, %ln%
		AddGlobalFileName(ln)
		MsgBox, %fileCount%
	}		
}

list_files(Folder)
{
	files =
	Loop %Folder%\*.*
	{
		files = %files%`n%A_LoopFileName%
	}
	return files
}



LoadFile(fn)
{
	FileRead, content, %fn%
	;MsgBox, %content%
	arr := StrSplit(content,"`n")
 	for i, ln in arr
	{
		ToCoords(ln, i)
	}	
}

ToCoords(ln, ind)
{
	global
	cs := StrSplit(ln," ")
	mouseX%ind% := cs[1]
	mouseY%ind% := cs[2]
	right%ind% := cs[3]
    ;MsgBox, %right%%ind%
    temp := cs[3]
    ;MsgBox, %temp%
    LogToFile(temp)
	txt%ind% := cs[4]
    jstTxt%ind% := cs[5]
    drag%ind% := cs[6]
	count := ind
}




RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip,,,,1
    ToolTip,,,,2
    ToolTip,,,,3
    ToolTip,,,,4
	ToolTip,,,,5
	ToolTip,,,,6
    ToolTip
    return
	
	
AddGlobalFileName(fn)
{
	global
	fileName%fileCount% := fn
}

Ctrl & Space::
	;MsgBox, hello
	x := A_ScreenWidth/2
	y := A_ScreenHeight/2
	currentFileInd := currentFileInd +1
	if(currentFileInd>fileCount)
	{
		currentFileInd :=1
	}
	;var fn = fileName%currentFileInd%
	fn = % fileName%currentFileInd%
	LoadFile(fileName%currentFileInd%)
	ToolTip, %fn%, x, y, 6
	caps := GetKeyState("Capslock", "T")
	if(caps=0)
	{
		ShowCoords()
	}
	;ToolTip, fileName%currentFileInd%, x, y, 1
	SetTimer, RemoveToolTip, 2000	
Return
