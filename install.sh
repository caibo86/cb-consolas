#!/bin/sh

if [ ! $(command -v wget) ]; then
        echo "please install wget"
        exit 0
elif [ $UID -ne 0 ]; then
        echo "You need to use root."
        exit 0
else

wget -P /tmp/ https://github.com/caibo86/raw/main/cb-consolas.ttf

echo 'Truetype folder Creating...'
echo 'path:/usr/share/fonts/truetype/cb-consolas'

mkdir -p /usr/share/fonts/truetype/cb-consolas

echo 'Move font to truetype folder...'

mv /tmp/cb-consolas.ttf /usr/share/fonts/truetype/cb-consolas

echo 'Modifying font permissions...'

chmod 644 /usr/share/fonts/truetype/cb-consolas/cb-consolas.ttf

echo 'installing cb-consolas font...'

fc-cache -fv

echo 'Complete!'

fi
