apt-get install node-typescript make git -y
cd $HOME/Documents
git clone https://github.com/pop-os/shell
cd shell
make local-install
cd ..
rm -rf shell
