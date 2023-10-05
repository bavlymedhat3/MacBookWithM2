#!/usr/bin/env bash

git clone https://github.com/awslabs/git-secrets.git
cd git-secrets
sudo make install
git secrets --register-aws --global
