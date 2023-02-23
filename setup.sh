#!/bin/bash
!sudo apt update
echo "###################################"
echo "Installing Chromium Driver"
echo "###################################"
!sudo apt install chromium-driver
echo "###################################"
echo "Installing essential library"
echo "###################################"
!apt install -y libxss1 libappindicator1 libindicator7 libu2f-udev
echo "###################################"
echo "Downloading Google Chrome Current Stable Version"
echo "###################################"
!wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo "###################################"
echo "Installing The Google Chrome Current Stable Version using DPKG"
echo "###################################"
!dpkg -i google-chrome-stable_current_amd64.deb
echo "###################################"
echo "Downloading Chrome Driver according to the Stable version number"
echo "###################################"
!wget https://chromedriver.storage.googleapis.com/110.0.5481.77/chromedriver_linux64.zip
echo "###################################"
echo "Unzip the Chrome Driver in the working directory."
echo "###################################"
!unzip chromedriver_linux64.zip
echo "###################################"
echo "Installing the selenium using PIP"
echo "###################################"
!pip install selenium
