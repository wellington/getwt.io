+++
date = "2015-05-23T08:28:04-05:00"
draft = false
title = "install"

+++

### OS X

    brew install wellington
    wt -v

### Building from Source (any OS)

Prerequisites `go`, `autotools`, `libtool`

    go get github.com/wellington/wellington
    # this will fail if libsass isn't available
    # build libsass
    cd $(GOPATH)/src/github.com/wellington/wellington && make deps
    go install github.com/wellington/wellington/wt
