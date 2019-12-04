



SetCoord(ind,xx,yy,txt,jstTxt,drg)
{
	global
	mouseX%ind%=%xx%
	mouseY%ind%=%yy%
    LogToFileMsg("x", mouseX%ind%)
    LogToFileMsg("y", mouseY%ind%)
	right%ind% := GetKeyState("Capslock", "T")  ; 1 if CapsLock is ON, 0 otherwise.
	txt%ind%=%txt%
	jstTxt%ind%=%jstTxt%
    drag%ind%=%drg%
    ;mouseXd%ind%=%xd%
    ;mouseYd%ind%=%yd%
	;tooltip %xx% %yy%, %xx%, %yy% ; display tooltip of %xx% %yy% at coordinates x0 y0
	tooltip %xx% %yy%, mouseX%ind%, mouseY%ind% ; display tooltip of %xx% %yy% at coordinates x0 y0
	SetTimer, RemoveToolTip, 2000	
}

SetMouseClick(ind)
{
	MouseGetPos xx, yy
	SetCoord(ind,xx,yy,"",0, 0)
}

SetMouseTxtClick(ind)
{
    Suspend, permit
    Suspend, toggle

	MouseGetPos xx, yy
	InputBox, UserInput, Input, , , 240, 100
    Suspend, toggle
	SetCoord(ind,xx,yy,UserInput,0, 0)	
}

SetJustTxt(ind)
{
    Suspend, permit
    Suspend, toggle

    ;MouseGetPos xx, yy
	InputBox, UserInput, Input, , , 240, 100
    y:=(20*ind)
    Suspend, toggle    
	SetCoord(ind,10,y,UserInput,1, 0)
}


SetDrag(ind)
{
    global
    ;MouseGetPos xd, yd
    ;SetCoord(ind,10,y,UserInput,1, xd, yd)
    ;  mouseXd%ind%=%xd%
    ;  mouseYd%ind%=%yd%
    SetCoord(ind,mouseX%ind%,mouseY%ind%,"",0, 1)
}


Set2PhaseClick(ind1)
{
    Input, OutputVar, L1 M
    ind = %ind1%%OutputVar%
    LogToFile("Set2PhaseClick")
    LogToFileMsg("OutputVar",OutputVar)
    LogToFileMsg("ind1     ",ind1   )
    LogToFileMsg("ind      ",ind    )
    SetMouseClick(ind)
}

Set2PhaseTxtClick(ind1)
{
    Input, OutputVar, L1 M
    ind := %OutputVar%%ind1%
    SetMouseTxtClick(ind)
}
Set2PhaseJustTxt(ind1)
{
    Input, OutputVar, L1 M
    ind := %OutputVar%%ind1%
    SetJustTxt(ind)
}
Set2PhaseDrag(ind1)
{        
    Input, OutputVar, L1 M
    ind := %OutputVar%%ind1%
    SetDrag(ind)
}
