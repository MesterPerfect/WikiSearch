#define MyAppName "WikiSearch"
#define MyAppVersion "1.2.0"
#define MyAppPublisher "Tecwindow"
#define MyAppURL "https://t.me/tecwindow"
#define MyAppExeName "WikiSearch.exe"

[Setup]
AppName={#myAppName}
AppVersion={#MyAppVersion}
VersionInfoDescription=WikiSearch setup
VersionInfoVersion={#MyAppVersion}
VersionInfoCompany=tecwindow
VersionInfoCopyright=copyright, �2022; tecwindow
VersionInfoProductName=WikiSearch
VersionInfoProductVersion={#MyAppVersion}
VersionInfoOriginalFileName=WikiSearch_Setup.exe
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppId={{F3679719-7471-4B3A-A60D-A9BF0B44E7B3}

DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
PrivilegesRequired=admin
OutputDir=D:\python\���������\dist\ahm
OutputBaseFilename=WikiSearchSetup
Compression=lzma
CloseApplications=force
restartApplications=yes
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "arabic"; MessagesFile: "compiler:Languages\Arabic.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "D:\python\���������\dist\WikiSearch\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\python\���������\dist\WikiSearch\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall

