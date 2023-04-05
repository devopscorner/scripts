#!/usr/bin/env sh

# ================================================================================================
#  INSTALL KUBECTX (AMAZON LINUX)
# ================================================================================================
export KUBECTX_PATH="$GOPATH/src/github.com/kubectx"

git clone https://github.com/ahmetb/kubectx $KUBECTX_PATH

sudo ln -snf $KUBECTX_PATH/kubectx /usr/local/bin/kubectx
sudo ln -snf $KUBECTX_PATH/kubectx /usr/local/bin/kx

sudo ln -snf $KUBECTX_PATH/kubens /usr/local/bin/kubens
sudo ln -snf $KUBECTX_PATH/kubens /usr/local/bin/ks
