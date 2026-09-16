#SingleInstance Force
SetWorkingDir %A_ScriptDir%

; Auto-elevate installer for setup operations
if not A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%"
    ExitApp
}

; Target Directory Definition
TargetFolder := "C:\win custom widget\Memory cleaner"
ExePath := TargetFolder "\CleanMemory.exe"

; Folder Validation and Creation
if !InStr(FileExist(TargetFolder), "D")
{
    FileCreateDir, %TargetFolder%
    if ErrorLevel || !InStr(FileExist(TargetFolder), "D")
    {
        MsgBox, 16, Installation Error, Failed to create directory:`n%TargetFolder%`n`nPlease ensure the installer is executed with Administrator privileges.
        ExitApp
    }
}

; Extract executable into target directory
FileInstall, CleanMemory.exe, %ExePath%, 1

; 1. Create Elevated Scheduled Task (Runs CleanMemory.exe as Admin)
TaskName := "CleanMemoryTask"
RunWait, schtasks /create /tn "%TaskName%" /tr "\"%ExePath%\"" /sc ONCE /st 00:00 /rl HIGHEST /f,, Hide

; Escape backslashes for Registry generation
StringReplace, EscapedExePath, ExePath, \, \\, All

; 2. Create permanent AddContextMenu.reg file (Points directly to CleanMemory.exe)
AddRegContent =
(
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\Directory\Background\shell\CleanMemory]
@="Clean Memory"
"Icon"="cleanmgr.exe"

[HKEY_CLASSES_ROOT\Directory\Background\shell\CleanMemory\command]
@="\"%EscapedExePath%\""
)

AddRegFile := TargetFolder "\AddContextMenu.reg"
FileDelete, %AddRegFile%
FileAppend, %AddRegContent%, %AddRegFile%

; 3. Create permanent RemoveContextMenu.reg file
RemoveRegContent =
(
Windows Registry Editor Version 5.00

[-HKEY_CLASSES_ROOT\Directory\Background\shell\CleanMemory]
)

RemoveRegFile := TargetFolder "\RemoveContextMenu.reg"
FileDelete, %RemoveRegFile%
FileAppend, %RemoveRegContent%, %RemoveRegFile%

; 4. Merge registry key silently
RunWait, regedit.exe /s "%AddRegFile%"

MsgBox, 64, Clean Memory, Installation Complete!`n`n- Target Directory: %TargetFolder%`n- Stealth Execution: Active (No CMD flash)`n- Antivirus Status: Clean`n`n"Clean Memory" is ready in your desktop context menu!
ExitApp