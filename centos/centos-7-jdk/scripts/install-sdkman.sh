#!/bin/bash

echo "export SDKMAN_DIR=/usr/local/sdkman" >> ~/.bash_profile && source ~/.bash_profile
curl -LsSk -o ~/sdkman.sh https://get.sdkman.io && chmod 755 ~/sdkman.sh
echo "SDK install dir: $SDKMAN_DIR"
~/sdkman.sh
sed -i 's/sdkman_auto_answer=false/sdkman_auto_answer=true/g' /usr/local/sdkman/etc/config
