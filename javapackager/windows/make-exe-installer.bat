@echo off
rem Build script for windows installer

rem General Document Links for javapackager and Inno Setup 5 installer
rem https://docs.oracle.com/javase/8/docs/technotes/guides/deploy/self-contained-packaging.html
rem https://docs.oracle.com/javase/8/docs/technotes/tools/windows/javapackager.html
rem
rem Usage
rem A) Copy the Autoplot jumbo jar to the same directory as this script
rem B) Update INNO_PATH, PACKAGER and VERNUM belew
rem C) In a dos box cd to the directory containing this script and run ./make-exe-installer
rem
rem In addition to jdk1.8 you'll need Inno Setup Compiler from here
rem http://files.jrsoftware.org/is/5/

SET VERNUM=v2020a_5

curl.exe http://autoplot.org/jnlp/%VERNUM%/autoplot.jar -o autoplot.jar

SET "INNO_PATH=C:\Program Files (x86)\Inno Setup 5"
SET PATH=%INNO_PATH%;%PATH%
SET "PACKAGER=C:\Program Files\Java\jdk1.8.0_111\bin\javapackager"

SET "MAIN=org.autoplot.AutoplotUI"

rem The default install directory for non-admin installs is:
rem %HOMEPATH%\APPDATA\Local\Autoplot

SET DESC=-description "A browser for data on the web."
SET CLASS=-appclass %MAIN%
SET VEND=-vendor "Das Developers"

rem sub-bundler arguments.  These are particular to INNO 5 and exe output
SET "DIR=-BinstalldirChooser=true"
SET "JOPT=-BjvmOptions=-Xmx4096m"
SET "ICO=-Bicon=autoplot.ico"
SET "VER=-BappVersion=%VERNUM%"
rem SET "LIC=-BlicenseFile=LICENSE.txt"

@echo on
"%PACKAGER%" -deploy -v -native exe %DIR% %JOPT% %VEND% %ICO% %DESC% -outdir dist -outfile autoplot -srcfiles autoplot.jar %CLASS% -name Autoplot -title Autoplot 

@echo off
rem Now we sign the output, depends on winsigner.bat which is not in this 
rem repository due to the fact that it contains sensitive information.

winsigner.bat dist\bundles\Autoplot-%VERNUM%.exe
winverify.bat dist\bundles\Autoplot-%VERNUM%.exe




