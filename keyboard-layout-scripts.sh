#!/bin/bash

SCRIPTS="scripts"
LAYOUTS="layouts"
SYMBOLS="/usr/share/X11/xkb/symbols"
BINS="$HOME/bin"

sudo cp $LAYOUTS/* $SYMBOLS/ && mkdir -p $HOME/bin && ln -s $SCRIPTS/* $BINS

