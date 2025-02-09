#!bin/bash

echo "Download Dependencies" &&
( cd $HOME/Downloads && mkdir installCiscoPacketTracerDependecies && cd $HOME/Downloads/installCiscoPacketTracerDependecies &&
wget https://github.com/PetrusNoleto/Error-in-install-cisco-packet-tracer-in-ubuntu-23.10-unmet-dependencies/releases/download/CiscoPacketTracerFixUnmetDependenciesUbuntu23.10/libegl1-mesa_23.0.4-0ubuntu1.22.04.1_amd64.deb &&
wget https://github.com/PetrusNoleto/Error-in-install-cisco-packet-tracer-in-ubuntu-23.10-unmet-dependencies/releases/download/CiscoPacketTracerFixUnmetDependenciesUbuntu23.10/libgl1-mesa-glx_23.0.4-0ubuntu1.22.04.1_amd64.deb )

echo Installing gdebi &&
sudo apt install gdebi

echo install Dependencies && 
(cd $HOME/Downloads/installCiscoPacketTracerDependecies &&
    sudo gdebi ./libegl1-mesa_23.0.4-0ubuntu1.22.04.1_amd64.deb ./libgl1-mesa-glx_23.0.4-0ubuntu1.22.04.1_amd64.deb
)
echo "install Dependencies Finished"




