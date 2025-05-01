; ╔══════════════════════════════════════════════════════════════════════╗
; ║                         AHK BU NIKANT                                ║
; ╚══════════════════════════════════════════════════════════════════════╝
#NoEnv
#SingleInstance, ignore
#Persistent
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
Random, ran, 2500, 5000
SetDefaultMouseSpeed, 0
; Проверяем, запущен ли скрипт от имени администратора
if not A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%" ; Перезапускаем скрипт с правами администратора
    ExitApp ; Завершаем текущий процесс
}
global pers, exitt
; ╔══════════════════════════════════════════════════════════════════════╗
; ║   Координаты можно узнать через любое приложение, такое как:         ║
; ║   - Just Color Picker                                                ║
; ║   - ShareX                                                           ║
; ║   - Spy                                                              ║
; ║   и другие аналогичные инструменты.                                  ║
; ╚══════════════════════════════════════════════════════════════════════╝
;---------------------------------------------------------------
;Если у вас созданный все 3 персонажа, то можно использовать кординаты указаные ниже:
;Первый персонаж 1480, 386
;Второй персонаж 1511, 533
;Третий персонаж 1547, 695
;---------------------------------------------------------------
pers = ,  ; Нужно изменить кординаты для выбора персонажа
exitt = ,  ; Нужно изменить кординаты  на последнего место выхода
;---------------------------------------------------------------
; Прозьба не использовать данный скрипт в незаконных целях
; Пожалуйста не мейте то что не нужно и не ломайте то что работает
;---------------------------------------------------------------
; ╔══════════════════════════════════════════════════════════════════════╗
; ║                     ahk by nikant: Основной блок                     ║
; ╚══════════════════════════════════════════════════════════════════════╝
IniRead, sleped, conf.ini, Setup, sleped
If (sleped = 0) {
    Sleep, 901000
} else {
    Sleep, 1000
}
login_std()
{
    Sleep, 250
    ; Читаем пароль из файла
    IniRead, Password, conf.ini, Setup, Password
    Click, 881, 618
    PostMessage, 0x50, 0, 0x4090409,, A
    SendInput, %Password%
    Sleep, 150
    Send, {Enter}
    sleep_queue()
}
CheckLogin()
{
    loop, 100{
        ; Получаем цвета пикселей
        PixelGetColor, Color_tt, 830, 418, RGB
        PixelGetColor, Color_rr, 987, 457, RGB
        PixelGetColor, Color_uy, 1017, 447, RGB

        if (Color_tt == 0xFC8F22 && Color_rr == 0xFFFFFF && Color_uy == 0xFFFFFF) {
            PixelGetColor, Color_qu, 840, 621, RGB
            PixelGetColor, Color_eu, 847, 621, RGB
            if (Color_qu != 0xFFFFFF && Color_eu != 0xFFFFFF)
            {
                Click, 881, 618
                Sleep, 250
                Send, asd
                PixelGetColor, colorer, 840, 620, RGB
                If (colorer == 0xFFFFFF)
                {
                    Send, {BackSpace 4}
                    login_std()
                }
                If (colorer != 0xFFFFFF) {
                    Send, {F2}
                    Sleep, 100
                    Click, 881, 618
                    login_std()
                }
            }
        }
        Sleep, 555
        ; Проверяем наличие изображения
        ImageSearch, , , 1687, 237, 1905, 782, *60 images/pers.png
        if (ErrorLevel = 0) {
            PerformActions()
        }
    }
    IniWrite, 1, conf.ini, Setup, closegta
    Sleep, 1000
    ExitApp
}

PerformActions()
{
    Random, ran, 2000, 5000
    Sleep, %ran%
    Click, %pers%
    Sleep, %ran%
    ImageSearch, , , 564, 761, 1340, 1039, *100 images/pes_start.png
    if (ErrorLevel = 1)
    {
        Send, {F2}
        Sleep, 3500
        Click, %pers%
    }
    Click, 952, 945
    Sleep, 7777
    Click, %exitt%
    Sleep, %ran%
    Click, 952, 805
    IniWrite, 1, conf.ini, Setup, ends
    Sleep, 2000
    IniWrite, 0, conf.ini, Setup, sleped
    sleep, 2000
    ExitApp
}

sleep_queue()
{
    attempts := 0
    while (attempts < 60) {
        PixelGetColor, greere, 859, 735, RGB
        PixelGetColor, greere1, 899, 735, RGB
        PixelGetColor, greere2, 936, 808, RGB
        if (greere != 0x49E703 || greere1 != 0x48E502 || greere2 != 0xFFFFFF)
            break
        Sleep, 500
        attempts++
    }
}
; ╔══════════════════════════════════════════════════════════════════════╗
; ║                       ahk by nikant: Конец скрипта                   ║
; ╚══════════════════════════════════════════════════════════════════════╝
CheckLogin()

