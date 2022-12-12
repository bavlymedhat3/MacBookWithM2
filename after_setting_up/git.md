#  Git

```shell
~$ git config --global user.name  #write User name
~$ git config --global user.email #write User email
~$ git config --global push.default simple
~$ git config --global core.sshcommand $(which ssh)
~$ git config --global core.editor vim
```

# PS1

- add this line to ~/.bashrc

```shell
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
```
