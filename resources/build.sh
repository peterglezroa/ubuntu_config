pip3 install colorz pywal colorthief

sudo apt-get install -y fonts-font-awsome

# Wallpaper directory
ln -s ./images/wallpapers $HOME/Pictures/wallpapers

# Command
# /home/peterglezroa/.local/bin/wal --backend colorthief -i /home/peterglezroa/Pictures/wallpapers/
# /home/peterglezroa/.local/bin/wal --backend colorthief -i /home/peterglezroa/Pictures/wallpapers/ -o /home/peterglezroa/bin/openrgb_pywal

# Run wal on init
# touch ~/.xsessionrc
#echo 'wal -i "$(< "${HOME}/.cache/wal/wal")" --backend colorthief' >> ~/.xsessionrc

# Wal on bashrc
# echo 'cat ~/.cache/wal/sequences' >> ~/.bashrc
# Hide sidebar
# Appearance -> Behavior -> Auto Hide Launcher

# Fonts
unzip ./fonts/VitcorMono.zip
mv ./fonts/*.ttf /usr/local/share/fonts
