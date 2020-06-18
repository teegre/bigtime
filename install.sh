#! /usr/bin/env bash

INSTALL_DIR="$HOME/.local/bin"
CONFIG_DIR="$HOME/.config/bigtime"

! [[ -d "$CONFIG_DIR" ]] && { mkdir -p "$CONFIG_DIR/digits"; }

cp ./src/bigtime "$INSTALL_DIR/"
cp ./src/*.json "$CONFIG_DIR/digits/"
