# Vimrc File

Install/management script for working with my vimrc file. Script uses flags to do more/less depending on changes to vimrc

## Script Flags

By default, with no flags passed, the script will copy over the vimrc file to `~/.vimrc`. This is useful if you make changes to the file *without* adding new plugins.

`-f`: **Full Install**: This will install [Vundle.vim](https://github.com/VundleVim/Vundle.vim) to the correct location in your `.vim` folder, and clone [Bear](https://github.com/rizsotto/Bear) to this repo folder. Bear is explained later. The script will then copy the setup script and install plugins, then compile those plugins. See `Installation Requirements` for a list of all needed packages from plugins.
`-p`: **Plugin Install** Will run the Vundle `PluginInstall` command

## Plugins

This is the current list of plugins. Most of them work right out of the box, and the vimrc file has settings for any that don't. Some of them **do** require further steps for installation, which the bash script attempts to do. 

- [Vundle](https://github.com/VundleVim/Vundle.vim): Vim package manager that will clone repos of any new plugins automatically.
- [Vim-Fugitive](https://github.com/tpope/vim-fugitive)
- [NerdTree](https://github.com/scrooloose/nerdtree)
- [Syntastic](https://github.com/scrooloose/syntastic)
- [Vim-Surround](https://github.com/tpope/vim-surround)
- [Vim-GitGutter](https://github.com/airblade/vim-gitgutter)
- [Vim-Airline](https://github.com/bling/vim-airline)
- [Vim-Airline-Themes](https://github.com/vim-airline/vim-airline-themes)
- [YouCompleteMe](https://github.com/valloric/youcompleteme)
- [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
- [Vim-ColorSchemes]
- [Base16-Vim]
- [Delimitmate]
- [Vim-Endwise]
- [Tagbar](https://github.com/majutsushi/tagbar)
