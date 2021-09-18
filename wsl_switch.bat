chcp 65001

DISM /Online /get-features /format:table | find "Microsoft-Windows-Subsystem-Linux" | find "Activé"

if %ERRORLEVEL%==1 goto en else goto dis

:dis
DISM /Online /disable-feature /featurename:"Microsoft-Windows-Subsystem-Linux"
goto END
:en
DISM /Online /enable-feature /featurename:"Microsoft-Windows-Subsystem-Linux"
:END
chcp 850