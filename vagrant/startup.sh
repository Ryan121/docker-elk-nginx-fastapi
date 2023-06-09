# Vagrant runs with sudo priviledges

# Update Packages
apt-get update

# Upgrade Packages
apt-get upgrade

# Install Git
apt-get install -y git

# Staged install of packaages for a successful install of Python 3.11
apt-get install build-essential checkinstall python3-dev

# Main package install
apt-get install libreadline-gplv2-dev libncursesw5-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev  libssl-dev zlib1g-dev

# Prevents _ctypes error
apt-get install libffi-dev

# SQL lite linux install
apt-get install libsqlite3-dev

# Download 3.11 binary
wget https://www.python.org/ftp/python/3.11.0/Python-3.11.0.tgz

# Extract files
sudo tar xzf Python-3.11.0.tgz

cd Python-3.11.0

# Configure 3.11 build file
./configure --enable-optimizations

# Create installer
sudo make

# Install
sudo make altinstall

# Switch back to vagrant home directory
cd ..

# Create python virtual environment
python3.11 -m venv venv

# Activate virutal environment
source ./venv/bin/activate

# Upgrade pip
python3.11 -m pip install --upgrade pip

# Install application dependencies
python3.11 -m pip install -r ./sync_drive/requirements.txt

# Install docker package
sudo apt-get install -y docker.io

sudo apt -y dist-upgrade

# sudo apt install -y gnupg2 pass

# Install docker 
# sudo snap install docker

# Install docker compose
# sudo apt-get install docker-compose

# Change the access permission of the docker.sock file
# chmod 777 /var/run/docker.sock

# dckr_pat_w409cwq13STebTUuXNUpUjBOEWc
# Login to docker hub
# docker login

# Install docker compose
# curl + grep
VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*\d')

DESTINATION=/usr/local/bin/docker-compose

sudo curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m) -o $DESTINATION

cd /usr/local/bin

sudo mv ./docker-compose /usr/bin/docker-compose

sudo chmod +x /usr/bin/docker-compose

# /var/snap/docker/current/config/daemon.json

# Change directories into mapped drive
# cd sync_drive

# Start api server on forwarded guest port
# uvicorn main:app --reload --host 0.0.0.0 --port 8000

