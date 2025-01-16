# NVIM / Terminal Config's
![alt text](https://github.com/RussellChubb/nvim_terminal_config_files/blob/main/bg.png?raw=true)

## Why

My first foray into configuring both my terminal and nvim setup. Setup is fairly minimal, and meets my needs well. Expect further changes to this repo, as I know the nvim configuration rabit-hole runs deep...

## Install instructions

### Installing / Configuring Windows Terminal
The following steps are just sliders or drop-downs you need to configure to mimic my windows terminal

1) Apperance > Use acrylic material in the tab row > on 
2) Profiles > PowerShell > Appearance > Color scheme > "One Half Dark"
3) Profiles > PowerShell > Appearance > Enable acrylic material > on
4) Profiles > PowerShell > Appearance > Background opacity > 60%

### Install Nerd Fonts

1) Navigate to [Nerd Fonts Website](https://www.nerdfonts.com/)
2) Download your preferred NF, (I'm using "CaskaydiaCove Nerd Font Mono")
3) Extract NF, Install NF
4) Profiles > PowerShell > Appearance > Font face > CaskaydiaCove Nerd Font Mono

### Install NeoVim

1) execute winget install --id=Neovim.Neovim -e
2) cd to AppData\Local
3) execute mkdir "nvim"
4) cd to nvim
5) execute nvim Init.vim
6) navigate to my repo and copy in init.vim code.
7) save file
8) Save and exit (:wq)

#### Install Plug

1) execute iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
2) cd to C:\Users\{*YOURNAME*}\AppData\Local\nvim
3) execute nvim init.vim
4) (*while inside of nvim*) execute PlugInstall
5) (*once updates have finished*) Save and exit (:wq)

### Install Git

1) execute winget install --id Git.Git -e --source winget
2) cd to {YOURNAME} directory (*ex C:\Users\**Russell** *)
3) cd to .ssh
4) execute ssh-keygen
5) copy ssh key in id_rsa.pub into your Github developer settings (*In your Github profile*)

### Install Node

1) execute winget install -e –id OpenJS.NodeJS

### Install Chocolatey

1) execute Set-ExecutionPolicy AllSigned
2) execute Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

### Install NVM (w/ Chocolately)

1) execute choco install nvm

### Install Yarn

1) navigate to C:\Users\{*YOURNAME*}\AppData\Local\nvim-data\plugged\coc.nvim
2) execute npm install –global yarn
3) execute yarn install
4) execute yarn build
5) cd to C:\Users\{*YOURNAME*}\AppData\Local\nvim
6) execute nvim init.vim (*This will finish the updates*)
7) (*once updates have finished*) Save and exit (:wq)

### Install COC-Python (Neovim)

1) cd to any directory (*Your choice*)
2) execute nvim main.py
3) (*while inside of nvim*) exectute CocInstall coc-python
4) Save and exit (:wq)

### Installing Winfetch

1) execute choco install winfetch -y

#### Install Oh My Posh

1) execute winget install JaneDeDobbeleer.OhMyPosh -s winget
2) execute echo $PROFILE (*This is the location to be changed*)
3) cd to C:\Users\{*YOURNAME*}\OneDrive\Documents
4) execute mkdir PowerShell
5) cd to PowerShell
6) execute nvim Microsoft.PowerShell_profile.ps1
7) paste in my code from my "nvim Microsoft.PowerShell_profile.ps1" file
8) Save and exit (:wq)

### Installing Terminal Utils

#### Installing Terminal Icons
  
1) cd to \Documents\PowerShell
2) execute Install-Module -Name Terminal-Icons -Repository PSGallery -Force
3) execute Import-Module Terminal-Icons
    
#### Installing PSReadLine
 
1) cd to \Documents\PowerShell
2) execute Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
3) execute Set-PSReadLineOption -PredictionSource History
4) execute Set-PSReadLineOption -PredictionViewStyle ListView

## System information
- Windows 11

## NVIM Plugins

| Plugin Name                                           | Functionality                                              |
|-------------------------------------------------------|-----------------------------------------------------------|
| [vim-surround](https://github.com/tpope/vim-surround) | Easily manipulate surrounding characters like `()` or `""`.|
| [nerdtree](https://github.com/preservim/nerdtree)     | File explorer for navigating and managing files.          |
| [vim-commentary](https://github.com/tpope/vim-commentary) | Toggle comments with shortcuts like `gcc` and `gc`.      |
| [vim-airline](https://github.com/vim-airline/vim-airline) | Adds a sleek status bar.                                  |
| [pgsql.vim](https://github.com/lifepillar/pgsql.vim)  | Syntax highlighting and tools for PostgreSQL files.       |
| [awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes) | Collection of retro-style color schemes.                 |
| [vim-devicons](https://github.com/ryanoasis/vim-devicons) | Adds file icons for a more visual interface.              |
| [tagbar](https://github.com/preservim/tagbar)         | Displays a code structure sidebar for easier navigation.  |
| [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) | Enables multiple cursors for simultaneous editing.        |
| [coc.nvim](https://github.com/neoclide/coc.nvim)      | Provides autocompletion and IntelliSense-like features.   |
| [auto-pairs](https://github.com/jiangmiao/auto-pairs) | Automatically closes brackets and parentheses.            |

## Keyboard Shortcuts

| Shortcut   | Function                                                   |
|------------|------------------------------------------------------------|
| `<C-f>`    | Focus on the NERDTree window.                              |
| `<C-n>`    | Open the NERDTree file explorer.                           |
| `<C-t>`    | Toggle the NERDTree file explorer on/off.                  |
| `<C-l>`    | Jump to the definition of a symbol (via CoC).              |
| `<F8>`     | Toggle the Tagbar code navigation sidebar.                 |
| `<C-w>w`   | Cycle focus between open windows.                          |

## Credits

Thanks to [Bek Brace](https://gist.github.com/BekBrace) as I his initial config to build on top of! :)
