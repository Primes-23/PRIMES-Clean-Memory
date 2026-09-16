#SingleInstance Force
#NoTrayIcon
SetWorkingDir %A_ScriptDir%

; If launched by non-admin user context menu, trigger elevated task silently
if not A_IsAdmin
{
    Run, schtasks.exe /run /tn "CleanMemoryTask", , Hide
    ExitApp
}

; Safe folder cleanup function
CleanFolder(TargetDir) {
    Loop, Files, %TargetDir%\*.*, FDR
    {
        try {
            if InStr(FileExist(A_LoopFileFullPath), "D")
                FileRemoveDir, %A_LoopFileFullPath%, 1
            else
                FileDelete, %A_LoopFileFullPath%
        }
    }
}

; Start notification
TrayTip, Clean Memory, Cleaning Temp`, `%Temp`%`, and Prefetch..., 1

; Perform cleanup operations
CleanFolder(A_Temp)
CleanFolder("C:\Windows\Temp")
CleanFolder("C:\Windows\Prefetch")

; Finish notification
TrayTip, Clean Memory, Cleanup Complete!, 2
Sleep, 1500
ExitApp