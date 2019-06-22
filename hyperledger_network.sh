#install cURL
wget security.ubuntu.com/ubuntu
echo install cURL DONE =============================================================================
sudo apt update
sudo apt install --yes apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt update
sudo apt install --yes docker-ce
sudo curl -sSL https://get.docker.com/ | sh
echo install docker DONE =============================================================================
#install docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo install docker compose DONE =============================================================================
#setting up Go language
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
echo setting up Go language DONE =============================================================================
#install Node.js
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install nodejs
npm install npm@5.6.0 -g
echo install Node.js DONE =============================================================================
#install python
sudo apt-get install python
echo install python DONE =============================================================================
#install samples
sudo apt-get install git
git clone https://github.com/xinxinxiny/fabric-samples.git
cd fabric-samples
curl -sSL http://bit.ly/2ysbOFE | bash -s 1.2.1
cd first-network
echo install samples DONE =============================================================================
#generate network artifacts
./byfn.sh generate
echo generate network artifacts DONE =============================================================================
#bring up the network
./byfn.sh up
echo bring up the network DONE =============================================================================
#bring down the network
./byfn.sh down
echo bring down the network DONE =============================================================================
