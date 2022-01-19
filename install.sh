# rút gọn
main=https://raw.githubusercontent.com/vntuhu/ytbdl/main
home=/data/data/com.termux/files/home
bin=/data/data/com.termux/files/usr/bin

echo "YouTube-dl Installer By VNTuhu"
termux-setup-storage
apt update -y
clear

echo "YouTube-dl Installer By VNTuhu"
echo "Installing python..." 
pkg install python -y
clear

echo "YouTube-dl Installer By VNTuhu"
echo "Installing ffmpeg..." 
apt install ffmpeg -y
apt update -y
clear

echo "YouTube-dl Installer By VNTuhu"
echo "Installing wget..." 
pkg install wget -y
clear
echo "YouTube-dl Installer By VNTuhu"
echo "Installing git..." 
pkg install git -y
clear
echo "YouTube-dl Installer By VNTuhu"
echo "Installing yt-dlp..."  
python3 -m pip install --upgrade git+https://github.com/yt-dlp/yt-dlp.git@release
wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O $bin/yt-dlp
chmod a+rx $bin/yt-dlp
termux-fix-shebang $PREFIX/bin/yt-dlp
clear
echo "YouTube-dl Installer By VNTuhu"

# mkdir
mkdir ~/bin
mkdir $home/storage/shared/Youtube
mkdir $home/storage/shared/Music/
mkdir $home/storage/shared/Movies/
wget $main/updt -P $bin
chmod +x $bin/updt
updt
clear
echo "Installation Finished..." 
