#!/bin/bash

SCRIPTDIR="scripts"
LAYOUTDIR="layouts"
SYMBOLDIR="/usr/share/X11/xkb/symbols"

sudo cp $LAYOUTDIR/* $SYMBOLDIR/
mkdir -p $HOME/bin
cp $SCRIPTDIR/* $HOME/bin/
