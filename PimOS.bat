@echo off
title PimOS

set ver=0.4
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
	echo [hi]
	echo [emoji]
	echo [fortune]
	echo [eat]
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
	
:eat
	set /p food=What food would you like to eat?
	echo The %food% has been eaten!
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
	
:hi
	set /a greeting=%random% %%6 +1
	if %greeting% == 1 (echo Hey!)
	if %greeting% == 2 (echo Hallo!) 
	if %greeting% == 3 (echo Ello!) 
	if %greeting% == 4 (echo Eyo!) 
	if %greeting% == 5 (echo Sup!) 
	if %greeting% == 6 (echo Hi!) 
	goto Main

:emoji
	set /a emoji=%random% %%6 +1
	if %emoji% == 1 (echo :P)
	if %emoji% == 2 (echo :D) 
	if %emoji% == 3 (echo >:D) 
	if %emoji% == 4 (echo ._.) 
	if %emoji% == 5 (echo :O) 
	if %emoji% == 6 (echo :3) 
	goto Main

:fortune
	set /p question=Enter a question!
	set /a fortune=%random% %%6 +1
	set answer=10
	if %fortune% == 1 (set answer=No.)
	if %fortune% == 2 (set answer=It's Possible)
	if %fortune% == 3 (set answer=For Sure!)
	if %fortune% == 4 (set answer=Yes!)
	if %fortune% == 5 (set answer=Probably Not.)
	if %fortune% == 6 (set answer=That would never happen...)
	echo Your fortune is: %answer%
	goto Main




pause >null
