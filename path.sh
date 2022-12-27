#!/bin/sh

# go path
export GOPATH="$HOME/.go"

# update path
export PATH=/usr/local/bin:${PATH}:/sbin:/usr/local/sbin

# add go path
export PATH="/usr/local/go/bin:$GOPATH/bin:$PATH"

# add rust path
export PATH="$HOME/.cargo/bin:$PATH"