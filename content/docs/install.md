+++
date = "2015-05-23T08:28:04-05:00"
draft = false
title = "Install"

+++

Binaries for OS X, Linux and Windows are available on [Github](https://github.com/wellington/wellington/releases)


Or can be installed via brew on OS X

    brew install wellington
    wt -v


#### Building from Source (any OS)

Prerequisites `go`, `gcc`

    go get github.com/wellington/wellington/wt

If `go get` fails, try the makefile preqrequisites `autotools`, `libtool`

    cd $(GOPATH)/src/github.com/wellington/wellington
    make
    wt -v
