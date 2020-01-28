

+f2::
    Suspend, permit
    Suspend, toggle
    FileSelectFile, fn
    Suspend, toggle
    HandleFile(fn)
return

HandleFile(fn)
{
	caps := GetKeyState("Capslock", "T")
	if(caps=0)
    {
        FWrite(fn)
    }
    else
    {
        FLoad(fn)
    }
}

FWrite(fn){
    global
    sp := " "
	lf := "`n"
    contents := ""
    Loop, 10
    {
        inda := A_Index-1
        ind1 = %A_Index%
        Loop, 10
        {
            ind2 = %A_Index%
            
            LogToFileMsg("inda",inda)
            LogToFileMsg("A_Index",A_Index)
            ind = %inda%%ind2%
            LogToFileMsg("ind",ind)
            mX := mouseX%ind%
			mY := mouseY%ind%
			mr := right%ind%
			mt := txt%ind%
            jt := jstTxt%ind%
            dg := drag%ind%
            contents = %contents%%mX%%sp%%mY%%sp%%mr%%sp%%mt%%sp%%jt%%sp%%dg%%lf%
        }
    }
    
    f := FileOpen(fn, "w")
    f.Write(contents)
    f.Close()
}

FLoad(fn){
    ; f := FileOpen(fn, "w")
    FileRead, content, %fn%
    arr := StrSplit(content,"`n")
        
    i := 1
    ; elem := arr[0]
    Loop, 10
    {
        aind1 := A_Index -1
        Loop, 10
        {
            ind2 = %A_Index%
            line := arr[i]
            ind = %aind1%%ind2%
            ; LogToFileMsg("ind",ind)
            ; LogToFileMsg("line",line)
            ToCoords(line, ind)
            i += 1
        }
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
