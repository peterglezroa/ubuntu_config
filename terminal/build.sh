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
