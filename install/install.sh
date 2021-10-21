if [[ "$EUID" -ne 0 ]]
  then echo "Bitte als "root" ausführen"
  exit
fi

apt update -y
apt upgrade -y

apt-get install -y git curl python3 python3-pip npm 
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get install -y nodejs
curl -sSL https://get.docker.com | sh
usermod -aG docker $USER
pip3 -v install docker-compose
git clone https://github.com/respeaker/seeed-voicecard.git
cd seeed-voicecard
./install.sh 
cd ..
git clone https://github.com/th-koeln-intia/ip-landgraf.git ./maxmax-git
mkdir ./MaxMax
cp -R ./maxmax-git/config/. ./MaxMax
rm -R ./maxmax-git
chmod 777 -R ./MaxMax
cd ./MaxMax/node-red/data
npm install --unsafe-perm
cd ..
cd ..
cd ..
sudo apt autoremove

echo "Bitte den Raspberry Pi neustarten"



