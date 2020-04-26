read -p "What Bash Welcome Screen You Want ? (1/2..)" PROC
tput sgr 0
if ["$PROC" = "1"]; then
rm -rf bash.bashrc /data/data/com.termux/files/home/bash.bashrc
sleep 2
else 
rm -rf bash.bashrc /data/data/com.termux/files/usr/etc/bash.bashrc
fi
exit 0








