#NoEnv
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
Random, ran, 2500, 5000

CheckLogin()
{
    loop, 100 {
        ; Читаем пароль из файла
        IniRead, Password, conf.ini, Setup, Password
        
        ; Получаем цвета пикселей
        PixelGetColor, Color_tt, 813, 411, RGB
        PixelGetColor, Color_rr, 1014, 446, RGB
        PixelGetColor, Color_uy, 1121, 506, RGB
        
        ; Проверяем условия для входа
        if (Color_tt = 0xFC7F20 and Color_rr = 0xFFFFFF and Color_uy = 0xFEFEFE) {
            sleep_queue()
            
            PixelGetColor, Color_qu, 840, 621, RGB
            PixelGetColor, Color_eu, 847, 621, RGB
            
            if (Color_qu = 0xFFFFFF and Color_eu = 0xFFFFFF) {
            } else {
                sleep_queue()
                Click, 881, 618
                Sleep, 150
                SendInput, %Password%
                Send, {Enter}
            }
        }
        ; Проверяем наличие изображения
        ImageSearch, , , 1757, 368, 1880, 902, *50 images/pers.png
        if (ErrorLevel = 0) {
            PerformActions()
        }
        
    }
}

PerformActions()
{
    Random, ran, 5000, 10000
    
    ; Выполняем действия
    Sleep, %ran%
    Click, 1532, 466 ; Нужно изменить персонажа
    Sleep, %ran%
    Click, 952, 945
    Sleep, %ran%
    Click, 965, 976 ; Нужно изменить место выхода
    Sleep, %ran%
    Click, 952, 805
    
    ; Завершаем
    IniWrite, 1, conf.ini, Setup, ends
    ExitApp
}

sleep_queue()
{
    ; Проверяем цвета для ожидания
    PixelGetColor, greere, 859, 737, RGB
    PixelGetColor, greere1, 1052, 808, RGB
    
    while (greere = 0x49E703 and greere1 = 0x48E502) {
        Sleep, 500
        PixelGetColor, greere, 859, 737, RGB
        PixelGetColor, greere1, 1052, 808, RGB
    }
}

; Начало  выполнения скрипта
CheckLogin()
Return
