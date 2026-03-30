#!/usr/bin/env zsh

if [ "$#" -eq 0 ]; then
  echo "Usage: $0 <full_version>"
  echo "\tfull_version: 0.1.88-1"
  exit 1
fi

is_ver=$1
base_ver="${is_ver%%-*}"

# sudo zypper install https://github.com/sinelaw/fresh/releases/download/v${base_ver}/fresh-editor-${is_ver}.x86_64.rpm
wget2 -O ~/tmp/fe.deb https://github.com/sinelaw/fresh/releases/download/v${base_ver}/fresh-editor_${is_ver}_amd64.deb
sudo dpkg -i ~/tmp/fe.deb
rm -f ~/tmp/fe.deb
# sudo dpakg -i # https://github.com/sinelaw/fresh/releases/download/v${base_ver}/fresh-editor_${is_ver}_amd64.deb

