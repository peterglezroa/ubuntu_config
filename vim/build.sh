apt-get install neovim curl -y
# Install plugin manager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# copy vimrc
ln -s ./init.vim ~/.config/nvim/init.vim

echo("REMEMBER TO RUN :PlugInstall to install plugins!")
