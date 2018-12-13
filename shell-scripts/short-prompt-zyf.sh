#!/bin/bash
sed -i.bk -e 's/@\\h//g' \
    -e 's/#force_color_prompt=yes/force_color_prompt=yes/g' ~/.bashrc
source ~/.bashrc