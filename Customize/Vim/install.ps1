# SymbolicLink Vim config path current to Vim default config
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim\init.vim" -Target ".\init.vim" -Force
