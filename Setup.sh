read -p "What Bash Welcome Screen You Want ? (1/2..)" PROCS
tput sgr 0
if ["$PROCS" = "1"]; then
if [ -e $HOME/bash.bashrc]; then
rm $HOME/bash.bashrc;
sleep 2


rm -rf $PREFIX/etc/bash.bashrc;
fi
sleep 1

if [ -e $HOME/bash.bashrc]; then
echo '\033[1;91m'bash not removed from home'\033[1;97m';
else
echo '\033[1;91m'Bash Successfully Removed'\033[1;97m';
sleep 1
wget https://raw.githubusercontent.com/MoRniNg-stAr-Eloy/Custom-bash/master/bash.bashrc &> /dev/null & spin; 
fi
sleep 2
if [ -e $PREFIX/etc/bash.bashrc]; then
echo '\033[1;91m'bash not removed fom Main'\033[1;97m';
rm -rf $PREFIX/etc/bash.bashrc;
else
echo '\033[1;91m'bash Successfully removed from home'\033[1;97m';
fi
sleep 2

if [ -e $PREFIX/etc/bash.bashrc]; then
echo "";
rm -rf $PREFIX/etc/bash.bashrc
else
cd $HOME
cat bash.bashrc >> $PREFIX/etc/bash.bashrc
fi
done 
exit 0
