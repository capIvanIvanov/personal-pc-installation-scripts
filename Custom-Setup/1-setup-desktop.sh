#!/bin/bash

echo "*******************************************************************"
echo "****** In regional settings first set Bulgaria - български ********"
echo "****** And then check Detailed settings after which return ********"
echo "****** United States - American English ***************************"
echo "*******************************************************************"

sed -i 's/alF/alhF/' ~/.bashrc
echo "export LC_ALL=en_US.UTF-8" >> ~/.bashrc
sudo update-locale LANG=en_US.UTF8
