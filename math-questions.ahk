#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

:*:fracl::
SendRaw,\frac{
Send,+{enter}{Space}{Space}
Send,+{enter}
SendRaw,}{
Send,+{enter}{Space}{Space}
Send,+{enter}
SendRaw,}
Send,{left 8}
return

:*:fracs::
SendRaw,\frac{}{}
Send,{left 3}
return

:*:sqrt::
SendRaw,\sqrt{}
Send,{left 1}
return

:*:times::
SendRaw,\times
Send,{Space}
return

:*:power::
SendRaw,^ {}
Send,{left 1}
return

:*:beginaligned::
SendRaw,\begin{aligned}
Send,+{enter}  
Send,+{enter}
SendRaw,\end{aligned}
Send,{left 14}
return

:*:=::
SendRaw,= \; & 
Send,{Space}
return

:*:startquestion::
SendRaw,) \; &
Send,{Space}
Send,{left 7}
return

!Enter::
Send,\\+{enter}+{enter}
return