#Include C:\Users\hamst\OneDrive - Nelson Mandela University\github\Autohotkey\Workspace maker\workspace.ahk
		#Include %A_ScriptDir% 
#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; HELLO, poeple who want info about making a second keyboard, using luamacros!

; Here's my LTT video about how I use the 2nd keyboard with Luamacros: https://www.youtube.com/watch?v=Arn8ExQ2Gjg

; And Tom's video, which unfortunately does not have info on how to actually DO it: https://youtu.be/lIFE7h3m40U?t=16m9s

; If you have never used AutoHotKey, you must take this tutorial before proceeding!
; https://autohotkey.com/docs/Tutorial.htm

; So you will need luamacros, of course.
; Luamacros: http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p794
; AutohotKey: https://autohotkey.com/

; However, I no longer use luamacros, because I believe interecept.exe is even better! My current code is available in "ALL_MULTIPLE_KEYBOARD_ASSIGNMENTS.ahk"

; Lots of other explanatory videos other AHK scripts can be found on my youtube channel! https://www.youtube.com/user/TaranVH/videos 
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


;-------------2ND KEYBOARD USING LUAMACROS-----------------


;There is no code here. T'was just an example. 

;#IfWinActive ;---- This will allow for everything below this line to work in ANY application.



F24::
    sfile1 = C:\Users\hamst\OneDrive\Documents\autohotkey second keyboard\keypressed.txt
    sfile2 = C:\Users\hamst\OneDrive\Documents\autohotkey second keyboard\numpadonoroff.txt
	FileRead, key, %sfile1%
	FileRead, numpadf, %sfile2%

	if(key = "backspace")
	{
		FileRead, numpadf, %sfile2%
		if(numpadf = "0")
		{
			FileRead, Var1, %sfile2%
			StringReplace, Var2, Var1, "1", dog, All
			FileDelete, %sfile2%
			FileAppend,1, %sfile2%
		}
		else if(numpadf = "1")||(numpadf = "2")
		{	
			FileRead, Var1, %sfile2%
			StringReplace, Var2, Var1,"0", dog, All
			FileDelete, %sfile2%
			FileAppend,0, %sfile2%
		}

	}
	else 
	{
		if (numpadf = "1")
		{
			macros1(key)
            return
		}		
		else if (numpadf = "0")
		{
			macros0(key)
            return
		}
		else if (numpadf = "2")
		{
			macros2(key)
            return
		}
	}
Return ;from luamacros F24
;THE BLOCK OF CODE ABOVE is the original, simple Luamacros-dependant script.


;;;ALL THE CODE BELOW CAN BE THE ACTUAL FUNCTIONS THAT YOU WANT TO CALL;;;


;;;;;;temporary tooltip maker;;;;;;
Tippy(tipsHere, wait:=333)
{
	ToolTip, %tipsHere% TP,,,8
	SetTimer, noTip, %wait% ;--in 1/3 seconds by default, remove the tooltip
	}
	noTip:
		ToolTip,,,,8
		;removes the tooltip
	return
	;;;;;;/temporary tooltip maker;;;;;;


	insertSFX(parameter){
	msgbox, you launched insertSFX with the parameter %parameter%
	msgbox, obviously you can now put any function you like in here.

	}


	audiomonomaker(parameter){
	msgbox, you launched audiomonomaker with the parameter %parameter%
	msgbox, you can grab the real function from Almost_All_Premiere_Functions.ahk

	}


	preset(parameter){
	msgbox, you launched PRESET with the parameter %parameter%

	}


	recallTransition(parameter){
	msgbox, you launched recallTransition with the parameter %parameter%
	}


	copy(bar){
	msgbox, you launched COPY with the parameter %bar%

	}

	paste(foo){
	msgbox, you launched PASTE with the parameter %foo%
	return
}


;custom funtions
macros1(key1)
{

    tippy(key1) 
    if (key1 = "enter")
    Send {Enter}
    else if (key1 = "num0") ;just mirroring the normal numpad - IDK how else to do this.
    Run, C:\Users\hamst\OneDrive - Nelson Mandela University\Uni\First Year
    else if(key1 = "num1")
    Run, C:\Users\hamst\OneDrive - Nelson Mandela University\Uni\First Year\Maths
    else if(key1 = "num2")
    Run, C:\Users\hamst\OneDrive - Nelson Mandela University\Uni\First Year\Physics
    else if(key1 = "num3")
    Run, C:\Users\hamst\OneDrive - Nelson Mandela University\Uni\First Year\Programing
    else if(key1 = "num4")
    Run, C:\Users\hamst\OneDrive - Nelson Mandela University\Uni\First Year\Applied Maths\Graph Theory
    else if(key1 = "num5")
    Run, C:\Users\hamst\OneDrive - Nelson Mandela University\Uni\First Year\Applied Maths\Modeling
    else if(key1 = "num6")
    Run, C:\Users\hamst\OneDrive - Nelson Mandela University\Uni\First Year\Computer Fundamentals
    else if(key1 = "num7")
        {
        Process, Exist, chrome.exe ; check to see if AutoHotkey1.exe is running
                {
                If ! errorLevel
                    {
                    IfExist, chrome.exe
                        Run,chrome.exe
                    }
                }
        
        Run, https://students.mandela.ac.za/
        
        }
    else if(key1 = "num8")
        {
        IfWinActive ahk_exe AcroRd32.exe
        {
        run, C:\Users\hamst\OneDrive\Documents\AutoHotkey1\auto_pdfsizer.ahk
        
        }
    }
    else if(key1 = "num9")
        {
        
        Process, Exist, chrome.exe ; check to see if AutoHotkey1.exe is running
                {
                If ! errorLevel
                    {
                    IfExist, chrome.exe
                        Run,chrome.exe
                    }
                }
        run, http://studmail.nmmu.ac.za/
        }
    else if(key1 = "numDiv")
    Run, C:\Users\hamst\OneDrive - Nelson Mandela University\Uni\First Year\Maths
    else if(key1 = "numMult")
    Send {NumpadMult}
    ;else if(key1 = "backspace")
    ;send {BACKSPACE} 
    else if(key1 = "numPlus")
    send {NumpadAdd}
    else if(key1 = "numMinus")
    send {NumpadSub}
    else if (key1 = "delete") or (key1 ="numDelete")
        send {BACKSPACE}
    else if(key1 = "numLock") 
        {
			GetKeyState John, NumLock, T
        	Send {^} 
        	SetNumLockState, On 
            setmacrolayer("2")
        }
    return


}

macros0(key1)
{	
	tippy(key1) ;<--- this function will just launch a quick tooltip that shows you what key1 you pressed. OPTIONAL.\

    if (key1 ="enter")
        send {Enter}
    else if(key1 = "num0") ;just mirroring the normal numpad - IDK how else to do this.
    Send {Numpad0}
    else if(key1 = "num1")
    Send {Numpad1}
    else if(key1 = "num2")
    Send {Numpad2}
    else if(key1 = "num3")
    Send {Numpad3}
    else if(key1 = "num4")
    Send {Numpad4}
    else if(key1 = "num5")
    Send {Numpad5}
    else if(key1 = "num6")
    Send {Numpad6}
    else if(key1 = "num7")
    Send {Numpad7}
    else if(key1 = "num8")
    Send {Numpad8}
    else if(key1 = "num9")
    Send {Numpad9}
    else if(key1 = "numDiv")
    Send {NumpadDiv}
    else if(key1 = "numMult")
    Send {NumpadMult}
    ;else if(key1 = "backspace")
    ;send {BACKSPACE}  
    else if(key1 = "numLock") 
    {
        GetKeyState John, NumLock, T
        Send {^} 
        SetNumLockState, On 
    }
    else if(Key1 = "numDelete")
    send {NumpadDot}
    else if(key1 = "numPlus")
    send {NumpadAdd}
    else if(key1 = "numMinus")
    send {NumpadSub}
    return


}

macros2(key1)
{
	if (key1 = "num1")
	{	
		work1()
	}
    else key1 = "num0"
    {
        work2()
    }
	return
}

setmacrolayer(layer)
{

	FileRead, Var1, C:\Users\hamst\OneDrive\Documents\autohotkey second keyboard\numpadonoroff.txt
	StringReplace, Var2, Var1,layer, dog, All
	FileDelete, C:\Users\hamst\OneDrive\Documents\autohotkey second keyboard\numpadonoroff.txt
	FileAppend,2, C:\Users\hamst\OneDrive\Documents\autohotkey second keyboard\numpadonoroff.txt
	return
}