Infrastructure step.

* Install the Oracle Java 8 JDK.  Since netbeans is handy anyway, the following
  version is recommended.
  https://www.oracle.com/technetwork/java/javase/downloads/jdk-netbeans-jsp-3413139-esa.html

* In addition to jdk1.8 you'll need Inno Setup Compiler from here:
  http://files.jrsoftware.org/is/5/
	
* You'll need the signtool.exe program from the Windows 10 SDK.  That is
  available with the "Tools for Visual Studio 2019" download available from
  https://visualstudio.microsoft.com/downloads/.  Once installed signtool
  is likely to be found at:  
  "C:\Program Files (x86)\Windows Kits\10\bin\x64\signtool.exe"
   
To build an `*.exe` installer that does not write to the registry hive HKLM, 
and thus does not require Administrator rights issue the following commands.

```batchfile
> git clone git@github.com:autoplot/installers.git
> cd installers\javapackager\windows
```

Open the file `make-exe-installer.bat`:
```batchfile
> notepad make-exe-installer.bat
```
and update the following variables for your build machine and version of Autoplot:
 * INNO_PATH
 * PACKAGER
 * VERNUM

The file Autoplot.iss must also have the version within updated as well, and a future version may do this.

Then run the script.
```batchfile
> .\make-exe-installer.bat
```

The output should be in the subdirectory named `dist`.


    
