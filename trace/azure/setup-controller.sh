apt update
apt install git
wget -c https://dl.google.com/go/go1.17.2.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local
mkdir go
echo "export GOPATH='$HOME/go\n export PATH=$PATH:$GOROOT/bin:$GOPATH/bin\n export PATH=$PATH:/usr/local/go/bin
'" > ~/.bashrc
source ~/.bashrc
git clone https://github.com/xnyan/domino.git
