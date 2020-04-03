@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" %TARGET_PLATFORM%
set PATH=%PATH%;..\
nmake -f Makefile.MSVC libmp3lame.dll

