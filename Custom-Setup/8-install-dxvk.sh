#!/bin/bash

mkdir -p ~/.wine/dxvk-0.81
cp -vR dxvk-0.81/* ~/.wine/dxvk-0.81
export WINEPREFIX=~/.wine
winetricks --force ~/.wine/dxvk-0.81/setup_dxvk.verb

echo " *** !!! WARNING !!! ************************************************************************ "
echo " *** !!! sudo nvidia-settings -> Screen 0/OpenGL Settings -> Allow Flipping (Uncheck) !!! *** "
echo " *** !!! WARNING !!! ************************************************************************ "
