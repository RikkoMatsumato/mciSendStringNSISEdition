Unicode true
SetCompressor /SOLID lzma
OutFile "SFMLNSIS_UnicodeSupportSetup.exe"
!addplugindir "F:\NSISInclude\UnicodeSupport"
!include "MUI.nsh"
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "AGPL30.txt"
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_LANGUAGE "English"
Name "SFMLNSIS-UnicodeSupEdition"
BrandingText "SFMLNSIS"
ReserveFile "${NSISDIR}\Plugins\x86-unicode\System.dll"
ReserveFile "F:\NSISInclude\UnicodeSupport\SFMLNSIS.dll"
ReserveFile "Example.mp3"

Function .onInit
    InitPluginsDir
    System::Call 'winmm::mciSendStringW(t "play ${NSISDIR}\Example.mp3 repeat", i 0, i 0, i 0) i .r1'
FunctionEnd
Section 01
    SetOutPath "C:\SFMLNSISRelease"
    File /nonfatal /r "C:\SFMLNSISRel\*.*"
SectionEnd
