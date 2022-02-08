# Polybar
apt install -y cmake
apt install -y python3-sphinx python3-packaging
apt install -y libuv1-dev libcairo2-dev libxcb1-dev libxcb-util0-dev
apt install -y libxcb-randr0-dev libxcb-composite0-dev
apt install -y python3-xcbgen xcb-proto libxcb-image0-dev
apt install -y libxcb-ewmh-dev libxcb-icccm4-dev
apt install -y libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev
apt install -y libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev
apt install -y libcurl4-openssl-dev libnl-genl-3-dev libiw-dev
mkdir $HOME/builds
cd $HOME/builds
git clone --recursive https://github.com/polybar/polybar
cd polybar
sudo ./build.sh

mkdir $HOME/.config/polybar
ln -s $PWD/config.ini $HOME/.config/polybar/.
ln -s $PWD/launch.sh $HOME/.config/polybar/.

ln -s $PWD/scripts/spotify.py $HOME/.config/polybar/.
ln -s $PWD/scripts/bluetooth.sh $HOME/.config/polybar/.

# Autolaunch polybar
cp $PWD/polybar.desktop $HOME/.config/autostart/.
