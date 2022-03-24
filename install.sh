main=https://raw.githubusercontent.com/vntuhu/ytbdl/main
home=/data/data/com.termux/files/home
bin=/data/data/com.termux/files/usr/bin

echo "yt-dlp Installer By VNTuhu"
termux-setup-storage
pkg install python -y
pkg install ffmpeg -y
pkg install wget -y
pkg install git -y
python3 -m pip install --upgrade git+https://github.com/yt-dlp/yt-dlp.git@release
wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O $bin/yt-dlp
chmod a+rx $bin/yt-dlp
mkdir ~/bin
wget $main/updt -P $bin
chmod +x $bin/updt
updt
echo "Installation Finished..." 
