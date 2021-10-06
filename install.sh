#!/system/bin/sh

# Colors
# ----------------------------------------
BL='\e[01;90m' > /dev/null 2>&1; # Black
R='\e[01;91m' > /dev/null 2>&1; # Red
G='\e[01;92m' > /dev/null 2>&1; # Green
Y='\e[01;93m' > /dev/null 2>&1; # Yellow
B='\e[01;94m' > /dev/null 2>&1; # Blue
P='\e[01;95m' > /dev/null 2>&1; # Purple
C='\e[01;96m' > /dev/null 2>&1; # Cyan
W='\e[01;97m' > /dev/null 2>&1; # White
LG='\e[01;37m' > /dev/null 2>&1; # Light Gray
N='\e[0m' > /dev/null 2>&1; # Null
L='\033[7m' > /dev/null 2>&1; #Lines
X='\033[0m' > /dev/null 2>&1; #Closer
# ----------------------------------------
echo -e $B $L"YouTube-dl Installer By"  $R "VNTuhu" $N
apt update -y
clear

echo -e $B $L"YouTube-dl Installer By"  $R "VNTuhu" $N
echo -e $B $L"Installing python..." $N

		pkg install python -y
		clear

echo -e $B $L"YouTube-dl Installer By"  $R "VNTuhu" $N
echo -e $B $L"Installing ffmpeg..." $N

		apt install ffmpeg -y
		apt update -y
		clear

echo -e $B $L"YouTube-dl Installer By"  $R "VNTuhu" $N
echo -e $B $L"Installing wget..." $N

		pkg install wget -y
        clear

echo -e $B $L"YouTube-dl Installer By"  $R "VNTuhu" $N
echo -e $B $L"Installing YouTube-dl..." $N 

		pip install youtube-dl
		clear

echo -e $B $L"YouTube-dl Installer By"  $R "VNTuhu" $N
echo -e $B $L"Setting up configs..." $N
sleep 2
echo -e $B $L "Creating Youtube folder..." $N
		mkdir /data/data/com.termux/files/home/storage/shared/Youtube
echo -e $B $L "Creating Music folder..." $N
		mkdir /data/data/com.termux/files/home/storage/shared/Music
echo -e $B $L "Creating Movies folder..." $N
		mkdir /data/data/com.termux/files/home/storage/shared/Moviesecho -e $B $L "Creating Movies folder..." $N
clear
sleep 1.5

echo -e $B $L"YouTube-dl Installer By"  $R "VNTuhu" $N
echo -e $B $L "Remove old file..." $N
rm -r /data/data/com.termux/files/home/.config/youtube-dl/config
rm -r /data/data/com.termux/files/home/bin/termux-url-opener

echo -e $B $L "Creating youtube-dl config folder..." $N
		mkdir -p ~/.config/youtube-dl
sleep 1.5

echo -e $B $L "Getting config file..." $N
		wget https://raw.githubusercontent.com/vntuhu/ytbdl/main/config -P /data/data/com.termux/files/home/.config/youtube-dl

echo -e $B $L "Creating bin folder..." $N
		mkdir ~/bin
sleep 1.5
echo -e $B $L "Getting termux-url-opener files..." $N
		wget https://raw.githubusercontent.com/vntuhu/ytbdl/main/termux-url-opener -P /data/data/com.termux/files/home/bin
sleep 1.5
wget https://raw.githubusercontent.com/vntuhu/ytbdl/main/update.sh -P /data/data/com.termux/files/home
wget https://raw.githubusercontent.com/vntuhu/ytbdl/main/install.sh -P /data/data/com.termux/files/home
		clear
		
echo -e $B $L "Finishing configuration..." $N
sleep 5

echo -e $G"Installation Finished..." $N
