; 快捷键脚本

; 仅适用于 Typora 窗口的 LaTex 快捷输入
#IfWinActive, ahk_exe typora.exe

;分式
::\c::\cfrac
;罗马体
::\m::\mathrm
;新定义
::\n::\newcommand
;偏导符号
::\p::\partial
;斜积分符号
::\w::\wedge
;向量符号
::\o::\overrightarrow
;任意
::\f::\forall
;存在
::\e::\exists
;空集
::\n::\varnothing
;黑板体
::\b::\mathbb
;花体
::\h::\mathcal


#IfWinActive


; 以下为自定义快捷键

!e:: ; 快捷键 alt + e 打开 Edge
{
  if WinExist("msedge.exe")
    WinActivate
  else
    Run C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe --enable-features=msEdgeMouseGestureDefaultEnabled,msEdgeMouseGestureSupported
}
return

!n:: ; 快捷键 alt + n 打开 NetEase Cloud Music
{
  if WinExist("cloudmusic.exe")
    WinActivate
  else
    Run C:\Users\hanchan\AppData\Local\Netease\CloudMusic\cloudmusic.exe
}
return

!z:: ; 快捷键 alt + z 打开 Zotero
{
  if WinExist("zotero.exe")
    WinActivate
  else
    Run D:\Zotero\zotero.exe
}
return

!c:: ; 快捷键 alt + c 打开 Clash
{
  if WinExist("clash.exe")
    WinActivate
  else
    Run D:\h+ero\vpn\clash\Clash for Windows\Clash for Windows.exe
}
return

!t:: ; 快捷键 alt + t 打开 PowerShell
{
  if WinExist("pwsh.exe")
    WinActivate
  else
    Run C:\Program Files\PowerShell\7-preview\pwsh.exe
}
return

^!t:: ; 快捷键 ctrl + alt + t 打开 Typora
{
  if WinExist("typora.exe")
    WinActivate
  else
    Run D:\Typora\Typora\Typora.exe
}
return

^!v:: ; 快捷键 ctrl + alt + v 打开 Visual Studio Code
{
  if WinExist("code.exe")
    WinActivate
  else
    Run D:\vs code\Microsoft VS Code\Code.exe
}
return
