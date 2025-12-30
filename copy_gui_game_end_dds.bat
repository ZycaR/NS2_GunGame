@ECHO OFF
cls

ECHO --[ START ]--

SET "BASEDIR=%~dp0"
SET "SOURCEDIR=%BASEDIR%source\uisrc"
SET "OUTPUTDIR=%BASEDIR%output\ui"

SET "FILENAME=GUIGunGameEnd.dds"

if not exist "%OUTPUTDIR%" (
  mkdir "%OUTPUTDIR%"
)

ECHO -- GameEnd

del "%OUTPUTDIR%\%FILENAME%"
copy "%SOURCEDIR%\%FILENAME%" "%OUTPUTDIR%\%FILENAME%" /Y

ECHO --[ FINISH ]--

ECHO --------------------------
ECHO [ %date% %time% ]
ECHO --------------------------
