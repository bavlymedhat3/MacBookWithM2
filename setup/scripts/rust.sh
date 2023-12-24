#!/usr/bin/env bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path --profile minimal --default-toolchain stable
echo -e "\n# Rust" >> ~/.bashrc
echo "source ${HOME}/.cargo/env" >> ~/.bashrc
source ~/.bashrc
