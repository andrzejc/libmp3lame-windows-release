call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" %TARGET_PLATFORM%
set PATH=%PATH%;..\

if /I "%TARGET_PLATFORM%" == "amd64" (
    nmake -f Makefile.MSVC MSVCVER=Win64 libmp3lame.dll
) else (
    nmake -f Makefile.MSVC libmp3lame.dll
)
