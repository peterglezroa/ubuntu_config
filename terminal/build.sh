# Install languages
apt-get install -y python3 python3-pip neofetch

# Install Powerline
apt-get install -y powerline fonts-powerline

# Add Powerline to bash
POWERLINELOCATION=$(pip3 show powerline-status | grep Location | tr -s ' ' '#' | cut -f2 -d#)
echo "\n\n# Powerline" >> ~/.bashrc
echo ". $POWERLINELOCATION/powerline/bindings/bash/powerline.sh" >> ~/.bashrc

# Copy Powerline configuration
cp -r ./config/ ~/.config/powerline/

# z script
cd ~/Documents
git clone https://github.com/rupa/z
mv z/z.sh ~/bin
rm -rf z
echo ". \$HOME/bin/z.sh" >> ~/.bashrc

# Aliases
echo "\n\n # Aliases" >> ~/.bashrc
echo "alias venv=\"source .venv/bin/activate\"\n" >> ~/.bashrc
echo "alias yeet=\"git push\"\n\n" >> ~/.bashrc

# Copy profile to gnome
# Make sure to make a profile
# To see profiles: dconf dump /org/gnome/terminal/legacy/profiles:/
# to load profile: dconf load /org/gnome/terminal/legacy/profiles:/<profile>/ < material-theme-profile.dconf
PROFILE=$(dconf dump /org/gnome/terminal/legacy/profiles:/ | grep : | head -1 | sed 's/[]\[]//g')
dconf load /org/gnome/terminal/legacy/profiles:/PROFILE/ < gnome-profile.dconf

# Gnome System monitor
apt-get install gir1.2-gtop-2.0 gir1.2-nm-1.0 gir1.2-clutter-1.0 gnome-system-monitor nvidia-smi gnome-shell-extensions
# install on https://extensions.gnome.org/extension/120/system-monitor/

# To get more profiles:
# bash -c  "$(wget -qO- https://git.io/vQgMr)"
