# SymbolicLink Windows Terminal config path current to Windows Terminal default config
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\\Packages\\Microsoft.WindowsTerminal_8wekyb3d8bbwe\\LocalState\\settings.json" -Target ".\settings.json" -Force
