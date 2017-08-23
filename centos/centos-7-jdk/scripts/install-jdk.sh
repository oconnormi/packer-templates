#!/bin/bash

export SDKMAN_DIR="/usr/local/sdkman"
source "/usr/local/sdkman/bin/sdkman-init.sh"
sdk install java
echo 'export PATH=/usr/local/sdkman/candidates/java/current/bin:$PATH' > /etc/profile.d/java.sh
echo "export JAVA_HOME=/usr/local/sdkman/candidates/java/current" >> /etc/profile.d/java.sh
