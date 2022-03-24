apt install gnome-tweaks gtk2-engines-murrine gnome-themes-extra sassc

# Colloid theme
cd $HOME/builds/
git clone git@github.com:vinceliuice/Colloid-gtk-theme.git
cd Colloid-gtk-theme
./install.sh

# Colloid icons
#cd $HOME/builds/
#git clone git@github.com:vinceliuice/Colloid-icon-theme.git
#cd Colloid-icon-theme
#./install.sh


# https://extensions.gnome.org/extension/307/dash-to-dock/

# Rounded corners
cd $HOME/builds/
git clone git@github.com:owozsh/adwaita-rounded.git
cd adwaita-rounded
./install.sh
