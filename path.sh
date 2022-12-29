#!/bin/sh

# go path
export GOPATH="$HOME/.go"

# update path
export PATH=/usr/local/bin:${PATH}:/sbin:/usr/local/sbin

# add go path
export PATH="/usr/local/go/bin:$GOPATH/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export PATH="/home/bruno/go/bin:$PATH"

# add rust path
export PATH="$HOME/.cargo/bin:$PATH"

# deno
export PATH=/home/bruno/.deno/bin:$PATH

# pnpm
export PATH="/home/bruno/.local/share/pnpm:$PATH"
