#!/usr/bin/env bash

git clone https://github.com/syndbg/goenv.git ~/.goenv
echo -e "\n# Golang" >> ~/.bashrc
echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.bashrc
echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(goenv init -)"' >> ~/.bashrc
echo 'export PATH="$GOROOT/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="$PATH:$GOPATH/bin"' >> ~/.bashrc

source ~/.bashrc

goenv install -l
goenv install 1.21.1
goenv global 1.21.1

# go env -w GO111MODULE=on
