mkdir -p ~/.vim
cat > ~/.vim/vimrc << "EOF"
set nocompatible              " be iMproved, required
filetype off                  " required

set number
filetype plugin indent on
syntax enable
EOF
