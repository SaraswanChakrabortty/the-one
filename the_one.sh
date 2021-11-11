echo
echo    "......................................"
echo    ". I'm you Mr. X and you only need me ."
echo    "......................................"
echo "Please give me your adminitrative privilages if required. Trust me, I'm totally open !!"
echo
sleep 4
echo "Let's update your system and installed pakages first..."
sudo apt update
sudo apt full-upgrade
sleep 2
clear
echo "Now I'll install some must have softwares and ultilities.."
sleep 4
sudo apt install vlc gimp gthumb htop synaptic stacer git
sleep 2
clear
echo "Getting your multi-media codecs ready."
sleep 3
sudo apt install ubuntu-restricted-extras
sleep 2
clear
echo -n "Do you want a video editor?: Press 1[Yes] or 2[No] and Enter: "
read a
if [ `expr $a` == 1 ]
then
	sudo apt install kdenlive
	sleep 2
fi
clear
echo "Installing the Timeshift utility for managing your backups and system snapshots."
sleep 4
sudo apt install timeshift
sleep 2
clear
echo -n "Will you work with C/C++ ? Press 1[Yes] or 2[No] and Enter: "
read b
if [ `expr $b` == 1 ]
then
	sudo apt install build-essential gdb
	sleep 2
fi
clear
echo -n "Will you work with Python ? Press 1[Yes] or 2[No] and Enter: "
read c
if [ `expr $c` == 1 ]
then
	sudo apt install python python3
	sleep 2
fi
clear
echo -n "Are you on Gnome desktop environment ? Press 1[Yes] or 2[No] and Enter: "
read c
if [ `expr $c` == 1 ]
then
	sudo apt install gnome-shell-extensions gnome-tweak-tool
	sleep 2
fi
clear
echo "Thank you for using my free tool." | figlet | lolcat 
sleep 2
exit 
