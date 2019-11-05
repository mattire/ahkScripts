
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

SetDrag(ind)
{
    global
    ;MouseGetPos xd, yd
    ;SetCoord(ind,10,y,UserInput,1, xd, yd)
    ;  mouseXd%ind%=%xd%
    ;  mouseYd%ind%=%yd%
    SetCoord(ind,mouseX%ind%,mouseY%ind%,"",0, 1)
}