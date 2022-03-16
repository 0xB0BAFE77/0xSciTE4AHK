/*
  Block
  Comment
  Section
*/

"`nEscaped`n`tChar`tTest"                       ; Escaped Chars
Hilighting testing                              ; Highlight text test
[] ? : > //= .= |= + - * / ++ -- **             ; Operators 1
// & | ~ >> << = != > < ~= && || ()             ; Operators 2
cln: , := += -= %var% {}                        ; Label/Special operators
"String example"                                ; String
9876543210.0123456789                           ; Number
default_text user_var user_function()           ; User var/funcs and default text
#If #LTrim #NoEnv #Warn #UseHook                ; Directives
F1 Esc LButton WheelUp Joy1 JoyPOV              ; Keys & Mouse/Joy Buttons
A_Index A_Gui A_Tab A_Temp A_Min                ; Built-In Variables
Chr() NumGet() SubStr() InStr()                 ; Built-In Functions
MsgBox SysGet Drive Gui WinSet                  ; Commands
Add ahk_exe Force Center Alnum AltSubmit        ; Subcommands
Label:                                          ; Labels
If Loop Else For Try GoSub                      ; Control Flow
Chr() Format() Abs()                            ; Built-In Functions
Show Style List HTML Wait                       ; Subcommands
%var_name% %fn_name%() %A_LoopField%()          ; Dereference & Deref with built-in var
var := "Error test                              ; Error - No closing quote
:*:rtm::read the manual!                        ; Hotstring
+!^*Escape::ExitApp                             ; Hotkey::Flow Control
pi := 3.142, var := "pi"                        ; Different vars
:*:pi::SendInput, % %var%                       ; Hotstring example sending a derefed pi
*F1 Up::MsgBox, % "10 x 3.14 = " Round(10*pi,2) ; Hotkey example
arr := [true, false, null], obj := {"num":-123} ; Objects example

; Quick boundfunc
:*:/bf::
:*:/boundfunc::
    SendInput, {Text}bf := Func("FuncName").bind("")
return

; Quick object bind method
:*:/obm::SendInput, {Text}obm := ObjBindMethod(this, "FuncName", params)

SetIcon(State) {
    Menu, Tray, Icon, % A_AhkPath, % (state ? 1 : 4)
}
