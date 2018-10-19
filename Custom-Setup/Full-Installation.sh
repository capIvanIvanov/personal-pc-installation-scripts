 #!/bin/bash

 
sudo add-apt-repository ppa:oibaf/graphics-drivers
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install libvulkan1 mesa-vulkan-drivers vulkan-utils
