# Install languages
apt-get install -y python3 python3-pip neofetch

# Install alacritty
snap install alacritty --classic
mkdir ~/.config/alacritty
ln $PWD/alacritty.yml ~/.config/alacritty/.

# Install Powerline
apt-get install -y powerline fonts-powerline powerline-gitstatus

# Add Powerline to bashrc
#if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
#    source /usr/lib/python3/dist-packages/powerline/bindings/bash/powerline.sh
#fi

# Copy Powerline configuration
mkdir $HOME/.config/powerline
ln -s $PWD/powerline/ ~/.config/powerline/

# Hide gnome title bar
apt install gnome-shell-extension-pixelsaver
gnome-extensions enable pixel-saver@deadalnix.me
gsettings set org.gnome.Terminal.Legacy.Settings headerbar false
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

# z script
cd ~/Documents
git clone https://github.com/rupa/z
mv z/z.sh ~/bin/.
rm -rf z
echo ". \$HOME/bin/z.sh" >> ~/.bashrc

# Aliases
echo "# Aliases" >> ~/.bashrc
echo "alias venv=\"source .venv/bin/activate\"" >> ~/.bashrc
echo "alias yeet=\"git push\"" >> ~/.bashrc

# Copy profile to gnome
# Make sure to make a profile
# To see profiles: dconf dump /org/gnome/terminal/legacy/profiles:/
# to load profile: dconf load /org/gnome/terminal/legacy/profiles:/<profile>/ < material-theme-profile.dconf
#dconf reset -f /org/gnome/terminal/legacy/profiles:/
#dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-profilev3.dconf

# To get more profiles:
# bash -c  "$(wget -qO- https://git.io/vQgMr)"

# Copy xsession
ln -s $PWD/xsession $HOME/.xsession
chmod u+x $HOME/.xsession

# Instructions to avoid wakeup by mouse
# https://newbedev.com/how-do-i-prevent-immediate-wake-up-from-suspend-and-or-hibernation
