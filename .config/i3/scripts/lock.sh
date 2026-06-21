#!/usr/bin/env bash

set -e

LOCK_IMAGE="/tmp/i3lock-screen.png"

# Take screenshoot
maim "$LOCK_IMAGE" || scrot "$LOCK_IMAGE"

# Blur screenshot
magick "$LOCK_IMAGE" \
    -blur 0x20 \
    -fill "#11111b" \
    -colorize 25 \
    "$LOCK_IMAGE"

# Lock screen
i3lock \
    --image="$LOCK_IMAGE" \
    --indicator \
    --clock \
    --time-str="%H:%M:%S" \
    --date-str="%A, %d %B" \
    \
    --inside-color=11111bee \
    --ring-color=585b70ff \
    --line-color=00000000 \
    --separator-color=00000000 \
    \
    --insidever-color=1e1e2ecc \
    --ringver-color=a6e3a1ff \
    \
    --insidewrong-color=1e1e2ecc \
    --ringwrong-color=f38ba8ff \
    \
    --time-color=cdd6f4ff \
    --date-color=bac2deff \
    --layout-color=cdd6f4ff \
    --verif-color=a6e3a1ff \
    --wrong-color=f38ba8ff \
    --modif-color=f9e2afff \
    \
    --time-size=48 \
    --date-size=18 \
    --layout-size=14 \
    --verif-size=16 \
    --wrong-size=16 \
    \
    --radius=120 \
    --ring-width=12 \
    \
    --pass-media-keys \
    --pass-screen-keys \
    --pass-power-keys \
