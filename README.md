# Vimrc File

Install/management script for working with my vimrc file. Script uses flags to do more/less depending on changes to vimrc

## Script Flags

By default, with no flags passed, the script will copy over the vimrc file to `~/.vimrc`. This is useful if you make changes to the file _without_ adding new plugins.

`-f`: *Full Install*: This will install [Vundle.vim](https://github.com/VundleVim/Vundle.vim) to the correct location in your `.vim` folder, and clone [Bear](https://github.com/rizsotto/Bear) to this repo folder. Bear is explained later. The script will then copy the setup script and install plugins, then compile those plugins. See `Installation Requirements` for a list of all needed packages from plugins.
`-p`: *Plugin Install* Will run the Vundle `PluginInstall` command
