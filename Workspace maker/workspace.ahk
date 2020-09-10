#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

SetTitleMatchMode, 3 ; makes it so that it open titles with the exact name otherwise you will open other stuff with similar names
; Make the parameters an array
;locations and sizes for windows

global topright := [953,0, 974,547]  ;x y width height
global topleft  := [-7,0, 974,547]
global botright := [953,540, 974,547]
global botleft  := [-7,540, 974,547]
global fulleft  := [-7,0, 974,1087]
global fulright := [953,0, 974,1087]
global scr1     := 0  
global full_right_screen :=  [1912, -8, 1936, 1096]
; titles and file path of the applications
global unifolder := ["OneDrive - Nelson Mandela University", "C:\Users\hamst\OneDrive - Nelson Mandela University"] ; for example this the title of the filexplorer when it has open my university folder
global gitbash   := ["MINGW64:/c/Users/hamst/OneDrive - Nelson Mandela University", "C:\Program Files\Git\git-bash.exe" ]
global chrome    := ["ahk_exe chrome.exe", "chrome.exe"]
global pdf       := ["ahk_exe AcroRd32.exe", "C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe"]
global matlab    := ["MATLAB R2020a - academic use", "MATLAB.exe"]
global terminal  := ["ahk_exe WindowsTerminal.exe", "wt"]
global gitfolder := ["fucked up git here are the files", "C:\Users\hamst\OneDrive\Desktop\fucked up git here are the files"]
global VisualStudio := ["devenv.exe", "devenv.exe"]
work1()
{   SetWorkingDir, C:\Users\hamst\OneDrive - Nelson Mandela University
    possetup(botleft, unifolder)
    possetup(topleft, terminal) 
    possetup(fulright, chrome)
    return
}
work2()
{
    SetWorkingDir, "C:\Users\hamst\OneDrive\Desktop\fucked up git here are the files"
    possetup(botleft, gitfolder)
    possetup(topleft, terminal)
    possetup(fulright, chrome)
    possetup(full_right_screen, VisualStudio)
}
matlab()
{   
    SetWorkingDir, C:\Users\hamst\OneDrive - Nelson Mandela University
    scr1 = 1920 ; for second screen
    possetup(fulleft, matlab)
    possetup(fulright, pdf)
    return
}
;
;{   ;possetup position and location, your title and file path
    ;possetup(topright, test)
    ;return
;}
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
{  

    
           ;title     x         y         width   height  file location
    WinSetup(file1[1] , pos1[1] + scr1, pos1[2], pos1[3], pos1[4], file1[2])
    return
}
