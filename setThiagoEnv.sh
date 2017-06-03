#!/bin/bash


cd ~;
echo "Cloning bash stuff at $PWD."
git clone git@github.com:thiagotei/.bash_custom.git
echo "Add this line to the .bashrc or .profile: "
echo "     source ~/.bash_custom/.bash_main"
echo ""

echo "Cloning tmux stuff at $PWD."
git clone https://github.com/gpakosz/.tmux.git
ln -s .tmux/.tmux.conf .tmux.conf
ln -s .tmux/.tmux.conf.local .tmux.conf.local

echo "Cloning Tmux stuff at $PWD."
git clone git@github.com:thiagotei/.tmuxinator.git

echo "Cloning .vimrc stuff at $PWD."
git clone git@github.com:thiagotei/.myvimrc.git
ln -s .myvimrc/.vimrc .vimrc 

echo "Cloning Vundle."
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing Vundle plugins."
vim +PluginInstall +qall

echo "All done!"

