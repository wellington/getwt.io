+++
date = "2015-05-23T08:28:04-05:00"
draft = false
title = "Installation Instructions"

+++

#### OS X

    brew install wellington
    wt -v


#### Building from Source (any OS)

Prerequisites `go`, `autotools`, `libtool`

    go get github.com/wellington/wellington

Go get will fail if libsass isn't available

    cd $(GOPATH)/src/github.com/wellington/wellington
    make
    wt -v
