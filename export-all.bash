#!/usr/bin/env bash

mkdir -p out

for icon in *.aseprite
do
   EXPORT_PATH="out/$(echo "$icon" | sed "s/.aseprite$/.png/g")"
   aseprite -b "$icon" --save-as "$EXPORT_PATH"
done

