#################################################################
#		     Create by Canvas			  	  #
#		     Author: 	Canvas				  #
#		     Email:  	1143991340@qq.com		  #
#		     Site: 	https://blog.iamzhl.top/	  #
#################################################################
#!/bin/bash

# Clone remote repo
cd ~ && git clone https://github.com/athlonreg/MacEvnBuild 

cd ~/MacEvnBuild/
# Define variable 
brewsets=$( cat ./brew.set | awk '{print $2}' ) 
casksets=$( cat ./cask.set | awk '{print $2}' )

# brew cask 
for j in $casksets
do
	echo "Installing $j ......" 
	read -p "Do you want to install $j ? (y / n)" choice 
	case $choice in 
		"y" | "yes" | "Y" | "Yes" ) 
			brew cask install $j 
		;;
		"n" | "no" | "N" | "No" )  
			continue
		;;
		* ) 
			echo "Input invalid, bye..."
			exit 1
		;;
	esac
done

# brew 
for i in $brewsets 
do
	echo "Installing $i ......" 
	read -p "Do you want to install $i ? (y / n)" choice 
	case "$choice" in 
		"y" | "yes" | "Y" | "Yes") 
			brew install $i 
		;;
		"n" | "no" | "N" | "No") 
			continue
		;;
		*) 
			echo "Input invalid, bye..."
			exit 1
		;;
	esac
done
