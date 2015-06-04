; This is compiled with NSIS see http://nsis.sourceforge.net

# defines SF_*, SECTION_OFF and some macros
!include Sections.nsh

SetCompressor bzip2
OutFile "DungeonsOfDaggorath0.5.0.exe"
LoadLanguageFile "${NSISDIR}\Contrib\Language files\English.nlf"
InstallDir "$PROGRAMFILES\Dungeons of Daggorath"
Name "Dungeons of Daggorath 0.5.0"
Icon "wizard1.ico"
UninstallIcon "wraith.ico"
InstallDirRegKey  HKLM "Software\Microsoft\Windows\CurrentVersion\App Paths\dodwin.exe" ""
ComponentText "Check which sounds you want installed and if you want the source.$\nNOTE - You must choose only one heart sound and one set of sounds, if you select more, only the first selected set will be used."
DirText "Setup will install Dungeons of Daggorath 0.5.0 in the following folder.$\r$\n$\r$\nTo install in a different folder, click Browse and select another folder."
LicenseText "If you accept all the terms of the agreement, choose I Agree to continue. You must accept the agreement to install Dungeons of Daggorath 0.5.0."
LicenseData "..\..\license\license.txt"
ShowInstDetails show
ShowUnInstDetails show

Section "!Game Files (Required)" GAME_FILES
  SectionIn RO
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  CreateDirectory "$SMPROGRAMS\Dungeons of Daggorath"
  CreateShortCut "$SMPROGRAMS\Dungeons of Daggorath\Dungeons of Daggorath.lnk" "$INSTDIR\dodwin.exe"
  CreateShortCut "$DESKTOP\Dungeons of Daggorath.lnk" "$INSTDIR\dodwin.exe"
  CreateShortCut "$SMPROGRAMS\Dungeons of Daggorath\How to play.lnk" "$INSTDIR\howtoplay.txt"
  CreateShortCut "$SMPROGRAMS\Dungeons of Daggorath\License.lnk" "$INSTDIR\license\license.txt"
  File "..\..\dodwin.exe"
  File "..\..\howtoplay.txt"
  File "..\..\SDL_mixer.dll"
  File "..\..\SDL.dll"
  File "..\..\readme.txt"
  SetOutPath "$INSTDIR\license"
  File "..\..\license\license.txt"
  File "..\..\license\readme.txt"
  File "..\..\license\SDL_LICENSE.txt"
  SetOutPath "$INSTDIR\conf"
  File "..\..\conf\opts.ini"
  SetOutPath "$INSTDIR\saved"
  File "..\..\saved\game.dod"
SectionEnd

SubSection /e "Sounds" SOUNDS_SUB
   Section "Original Sounds (Tim Lindner)" ORIG_SOUNDS
    SetOutPath "$INSTDIR\sound"
    File "..\..\sound\19_buzz.wav"
    File "..\..\sound\16_kaboom.wav"
    File "..\..\sound\15_bang.wav"
    File "..\..\sound\14_thud.wav"
    File "..\..\sound\13_clank.wav"
    File "..\..\sound\12_klink.wav"
    File "..\..\sound\11_chuck.wav"
    File "..\..\sound\10_whoosh.wav"
    File "..\..\sound\09_snarl.wav"
    File "..\..\sound\08_pssht.wav"
    File "..\..\sound\07_kklank.wav"
    File "..\..\sound\06_pssst.wav"
    File "..\..\sound\05_grawl.wav"
    File "..\..\sound\04_klank.wav"
    File "..\..\sound\03_beoop.wav"
    File "..\..\sound\02_growl.wav"
    File "..\..\sound\01_rattle.wav"
    File "..\..\sound\0F_clang.wav"
    File "..\..\sound\0E_whoop.wav"
    File "..\..\sound\0D_phaser.wav"
    File "..\..\sound\0C_gluglg.wav"
    File "..\..\sound\0B_bdlbdl.wav"
    File "..\..\sound\0A_bdlbdl.wav"
    File "..\..\sound\00_squeak.wav"
   SectionEnd
   Section "Bruce's Sounds" BRUCE_SOUNDS
    SetOutPath "$INSTDIR\sound"
    File "..\..\sound\bruce\19_buzz.wav"
    File "..\..\sound\bruce\16_kaboom.wav"
    File "..\..\sound\bruce\15_bang.wav"
    File "..\..\sound\bruce\14_thud.wav"
    File "..\..\sound\bruce\13_clank.wav"
    File "..\..\sound\bruce\12_klink.wav"
    File "..\..\sound\bruce\11_chuck.wav"
    File "..\..\sound\bruce\10_whoosh.wav"
    File "..\..\sound\bruce\09_snarl.wav"
    File "..\..\sound\bruce\08_pssht.wav"
    File "..\..\sound\bruce\07_kklank.wav"
    File "..\..\sound\bruce\06_pssst.wav"
    File "..\..\sound\bruce\05_grawl.wav"
    File "..\..\sound\bruce\04_klank.wav"
    File "..\..\sound\bruce\03_beoop.wav"
    File "..\..\sound\bruce\02_growl.wav"
    File "..\..\sound\bruce\01_rattle.wav"
    File "..\..\sound\bruce\0F_clang.wav"
    File "..\..\sound\bruce\0E_whoop.wav"
    File "..\..\sound\bruce\0D_phaser.wav"
    File "..\..\sound\bruce\0C_gluglg.wav"
    File "..\..\sound\bruce\0B_bdlbdl.wav"
    File "..\..\sound\bruce\0A_bdlbdl.wav"
    File "..\..\sound\bruce\00_squeak.wav"
   SectionEnd
SubSectionEnd

SubSection /e "Heartbeat Sounds"  HEART_SOUNDS
   Section "Original (Tim Lindner)" O_HEART_SOUNDS
    SetOutPath "$INSTDIR\sound"
    File "..\..\sound\18_heart.wav"
    File "..\..\sound\17_heart.wav"
   SectionEnd
   Section "Mr. Reaper" MR_HEART_SOUNDS
    SetOutPath "$INSTDIR\sound"
    File "..\..\sound\mrreaper\18_heart.wav"
    File "..\..\sound\mrreaper\17_heart.wav"
   SectionEnd
   Section "Anthony (High-Pitch)" AH_HEART_SOUNDS
    SetOutPath "$INSTDIR\sound"
    File "..\..\sound\heart_higher_pitch\18_heart.wav"
    File "..\..\sound\heart_higher_pitch\17_heart.wav"
   SectionEnd
   Section "Anthony (Low-Pitch)" AL_HEART_SOUNDS
    SetOutPath "$INSTDIR\sound"
    File "..\..\sound\heart_lower_pitch\18_heart.wav"
    File "..\..\sound\heart_lower_pitch\17_heart.wav"
   SectionEnd
   Section "Bruce" BR_HEART_SOUNDS
    SetOutPath "$INSTDIR\sound"
    File "..\..\sound\bruce\18_heart.wav"
    File "..\..\sound\bruce\17_heart.wav"
   SectionEnd
SubSectionEnd

SubSection "Source Code" SOURCE
 Section "Source Files"
  SetOutPath "$INSTDIR\src"
  File "..\wizicon.aps"
  File "..\wiz.ico"
  File "..\viewer.h"
  File "..\viewer.cpp"
  File "..\sched.h"
  File "..\sched.cpp"
  File "..\rng.h"
  File "..\rng.cpp"
  File "..\resource.h"
  File "..\readme2.txt"
  File "..\player.h"
  File "..\player.cpp"
  File "..\parser.h"
  File "..\parser.cpp"
  File "..\oslink.h"
  File "..\oslink.cpp"
  File "..\object.h"
  File "..\object.cpp"
  File "..\Makefile"
  File "..\enhanced.h"
  File "..\enhanced.cpp"
  File "..\dungeon.h"
  File "..\dungeon.cpp"
  File "..\dodgame.h"
  File "..\dodgame.cpp"
  File "..\dod.layout"
  File "..\dod.ico"
  File "..\dod.h"
  File "..\dod.cpp"
  File "..\creature.h"
  File "..\creature.cpp"
  File "..\ChangeLog.txt"
  File "..\wizicon.rc"
  SetOutPath "$INSTDIR\src\NSIS-Installer"
  File ".\setup.nsi"
  File ".\wizard1.ico"
  File ".\wraith.ico"
 SectionEnd

 Section "Visual C++ 5.0 Workspace"
  SetOutPath "$INSTDIR\src"
  File "..\dodwin.001"
  File "..\dodwin.plg"
  File "..\dodwin.opt"
  File "..\dodwin.ncb"
 SectionEnd
 Section "Visual C++ 6.0 Workspace"
  File "..\dodwin.dsw"
  File "..\dodwin.dsp"
  File "..\dodwin.plg"
  File "..\dodwin.opt"
  File "..\dodwin.ncb"
 SectionEnd
 Section "Dev-C++ Files"
  File "..\dod.dev"
  File "..\dod_private.res"
  File "..\dod_private.rc"
  File "..\dod_private.h"
 SectionEnd
SubSectionEnd

Section -AdditionalIcons
  WriteIniStr "$INSTDIR\Dungeons of Daggorath.url" "InternetShortcut" "URL" "http://mspencer.net/daggorath/"
  CreateShortCut "$SMPROGRAMS\Dungeons of Daggorath\Dungeons of Daggorath PC-Port Homepage.lnk" "$INSTDIR\Dungeons of Daggorath.url"
  CreateShortCut "$SMPROGRAMS\Dungeons of Daggorath\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\App Paths\dodwin.exe" "" "$INSTDIR\dodwin.exe"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Dungeons of Daggorath" "DisplayName" "Dungeons of Daggorath 0.5.0"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Dungeons of Daggorath" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Dungeons of Daggorath" "DisplayIcon" "$INSTDIR\dodwin.exe"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Dungeons of Daggorath" "DisplayVersion" "0.5.0"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Dungeons of Daggorath" "URLInfoAbout" "http://mspencer.net/daggorath/"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Dungeons of Daggorath" "Publisher" "DynaMicro"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "Dungeons of Daggorath 0.5.0 was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove Dungeons of Daggorath 0.5.0 and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\howtoplay.txt"
  Delete "$INSTDIR\SDL_mixer.dll"
  Delete "$INSTDIR\SDL.dll"
  Delete "$INSTDIR\readme.txt"
  Delete "$INSTDIR\license\license.txt"
  Delete "$INSTDIR\license\readme.txt"
  Delete "$INSTDIR\license\SDL_LICENSE.txt"
  Delete "$INSTDIR\conf\opts.ini"
  Delete "$INSTDIR\saved\game.dod"
  Delete "$INSTDIR\sound\19_buzz.wav"
  Delete "$INSTDIR\sound\18_heart.wav"
  Delete "$INSTDIR\sound\17_heart.wav"
  Delete "$INSTDIR\sound\16_kaboom.wav"
  Delete "$INSTDIR\sound\15_bang.wav"
  Delete "$INSTDIR\sound\14_thud.wav"
  Delete "$INSTDIR\sound\13_clank.wav"
  Delete "$INSTDIR\sound\12_klink.wav"
  Delete "$INSTDIR\sound\11_chuck.wav"
  Delete "$INSTDIR\sound\10_whoosh.wav"
  Delete "$INSTDIR\sound\09_snarl.wav"
  Delete "$INSTDIR\sound\08_pssht.wav"
  Delete "$INSTDIR\sound\07_kklank.wav"
  Delete "$INSTDIR\sound\06_pssst.wav"
  Delete "$INSTDIR\sound\05_grawl.wav"
  Delete "$INSTDIR\sound\04_klank.wav"
  Delete "$INSTDIR\sound\03_beoop.wav"
  Delete "$INSTDIR\sound\02_growl.wav"
  Delete "$INSTDIR\sound\01_rattle.wav"
  Delete "$INSTDIR\sound\0F_clang.wav"
  Delete "$INSTDIR\sound\0E_whoop.wav"
  Delete "$INSTDIR\sound\0D_phaser.wav"
  Delete "$INSTDIR\sound\0C_gluglg.wav"
  Delete "$INSTDIR\sound\0B_bdlbdl.wav"
  Delete "$INSTDIR\sound\0A_bdlbdl.wav"
  Delete "$INSTDIR\sound\00_squeak.wav"
  Delete "$INSTDIR\dodwin.exe"
  Delete "$INSTDIR\src\wizicon.aps"
  Delete "$INSTDIR\src\wiz.ico"
  Delete "$INSTDIR\src\viewer.h"
  Delete "$INSTDIR\src\viewer.cpp"
  Delete "$INSTDIR\src\sched.h"
  Delete "$INSTDIR\src\sched.cpp"
  Delete "$INSTDIR\src\rng.h"
  Delete "$INSTDIR\src\rng.cpp"
  Delete "$INSTDIR\src\resource.h"
  Delete "$INSTDIR\src\readme2.txt"
  Delete "$INSTDIR\src\player.h"
  Delete "$INSTDIR\src\player.cpp"
  Delete "$INSTDIR\src\parser.h"
  Delete "$INSTDIR\src\parser.cpp"
  Delete "$INSTDIR\src\oslink.h"
  Delete "$INSTDIR\src\oslink.cpp"
  Delete "$INSTDIR\src\object.h"
  Delete "$INSTDIR\src\object.cpp"
  Delete "$INSTDIR\src\Makefile"
  Delete "$INSTDIR\src\enhanced.h"
  Delete "$INSTDIR\src\enhanced.cpp"
  Delete "$INSTDIR\src\dungeon.h"
  Delete "$INSTDIR\src\dungeon.cpp"
  Delete "$INSTDIR\src\dodwin.vcproj"
  Delete "$INSTDIR\src\dodwin.suo"
  Delete "$INSTDIR\src\dodwin.sln"
  Delete "$INSTDIR\src\dodwin.plg"
  Delete "$INSTDIR\src\dodwin.opt"
  Delete "$INSTDIR\src\dodwin.ncb"
  Delete "$INSTDIR\src\dodwin.dsw"
  Delete "$INSTDIR\src\dodwin.dsp"
  Delete "$INSTDIR\src\dodwin.001"
  Delete "$INSTDIR\src\dodgame.h"
  Delete "$INSTDIR\src\dodgame.cpp"
  Delete "$INSTDIR\src\dod_private.res"
  Delete "$INSTDIR\src\dod_private.rc"
  Delete "$INSTDIR\src\dod_private.h"
  Delete "$INSTDIR\src\dod.layout"
  Delete "$INSTDIR\src\dod.ico"
  Delete "$INSTDIR\src\dod.h"
  Delete "$INSTDIR\src\dod.dev"
  Delete "$INSTDIR\src\dod.cpp"
  Delete "$INSTDIR\src\creature.h"
  Delete "$INSTDIR\src\creature.cpp"
  Delete "$INSTDIR\src\ChangeLog.txt"
  Delete "$INSTDIR\src\wizicon.rc"
  Delete "$INSTDIR\src\NSIS-Installer\setup.nsi"
  Delete "$INSTDIR\src\NSIS-Installer\wizard1.ico"
  Delete "$INSTDIR\src\NSIS-Installer\wraith.ico"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\Dungeons of Daggorath.url"

  Delete "$SMPROGRAMS\Dungeons of Daggorath\Dungeons of Daggorath.lnk"
  Delete "$DESKTOP\Dungeons of Daggorath.lnk"
  Delete "$SMPROGRAMS\Dungeons of Daggorath\Dungeons of Daggorath PC-Port Homepage.lnk"
  Delete "$SMPROGRAMS\Dungeons of Daggorath\Uninstall.lnk"
  Delete "$SMPROGRAMS\Dungeons of Daggorath\How to play.lnk"
  Delete "$SMPROGRAMS\Dungeons of Daggorath\License.lnk"

  RMDir "$SMPROGRAMS\Dungeons of Daggorath"
  RMDir "$INSTDIR\src\NSIS-Installer"
  RMDir "$INSTDIR\src"
  RMDir "$INSTDIR\sound"
  RMDir "$INSTDIR\saved"
  RMDir "$INSTDIR\license"
  RMDir "$INSTDIR\conf"
  RMDir "$INSTDIR"

  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Dungeons of Daggorath"
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\App Paths\dodwin.exe"
  SetAutoClose true
SectionEnd

Function .onInit
	Push $0

	StrCpy $1 ${O_HEART_SOUNDS}

        !insertmacro SelectSection ${ORIG_SOUNDS}
        !insertmacro UnSelectSection ${BRUCE_SOUNDS}
        !insertmacro SelectSection ${O_HEART_SOUNDS}
        !insertmacro UnSelectSection ${MR_HEART_SOUNDS}
        !insertmacro UnSelectSection ${AH_HEART_SOUNDS}
        !insertmacro UnSelectSection ${AL_HEART_SOUNDS}
        !insertmacro UnSelectSection ${BR_HEART_SOUNDS}

	Pop $0
FunctionEnd
