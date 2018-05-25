#!/bin/bash

# cd ~
cd ~ 

# Homebrew 
echo "Installing homebrew ......" 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 

# Define variable 
brewsets=$( cat brew.set | grep -v "#" | awk '{print $2}' ) 
casksets=$( cat cask.set | grep -v "#" | awk '{print $2}' )

# brew cask 
for j in $packagesets 
do
	echo "Installing $j ......" 
	brew cask install $j 
done

# brew 
for i in $packagesets 
do
	echo "Installing $i ......" 
	brew install $i 
done
