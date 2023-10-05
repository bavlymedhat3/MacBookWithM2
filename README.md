# Switch default shell as Bash

```sh
touch ~/.bash_profile
touch ~/.bashrc
echo 'export BASH_SILENCE_DEPRECATION_WARNING=1' >> ~/.bash_profile
```

add following command in ~/.bash_profile

```sh
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi
```


## Execute the setup scripts

1. execute setup/setup.sh
Each Libraries and Programming Languages would be installed.

2. Follow the setup guidances in the after_setting_up directory docs
