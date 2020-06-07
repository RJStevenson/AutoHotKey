#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

SetTitleMatchMode, 3 ; makes it so that it open titles with the exact name otherwise you will open other stuff with similar names
; Make the parameters an array
;locations and sizes for windows
topright := [953,0, 974,547]  ;x y width height
topleft  := [-7,0, 974,547]
botright := [953,540, 974,547]
botleft  := [-7,540, 974,547]
fulleft   := [-7,0, 974,1087]
fulright   := [953,0, 974,1087]

; titles and file path of the applications
unifolder := ["OneDrive - Nelson Mandela University", "C:\Users\hamst\OneDrive - Nelson Mandela University"] ; for example this the title of the filexplorer when it has open my university folder
gitbash   := ["MINGW64:/c/Users/hamst/OneDrive - Nelson Mandela University", "C:\Program Files\Git\git-bash.exe" ]
chrome    := ["ahk_exe chrome.exe", "chrome.exe"]


!7::
{   ;possetup position and location, your title and file path
    possetup(topright, test)
    return
}
!8::
{
    ;WinSetup(unifolder*) ; Array* means to use the array for the parameters in your function call

   ; WinSetup(gitbash*)
    possetup(botleft,unifolder)
    possetup(topleft,gitbash) 
    possetup(fulright,chrome) 
    return

}
WinSetup(Title, X, Y, Width, Height, FilePath)
{  
	IfWinNotExist, %Title%
	{
		Run, %FilePath%
	}
	WinWait, %Title% ; Just because the commands are inside a function doesn't mean they aren't commands. They still need percents
    WinRestore, %Title%
	WinActivate, %Title%
	WinMove, %Title%,, X, Y, Width, Height
return
}

possetup(pos1, file1)
{            ;title     x         y         width   height  file location
    WinSetup(file1[1] , pos1[1], pos1[2], pos1[3], pos1[4], file1[2])
    return
}
