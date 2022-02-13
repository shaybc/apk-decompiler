rem #### clean output folder b4 u run
powershell rm -r -force apk-output
mkdir apk-output

rem #### copy apk into apktool folder
cd apk-source
mkdir ..\apktool\temp
copy *.apk ..\apktool\temp

rem #### rename the apk into jar and extract it
copy *.apk *.jar
mkdir temp
move *.jar temp
cd temp
jar xf *.jar

rem #### copy classes.dex to dex-tools folder
copy classes.dex ..\..\dex-tools

rem #### delete the temp folder
cd ..
powershell rm -r -force temp

rem #### convert classes.dex to jar
cd ..\dex-tools
@call d2j-dex2jar classes.dex
move /y classes-dex2jar.jar ..\jad
del classes.dex

rem #### decompile all sources
cd ..\jad
mkdir ..\apk-output\src
@call jd-cli classes-dex2jar.jar -od ..\apk-output\src -g ALL
del classes-dex2jar.jar

rem #### decompile the xml files using apktool
cd ..\apktool
@call apktool if framework-res.apk
@call apktool d temp\*.apk
powershell rm -r -force temp
FOR /d %%i IN (.\*) DO move "%%i" "..\apk-output\%%~ni"
