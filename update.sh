rm -r /data/data/com.termux/files/home/bin/termux-url-opener
wget https://raw.githubusercontent.com/vntuhu/ytbdl/main/termux-url-opener -P /data/data/com.termux/files/home/bin
rm -r /data/data/com.termux/files/home/.config/youtube-dl/config
wget https://raw.githubusercontent.com/vntuhu/ytbdl/main/config -P /data/data/com.termux/files/home/.config/youtube-dl
rm -r /data/data/com.termux/files/home/install.sh
wget https://raw.githubusercontent.com/vntuhu/ytbdl/main/install.sh -P /data/data/com.termux/files/home/install.sh
rm -r /data/data/com.termux/files/home/install.sh
wget https://raw.githubusercontent.com/vntuhu/ytbdl/main/update.sh -P /data/data/com.termux/files/home/update.sh
echo "Done..."
