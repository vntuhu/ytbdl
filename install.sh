# rút gọn
main=https://raw.githubusercontent.com/vntuhu/ytbdl/main
home=/data/data/com.termux/files/home
bin=/data/data/com.termux/files/usr/bin

echo "YouTube-dl Installer ByVNTuhu"
apt update -y
clear

echo "YouTube-dl Installer ByVNTuhu"
echo "Installing python..." 
pkg install python -y
clear

echo "YouTube-dl Installer ByVNTuhu"
echo "Installing ffmpeg..." 
apt install ffmpeg -y
apt update -y
clear

echo "YouTube-dl Installer ByVNTuhu"
echo "Installing wget..." 
pkg install wget -y
clear
echo "YouTube-dl Installer ByVNTuhu"
echo "Installing YouTube-dl..."  
pip install youtube-dl
clear
echo "YouTube-dl Installer ByVNTuhu"

# mkdir
mkdir ~/bin
mkdir -p ~/.config/youtube-dl
mkdir $home/storage/shared/Youtube
mkdir $home/storage/shared/Music/
mkdir $home/storage/shared/Movies/
wget $main/updt -P $bin
chmod +x $bin/updt
updt
clear
echo "Installation Finished..." 
