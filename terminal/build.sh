# Install languages
apt-get install -y python3 python3-pip neofetch

# Install Powerline
pip install powerline-status powerline-gitstatus

# Install Powerline fonts
apt-get install -y fonts-powerline

# Add Powerline to bash
POWERLINELOCATION=$(pip3 show powerline-status | grep Location | tr -s ' ' '#' | cut -f2 -d#)
echo "\n\n# Powerline" >> ~/.bashrc
echo ". $POWERLINELOCATION/powerline/bindings/bash/powerline.sh" >> ~/.bashrc

# Copy Powerline configuration

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
