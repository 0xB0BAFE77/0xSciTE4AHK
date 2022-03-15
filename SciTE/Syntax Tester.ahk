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
:*:rtm::read the manual!                        ; Hotstring
If Loop Else For Try GoSub                      ; Flow Control
Chr() Format() Abs()                            ; Built-In Functions
Show Style List HTML Wait                       ; Subcommands
%var_name% %fn_name%() %A_LoopField%()          ; Dereference & deref a built-in var
var := "Error test                              ; Error - No closing quote
; Examples =====================================|
*Escape::ExitApp                                ; Kill switch
pi := 3.142, var := "pi" dts := A_Now           ; Different var assignments
arr := [1,2,3], obj := {true:1, false:0}        ; Objects
:*:pi::SendInput, % %var%                       ; Hotstring using a deref to send pi
*F1 Up::InputBox, var, End radius:              ; Hotkey to multiplei

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
