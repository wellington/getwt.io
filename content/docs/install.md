+++
date = "2015-05-23T08:28:04-05:00"
draft = false
title = "Installation Instructions"

+++

#### OS X

    brew install wellington
    wt -v


#### Building from Source (any OS)

Prerequisites `go`, `gcc`

    go get github.com/wellington/wellington

If `go get` fails, try the makefile preqrequisites `autotools`, `libtool`

    cd $(GOPATH)/src/github.com/wellington/wellington
    make
    wt -v
