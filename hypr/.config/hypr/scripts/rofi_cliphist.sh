#!/bin/bash

# 获取 cliphist 的历史记录，并使用 rofi 显示
cliphist list | awk '{$1=""; print substr($0,2)}' | rofi -dmenu -i -p "Clipboard" | xargs -I {} wl-copy {}

