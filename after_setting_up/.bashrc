# llvm
export LLVM_HOME=$(brew --prefix llvm@14)
export PATH="${LLVM_HOME}/bin:$PATH"
export LLVM_CONFIG="${LLVM_HOME}/bin/llvm-config"

# add timestamp to history command
HISTTIMEFORMAT='%F %T '

# diff
alias diff="diff -y --color $@"

# chrome
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

# uuid
alias uuid='uuidgen | tr "[:upper:]" "[:lower:]"'

# gdate
alias gdate='gdate -u +"%Y-%m-%dT%H:%M:%S.%NZ"'
