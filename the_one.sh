echo
echo    ".................................."
echo    ". I'm Mr. X and you only need me ."
echo    ".................................."
echo
echo "Please give me your adminitrative privilages if asked. Trust me, I'm totally open !!"
echo
sleep 4
echo "Let's update your system and installed packages first..."
sudo apt-get update -y 
sudo apt-get full-upgrade -y
sleep 2
clear
echo "Getting your multi-media codecs ready."
sleep 3
sudo apt-get install ubuntu-restricted-extras -y 
sleep 2
clear
echo "Installing the Timeshift utility for managing your backups and system snapshots."
sleep 4
sudo apt-get install timeshift -y 
sleep 2
clear
echo "Now I'll install some must have softwares and ultilities.."
sleep 4
sudo apt-get install vlc gimp gthumb htop synaptic git wget -y
sudo apt-get install stacer -y  
sleep 2
clear
echo
echo "8 Pakages Installed:"
echo
echo "1. VLC media player."
echo "2. GIMP(GNU Image Manipulation Program)."
echo "3. Gthumb(A simple gallary application)."
echo "4. Htop(A terminal based system monitor utility)."
echo "5. Synaptic(A GUI based pakage maneger to manage all your Deb pakages)."
echo "6. Stacer(A GUI tool to monitor and optimize your Linux OS)."
echo "7. git"
echo "8. wget(A CLI utility to download something from the web)"
echo
echo -n "Do you want a video editor?: Press Y[Yes] or N[No] and Enter: "
read a
clear 
if [ `expr $a` == Y ] || [ `expr $a` == y ]
then
	sudo apt-get install kdenlive
	sleep 2
	clear
	echo
	echo "1 Pakage installed:"
	echo
	echo "1. KDENLive"
	echo
fi
echo -n "Will you work with C/C++ ? Press Y[Yes] or N[No] and Enter: "
read b
clear
if [ `expr $b` == Y ] || [ `expr $b` == y ]
then
	sudo apt-get install build-essential gdb -y 
	sleep 2
	clear
	echo
	echo "2 Pakages installed:"
	echo
	echo "1. biuld-essential(includes gcc and g++)"
	echo "2. gdb(Debugger for C/C++)"
	echo
fi
echo -n "Will you work with Python ? Press Y[Yes] or N[No] and Enter: "
read c
clear
if [ `expr $c` == Y ] || [ `expr $c` == y ]
then
	sudo apt-get install python python3 -y 
	sleep 2
	clear
	echo
	echo "2 Pakages installed:"
	echo
	echo "1. python(Interpreter for python2)"
	echo "2. python3(Interpreter for pyhton3)"
	echo
fi
echo -n "Are you on Gnome desktop environment ? Press Y[Yes] or N[No] and Enter: "
read d
clear 
if [ `expr $d` == Y ] || [ `expr $d` == y ]
then
	sudo apt-get install gnome-shell-extensions gnome-tweak-tool -y
	sleep 2
	clear
	echo
	echo "2 Pakages installed:"
	echo
	echo "1. gnome-shell-extensions(GUI tool to manage desktop extensions in Gnome desktop)"
	echo "2. gnome-tweak-tool(GUI tool to tweak/customize the look and feel of Gnome desktop)"
	echo
	sleep 7
fi
clear
sudo apt-get install figlet lolcat -y 
clear 
echo
echo "Now a system reboot would be nicer.(Highly Recommended)"
sleep 4
echo "Thank you for using my free tool." | figlet | lolcat
