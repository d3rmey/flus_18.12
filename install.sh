#!/bin/sh
sudo apt-get update && apt-get upgrade -y && apt-get install htop -y
sudo apt-get update && sudo apt-get install vlc vlc-plugin-* -y && sudo apt-get install vlc browser-plugin-vlc -y
sudo apt-get install unzip

wget https://raw.githubusercontent.com/marconimp/18.12/master/flussonic-python_18.11_amd64.deb
wget https://raw.githubusercontent.com/marconimp/18.12/master/flussonic-ffmpeg-base_4.6_amd64.deb
wget https://raw.githubusercontent.com/marconimp/18.12/master/flussonic-ffmpeg_4.6_amd64.deb
wget https://raw.githubusercontent.com/marconimp/18.12/master/flussonic-erlang_21.1.4_amd64.deb
wget https://raw.githubusercontent.com/marconimp/18.12/master/flussonic_18.12.1_amd64.deb

wget https://raw.githubusercontent.com/marconimp/4.5.18-offline/master/hack.zip

unzip hack.zip

dpkg -i flussonic-python_18.11_amd64.deb
dpkg -i flussonic-ffmpeg-base_4.6_amd64.deb
dpkg -i flussonic-ffmpeg_4.6_amd64.deb
dpkg -i flussonic-erlang_21.1.4_amd64.deb
dpkg -i flussonic_18.12.1_amd64.deb

# H@C|<

cp -r hack/siphoned/* /opt/flussonic/apps/online/ebin/
cp hack/online/online.app /opt/flussonic/apps/online/ebin/online.app
cp hack/online/license4.beam /opt/flussonic/apps/online/ebin/license4.beam
cp hack/online/license_agent.beam /opt/flussonic/apps/online/ebin/license_agent.beam

echo "flu starts with the following command:  /etc/init.d/flussonic run"
