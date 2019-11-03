
fileCount:=0
currentFileInd:=1

SetCoord(ind,xx,yy,txt,jstTxt,drg)
{
	global
	mouseX%ind%=%xx%
	mouseY%ind%=%yy%
	right%ind% := GetKeyState("Capslock", "T")  ; 1 if CapsLock is ON, 0 otherwise.
	txt%ind%=%txt%
	jstTxt%ind%=%jstTxt%
    drag%ind%=%drg%
    ;mouseXd%ind%=%xd%
    ;mouseYd%ind%=%yd%
	tooltip %xx% %yy%, %xx%, %yy% ; display tooltip of %xx% %yy% at coordinates x0 y0
	SetTimer, RemoveToolTip, 2000	
}

SetMouseClick(ind)
{
	MouseGetPos xx, yy
	SetCoord(ind,xx,yy,"",0, 0)
}

SetMouseTxtClick(ind)
{
	MouseGetPos xx, yy
	InputBox, UserInput, Input, , , 240, 100
	SetCoord(ind,xx,yy,UserInput,0, 0)	
}

SetJustTxt(ind)
{
    ;MouseGetPos xx, yy
	InputBox, UserInput, Input, , , 240, 100
    y:=(20*ind)
	SetCoord(ind,10,y,UserInput,1, 0)	    
}

SetDragDestPoint(ind)
{
    global
    ;MouseGetPos xd, yd
    ;SetCoord(ind,10,y,UserInput,1, xd, yd)
    ;  mouseXd%ind%=%xd%
    ;  mouseYd%ind%=%yd%
    SetCoord(ind,mouseX%ind%,mouseY%ind%,"",0, 1)
}

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

#+z::SetDragDestPoint(1)
#+x::SetDragDestPoint(2)
#+c::SetDragDestPoint(3)
#+v::SetDragDestPoint(4)
#+b::SetDragDestPoint(5)




f1::
	global mouseX1
	global mouseY1
	global right1
	global txt1
    global jstTxt1
    global drag1
	MouseMoveClick(mouseX1, mouseY1, right1, txt1, jstTxt1, drag1)
return

f2::
	global mouseX2
	global mouseY2
	global right2
	global txt2
    global jstTxt2
    global drag2
	MouseMoveClick(mouseX2, mouseY2, right2, txt2, jstTxt2, drag2)
return
	
f3::
	global mouseX3
	global mouseY3
	global right3
	global txt3
    global jstTxt3
    global drag3
	MouseMoveClick(mouseX3, mouseY3, right3, txt3, jstTxt3, drag3)
return

f4::
	global mouseX4
	global mouseY4
	global right4
	global txt4
    global jstTxt4
    global drag4
	MouseMoveClick(mouseX4, mouseY4, right4, txt4, jstTxt4, drag4)
return

f5::
	global mouseX5
	global mouseY5
	global right5
	global txt5
    global jstTxt5
    global drag5
	MouseMoveClick(mouseX5, mouseY5, right5, txt5, jstTxt5, drag5)
return



MouseMoveClick(xx,yy,right,txt,jstTxt, drg)
{
    ;msgbox, %drg%
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
            MouseClick, right, %xx%, %yy% 
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

#f5::
	MouseMoveClick(mouseX1, mouseY1, right1,txt1, jstTxt1, drag1)
	Sleep, 50
	MouseMoveClick(mouseX2, mouseY2, right2,txt2, jstTxt2, drag2)
	Sleep, 50
	MouseMoveClick(mouseX3, mouseY3, right3,txt3, jstTxt3, drag3)
	Sleep, 50
	MouseMoveClick(mouseX4, mouseY4, right4,txt4, jstTxt4, drag4)
	Sleep, 50
	MouseMoveClick(mouseX5, mouseY5, right5,txt5, jstTxt5, drag5)
return


#f4::
	MouseMoveClick(mouseX1, mouseY1, right1,txt1, jstTxt1, drag1)
	Sleep, 50
	MouseMoveClick(mouseX2, mouseY2, right2,txt2, jstTxt2, drag2)
	Sleep, 50
	MouseMoveClick(mouseX3, mouseY3, right3,txt3, jstTxt3, drag3)
	Sleep, 50
	MouseMoveClick(mouseX4, mouseY4, right4,txt4, jstTxt4, drag4)
return


#f3::
	MouseMoveClick(mouseX1, mouseY1, right1,txt1, jstTxt1, drag1)
	Sleep, 50
	MouseMoveClick(mouseX2, mouseY2, right2,txt2, jstTxt2, drag2)
	Sleep, 50
	MouseMoveClick(mouseX3, mouseY3, right3,txt3, jstTxt3, drag3)
return


#f2::
	MouseMoveClick(mouseX1, mouseY1, right1,txt1, jstTxt1, drag1)
	Sleep, 50
	MouseMoveClick(mouseX2, mouseY2, right2,txt2, jstTxt2, drag2)
return

;Shift & Space::
~Space::
	ShowCoords()
	Input, OutputVar, L1 M
	if(OutputVar = "1"){
		HideCoords()
		MouseMoveClick(mouseX1, mouseY1, right1, txt1, jstTxt1, drag1)
	}
	else if(OutputVar = "2"){
		HideCoords()
		MouseMoveClick(mouseX2, mouseY2, right2, txt2, jstTxt2, drag2)
	}
	else if(OutputVar = "3"){
		HideCoords()
		MouseMoveClick(mouseX3, mouseY3, right3, txt3, jstTxt3, drag3)
	}
	else if(OutputVar = "4"){
		HideCoords()
		MouseMoveClick(mouseX4, mouseY4, right4, txt4, jstTxt4, drag4)
	}
	else if(OutputVar = "5"){
		HideCoords()
		MouseMoveClick(mouseX5, mouseY5, right5, txt5, jstTxt5, drag5)
	}
	else {
		HideCoords()
	}
	
	;while(GetKeyState("lshift"))
	;{
	;	st1 := GetKeyState("1")
	;	st2 := GetKeyState("2")
	;	st3 := GetKeyState("3")
	;	st4 := GetKeyState("4")
	;	if(st1) { 
	;		MouseMoveClick(mouseX1, mouseY1, right1, txt1)
	;		;HideCoords()
	;	}
	;	if(st2) { 
	;		MouseMoveClick(mouseX2, mouseY2, right2, txt2)
	;		;HideCoords()
	;	}
	;	if(st3) { 
	;		MouseMoveClick(mouseX3, mouseY3, right3, txt3)
	;		;HideCoords()
	;	}
	;	if(st4) { 
	;		MouseMoveClick(mouseX4, mouseY4, right4, txt4)
	;		;HideCoords()
	;	}
	;	Sleep, 10
	;}
return
	
;Shift & Space UP::
;	HideCoords()
;return
	
ShowCoords()
{
	global 
	; global count
	;if(count>3)
	;{
	;	MsgBox, greater
	;}
	;msgbox, %count% 
	;Loop, %count%
	Loop, 5
	{
		;msgbox, #%A_Index% 
		gtxt := txt%A_Index%
		gright := right%A_Index%
		
		;ToolTip, #%A_Index% right%A_Index% txt%A_Index%, mouseX%A_Index%, mouseY%A_Index%, %A_Index%
		ToolTip, #%A_Index% %gright% %gtxt%, mouseX%A_Index%, mouseY%A_Index%, %A_Index%
	}
	
	;ToolTip, #1 %right1% %txt1%, %mouseX1%, %mouseY1%, 1
	;ToolTip, #2 %right2% %txt2%, %mouseX2%, %mouseY2%, 2
	;ToolTip, #3 %right3% %txt3%, %mouseX3%, %mouseY3%, 3
	;ToolTip, #4 %right4% %txt4%, %mouseX4%, %mouseY4%, 4
    ;ToolTip, #5 %right5% %txt5%, %mouseX5%, %mouseY5%, 5
}

HideCoords()
{
    ToolTip,,,,1
    ToolTip,,,,2
    ToolTip,,,,3
    ToolTip,,,,4
    ToolTip,,,,5
    ToolTip
}
	
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




	; global mouseX1
	; global mouseY1
	; global mouseX2
	; global mouseY2
	; ToolTip, #1, %mouseX1%, %mouseY1%, 1
	; ToolTip, #2, %mouseX2%, %mouseY2%, 2
	; global mouseX3
	; global mouseY3
	; ToolTip, %mouseX3% %mouseY3%, %mouseX3%, %mouseY3%, 3
	; ToolTip, #3, %mouseX3%, %mouseY3%, 3
	; ToolTip, #4, %mouseX4%, %mouseY4%, 4

	; SetTimer, RemoveToolTip, 2000	
; return	

+f1::Run C:\Windows\notepad.exe %A_ScriptDir%\help.txt
;+f1::MsgBox, %A_ScriptDir%\help.txt

+#f1::
	sp := " "
	lf := "`n"
	caps := GetKeyState("Capslock", "T")
	if(caps=0)
	{  
		MsgBox, saving
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
			MsgBox, %mX%
			if(mX<>""&&mY<>"")
			{
				contents = %contents%%mX%%sp%%mY%%sp%%mr%%sp%%mt%%sp%%jt%%lf%
			}
		}
		
		;content1 = %mouseX1%%sp%%mouseY1%%sp%%right1%%sp%%txt1%%lf%
		;content2 = %mouseX2%%sp%%mouseY2%%sp%%right2%%sp%%txt2%%lf%
		;content3 = %mouseX3%%sp%%mouseY3%%sp%%righ t3%%sp%%txt3%%lf%
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
	txt%ind% := cs[4]
    jstTxt%ind% := cs[5]
	count := ind
}


^r::reload

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