#!/usr/bin/env bash

# pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo -e "\n# Python" >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc

# insatll python
pyenv install 3.12.0
pyenv global 3.12.0

# install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.pyy
pip install --upgrade pip
pip install poetry
