######################
# 環境変数
######################

# Homebrew
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export PATH=/home/linuxbrew/.linuxbrew/sbin:$PATH

# Go
export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH

# xfce4
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
