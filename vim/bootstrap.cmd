@echo off

if %PROCESSOR_ARCHITECTURE% == x86 (

	echo f | xcopy /F /Y ".\vimrc" "%PROGRAMFILES%\vim\_vimrc"
	echo f | xcopy /F /Y ".\vim\colors\molokai.vim" "%PROGRAMFILES%\vim\vimfiles\colors\molokai.vim"
	goto :eof

) else (

	echo f | xcopy /F /Y ".\vimrc" "%PROGRAMFILES(x86)%\vim\_vimrc"
	echo f | xcopy /F /Y ".\vim\colors\molokai.vim" "%PROGRAMFILES(x86)%\vim\vimfiles\colors\molokai.vim"
	goto :eof
)



