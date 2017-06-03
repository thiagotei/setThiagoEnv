#!/bin/bash

die () {
    echo >&2 "$@"
    exit 1
}

cd ~;
echo "Cloning bash stuff at $PWD."
#git clone git@github.com:thiagotei/.bash_custom.git
git clone https://github.com/thiagotei/.bash_custom.git
#[ $? -ne 0 ] || die "Error"
echo "Add this line to the .bashrc or .profile: "
echo "     source ~/.bash_custom/.bash_main"
echo ""

echo "Cloning tmux stuff at $PWD."
git clone https://github.com/gpakosz/.tmux.git
#[ $? -ne 0 ] || die "Error"
ln -s .tmux/.tmux.conf .tmux.conf
#[ $? -ne 0 ] || die "Error"
ln -s .tmux/.tmux.conf.local .tmux.conf.local
#[ $? -ne 0 ] || die "Error"

echo "Cloning Tmux stuff at $PWD."
#git clone git@github.com:thiagotei/.tmuxinator.git
git clone https://github.com/thiagotei/.tmuxinator.git
#[ $? -ne 0 ] || die "Error"

echo "Cloning .vimrc stuff at $PWD."
#git clone git@github.com:thiagotei/.myvimrc.git
git clone https://github.com/thiagotei/.myvimrc.git
#[ $? -ne 0 ] || die "Error"
ln -s .myvimrc/.vimrc .vimrc 
#[ $? -ne 0 ] || die "Error"

echo "Cloning Vundle."
mkdir -p ~/.vim/bundle
#[ $? -ne 0 ] || die "Error"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#[ $? -ne 0 ] || die "Error"

echo "Installing Vundle plugins."
vim +PluginInstall +qall
#[ $? -ne 0 ] || die "Error"

echo "All done!"

