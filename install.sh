main=https://raw.githubusercontent.com/vntuhu/ytbdl/main
home=/data/data/com.termux/files/home
bin=/data/data/com.termux/files/usr/bin

echo "yt-dlp Installer By VNTuhu"
termux-setup-storage
apt update -y
clear

echo "yt-dlp Installer By VNTuhu"
echo "Installing python..." 
apt install python -y
clear

echo "yt-dlp Installer By VNTuhu"
echo "Installing ffmpeg..." 
apt install ffmpeg -y
clear

echo "yt-dlp Installer By VNTuhu"
echo "Installing wget..." 
apt install wget -y
clear
echo "yt-dlp Installer By VNTuhu"
echo "Installing git..." 
apt install git -y
clear
echo "yt-dlp Installer By VNTuhu"
echo "Installing yt-dlp..."  
python3 -m pip install --upgrade git+https://github.com/yt-dlp/yt-dlp.git@release
wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O $bin/yt-dlp
chmod a+rx $bin/yt-dlp
clear
echo "yt-dlp Installer By VNTuhu"

# mkdir
mkdir ~/bin
wget $main/updt -P $bin
chmod +x $bin/updt
updt
clear
echo "Installation Finished..." 
