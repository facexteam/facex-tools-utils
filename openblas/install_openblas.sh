#!/bin/bash

apt update
apt search openblas
apt install libopenblas-dev
update-alternatives --config libblas.so.3