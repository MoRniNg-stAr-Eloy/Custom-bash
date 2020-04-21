#Termux bash exporter....

clear

#---colors---------
red='\033[1;91m'
green='\033[1;92m'
yellow='\033[1;93m'
blue='\033[1;94m'
purple='\033[1;95m'
cyan='\033[1;96m'
white='\033[1;97m'


echo "$green \\....Updateing Termux....//"
apt update && apt upgrade
echo ""
echo "$green Installing Cowsay...."
apt install cowsay
echo ""
echo "$green Installing Ruby....."
apt install ruby
echo ""
echo "$yellow Installing git...."
apt install git



  if [ -f /data/data/com.termux/files/usr/share/figlet ];
  then
      echo "$yellow figlet  installed !....Done"
  else
      echo "$red [!] figlet not found !"
      echo ""
      echo "$cyan Installing figlet../"
      apt install figlet
      echo "$green installation of figlet ......DONE !"
  fi
  
  if [ -f /data/data/com.termux/files/usr/bin/lolcat ];
  then
      echo "$yellow lolcat installed !....Done"
  else
      echo "$red [!] lolcat not found !"
      echo ""
      echo "$cyan Installing lolcat"
      apt install ruby
      gem install lolcat
      echo "$green installation of lolcat ......DONE !"
  fi
  
  if [ -f /data/data/com.termux/files/usr/bin/toilet ];
  then
      echo "$yellow toilet installed !....Done"
  else
      echo "$red [!] toilet not found !"
      echo ""
      echo "$cyan Installing toilet"
      apt install toilet
      echo "$green installation of toilet ......DONE !"
  fi
  
  if [ -f /data/data/com.termux/files/usr/share/nano ];
  then
      echo "$yellow nano installed !....Done"
  else
      echo "$red [!] nano not found !"
      echo ""
      echo "$cyan Installing nano"
      apt install nano
      echo "$green installation of nano ......DONE !"
  fi

chmod +x *

cd /$HOME

rm -rf Custom-bash

git clone https://github.com/MoRniNg-stAr-Eloy/Custom-bash.git

cd Custom-bash

mv bash.bashrc /$HOME

cd //data/data/com.termux/files/usr/etc/

cp bash.bashrc /sdcard

  if [ -f /sdcard/bash.bashrc ];
  then
      echo "$cyan stock bash.bashrc Backup Completed....."
  else
      echo "$red [!] Back up Faild !"
      echo ""
      echo "$yellow backing up again....you can find file in ~ emulated/0/"
      cp bash.bashrc /sdcard
      echo "$green Back up .....DONE !"
  fi


cd //data/data/com.termux/files/usr/etc/

rm -rf bash.bashrc
echo "$red Bash file Removed "

cd /$HOME

mv bash.bashrc //data/data/com.termux/files/usr/etc/
chmod +x *


echo "$green Installation Finished..."
echo "$blue Open a new tab and see new welcome screen "
echo "$cyan See my site for more custom bash"
echo "$cyan .........................THANK_YOU........................"