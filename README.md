# apk-decompiler
apk decompiler (full process), xml and sources in a single click (for windows only)  

this is a package with all the necessary products (downloaded from other repos) and a single batch file to allow execution of the decompile process in a single click,  

* if you wish to do the whole process manually then follow these instructions:  
https://stackoverflow.com/a/6081365/530884  

* if you wish to decompile the apk online without the need to download or install anything then use this site:  
https://www.decompiler.com  


## Requirements:
* windows operating system (Windows 10 and above)
* Java 1.8 or above installed (https://www.oracle.com/java/technologies/downloads/#jdk17-windows)
* Java bin folder set as part of your path (```set path=%path%;C:\Program Files\Java\jdk-15.0.2\bin```)

## Install instructions:
* Download the latest release from this repo  (https://github.com/shaybc/apk-decompiler/releases/tag/latest)
* extract it into a folder (preferrably where the path has no spaces)  

## Use instructions
* copy the APK file you want to decompile into the "apk-source" folder (found at the folder you extracted the release)  
* double click the go.bat file and wait for the process to finish  
* see your decompiled apk at the "apk-output" folder (found at the folder you extracted the release)  

## Download manually latest versions:
if you want to updated the software versions included in this repo, then go ahead and download the software from the following links:  

### [APK Tool]  
* APK Tool (apktool) - https://bitbucket.org/iBotPeaches/apktool/downloads
* Apk Tool windows batch - https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/windows/apktool.bat
* framework-res.apk - http://www.androidfilehost.com/?fid=23212708291677144
* APK Tool Install instructions: https://ibotpeaches.github.io/Apktool/install
  
after download: copy the content into "apktool" folder (found at the folder you extracted the release)  
so you should have this structure:  
```
-- apk-decompiler
   |
   ---> apktool
        |
        ---> apktool.bat
        ---> apktool.jar
        ---> framework-res.apk
```  
![dex tools folder structure](/assets/apkTool.png)  
i also recommend editing the 'apktool.bat' file and remarking the last line (add the word REM to the beginning of it and a space after it)  
![remark the last line](/assets/remark.png)  
  
### [Dex Tools]  
Dex to Jar (dex2jar) - https://github.com/pxb1988/dex2jar/releases  
after download: copy the content into "dex-tools" folder (found at the folder you extracted the release)  
so you should have file structure similar to this:  
```
-- apk-decompiler
   |
   ---> dex-tools
        |
        ---> bin
        ---> lib
        ---> d2j_invoke.bat
        ---> d2j_invoke.sh
        ---> d2j-apk-sign.bat
		...
```  
![dex tools folder structure](/assets/dexTools.png)  
  
### [Java Decompiler Cli]  
JD Cli (jd-cli) - https://github.com/intoolswetrust/jd-cli/releases  
after download: copy the content into "jad" folder (found at the folder you extracted the release)  
so you should have file structure similar to this:  
```
-- apk-decompiler
   |
   ---> jad
        |
        ---> bin
        ---> jd-cli
        ---> jd-cli.bat
        ---> jd-cli.jar
        ---> LICENSE.txt
```  
![java decompiler cli folder structure](/assets/jdCli.png)  
  
### [Java Decompiler GUI] Optional:  
Java Decompiler (Jad) - https://github.com/java-decompiler/jd-gui/releases  
  
  
