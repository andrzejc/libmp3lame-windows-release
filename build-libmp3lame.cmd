call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" %TARGET_PLATFORM%
set PATH=%PATH%;..\

if /I "%TARGET_PLATFORM%" == "amd64" (
    sed -i -e s/machine:I386/machine:x64/ Makefile.MSVC
    nmake -f Makefile.MSVC MSVCVER=Win64 ASM=YES libmp3lame.dll
) else (
    nmake -f Makefile.MSVC libmp3lame.dll
)
