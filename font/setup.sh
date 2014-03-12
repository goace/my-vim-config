#!/bin/bash

echo "Copying font to system..."
cp linux/Monaco_Linux-Powerline.ttf /usr/share/fonts/truetype/

echo "Updating font cache ..."
fc-cache -vf

echo "Done! Change the font of your terminal to Monaco now and enjoy it~"

