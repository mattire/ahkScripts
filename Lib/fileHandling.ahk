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

	
AddGlobalFileName(fn)
{
	global
	fileName%fileCount% := fn
}

Ctrl & Space::
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
