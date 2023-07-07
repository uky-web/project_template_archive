#!/bin/bash
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
npm install -g https://github.com/uky-web/quarry-cli.git
echo 'export PATH=/home/gitpod/.npm-global/bin:$PATH' >> ~/.bashrc
