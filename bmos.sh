if ! pidof -x aplay > /dev/null
then
   /usr/bin/aplay -D default -t raw -r 48000 -c 2 -f S16_LE  /dev/zero &
fi

touch /home/reuben/BMOS/parade/parade.txt

/home/reuben/BMOS/scripts/armsinit.sh
/home/reuben/BMOS/scripts/armsupslow.sh &
omxplayer --aspect-mode fill --layer 10010 -o alsa --no-keys --no-osd /home/reuben/BMOS/videos/intro.mp4 > /dev/null &

cd /home/reuben/BMOS/
/home/reuben/BMOS/bmos
