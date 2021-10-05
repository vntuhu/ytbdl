echo 'url=$1
echo "Please choose"
echo "1) Audio-only (m4a)"
echo "2) Audio-only (mp3)"
echo "3) Best MVideo (mp4) (mkv)"
echo "4) Best MVideo (mp4)"
echo "5) Mvideo (mp4) ≤2160"
echo "6) MVideo (mp4) ≤1440"
echo "7) MVideo (mp4) ≤1080p"
echo "8) MVideo (mp4) ≤720p"
echo "9) MVideo (mp4) ≤480p"
echo "a) Video-only (mp4) ≤1080"
echo "b) Video-only (mp4) ≤720"
echo "c) MVideo with Best Audio (mp4,mkv) ≤1080"
echo "d) MVideo with Best Audio (mp4,mkv) ≤720"
echo "e) Best Audio-only (m4a,webm)"
read CHOICE
case $CHOICE in
1)
youtube-dl -f bestaudio[ext=m4a] -o "/data/data/com.termux/files/home/storage/shared/Music/%(title)s.%(ext)s" $url
;;
2)
youtube-dl -x --audio-format mp3 -o "data/data/com.termux/files/home/storage/shared/Music/%(title)s.%(ext)s $url
;;
3)
youtube-dl -f 'bestvideo+bestaudio/best' -o "/data/data/com.termux/files/home/storage/shared/Movies/%(title)s.%(ext)s" $url
;;
4)
youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best' -o "/data/data/com.termux/files/home/storage/shared/Movies/%(title)s.%(ext)s" $url
;;
5)
youtube-dl -f 'bestvideo[ext=mp4][height<=2160]+bestaudio[ext=m4a]/best' -o "/data/data/com.termux/files/home/storage/shared/Movies/%(title)s.%(ext)s" $url
;;
6)
youtube-dl -f 'bestvideo[ext=mp4][height<=1440]+bestaudio[ext=m4a]/best' -o "/data/data/com.termux/files/home/storage/shared/Movies/%(title)s.%(ext)s" $url
;;
7)
youtube-dl -f 'bestvideo[ext=mp4][height<=1080]+bestaudio[ext=m4a]/best' -o "/data/data/com.termux/files/home/storage/shared/Movies/%(title)s.%(ext)s" $url
;;
8)
youtube-dl -f 'bestvideo[ext=mp4][height<=720]+bestaudio[ext=m4a]/best' -o "/data/data/com.termux/files/home/storage/shared/Movies/%(title)s.%(ext)s" $url
;;
9)
youtube-dl -f 'bestvideo[ext=mp4][height<=480]+bestaudio[ext=m4a]/best' -o "/data/data/com.termux/files/home/storage/shared/Movies/%(title)s.%(ext)s" $url
;;
a)
youtube-dl -f 'bestvideo[ext=mp4][height<=1080]' -o "/data/data/com.termux/files/home/storage/shared/Movies/%(title)s.%(ext)s" $url
;;
b)
youtube-dl -f 'bestvideo[ext=mp4][height<=720]' -o "/data/data/com.termux/files/home/storage/shared/Movies/%(title)s.%(ext)s" $url
;;
c)
youtube-dl -f 'bestvideo[height<=1080]+bestaudio/best' -o "/data/data/com.termux/files/home/storage/shared/Movies/%(title)s.%(ext)s" $url
;;
d)
youtube-dl -f 'bestvideo[height<=720]+bestaudio/best' -o "/data/data/com.termux/files/home/storage/shared/Movies/%(title)s.%(ext)s" $url
;;
e)
youtube-dl -f bestaudio -o "/data/data/com.termux/files/home/storage/shared/Music/%(title)s.%(ext)s" $url
;;
esac' > ~/bin/termux-url-opener

echo '--no-mtime -o /data/data/com.termux/files/home/storage/shared/Movies/vntuhu%(title)s.%(ext)s -f "worstvideo+bestaudio"' > ~/.config/youtube-dl/config