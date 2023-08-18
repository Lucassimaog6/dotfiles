export DEBIAN_FRONTEND=noninteractive
export USERNAME=`whoami`

## update and install required packages
sudo apt-get update
sudo apt-get -y install --no-install-recommends apt-utils dialog 2>&1
sudo apt-get install -y \
  curl \
  git \
  gnupg2 \
  jq \
  sudo \
  openssh-client \
  less \
  iproute2 \
  procps \
  wget \
  unzip \
  apt-transport-https \
  lsb-release 

# Install Jetbrains Mono font
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip
sudo unzip JetBrainsMono-2.304.zip -d /usr/share/fonts
sudo fc-cache -f -v

# Cleanup
sudo apt-get autoremove -y
sudo apt-get autoremove -y
sudo rm -rf /var/lib/apt/lists/*
