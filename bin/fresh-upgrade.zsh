#!/usr/bin/env zsh

if [ "$#" -eq 0 ]; then
  is_ver="$(curl -s "https://api.github.com/repos/sinelaw/fresh/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')-1"
  is_arch=$(uname -m | sed -e 's/aarch64/arm64/')
else
  is_ver=$1
fi

base_ver="${is_ver%%-*}"

# sudo zypper install https://github.com/sinelaw/fresh/releases/download/v${base_ver}/fresh-editor-${is_ver}.x86_64.rpm
wget2 -O ~/tmp/fe.deb https://github.com/sinelaw/fresh/releases/download/v${base_ver}/fresh-editor_${is_ver}_amd64.deb
sudo dpkg -i ~/tmp/fe.deb
rm -f ~/tmp/fe.deb
# sudo dpakg -i # https://github.com/sinelaw/fresh/releases/download/v${base_ver}/fresh-editor_${is_ver}_amd64.deb

