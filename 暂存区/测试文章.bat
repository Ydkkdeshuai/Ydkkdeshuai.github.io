>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto UACAdmin)
:UACPrompt
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
:UACAdmin
echo �ѻ�ȡ����ԱȨ��

@REM Start D:\Tools\Normal_Tools\Clash_Verge\Clash_Verge.exe

D: && cd data/blog 
hexo c && hexo g && hexo s

@REM Taskkill D:\Tools\Normal_Tools\Clash_Verge\Clash Verge.exe

@REM hexo c && hexo g  && hexo s
pause > nul




