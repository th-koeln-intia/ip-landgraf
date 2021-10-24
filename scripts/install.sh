
if [[ "$EUID" -ne 0 ]]
  then echo "Bitte als "root" ausführen! ("sudo ./install.sh")"
  exit
fi

apt update -y 
apt upgrade -y
apt install -y git curl npm nodejs 
curl -sSL https://get.docker.com | sh
usermod -aG docker $USER
pip3 -v install docker-compose
git clone https://github.com/th-koeln-intia/ip-landgraf.git ./maxmax-git
mkdir ./MaxMax
cp -R ./maxmax-git/config/. ./MaxMax
rm -R ./maxmax-git
chmod 777 -R ./MaxMax
cd ./MaxMax/node-red/data
npm i -g n
n stable
bash -lic "npm i"
apt autoremove -y 
cd ..
cd ..
cd ..
git clone https://github.com/respeaker/seeed-voicecard.git
cd seeed-voicecard
./install.sh 
echo "Bitte den Raspberry Pi neustarten! ("sudo reboot")"
reboot
