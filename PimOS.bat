@echo off
title PimOS

set ver=0.3
echo PimOS [Version %ver%]

::SurCommands
:Main
	echo.
	set /p command=
	goto %command%


:help
	echo Commands:
	echo.
	echo [command]
	echo [help]
	echo [random]
	echo [flipcoin]
	echo [setname]
	echo [quote]
	echo.
	echo.

	set /p command=
	goto %command%


::sideCommands
::<Functioning>::
:command
	echo PimOS [Version %ver%]
	goto Main

::<Fun>::
:setname
	set /p name=
	echo Your name is now %name%!
	goto Main

:quote
	set /p quote=
	echo "%quote%" - %name% 2017
	goto Main
	
::<Randomized>::
:random
	set /a num=%random% %%100 +1
	echo %num%
	goto Main

:flipcoin
	set /a flipcoin=%random% %%2 +1
	if %flipcoin% == 1 (echo Heads!)
	if %flipcoin% == 2 (echo Tails!) 
	goto Main
	
	

pause >null