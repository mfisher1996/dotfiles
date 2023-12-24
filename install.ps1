winget install neovim 
winget install --id Git.Git -e --source winget
winget install nodejs
Invoke-WebRequest https://aka.ms/vs/17/release/vs_buildtools.exe -OutFile vs_buildtools.exe
Start-Process .\vs_buildtools.exe -ArgumentList '--norestart', '--quiet', '--wait', '--nocache', '--installPath C:\BuildTools', '--add Microsoft.VisualStudio.Workload.VCTools'
$env:Path += ";C:\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
git clone "https://github.com/mfisher1996/nvim_config.git" "$HOME\AppData\Local\nvim"
Invoke-WebRequest "https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-msvc/rustup-init.exe" -OutFile "$HOME/Downloads/rustup-init.exe"
& "$HOME/Downloads/rustup-init.exe" -y

