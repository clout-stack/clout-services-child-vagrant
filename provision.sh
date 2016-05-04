#!/bin/bash
sudo apt-get update -y > /dev/null
sudo apt-get install git -y > /dev/null
echo "Git installed"
git clone https://github.com/clout-stack/clout-scripts.git
cd clout-scripts
bash install.sh