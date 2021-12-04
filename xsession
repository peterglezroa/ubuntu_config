#!/bin/bash

wal -i "$(< "${HOME}/.cache/wal/wal")" --backend colorthief
$HOME/bin/openrgb_pywal
$HOME/.config/polybar/launch.sh
