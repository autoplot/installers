;This file will be executed next to the application bundle image
;I.e. current directory will contain folder Autoplot with application files
[Setup]
AppId={{org.autoplot}}
AppName=Autoplot
AppVersion=v2020a_5
AppVerName=Autoplot v2020a_5
OutputBaseFilename=Autoplot-v2020a_5
AppPublisher=Das Developers
AppComments=Autoplot
AppCopyright=Copyright (C) 2020
AppPublisherURL=https://das2.org/
AppSupportURL=http://autoplot.org/
AppUpdatesURL=https://das2.org/
DefaultDirName={localappdata}\Autoplot
DisableStartupPrompt=Yes
DisableDirPage=No
DisableProgramGroupPage=Yes
DisableReadyPage=Yes
DisableFinishedPage=Yes
DisableWelcomePage=Yes
DefaultGroupName=Das Developers
;Optional License
LicenseFile=
;WinXP or above
MinVersion=0,5.1 
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
SetupIconFile=Autoplot\Autoplot.ico
UninstallDisplayIcon={app}\Autoplot.ico
UninstallDisplayName=Autoplot
WizardImageStretch=Yes
WizardSmallImageFile=Autoplot-setup-icon.bmp   
ArchitecturesInstallIn64BitMode=x64
ChangesAssociations=yes

; File associations are only setup for the current user to avoid needing Admin rights. -cwp
[Registry]
Root: HKCU; Subkey: "Software\Classes\.vap"; ValueType: string; ValueName: ""; ValueData: "AutoplotState"; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\AutoplotState"; ValueType: string; ValueName: ""; ValueData: "Autoplot State"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\AutoplotState\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Autoplot.exe,0"
Root: HKCU; Subkey: "Software\Classes\AutoplotState\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Autoplot.exe"" ""%1"""
Root: HKCU; SubKey: "Software\Classes\MIME\Database\Content Type\application/vnd.autoplot.vap+xml"; ValueType: string; ValueName: "Extension"; ValueData: ".vap"

Root: HKCU; Subkey: "Software\Classes\.pngwalk"; ValueType: string; ValueName: ""; ValueData: "PNGwalk"; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\PNGwalk"; ValueType: string; ValueName: ""; ValueData: "PNG Walk"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\PNGwalk\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Autoplot.exe,0"
Root: HKCU; Subkey: "Software\Classes\PNGwalk\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Autoplot.exe"" ""%1"""
Root: HKCU; SubKey: "Software\Classes\MIME\Database\Content Type\application/vnd.autoplot.pngwalk"; ValueType: string; ValueName: "Extension"; ValueData: ".pngwalk"

Root: HKCU; Subkey: "Software\Classes\.cdf"; ValueType: string; ValueName: ""; ValueData: "CDF"; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\CDF"; ValueType: string; ValueName: ""; ValueData: "Common Data Format"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\CDF\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Autoplot.exe,0"
Root: HKCU; Subkey: "Software\Classes\CDF\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Autoplot.exe"" ""%1"""

Root: HKCU; Subkey: "Software\Classes\.d2s"; ValueType: string; ValueName: ""; ValueData: "das2bin"; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\das2bin"; ValueType: string; ValueName: ""; ValueData: "Das2 Stream"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\das2bin\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Autoplot.exe,0"
Root: HKCU; Subkey: "Software\Classes\das2bin\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Autoplot.exe"" ""%1"""
Root: HKCU; SubKey: "Software\Classes\MIME\Database\Content Type\application/vnd.das2.das2stream"; ValueType: string; ValueName: "Extension"; ValueData: ".d2s"

Root: HKCU; Subkey: "Software\Classes\.d2t"; ValueType: string; ValueName: ""; ValueData: "das2text"; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\das2text"; ValueType: string; ValueName: ""; ValueData: "Das2 Text Stream"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\das2text\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Autoplot.exe,0"
Root: HKCU; Subkey: "Software\Classes\das2text\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Autoplot.exe"" ""%1"""
Root: HKCU; SubKey: "Software\Classes\MIME\Database\Content Type\text/vnd.das2.das2stream"; ValueType: string; ValueName: "Extension"; ValueData: ".d2t"

Root: HKCU; Subkey: "Software\Classes\.lblx"; ValueType: string; ValueName: ""; ValueData: "pds4label"; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Classes\pds4labal"; ValueType: string; ValueName: ""; ValueData: "PDS4 Label"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\pds4labal\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Autoplot.exe,0"
Root: HKCU; Subkey: "Software\Classes\pds4labal\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Autoplot.exe"" ""%1"""
Root: HKCU; SubKey: "Software\Classes\MIME\Database\Content Type\application/vnd.nasa.pds.pds4+xml"; ValueType: string; ValueName: "Extension"; ValueData: ".lblx"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "Autoplot\Autoplot.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Autoplot\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Autoplot"; Filename: "{app}\Autoplot.exe"; IconFilename: "{app}\Autoplot.ico"; Check: returnTrue()
Name: "{commondesktop}\Autoplot"; Filename: "{app}\Autoplot.exe";  IconFilename: "{app}\Autoplot.ico"; Check: returnFalse()


[Run]
Filename: "{app}\Autoplot.exe"; Parameters: "-Xappcds:generatecache"; Check: returnFalse()
Filename: "{app}\Autoplot.exe"; Description: "{cm:LaunchProgram,Autoplot}"; Flags: nowait postinstall skipifsilent; Check: returnTrue()
Filename: "{app}\Autoplot.exe"; Parameters: "-install -svcName ""Autoplot"" -svcDesc ""A browser for data on the web."" -mainExe ""Autoplot.exe""  "; Check: returnFalse()

[UninstallRun]
Filename: "{app}\Autoplot.exe "; Parameters: "-uninstall -svcName Autoplot -stopOnUninstall"; Check: returnFalse()

[Code]
function returnTrue(): Boolean;
begin
  Result := True;
end;

function returnFalse(): Boolean;
begin
  Result := False;
end;

function InitializeSetup(): Boolean;
begin
// Possible future improvements:
//   if version less or same => just launch app
//   if upgrade => check if same app is running and wait for it to exit
//   Add pack200/unpack200 support? 
  Result := True;
end;  
